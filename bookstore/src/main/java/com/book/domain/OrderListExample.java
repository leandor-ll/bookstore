package com.book.domain;

import java.util.ArrayList;
import java.util.List;

public class OrderListExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderListExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOuidIsNull() {
            addCriterion("ouid is null");
            return (Criteria) this;
        }

        public Criteria andOuidIsNotNull() {
            addCriterion("ouid is not null");
            return (Criteria) this;
        }

        public Criteria andOuidEqualTo(String value) {
            addCriterion("ouid =", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidNotEqualTo(String value) {
            addCriterion("ouid <>", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidGreaterThan(String value) {
            addCriterion("ouid >", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidGreaterThanOrEqualTo(String value) {
            addCriterion("ouid >=", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidLessThan(String value) {
            addCriterion("ouid <", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidLessThanOrEqualTo(String value) {
            addCriterion("ouid <=", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidLike(String value) {
            addCriterion("ouid like", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidNotLike(String value) {
            addCriterion("ouid not like", value, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidIn(List<String> values) {
            addCriterion("ouid in", values, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidNotIn(List<String> values) {
            addCriterion("ouid not in", values, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidBetween(String value1, String value2) {
            addCriterion("ouid between", value1, value2, "ouid");
            return (Criteria) this;
        }

        public Criteria andOuidNotBetween(String value1, String value2) {
            addCriterion("ouid not between", value1, value2, "ouid");
            return (Criteria) this;
        }

        public Criteria andObidIsNull() {
            addCriterion("obid is null");
            return (Criteria) this;
        }

        public Criteria andObidIsNotNull() {
            addCriterion("obid is not null");
            return (Criteria) this;
        }

        public Criteria andObidEqualTo(String value) {
            addCriterion("obid =", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidNotEqualTo(String value) {
            addCriterion("obid <>", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidGreaterThan(String value) {
            addCriterion("obid >", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidGreaterThanOrEqualTo(String value) {
            addCriterion("obid >=", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidLessThan(String value) {
            addCriterion("obid <", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidLessThanOrEqualTo(String value) {
            addCriterion("obid <=", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidLike(String value) {
            addCriterion("obid like", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidNotLike(String value) {
            addCriterion("obid not like", value, "obid");
            return (Criteria) this;
        }

        public Criteria andObidIn(List<String> values) {
            addCriterion("obid in", values, "obid");
            return (Criteria) this;
        }

        public Criteria andObidNotIn(List<String> values) {
            addCriterion("obid not in", values, "obid");
            return (Criteria) this;
        }

        public Criteria andObidBetween(String value1, String value2) {
            addCriterion("obid between", value1, value2, "obid");
            return (Criteria) this;
        }

        public Criteria andObidNotBetween(String value1, String value2) {
            addCriterion("obid not between", value1, value2, "obid");
            return (Criteria) this;
        }

        public Criteria andOnameIsNull() {
            addCriterion("oname is null");
            return (Criteria) this;
        }

        public Criteria andOnameIsNotNull() {
            addCriterion("oname is not null");
            return (Criteria) this;
        }

        public Criteria andOnameEqualTo(String value) {
            addCriterion("oname =", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameNotEqualTo(String value) {
            addCriterion("oname <>", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameGreaterThan(String value) {
            addCriterion("oname >", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameGreaterThanOrEqualTo(String value) {
            addCriterion("oname >=", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameLessThan(String value) {
            addCriterion("oname <", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameLessThanOrEqualTo(String value) {
            addCriterion("oname <=", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameLike(String value) {
            addCriterion("oname like", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameNotLike(String value) {
            addCriterion("oname not like", value, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameIn(List<String> values) {
            addCriterion("oname in", values, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameNotIn(List<String> values) {
            addCriterion("oname not in", values, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameBetween(String value1, String value2) {
            addCriterion("oname between", value1, value2, "oname");
            return (Criteria) this;
        }

        public Criteria andOnameNotBetween(String value1, String value2) {
            addCriterion("oname not between", value1, value2, "oname");
            return (Criteria) this;
        }

        public Criteria andOpriceIsNull() {
            addCriterion("oprice is null");
            return (Criteria) this;
        }

        public Criteria andOpriceIsNotNull() {
            addCriterion("oprice is not null");
            return (Criteria) this;
        }

        public Criteria andOpriceEqualTo(Integer value) {
            addCriterion("oprice =", value, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceNotEqualTo(Integer value) {
            addCriterion("oprice <>", value, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceGreaterThan(Integer value) {
            addCriterion("oprice >", value, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("oprice >=", value, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceLessThan(Integer value) {
            addCriterion("oprice <", value, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceLessThanOrEqualTo(Integer value) {
            addCriterion("oprice <=", value, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceIn(List<Integer> values) {
            addCriterion("oprice in", values, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceNotIn(List<Integer> values) {
            addCriterion("oprice not in", values, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceBetween(Integer value1, Integer value2) {
            addCriterion("oprice between", value1, value2, "oprice");
            return (Criteria) this;
        }

        public Criteria andOpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("oprice not between", value1, value2, "oprice");
            return (Criteria) this;
        }

        public Criteria andOnumberIsNull() {
            addCriterion("onumber is null");
            return (Criteria) this;
        }

        public Criteria andOnumberIsNotNull() {
            addCriterion("onumber is not null");
            return (Criteria) this;
        }

        public Criteria andOnumberEqualTo(Integer value) {
            addCriterion("onumber =", value, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberNotEqualTo(Integer value) {
            addCriterion("onumber <>", value, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberGreaterThan(Integer value) {
            addCriterion("onumber >", value, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("onumber >=", value, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberLessThan(Integer value) {
            addCriterion("onumber <", value, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberLessThanOrEqualTo(Integer value) {
            addCriterion("onumber <=", value, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberIn(List<Integer> values) {
            addCriterion("onumber in", values, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberNotIn(List<Integer> values) {
            addCriterion("onumber not in", values, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberBetween(Integer value1, Integer value2) {
            addCriterion("onumber between", value1, value2, "onumber");
            return (Criteria) this;
        }

        public Criteria andOnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("onumber not between", value1, value2, "onumber");
            return (Criteria) this;
        }

        public Criteria andOstatusIsNull() {
            addCriterion("ostatus is null");
            return (Criteria) this;
        }

        public Criteria andOstatusIsNotNull() {
            addCriterion("ostatus is not null");
            return (Criteria) this;
        }

        public Criteria andOstatusEqualTo(String value) {
            addCriterion("ostatus =", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotEqualTo(String value) {
            addCriterion("ostatus <>", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusGreaterThan(String value) {
            addCriterion("ostatus >", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusGreaterThanOrEqualTo(String value) {
            addCriterion("ostatus >=", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusLessThan(String value) {
            addCriterion("ostatus <", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusLessThanOrEqualTo(String value) {
            addCriterion("ostatus <=", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusLike(String value) {
            addCriterion("ostatus like", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotLike(String value) {
            addCriterion("ostatus not like", value, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusIn(List<String> values) {
            addCriterion("ostatus in", values, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotIn(List<String> values) {
            addCriterion("ostatus not in", values, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusBetween(String value1, String value2) {
            addCriterion("ostatus between", value1, value2, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOstatusNotBetween(String value1, String value2) {
            addCriterion("ostatus not between", value1, value2, "ostatus");
            return (Criteria) this;
        }

        public Criteria andOrderidIsNull() {
            addCriterion("orderid is null");
            return (Criteria) this;
        }

        public Criteria andOrderidIsNotNull() {
            addCriterion("orderid is not null");
            return (Criteria) this;
        }

        public Criteria andOrderidEqualTo(String value) {
            addCriterion("orderid =", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotEqualTo(String value) {
            addCriterion("orderid <>", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidGreaterThan(String value) {
            addCriterion("orderid >", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidGreaterThanOrEqualTo(String value) {
            addCriterion("orderid >=", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLessThan(String value) {
            addCriterion("orderid <", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLessThanOrEqualTo(String value) {
            addCriterion("orderid <=", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidLike(String value) {
            addCriterion("orderid like", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotLike(String value) {
            addCriterion("orderid not like", value, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidIn(List<String> values) {
            addCriterion("orderid in", values, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotIn(List<String> values) {
            addCriterion("orderid not in", values, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidBetween(String value1, String value2) {
            addCriterion("orderid between", value1, value2, "orderid");
            return (Criteria) this;
        }

        public Criteria andOrderidNotBetween(String value1, String value2) {
            addCriterion("orderid not between", value1, value2, "orderid");
            return (Criteria) this;
        }

        public Criteria andOpicIsNull() {
            addCriterion("opic is null");
            return (Criteria) this;
        }

        public Criteria andOpicIsNotNull() {
            addCriterion("opic is not null");
            return (Criteria) this;
        }

        public Criteria andOpicEqualTo(String value) {
            addCriterion("opic =", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicNotEqualTo(String value) {
            addCriterion("opic <>", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicGreaterThan(String value) {
            addCriterion("opic >", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicGreaterThanOrEqualTo(String value) {
            addCriterion("opic >=", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicLessThan(String value) {
            addCriterion("opic <", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicLessThanOrEqualTo(String value) {
            addCriterion("opic <=", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicLike(String value) {
            addCriterion("opic like", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicNotLike(String value) {
            addCriterion("opic not like", value, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicIn(List<String> values) {
            addCriterion("opic in", values, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicNotIn(List<String> values) {
            addCriterion("opic not in", values, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicBetween(String value1, String value2) {
            addCriterion("opic between", value1, value2, "opic");
            return (Criteria) this;
        }

        public Criteria andOpicNotBetween(String value1, String value2) {
            addCriterion("opic not between", value1, value2, "opic");
            return (Criteria) this;
        }

        public Criteria andOaddressIsNull() {
            addCriterion("oaddress is null");
            return (Criteria) this;
        }

        public Criteria andOaddressIsNotNull() {
            addCriterion("oaddress is not null");
            return (Criteria) this;
        }

        public Criteria andOaddressEqualTo(String value) {
            addCriterion("oaddress =", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressNotEqualTo(String value) {
            addCriterion("oaddress <>", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressGreaterThan(String value) {
            addCriterion("oaddress >", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressGreaterThanOrEqualTo(String value) {
            addCriterion("oaddress >=", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressLessThan(String value) {
            addCriterion("oaddress <", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressLessThanOrEqualTo(String value) {
            addCriterion("oaddress <=", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressLike(String value) {
            addCriterion("oaddress like", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressNotLike(String value) {
            addCriterion("oaddress not like", value, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressIn(List<String> values) {
            addCriterion("oaddress in", values, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressNotIn(List<String> values) {
            addCriterion("oaddress not in", values, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressBetween(String value1, String value2) {
            addCriterion("oaddress between", value1, value2, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOaddressNotBetween(String value1, String value2) {
            addCriterion("oaddress not between", value1, value2, "oaddress");
            return (Criteria) this;
        }

        public Criteria andOcategoryIsNull() {
            addCriterion("ocategory is null");
            return (Criteria) this;
        }

        public Criteria andOcategoryIsNotNull() {
            addCriterion("ocategory is not null");
            return (Criteria) this;
        }

        public Criteria andOcategoryEqualTo(String value) {
            addCriterion("ocategory =", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryNotEqualTo(String value) {
            addCriterion("ocategory <>", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryGreaterThan(String value) {
            addCriterion("ocategory >", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryGreaterThanOrEqualTo(String value) {
            addCriterion("ocategory >=", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryLessThan(String value) {
            addCriterion("ocategory <", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryLessThanOrEqualTo(String value) {
            addCriterion("ocategory <=", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryLike(String value) {
            addCriterion("ocategory like", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryNotLike(String value) {
            addCriterion("ocategory not like", value, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryIn(List<String> values) {
            addCriterion("ocategory in", values, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryNotIn(List<String> values) {
            addCriterion("ocategory not in", values, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryBetween(String value1, String value2) {
            addCriterion("ocategory between", value1, value2, "ocategory");
            return (Criteria) this;
        }

        public Criteria andOcategoryNotBetween(String value1, String value2) {
            addCriterion("ocategory not between", value1, value2, "ocategory");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}