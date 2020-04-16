package com.book.web;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.book.domain.AllOrderList;
import com.book.domain.CartBook;
import com.book.domain.Category;
import com.book.domain.EnshrineBook;
import com.book.domain.OrderList;
import com.book.domain.Product;
import com.book.domain.User;
import com.book.service.CartBookService;
import com.book.service.CategoryService;
import com.book.service.EnshrineBookService;
import com.book.service.ProductService;
import com.book.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserServlet {

	@Autowired
	private ServletContext servletContext;
	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private CartBookService cartBookService;
	@Autowired
	private EnshrineBookService enshrineBookService;

	// 验证码的产生
	@RequestMapping("/cc")
	protected void check(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int width = 60;
		int height = 30;
		BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics graphics = bi.getGraphics();
		// 设置画笔颜色
		graphics.setColor(Color.BLACK);
		// 设置画板
		graphics.drawRect(0, 0, width - 1, height - 1);
		graphics.setColor(Color.WHITE);
		graphics.fillRect(1, 1, width - 2, height - 2);

		graphics.setFont(new Font("宋体", Font.BOLD | Font.ITALIC, 25));
		StringBuilder sb = new StringBuilder();
		for (char a = 'a'; a <= 'z'; a++) {
			sb.append(a);
		}
		for (char a = 'A'; a <= 'Z'; a++) {
			sb.append(a);
		}
		for (char a = '0'; a <= '9'; a++) {
			sb.append(a);
		}
		Random random = new Random();
		StringBuilder string = new StringBuilder();
		// 设置随机内容（4位）
		for (int i = 0; i < 4; i++) {
			Character ch = sb.charAt(random.nextInt(sb.length()));
			graphics.setColor(new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256)));
			graphics.drawString(ch.toString(), 4 + (i * 12), 26);
			string.append(ch);
		}
		HttpSession session = request.getSession();
		session.setAttribute("message", string.toString());
		System.out.println("验证码是：" + string.toString());
		// 设置随机干扰线（5条）
		for (int i = 0; i < 5; i++) {
			graphics.setColor(new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256)));
			graphics.drawLine(random.nextInt(51) + 5, random.nextInt(23) + 4, random.nextInt(51) + 5,
					random.nextInt(23) + 4);
		}
		// 设置随机干扰点（10个）
		for (int i = 0; i < 10; i++) {
			graphics.setColor(new Color(random.nextInt(256), random.nextInt(256), random.nextInt(256)));
			graphics.drawOval(random.nextInt(51) + 5, random.nextInt(23) + 4, 2, 2);
		}
		// 响应输出
		ImageIO.write(bi, "png", response.getOutputStream());
	}

	// 注册页面的显示
	@RequestMapping("/regist")
	protected String regist() {
		// 将页面 请求转发到 ---->注册.jsp页面中---regist.jsp
		return "regist";
	}

	// 注册成功后的保存
	@RequestMapping("/add")
	protected String add(User u) {
		// 获取页面中传输得到的注册信息
		u.setUdentity("1");
		// 将获取的参数传入service层
		userService.addUser(u);
		// 将页面 重定向到 ---->登录.jsp页面中---regist.jsp
		return "redirect:/login";
	}

	// 登录界面的显示
	@RequestMapping("/login")
	protected String login() {
		return "login";
	}

	// 检验登录--登录是否成功
	@ResponseBody
	@RequestMapping("/loginCheck")
	protected Map<String, Object> loginCheck(@RequestParam("username") String loginName,
			@RequestParam("password") String loginPassword, HttpSession session) {

		// 获得页面表单中提交的登录名和密码
		Map<String, Object> result = new HashMap<String, Object>();
		// 去service层查看密码用户名是否匹配
		User u = null;
		try {
			u = userService.findNamePassword(loginName, loginPassword);
		} catch (Exception e) {
			System.out.println("密码错了");
		}
		if (u == null) {
			// 登录失败
			result.put("result", false);
		} else {
			// 登陆成功
			String uname = u.getUname();
			session.setAttribute("uuname", uname);
			result.put("result", true);
		}
		return result;
	}

	// 忘记密码,返回到找到密码界面
	@RequestMapping("/updataPasswordShow")
	protected String updataPasswordShow() {
		// 将页面 请求转发到 ---->注册.jsp页面中---regist.jsp
		return "updataPassword";
	}

	// 注册时校验验证码是否正确
	@ResponseBody
	@RequestMapping("/registCodeCheck")
	protected Map<String, Object> registCodeCheck(@RequestParam("ucode") String jspCode, HttpSession session) {
		// 获取页面中传来的验证码的值
		// 获取正确的验证码
		String trueCode = (String) session.getAttribute("message");

		Map<String, Object> result = new HashMap<String, Object>();
		if (jspCode.equalsIgnoreCase(trueCode)) {
			// 输入的验证码匹配成功
			result.put("res", true);
		} else {
			// 验证码不匹配
			result.put("res", false);
		}
		return result;
	}

	// 检验注册时用户名是否已经使用过
	@ResponseBody
	@RequestMapping("/registUnameCheck")
	protected Map<String, Object> registUnameCheck(String uname) {

		// 从页面获得传来的uname属性值
		Map<String, Object> result = new HashMap<String, Object>();

		List<User> queryList = userService.selectUname(uname);
		if (queryList.size() == 0) {
			// 用户名可用
			result.put("result", true);
			return result;
		} else {
			// 用户名不可用
			result.put("result", false);
			return result;
		}
	}

	// 修改密码功能
	@RequestMapping("/updataPassword")
	protected String updataPassword(String uname, String uIDcard, String upassword) {

		// 进入service层进行修改
		userService.updataPassword(uname, uIDcard, upassword);

		// 进入service层进行查看，看密码是否改了
		List<String> result = userService.selectPassword(uname);
		if (result.size() == 0 || result == null) {
			return "updataPassword";
		}
		// 对结果进行判断
		if (result.get(2).equals(upassword)) {
			// 修改成功，返回到登录界面
			return "login";
		} else {
			// 修改失败
			return "updataPassword";
		}
	}

	// 主页面（index.jsp页面）的展示
	@RequestMapping("/index")
	protected ModelAndView index() {

		List<Map<String, Object>> map = productService.getProductAll();
		Map<String, Map<String, Object>> cmap = categoryService.getCategoryMap();

		ModelAndView mav = new ModelAndView("index");
		mav.addObject("cmap", cmap);
		mav.addObject("map", map);
		return mav;
	}

	// 得到选中的复选框，并隐藏传过来的复选框值
	@RequestMapping("/select")
	protected String select(String vList, HttpSession session) {
		session.setAttribute("vv", vList);
		return "redirect:/buycartwo";
	}

	// 得到复选框的值，插入订单表中
	@RequestMapping("/buycartwo")
	protected ModelAndView buycartwo(HttpSession session) {
		String vId = (String) session.getAttribute("vv");
		String uuname = (String) session.getAttribute("uuname");
		String[] split = vId.split(",");
		// 根据复选框中得到的书ID，将信息插入订单表中
		for (String s : split) {
			cartBookService.select(s, uuname, cartBookService.selectCategoryById(s));
		}	
		ModelAndView mav = new ModelAndView("buycar_two");

		int orderPrice = Integer.parseInt(cartBookService.orderPrice(uuname).toString());
		mav.addObject("orderPrice", orderPrice);

		List<OrderList> cList = cartBookService.getListOrder(uuname);
		session.setAttribute("cbcbList", cList);
		
		return mav;
	}
		

	// 查询分类（brandlist.jsp页面） 条件查询（类别、书名、作者）的展示
	@RequestMapping("/brandlist")
	protected ModelAndView brandlist(@RequestParam(name = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(name = "bname", required = false, defaultValue = "") String name,
			@RequestParam(name = "bcategory", required = false, defaultValue = "c999") String cate, HttpSession session,
			HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("brandlist");

		Map<String, Object> map = new HashMap<String, Object>();
		// 构造where字句
		if (name != null && name.trim().length() > 0) {
			map.put("bname", "%" + name + "%");
		} else {
			map.put("bname", null);
		}
		if (!"c999".equals(cate)) {
			map.put("bcategory", cate);
		} else {
			map.put("bcategory", null);
		}

		// 获取所有商品的信息
		PageHelper.startPage(pageNum, 8);
		List<Map<String, Object>> brand = productService.getProductMap(map);
		PageInfo pageInfo = new PageInfo(brand, 5);
		mav.addObject("pageInfo", pageInfo);

		Map<String, Map<String, Object>> cmap = categoryService.getCategoryMap();
		mav.addObject("cmap", cmap);
		List<Map<String, Object>> cMapList = categoryService.getCategoryMapList();
		mav.addObject("cMapList", cMapList);

		String uuname = (String) session.getAttribute("uuname");

		// 是否登录成功
		if (uuname == null || uuname.trim().length() == 0) {// 无人登录
			session.setAttribute("uuname", null); // 将当前登录的用户名传输过去+
		} else {
			// 登录成功
			session.setAttribute("uuname", uuname); // 将当前登录的用户名传输过去
			List<CartBook> cList = cartBookService.getList(uuname);

			// 购物车没有信息
			if (cList.size() == 0) {
				mav.addObject("checkBuyCar", false);
				mav.addObject("tPrice", 0);
				mav.addObject("tAmount", 0);
				mav.addObject("cList", null);
			} else {
				mav.addObject("cList", cList);
				mav.addObject("checkBuyCar", true);
				// 该购物车所有商品的总价格
				int allPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
				mav.addObject("tPrice", allPrice);

				// 购物车中的总行数
				int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
				mav.addObject("tAmount", allAmount);
			}

			// 通过request.getCookies()方法得到后台的cookie值
			Cookie[] cookies = request.getCookies();

			List<Product> cookieProductList = new ArrayList<Product>();
			if (cookies != null && cookies.length > 0) {
				for (int i = cookies.length - 1; i >= 0; i--) {
					if (cookies[i].getName().startsWith("NOTEBOOK_" + uuname)) {
						String cookieProductID = cookies[i].getValue();
						cookieProductList.add(productService.getById(cookieProductID));
					}
				}
			}
			session.setAttribute("emptyCookie", "123");
			mav.addObject("cookieProductList", cookieProductList);
		}

		return mav;
	}

	// buycar_two页面显示（修改）
	@RequestMapping("/buycar_two")
	public String index2() {
		return "buycar_two";
	}

	// 购物车页面的显示
	@RequestMapping("/show")
	protected ModelAndView show(HttpSession session) {
		ModelAndView mav = new ModelAndView("buycar");

		String uid = (String) session.getAttribute("uuname");
		if (uid == null || uid.trim().length() == 0) {
			return new ModelAndView("error");
		}
		// 去购物车找数据（根据登录名）--查到该用户的购物车所有信息
		List<CartBook> cList = cartBookService.getList(uid);
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			mav.addObject("cList", null);
			session.setAttribute("uuname", uid);
		} else {
			mav.addObject("checkBuyCar", true);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uid).toString());
			int tAmount = Integer.parseInt(cartBookService.totalAmount(uid).toString());
			session.setAttribute("uuname", uid);
			mav.addObject("cList", cList);
			mav.addObject("tPrice", tPrice);
			mav.addObject("tAmount", tAmount);
		}
		return mav;
	}

	@RequestMapping("/edit")
	protected ModelAndView edit(HttpSession session) {
		ModelAndView mav = new ModelAndView("buycar");
		String uid = (String) session.getAttribute("uuname");
		// 1.调用服务层，返回列表
		List<CartBook> cList = cartBookService.getList(uid);
		if (cList.size() == 0) {
			mav.addObject("cList", null);
			session.setAttribute("uuname", uid);
		} else {
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uid).toString());
			int tAmount = Integer.parseInt(cartBookService.totalAmount(uid).toString());
			cartBookService.delete(uid);
			session.setAttribute("uuname", uid);
			mav.addObject("cList", cList);
			mav.addObject("tPrice", tPrice);
			mav.addObject("tAmount", tAmount);
		}
		return mav;
	}

	// 购物车页面的删除
	@RequestMapping("/del")
	protected String del(String sbid, String suid) {
		cartBookService.del(sbid, suid);
		return "redirect:/show";
	}

	// 点击【加入购物车】----右上角购物车显示
	@ResponseBody
	@RequestMapping("/addBuyCar")
	protected Map<String, Object> addBuyCar(@RequestParam("sbid") String uubookid, @RequestParam("suid") String uuname,
			@RequestParam(name = "snum", required = false, defaultValue = "1") String uusnumber) {

		Map<String, Object> result = new HashMap<String, Object>();

		if (uuname == null || uuname.trim().length() == 0) {
			result.put("result", false);
			return result;
		} else {
			// 用户已登录
			List<CartBook> sel = cartBookService.sel();
			boolean boo = false;
			for (CartBook cb : sel) {
				String bookid = cb.getSbid();// 得到书ID
				String sname = cb.getSuid();// 得到用户名
				if (uubookid.equals(bookid) && uuname.equals(sname)) {
					boo = true;
					cartBookService.upda(uubookid, sname, uusnumber);// 书ID、用户名
					result.put("result", true);
					return result;
				}
			}
			cartBookService.add(uuname, uubookid, uusnumber);// 用户名 书ID
			result.put("result", true);// 添加成功
			return result;
		}

	}

	// ajax---修改加减数量
	@ResponseBody
	@RequestMapping("/upd")
	protected Map<String, Object> upd(@RequestParam("sbid") String id, @RequestParam("number") String sNu,
			@RequestParam("suid") String uid) {
		Map<String, Object> result = new HashMap<String, Object>();
		cartBookService.upd(sNu, id, uid);
		result.put("result", true);
		return result;
	}

	// 点击【确定订单】后跳转到订单成功
	@RequestMapping("/show1")
	protected ModelAndView show1(HttpSession session) {

		ModelAndView mav = new ModelAndView("buycar_three");
		String uuname = (String) session.getAttribute("uuname");
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		int orderPrice = Integer.parseInt(cartBookService.orderPrice(uuname).toString());
		int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());

		mav.addObject("userPrice", userPrice);
		mav.addObject("oPrice", orderPrice);

		// 设置成功购买【确认订单】后的订单号
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String format = sdf.format(new Date());
		cartBookService.setOrderID(format, uuname);

		if (userPrice >= orderPrice) {

			// 订单成功支付 去购物车删除信息，但是订单表不删除
			// 获得传过来的书ID值，去购物车删除该信息
			String vId = (String) session.getAttribute("vv");
			String[] split = vId.split(",");
			for (String sid : split) {
				cartBookService.deleteSbook(sid, uuname);
				cartBookService.changeObookStatus(sid, uuname);
			}

			// 将上述中设置的订单单号拿下来直接使用--
			// 不需要再去通过cartBookService.getOrderID(uuname)查找订单单号
			mav.addObject("orderID", format);

			// 用户账户与订单金额相减
			cartBookService.loseMoney(uuname, orderPrice);
			mav.addObject("liupeng", true);
			return mav;
		} else {
			String vId = (String) session.getAttribute("vv");
			String[] split = vId.split(",");
			for (String sid : split) {
				cartBookService.changeObookStatusThree(sid, uuname);
			}
			mav.addObject("liupeng", false);
			return mav;
		}
	}

	// 点击【点我充值】----进入（chargemoney.jsp）页面
	@RequestMapping("/chargeMoney")
	protected ModelAndView chargeMoney(HttpSession session) {
		ModelAndView mav = new ModelAndView("chargemoney");

		String uuname = (String) session.getAttribute("uuname");
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		session.setAttribute("uuname", uuname);
		List<CartBook> cList = cartBookService.getList(uuname);
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			session.setAttribute("cList", null);
			mav.addObject("tPrice", 0);
			mav.addObject("tAmount", 0);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		} else {
			mav.addObject("checkBuyCar", true);
			session.setAttribute("cList", cList);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
			session.setAttribute("tPrice", tPrice);
			int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
			mav.addObject("tAmount", allAmount);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		}
		return mav;
	}

	// 充值操作
	@ResponseBody
	@RequestMapping("/mmc")
	protected Map<String, Object> mmc(String text, String uuname) {
		// 充值方法
		userService.updateaddprice(text, uuname);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", true);
		// 充值完成
		return map;
	}

	// 进入用户个人信息界面
	@RequestMapping("/memberuser")
	protected ModelAndView memberuser(HttpSession session) {

		ModelAndView mav = new ModelAndView("memberuser");

		String uuname = (String) session.getAttribute("uuname");
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		session.setAttribute("uuname", uuname);
		List<CartBook> cList = cartBookService.getList(uuname);
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			mav.addObject("cList", null);
			mav.addObject("tPrice", 0);
			mav.addObject("tAmount", 0);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		} else {
			mav.addObject("checkBuyCar", true);
			session.setAttribute("cList", cList);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
			session.setAttribute("tPrice", tPrice);
			int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
			mav.addObject("tAmount", allAmount);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		}

		int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
		if (uunameDentity == 1) {
			session.setAttribute("uunameDentity", false);
		} else {
			session.setAttribute("uunameDentity", true);
		}
		// 得到用户的全部信息
		List<User> userList = userService.selectUname(uuname);
		session.setAttribute("userList", userList);
		int userPayOut;
		// 得到用户累计消费金额
		try {
			userPayOut = Integer.parseInt(cartBookService.getPayOut(uuname).toString());
		} catch (Exception e) {
			userPayOut = 0;
		}
		if (userPayOut == 0) {
			session.setAttribute("userPayOut", 0);
		} else {
			session.setAttribute("userPayOut", userPayOut);
		}

		return mav;
	}

	// 显示【我的订单】界面
	@RequestMapping("/show2")
	protected ModelAndView show2(HttpSession session) {
		ModelAndView mav = new ModelAndView("memberorder");
		String uuname = (String) session.getAttribute("uuname");
		// 判断是否是正常登录【按逻辑执行】
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		//
		List<CartBook> cList = cartBookService.getList(uuname);
		int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
		// 对登录用户进行判断
		if (uunameDentity == 1) {
			session.setAttribute("uunameDentity", false);
		} else {
			session.setAttribute("uunameDentity", true);
		}
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			mav.addObject("cList", null);
			mav.addObject("tPrice", 0);
			mav.addObject("tAmount", 0);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		} else {
			mav.addObject("checkBuyCar", true);
			session.setAttribute("cList", cList);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
			session.setAttribute("tPrice", tPrice);
			int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
			mav.addObject("tAmount", allAmount);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		}

		List<OrderList> orderList = cartBookService.getOrderAll(uuname);
		if (orderList == null || orderList.size() == 0) {
			mav.addObject("orderList", null);
		} else {
			mav.addObject("orderList", orderList);
		}

		return mav;
	}

	// 全部订单显示
	@RequestMapping("/show3")
	protected ModelAndView show3(HttpSession session) {
		ModelAndView mav = new ModelAndView("memberorder2");
		String uuname = (String) session.getAttribute("uuname");
		// 判断是否是正常登录【按逻辑执行】
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		List<CartBook> cList = cartBookService.getList(uuname);
		int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
		if (uunameDentity == 1) {
			session.setAttribute("uunameDentity", false);
		} else {
			session.setAttribute("uunameDentity", true);
		}

		List<AllOrderList> orderList = cartBookService.getOrderAll1();
		
		mav.addObject("orderList", orderList);

		return mav;
	}

	// 管理员操作界面

	@GetMapping("/emps")
	protected ModelAndView list(@RequestParam(name = "pageNum", required = false, defaultValue = "1") int pageNum,
			@RequestParam(name = "bname", required = false, defaultValue = "") String bname,
			@RequestParam(name = "bcategory", required = false, defaultValue = "c999") String bcategory,
			HttpSession session, String from, String to) {

		ModelAndView mav = new ModelAndView("product-list");
		String uuname = (String) session.getAttribute("uuname");
		// 构造where字句
		Map<String, Object> map = new HashMap<String, Object>();
		if (bname != null && bname.trim().length() > 0) {
			map.put("bname", "%" + bname + "%");
		} else {
			map.put("bname", null);
		}
		if (!"c999".equals(bcategory)) {
			map.put("bcategory", bcategory);
		} else {
			map.put("bcategory", null);
		}
		if (from != null && from.trim().length() > 0) {
			map.put("from", from);
		} else {
			map.put("from", null);
		}
		if (to != null && to.trim().length() > 0) {
			map.put("to", to);
		} else {
			map.put("to", null);
		}
		// 构造分页信息
		PageHelper.startPage(pageNum, 5);
		List<Map<String, Object>> brand = productService.getProductMap(map);
		PageInfo pageInfo = new PageInfo(brand);
		mav.addObject("pageInfo", pageInfo);

		Map<String, Map<String, Object>> cmap = categoryService.getCategoryMap();
		List<Map<String, Object>> cMapList = categoryService.getCategoryMapList();
		mav.addObject("cmap", cmap);// 列表中对应的类别
		mav.addObject("cMapList", cMapList);// 下拉框
		return mav;
	}

	@DeleteMapping("/emp/{id}")
	protected String delete(@PathVariable("id") String id) {
		productService.deleteById(id);
		return "redirect:/emps";
	}

	@RequestMapping("/deleteAll")
	protected String deleteAll(String ids) {
		String[] id = ids.split(",");
		productService.deleteByIds(id);
		return "redirect:/list";
	}

	// 新增页面的显示
	@GetMapping("/emp")
	protected ModelAndView addShow() {
		ModelAndView mav = new ModelAndView("product-add");
		List<Map<String, Object>> cMapList = categoryService.getCategoryMapList();
		mav.addObject("cMapList", cMapList);
		return mav;
	}

	// 完成新增的保存
	@RequestMapping(value = "/emp", method = RequestMethod.POST)
	protected String addNew(Product p, MultipartFile file) throws FileNotFoundException, IOException {

		// 获取完整的文件名
		String originalFilename = file.getOriginalFilename();
		// 获取扩展名
		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		// 生成随机的文件名
		String newName = UUID.randomUUID().toString().replaceAll("-", "") + ext;

		// 按年，月。提取上传时间
		// 获取现在的日历
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1;
		// 得到文件的根目录
		String folder = servletContext.getRealPath("/upload");

		File yearDir = new File(folder, String.valueOf(year));
		File monthDir = new File(yearDir, String.valueOf(month));

		if (!monthDir.exists()) {
			monthDir.mkdirs();
		}
		InputStream is = file.getInputStream();
		IOUtils.copy(is, new FileOutputStream(new File(monthDir, newName)));
		is.close();
		String saveValue = new File(monthDir, newName).getAbsolutePath().replace(folder, "");

		// 将文件地址存入数据库中
		p.setBpic(saveValue);

		productService.save(p);
		return "redirect:/emps";
	}

	@GetMapping("/emp/{id}")
	protected ModelAndView editShow(@PathVariable("id") String id) {
		ModelAndView mav = new ModelAndView("product-edit");
		Product p = productService.getById(id);
		List<Map<String, Object>> cMapList = categoryService.getCategoryMapList();
		mav.addObject("cMapList", cMapList);
		mav.addObject("editData", p);
		return mav;
	}

	// 修改页面的保存
	@RequestMapping(value = "/emp", method = RequestMethod.PUT)
	protected String editSave(Product p,MultipartFile file) throws FileNotFoundException, IOException{
			// 获取完整的文件名
			String originalFilename = file.getOriginalFilename();
			if(originalFilename==null||originalFilename.trim().length()==0) {
				// 修改时，为了防止数据丢失，需要先从数据库中加载这个对象出来
				Product byId = productService.getById(p.getBid());
				p.setBpic(byId.getBpic());
			}else {
			// 获取扩展名
			String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
			// 生成随机的文件名
			String newName = UUID.randomUUID().toString().replaceAll("-", "") + ext;

			// 按年，月。提取上传时间
			// 获取现在的日历
			Calendar now = Calendar.getInstance();
			int year = now.get(Calendar.YEAR);
			int month = now.get(Calendar.MONTH) + 1;
			// 得到文件的根目录
			String folder = servletContext.getRealPath("/upload");

			File yearDir = new File(folder, String.valueOf(year));
			File monthDir = new File(yearDir, String.valueOf(month));

			if (!monthDir.exists()) {
				monthDir.mkdirs();
			}
			InputStream is = file.getInputStream();
			IOUtils.copy(is, new FileOutputStream(new File(monthDir, newName)));
			is.close();
			String saveValue = new File(monthDir, newName).getAbsolutePath().replace(folder, "");

			// 将文件地址存入数据库中
			p.setBpic(saveValue);
		}
		
		productService.update(p);
		return "redirect:/emps";
	}

	// 改变身份操作操作
	@ResponseBody
	@RequestMapping("/changeDentity")
	protected Map<String, Object> changeDentity(HttpSession session, @RequestParam("name") String text) {
		Map<String, Object> map = new HashMap<String, Object>();
		String uuname = (String) session.getAttribute("uuname");
		if (text.equals("hahaha")) {
			userService.changeDentity(uuname);
			map.put("result", true);
		} else {
			map.put("result", false);
		}
		return map;
	}

	// 商品详细信息显示
	@RequestMapping("/product")
	protected ModelAndView product(String bid, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {

		String uuname = (String) session.getAttribute("uuname");
		Product Onelist = productService.getById(bid);
		ModelAndView mav = new ModelAndView("product");

		Map<String, Map<String, Object>> cmap = categoryService.getCategoryMap();
		mav.addObject("cmap", cmap);

		List<Map<String, Object>> cMapList = categoryService.getCategoryMapList();
		mav.addObject("cMapList", cMapList);

		// 是否登录成功
		if (uuname == null || uuname.trim().length() == 0) {// 无人登录
			session.setAttribute("uuname", null); // 将当前登录的用户名传输过去+
		} else {
			// 登录成功
			session.setAttribute("uuname", uuname); // 将当前登录的用户名传输过去
			List<CartBook> cList = cartBookService.getList(uuname);

			// 购物车没有信息
			if (cList.size() == 0) {
				mav.addObject("checkBuyCar", false);
				mav.addObject("tPrice", 0);
				mav.addObject("tAmount", 0);
				mav.addObject("cList", null);
			} else {
				mav.addObject("cList", cList);
				mav.addObject("checkBuyCar", true);
				// 该购物车所有商品的总价格
				int allPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
				mav.addObject("tPrice", allPrice);

				// 购物车中的总行数
				int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
				mav.addObject("tAmount", allAmount);
			}

			// 定义待删除的
			Cookie waitingForDelCookie = null;
			// 定义一个特殊的cookie标识
			String cookieKey = "NOTEBOOK_" + uuname + bid;
			// 获取所有Cookie
			Cookie[] cookies = request.getCookies();
			// 新建List用于保存商品Cookie
			List<Cookie> listCookie = new ArrayList<Cookie>();
			// 遍历所有Cookie,将与商品有关的Cookie加入List，同时判断有没有重复点击的商品
			if (cookies != null && cookies.length > 0) {
				for (Cookie tmpCookie : cookies) {
					if (tmpCookie.getName().startsWith("NOTEBOOK_" + uuname)) {
						listCookie.add(tmpCookie);
						if (tmpCookie.getName().equals(cookieKey)) {
							waitingForDelCookie = tmpCookie;
						}
					}
				}
			}
			// 如果与商品有关的Cookie大于3，还没有待删除的Cookie，就把首个Cookie删除
			if (listCookie.size() > 3 && waitingForDelCookie == null) {
				waitingForDelCookie = listCookie.get(0);
			}

			// 删除的Cookie也要回传
			if (waitingForDelCookie != null) {
				waitingForDelCookie.setMaxAge(0);
				response.addCookie(waitingForDelCookie);
			}

			// 添加新点击的商品。组成的Cookie
			Cookie cookie = new Cookie(cookieKey, bid);
			response.addCookie(cookie);

		}
		mav.addObject("Onelist", Onelist);

		return mav;
	}

	// 用户评论页面
	@RequestMapping("/review")
	protected ModelAndView review() {

		ModelAndView mav = new ModelAndView("review");
		return mav;
	}

	// 我的收藏页面显示
	@RequestMapping("/Member_Collect")
	protected ModelAndView member_Collect(HttpSession session) {
		ModelAndView mav = new ModelAndView("member_Collect");
		String uuname = (String) session.getAttribute("uuname");
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		List<CartBook> cList = cartBookService.getList(uuname);
		int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
		if (uunameDentity == 1) {
			session.setAttribute("uunameDentity", false);
		} else {
			session.setAttribute("uunameDentity", true);
		}
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			mav.addObject("cList", null);
			mav.addObject("tPrice", 0);
			mav.addObject("tAmount", 0);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		} else {
			mav.addObject("checkBuyCar", true);
			session.setAttribute("cList", cList);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
			session.setAttribute("tPrice", tPrice);
			int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
			mav.addObject("ttAmount", allAmount);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		}

		List<EnshrineBook> collectList = enshrineBookService.getList(uuname);
		if (collectList == null || collectList.size() == 0) {
			mav.addObject("collectList", null);
		} else {
			int allAmount = Integer.parseInt(enshrineBookService.totalAmount(uuname).toString());
			mav.addObject("tAmount", allAmount);
			mav.addObject("collectList", collectList);
		}

		return mav;
	}

	// 添加收藏
	@ResponseBody
	@RequestMapping("/addCollect")
	protected Map<String, Object> addCollect(@RequestParam("sbid") String uubookid,
			@RequestParam("suid") String uuname) {

		Map<String, Object> result = new HashMap<String, Object>();

		// 用户已登录
		List<EnshrineBook> sel = enshrineBookService.sel();
		boolean boo = false;
		for (EnshrineBook cb : sel) {
			String bookid = cb.getEbid();// 得到书ID
			String sname = cb.getEuname();// 得到用户名
			if (uubookid.equals(bookid) && uuname.equals(sname)) {// 重复收藏
				boo = true;
				enshrineBookService.del(uubookid, uuname);// 书ID、用户名
				result.put("result", false);
				return result;
			}
		}
		String idi = UUID.randomUUID().toString().replace("-", "");
		enshrineBookService.add(uuname, idi, uubookid);// 用户名 书ID
		result.put("result", true);// 添加成功
		return result;

	}

	// 删除收藏
	@RequestMapping("/delCollect")
	protected String delCollect(String sbid, String suid) {
		enshrineBookService.del(sbid, suid);
		return "redirect:/Member_Collect";
	}

	// 资金管理页面【member_Money.jsp】
	@RequestMapping("/member_money")
	protected ModelAndView member_Money(String id, HttpSession session) {
		String uuname = (String) session.getAttribute("uuname");
		ModelAndView mav = new ModelAndView("member_Money");
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		Map<String, Map<String, Object>> cmap = categoryService.getCategoryMap();
		mav.addObject("cmap", cmap);

		List<Map<String, Object>> cMapList = categoryService.getCategoryMapList();
		mav.addObject("cMapList", cMapList);

		// 是否登录成功
		if (uuname == null || uuname.trim().length() == 0) {// 无人登录
			session.setAttribute("uuname", null); // 将当前登录的用户名传输过去+
		} else {
			// 登录成功
			session.setAttribute("uuname", uuname); // 将当前登录的用户名传输过去
			List<CartBook> cList = cartBookService.getList(uuname);

			int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
			if (uunameDentity == 1) {
				session.setAttribute("uunameDentity", false);
			} else {
				session.setAttribute("uunameDentity", true);
			}

			// 购物车没有信息
			if (cList.size() == 0) {
				mav.addObject("checkBuyCar", false);
				mav.addObject("tPrice", 0);
				mav.addObject("tAmount", 0);
				mav.addObject("cList", null);
			} else {
				mav.addObject("cList", cList);
				mav.addObject("checkBuyCar", true);
				// 该购物车所有商品的总价格
				int allPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
				mav.addObject("tPrice", allPrice);

				// 购物车中的总行数
				int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
				mav.addObject("tAmount", allAmount);
			}
		}
		return mav;
	}

	// 销售分析页面
	@RequestMapping("/salesAnalysis")
	protected ModelAndView salesAnalysis(HttpSession session) {
		ModelAndView mav = new ModelAndView("salesAnalysis");
		String uuname = (String) session.getAttribute("uuname");
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		List<CartBook> cList = cartBookService.getList(uuname);
		int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
		if (uunameDentity == 1) {
			session.setAttribute("uunameDentity", false);
		} else {
			session.setAttribute("uunameDentity", true);
		}
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			mav.addObject("cList", null);
			mav.addObject("tPrice", 0);
			mav.addObject("tAmount", 0);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		} else {
			mav.addObject("checkBuyCar", true);
			session.setAttribute("cList", cList);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
			session.setAttribute("tPrice", tPrice);
			int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
			mav.addObject("tAmount", allAmount);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		}
		List<String> name = new ArrayList<String>();
		List<Integer> data = new ArrayList<Integer>();

		List<String> listCategory = cartBookService.getCategory();
		for (String category : listCategory) {
			List<Integer> numberByCategory = cartBookService.getNumberByCategory(category);
			name.add(category);
			for (Integer number : numberByCategory) {
				data.add(number);
			}
		}
		session.setAttribute("name", name);
		session.setAttribute("data", data);
		return mav;
	}



	// 使用echarts，完成界面图表的显示
	@ResponseBody
	@RequestMapping("/echarts")
	protected Map<String, Object> echarts(HttpSession session) throws InterruptedException {
		Map<String, Object> result = new HashMap<String, Object>();
		Thread.sleep(500);
		return result;
	}

	/*
	 * 清空浏览历史记录
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("/emptyCookie") protected Map<String, Object>
	 * emptyCookie(HttpSession session,HttpServletRequest request) { Map<String,
	 * Object> result = new HashMap<String, Object>(); Cookie[] cookies =
	 * request.getCookies(); if (cookies != null && cookies.length > 0) { for (int i
	 * = cookies.length - 1; i >= 0; i--) { cookies[i].setMaxAge(0);
	 * session.setAttribute("emptyCookie", ""); result.put("result", true); } } else
	 * { result.put("result", false); } return result; }
	 */

	// 支付宝支付功能
	@RequestMapping("/alipay.trade.page.pay")
	protected String alipay() {
		return "alipay.trade.page.pay";
	}

	@RequestMapping("/success")
	protected String paysuccess(HttpSession session) {
		String uuname = (String) session.getAttribute("uuname");
		if (uuname == null || uuname.trim().length() == 0) {
			return "error";
		} else {
			userService.updateaddprice("50", uuname);
			System.out.println("服务器异步通知页面路径下的信息：充值成功！");
			return "member_Money";
		}
	}


	// 注销功能 --- 销毁当前的session
	
	//注销功能 --- 销毁当前的session
	@RequestMapping("/logout")
	protected String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

	// 全部订单详情显示
	@RequestMapping("queryId")
	protected ModelAndView queryId(String id,HttpSession session) {
		ModelAndView mav = new ModelAndView("memberorder3");
		String uuname = (String) session.getAttribute("uuname");
		// 判断是否是正常登录【按逻辑执行】
		if (uuname == null || uuname.trim().length() == 0) {
			return new ModelAndView("error");
		}
		List<CartBook> cList = cartBookService.getList(uuname);
		int uunameDentity = Integer.parseInt(userService.checkDentity(uuname).toString());
		if (uunameDentity == 1) {
			session.setAttribute("uunameDentity", false);
		} else {
			session.setAttribute("uunameDentity", true);
		}
		if (cList.size() == 0 || cList == null) {
			mav.addObject("checkBuyCar", false);
			mav.addObject("cList", null);
			mav.addObject("tPrice", 0);
			mav.addObject("tAmount", 0);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		} else {
			mav.addObject("checkBuyCar", true);
			session.setAttribute("cList", cList);
			int tPrice = Integer.parseInt(cartBookService.totalPrice(uuname).toString());
			session.setAttribute("tPrice", tPrice);
			int allAmount = Integer.parseInt(cartBookService.totalAmount(uuname).toString());
			mav.addObject("tAmount", allAmount);
			int userPrice = Integer.parseInt(userService.userPrice(uuname).toString());
			mav.addObject("userPrice", userPrice);
		}
		List<OrderList> detailsOrderInformation = cartBookService.getOrderAll2(id);
		session.setAttribute("doi", detailsOrderInformation);
		return mav;
	}
	
	@RequestMapping("/hello2")
	protected String hello2() {
		return "hello2";
	}
	@RequestMapping("/category")
	protected ModelAndView category() {
		List<Map<String, Object>> cmap = categoryService.getCategoryMaps();
		ModelAndView mav = new ModelAndView("category");
		mav.addObject("cmap", cmap);
		return mav;
	}

	// 书类新增页面的显示
	@RequestMapping("/addcate")
	protected ModelAndView addcate() {
		ModelAndView mav = new ModelAndView("addcate");
		Map<String, Map<String, Object>> cMapList = categoryService.getCategoryMap();
		mav.addObject("cMapList", cMapList);
		return mav;
	}

	// 完成书类新增页面的保存
	@RequestMapping("/addcatesave")
	protected String addNew(Category c) {
		categoryService.save(c);
		return "redirect:/category";
	}

	// 完成修改书类页面的显示
	@RequestMapping("/editcate")
	protected ModelAndView editcate(String id) {
		ModelAndView mav = new ModelAndView("editcate");
		// Category c = categoryService.getById(id);
		List<Map<String, Object>> cMapList = categoryService.getById(id);
		mav.addObject("cMapList", cMapList);
		// mav.addObject("editData", c);
		return mav;
	}

	// 完成修改书类页面的保存
	@RequestMapping("/editcatesave")
	protected String editcatesave(String cid, String category) {
		productService.updateCategory(cid, category);
		return "redirect:/category";
	}

	// 完成删除书类页面的操作
	@ResponseBody
	@RequestMapping("/deletecate")
	protected Map<String, Object> deletecate(String cid) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (cid != null) {
			cartBookService.deleteById(cid);
			map.put("result", true);
		} else {
			map.put("result", false);
		}
		return map;
	}
}