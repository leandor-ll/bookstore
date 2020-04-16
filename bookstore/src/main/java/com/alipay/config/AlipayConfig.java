package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101500694117";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCE3KulQ03JdE16ahOpHyGRmaV7Rzs76Rng09CWlWhn2rXCDP/1s+nl+5zI8mc6xB+UfvWpzJAbAWqOmAO0APGw2jILmDdB9bemDW5ddxb9Ej9JnQYQM/ZSnhtcGdrMSqxiQVthc75MrREG9/bNo7K8QsxjmFHQbwX7uCIMyIeXXKKxrpEw+/QRhyWZeGnZgA5Hia/2mY/XJiKU7/p/ynnLVrvG8Bqjhi73KX1vjiZZBFKv/R2SLVPSKlHoy1kPQ2V2/XVE22eGkPveIBX6qVnBBbJ/+CZDXA8ZtJpfFlp2WuCh+uWgGSxPWlNt/keCPcNfHFcxeZbpendNu0V791cFAgMBAAECggEAefWSvnZkrjtLb8Z127YO+3d91wcREbKtJZtqCwCFQWgbllCWmPWZDJsGVdNl/STRFF/ipAZ6db+8D77tD0wakEwKymfkuXCULyJ/H97UxGP+olU4nqEESNyHoui81vDpApyaBH/ZvMrVKX9vF19gD76FnhrRZzKy3FkvMGrXRJHaA0C7DGxGL9H2HyCU6WX3nwJiv5kHMCzn3A6EaC+6CgtEEiynY1TYyTXK2KOrm3ikbZ9HP5tWuvg+eh2e9+emFG0fUgcjSXaIUlVSgAZ+WQPXaCR9KkiQRE9m6v68lTXoO5uypZVQjiXOTCvSLN1LsH4RyWdLlo4xCffGYvy6wQKBgQDFrtThM5ZmEDgC1JQeKPN/tVPsZ0t0h8DHbYL2Ril+nQ5kcae4sHKi/7RF9ZviyTRm0/XTHPo4CZiczk+RHYzCQrW590yxqbMgzJJ4ltmHr9sxJ8+RDL53z8uA+JxC2KK228eHBzV8n/RoDO2tajvQw/3jGiKazdb7TcVwJ16rNQKBgQCsDoLeInbKayGr5g8+wfISy3HqNRINIEV2NtVAFBQl6P66Bsn7fQFb1FTYgLKMAllleSA+uNC2xrbEBovuDIlqYbW69SdvXHTtYDYZYt8TFlXlSnCJM4tasl53VhqI9n9cP9zQVYbYiPDM+6ZfhzdJYOS7cHSv/PmnSyMFEYSmkQKBgG7fSMxqF59010VXHx/vTerBs6kyohJglVIE7N/dqCY4Rjs1t6ERbapYCi72uxCuUrKdjRFz/i7xyuOfnubAERNfQPdlaWF30VzDAB+cU7MTgbeHIZaz9BvUssnKJjIjuNcgWz8zXt9gAz9ciO2rWJMVac82+FOkwT+/dc4adrFFAoGAM9sLxjdM5iTzuQNVhOyfMNrwMk5camhXhxFvpChpCiP24co6Bfne9vY/vCDNrzTmDJc9CKpa/TtWyi3O7qgIom9gfkB06jNLal+c7nnGEdKhgMG2uSM31NX9cqoYxT7Fk+ALhR7BzXE4Yg9WTWRLXWo+hd+Wy5PLCoiyvUxSVoECgYA5RYDNZo+XPMO67cFU7fC1BLt2Z0QTredtSCJ53hFtjEv3IdKdFuM85iOEAXzzH6tNXXO7Bv3M5AwWf09bXjXknzvhw50lryKuREdca60JmTDl5c0XTlvUUb2L3mSBmJaQItpbCY4jcYwceaiDEWJwk0UXCci1kpIy1l3tDULE8w==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhNyrpUNNyXRNemoTqR8hkZmle0c7O+kZ4NPQlpVoZ9q1wgz/9bPp5fucyPJnOsQflH71qcyQGwFqjpgDtADxsNoyC5g3QfW3pg1uXXcW/RI/SZ0GEDP2Up4bXBnazEqsYkFbYXO+TK0RBvf2zaOyvELMY5hR0G8F+7giDMiHl1yisa6RMPv0EYclmXhp2YAOR4mv9pmP1yYilO/6f8p5y1a7xvAao4Yu9yl9b44mWQRSr/0dki1T0ipR6MtZD0Nldv11RNtnhpD73iAV+qlZwQWyf/gmQ1wPGbSaXxZadlrgofrloBksT1pTbf5Hgj3DXxxXMXmW6Xp3TbtFe/dXBQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/book-store/success";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/book-store/Member_Money";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

