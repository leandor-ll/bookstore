package com.book.domain;

import java.util.ArrayList;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
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

        public Criteria andBidIsNull() {
            addCriterion("bid is null");
            return (Criteria) this;
        }

        public Criteria andBidIsNotNull() {
            addCriterion("bid is not null");
            return (Criteria) this;
        }

        public Criteria andBidEqualTo(String value) {
            addCriterion("bid =", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotEqualTo(String value) {
            addCriterion("bid <>", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThan(String value) {
            addCriterion("bid >", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThanOrEqualTo(String value) {
            addCriterion("bid >=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThan(String value) {
            addCriterion("bid <", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThanOrEqualTo(String value) {
            addCriterion("bid <=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLike(String value) {
            addCriterion("bid like", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotLike(String value) {
            addCriterion("bid not like", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidIn(List<String> values) {
            addCriterion("bid in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotIn(List<String> values) {
            addCriterion("bid not in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidBetween(String value1, String value2) {
            addCriterion("bid between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotBetween(String value1, String value2) {
            addCriterion("bid not between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBcategoryIsNull() {
            addCriterion("bcategory is null");
            return (Criteria) this;
        }

        public Criteria andBcategoryIsNotNull() {
            addCriterion("bcategory is not null");
            return (Criteria) this;
        }

        public Criteria andBcategoryEqualTo(String value) {
            addCriterion("bcategory =", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryNotEqualTo(String value) {
            addCriterion("bcategory <>", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryGreaterThan(String value) {
            addCriterion("bcategory >", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryGreaterThanOrEqualTo(String value) {
            addCriterion("bcategory >=", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryLessThan(String value) {
            addCriterion("bcategory <", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryLessThanOrEqualTo(String value) {
            addCriterion("bcategory <=", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryLike(String value) {
            addCriterion("bcategory like", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryNotLike(String value) {
            addCriterion("bcategory not like", value, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryIn(List<String> values) {
            addCriterion("bcategory in", values, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryNotIn(List<String> values) {
            addCriterion("bcategory not in", values, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryBetween(String value1, String value2) {
            addCriterion("bcategory between", value1, value2, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBcategoryNotBetween(String value1, String value2) {
            addCriterion("bcategory not between", value1, value2, "bcategory");
            return (Criteria) this;
        }

        public Criteria andBnameIsNull() {
            addCriterion("bname is null");
            return (Criteria) this;
        }

        public Criteria andBnameIsNotNull() {
            addCriterion("bname is not null");
            return (Criteria) this;
        }

        public Criteria andBnameEqualTo(String value) {
            addCriterion("bname =", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotEqualTo(String value) {
            addCriterion("bname <>", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameGreaterThan(String value) {
            addCriterion("bname >", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameGreaterThanOrEqualTo(String value) {
            addCriterion("bname >=", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLessThan(String value) {
            addCriterion("bname <", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLessThanOrEqualTo(String value) {
            addCriterion("bname <=", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLike(String value) {
            addCriterion("bname like", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotLike(String value) {
            addCriterion("bname not like", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameIn(List<String> values) {
            addCriterion("bname in", values, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotIn(List<String> values) {
            addCriterion("bname not in", values, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameBetween(String value1, String value2) {
            addCriterion("bname between", value1, value2, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotBetween(String value1, String value2) {
            addCriterion("bname not between", value1, value2, "bname");
            return (Criteria) this;
        }

        public Criteria andBauthorIsNull() {
            addCriterion("bauthor is null");
            return (Criteria) this;
        }

        public Criteria andBauthorIsNotNull() {
            addCriterion("bauthor is not null");
            return (Criteria) this;
        }

        public Criteria andBauthorEqualTo(String value) {
            addCriterion("bauthor =", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorNotEqualTo(String value) {
            addCriterion("bauthor <>", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorGreaterThan(String value) {
            addCriterion("bauthor >", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorGreaterThanOrEqualTo(String value) {
            addCriterion("bauthor >=", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorLessThan(String value) {
            addCriterion("bauthor <", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorLessThanOrEqualTo(String value) {
            addCriterion("bauthor <=", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorLike(String value) {
            addCriterion("bauthor like", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorNotLike(String value) {
            addCriterion("bauthor not like", value, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorIn(List<String> values) {
            addCriterion("bauthor in", values, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorNotIn(List<String> values) {
            addCriterion("bauthor not in", values, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorBetween(String value1, String value2) {
            addCriterion("bauthor between", value1, value2, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBauthorNotBetween(String value1, String value2) {
            addCriterion("bauthor not between", value1, value2, "bauthor");
            return (Criteria) this;
        }

        public Criteria andBpublishIsNull() {
            addCriterion("bpublish is null");
            return (Criteria) this;
        }

        public Criteria andBpublishIsNotNull() {
            addCriterion("bpublish is not null");
            return (Criteria) this;
        }

        public Criteria andBpublishEqualTo(String value) {
            addCriterion("bpublish =", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishNotEqualTo(String value) {
            addCriterion("bpublish <>", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishGreaterThan(String value) {
            addCriterion("bpublish >", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishGreaterThanOrEqualTo(String value) {
            addCriterion("bpublish >=", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishLessThan(String value) {
            addCriterion("bpublish <", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishLessThanOrEqualTo(String value) {
            addCriterion("bpublish <=", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishLike(String value) {
            addCriterion("bpublish like", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishNotLike(String value) {
            addCriterion("bpublish not like", value, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishIn(List<String> values) {
            addCriterion("bpublish in", values, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishNotIn(List<String> values) {
            addCriterion("bpublish not in", values, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishBetween(String value1, String value2) {
            addCriterion("bpublish between", value1, value2, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpublishNotBetween(String value1, String value2) {
            addCriterion("bpublish not between", value1, value2, "bpublish");
            return (Criteria) this;
        }

        public Criteria andBpriceIsNull() {
            addCriterion("bprice is null");
            return (Criteria) this;
        }

        public Criteria andBpriceIsNotNull() {
            addCriterion("bprice is not null");
            return (Criteria) this;
        }

        public Criteria andBpriceEqualTo(Integer value) {
            addCriterion("bprice =", value, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceNotEqualTo(Integer value) {
            addCriterion("bprice <>", value, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceGreaterThan(Integer value) {
            addCriterion("bprice >", value, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("bprice >=", value, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceLessThan(Integer value) {
            addCriterion("bprice <", value, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceLessThanOrEqualTo(Integer value) {
            addCriterion("bprice <=", value, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceIn(List<Integer> values) {
            addCriterion("bprice in", values, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceNotIn(List<Integer> values) {
            addCriterion("bprice not in", values, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceBetween(Integer value1, Integer value2) {
            addCriterion("bprice between", value1, value2, "bprice");
            return (Criteria) this;
        }

        public Criteria andBpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("bprice not between", value1, value2, "bprice");
            return (Criteria) this;
        }

        public Criteria andBnumberIsNull() {
            addCriterion("bnumber is null");
            return (Criteria) this;
        }

        public Criteria andBnumberIsNotNull() {
            addCriterion("bnumber is not null");
            return (Criteria) this;
        }

        public Criteria andBnumberEqualTo(Integer value) {
            addCriterion("bnumber =", value, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberNotEqualTo(Integer value) {
            addCriterion("bnumber <>", value, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberGreaterThan(Integer value) {
            addCriterion("bnumber >", value, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("bnumber >=", value, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberLessThan(Integer value) {
            addCriterion("bnumber <", value, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberLessThanOrEqualTo(Integer value) {
            addCriterion("bnumber <=", value, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberIn(List<Integer> values) {
            addCriterion("bnumber in", values, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberNotIn(List<Integer> values) {
            addCriterion("bnumber not in", values, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberBetween(Integer value1, Integer value2) {
            addCriterion("bnumber between", value1, value2, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("bnumber not between", value1, value2, "bnumber");
            return (Criteria) this;
        }

        public Criteria andBpicIsNull() {
            addCriterion("bpic is null");
            return (Criteria) this;
        }

        public Criteria andBpicIsNotNull() {
            addCriterion("bpic is not null");
            return (Criteria) this;
        }

        public Criteria andBpicEqualTo(String value) {
            addCriterion("bpic =", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicNotEqualTo(String value) {
            addCriterion("bpic <>", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicGreaterThan(String value) {
            addCriterion("bpic >", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicGreaterThanOrEqualTo(String value) {
            addCriterion("bpic >=", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicLessThan(String value) {
            addCriterion("bpic <", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicLessThanOrEqualTo(String value) {
            addCriterion("bpic <=", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicLike(String value) {
            addCriterion("bpic like", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicNotLike(String value) {
            addCriterion("bpic not like", value, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicIn(List<String> values) {
            addCriterion("bpic in", values, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicNotIn(List<String> values) {
            addCriterion("bpic not in", values, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicBetween(String value1, String value2) {
            addCriterion("bpic between", value1, value2, "bpic");
            return (Criteria) this;
        }

        public Criteria andBpicNotBetween(String value1, String value2) {
            addCriterion("bpic not between", value1, value2, "bpic");
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