package com.book.domain;

import java.util.ArrayList;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andUidIsNull() {
            addCriterion("uid is null");
            return (Criteria) this;
        }

        public Criteria andUidIsNotNull() {
            addCriterion("uid is not null");
            return (Criteria) this;
        }

        public Criteria andUidEqualTo(String value) {
            addCriterion("uid =", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotEqualTo(String value) {
            addCriterion("uid <>", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThan(String value) {
            addCriterion("uid >", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidGreaterThanOrEqualTo(String value) {
            addCriterion("uid >=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThan(String value) {
            addCriterion("uid <", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLessThanOrEqualTo(String value) {
            addCriterion("uid <=", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidLike(String value) {
            addCriterion("uid like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotLike(String value) {
            addCriterion("uid not like", value, "uid");
            return (Criteria) this;
        }

        public Criteria andUidIn(List<String> values) {
            addCriterion("uid in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotIn(List<String> values) {
            addCriterion("uid not in", values, "uid");
            return (Criteria) this;
        }

        public Criteria andUidBetween(String value1, String value2) {
            addCriterion("uid between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUidNotBetween(String value1, String value2) {
            addCriterion("uid not between", value1, value2, "uid");
            return (Criteria) this;
        }

        public Criteria andUnameIsNull() {
            addCriterion("uname is null");
            return (Criteria) this;
        }

        public Criteria andUnameIsNotNull() {
            addCriterion("uname is not null");
            return (Criteria) this;
        }

        public Criteria andUnameEqualTo(String value) {
            addCriterion("uname =", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotEqualTo(String value) {
            addCriterion("uname <>", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThan(String value) {
            addCriterion("uname >", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameGreaterThanOrEqualTo(String value) {
            addCriterion("uname >=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThan(String value) {
            addCriterion("uname <", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLessThanOrEqualTo(String value) {
            addCriterion("uname <=", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameLike(String value) {
            addCriterion("uname like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotLike(String value) {
            addCriterion("uname not like", value, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameIn(List<String> values) {
            addCriterion("uname in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotIn(List<String> values) {
            addCriterion("uname not in", values, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameBetween(String value1, String value2) {
            addCriterion("uname between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUnameNotBetween(String value1, String value2) {
            addCriterion("uname not between", value1, value2, "uname");
            return (Criteria) this;
        }

        public Criteria andUpasswordIsNull() {
            addCriterion("upassword is null");
            return (Criteria) this;
        }

        public Criteria andUpasswordIsNotNull() {
            addCriterion("upassword is not null");
            return (Criteria) this;
        }

        public Criteria andUpasswordEqualTo(String value) {
            addCriterion("upassword =", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordNotEqualTo(String value) {
            addCriterion("upassword <>", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordGreaterThan(String value) {
            addCriterion("upassword >", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordGreaterThanOrEqualTo(String value) {
            addCriterion("upassword >=", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordLessThan(String value) {
            addCriterion("upassword <", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordLessThanOrEqualTo(String value) {
            addCriterion("upassword <=", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordLike(String value) {
            addCriterion("upassword like", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordNotLike(String value) {
            addCriterion("upassword not like", value, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordIn(List<String> values) {
            addCriterion("upassword in", values, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordNotIn(List<String> values) {
            addCriterion("upassword not in", values, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordBetween(String value1, String value2) {
            addCriterion("upassword between", value1, value2, "upassword");
            return (Criteria) this;
        }

        public Criteria andUpasswordNotBetween(String value1, String value2) {
            addCriterion("upassword not between", value1, value2, "upassword");
            return (Criteria) this;
        }

        public Criteria andUidcardIsNull() {
            addCriterion("uIDcard is null");
            return (Criteria) this;
        }

        public Criteria andUidcardIsNotNull() {
            addCriterion("uIDcard is not null");
            return (Criteria) this;
        }

        public Criteria andUidcardEqualTo(String value) {
            addCriterion("uIDcard =", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardNotEqualTo(String value) {
            addCriterion("uIDcard <>", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardGreaterThan(String value) {
            addCriterion("uIDcard >", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardGreaterThanOrEqualTo(String value) {
            addCriterion("uIDcard >=", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardLessThan(String value) {
            addCriterion("uIDcard <", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardLessThanOrEqualTo(String value) {
            addCriterion("uIDcard <=", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardLike(String value) {
            addCriterion("uIDcard like", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardNotLike(String value) {
            addCriterion("uIDcard not like", value, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardIn(List<String> values) {
            addCriterion("uIDcard in", values, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardNotIn(List<String> values) {
            addCriterion("uIDcard not in", values, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardBetween(String value1, String value2) {
            addCriterion("uIDcard between", value1, value2, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUidcardNotBetween(String value1, String value2) {
            addCriterion("uIDcard not between", value1, value2, "uidcard");
            return (Criteria) this;
        }

        public Criteria andUdentityIsNull() {
            addCriterion("udentity is null");
            return (Criteria) this;
        }

        public Criteria andUdentityIsNotNull() {
            addCriterion("udentity is not null");
            return (Criteria) this;
        }

        public Criteria andUdentityEqualTo(String value) {
            addCriterion("udentity =", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityNotEqualTo(String value) {
            addCriterion("udentity <>", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityGreaterThan(String value) {
            addCriterion("udentity >", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityGreaterThanOrEqualTo(String value) {
            addCriterion("udentity >=", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityLessThan(String value) {
            addCriterion("udentity <", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityLessThanOrEqualTo(String value) {
            addCriterion("udentity <=", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityLike(String value) {
            addCriterion("udentity like", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityNotLike(String value) {
            addCriterion("udentity not like", value, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityIn(List<String> values) {
            addCriterion("udentity in", values, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityNotIn(List<String> values) {
            addCriterion("udentity not in", values, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityBetween(String value1, String value2) {
            addCriterion("udentity between", value1, value2, "udentity");
            return (Criteria) this;
        }

        public Criteria andUdentityNotBetween(String value1, String value2) {
            addCriterion("udentity not between", value1, value2, "udentity");
            return (Criteria) this;
        }

        public Criteria andUpriceIsNull() {
            addCriterion("uprice is null");
            return (Criteria) this;
        }

        public Criteria andUpriceIsNotNull() {
            addCriterion("uprice is not null");
            return (Criteria) this;
        }

        public Criteria andUpriceEqualTo(Integer value) {
            addCriterion("uprice =", value, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceNotEqualTo(Integer value) {
            addCriterion("uprice <>", value, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceGreaterThan(Integer value) {
            addCriterion("uprice >", value, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("uprice >=", value, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceLessThan(Integer value) {
            addCriterion("uprice <", value, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceLessThanOrEqualTo(Integer value) {
            addCriterion("uprice <=", value, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceIn(List<Integer> values) {
            addCriterion("uprice in", values, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceNotIn(List<Integer> values) {
            addCriterion("uprice not in", values, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceBetween(Integer value1, Integer value2) {
            addCriterion("uprice between", value1, value2, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("uprice not between", value1, value2, "uprice");
            return (Criteria) this;
        }

        public Criteria andUpicIsNull() {
            addCriterion("upic is null");
            return (Criteria) this;
        }

        public Criteria andUpicIsNotNull() {
            addCriterion("upic is not null");
            return (Criteria) this;
        }

        public Criteria andUpicEqualTo(String value) {
            addCriterion("upic =", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicNotEqualTo(String value) {
            addCriterion("upic <>", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicGreaterThan(String value) {
            addCriterion("upic >", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicGreaterThanOrEqualTo(String value) {
            addCriterion("upic >=", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicLessThan(String value) {
            addCriterion("upic <", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicLessThanOrEqualTo(String value) {
            addCriterion("upic <=", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicLike(String value) {
            addCriterion("upic like", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicNotLike(String value) {
            addCriterion("upic not like", value, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicIn(List<String> values) {
            addCriterion("upic in", values, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicNotIn(List<String> values) {
            addCriterion("upic not in", values, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicBetween(String value1, String value2) {
            addCriterion("upic between", value1, value2, "upic");
            return (Criteria) this;
        }

        public Criteria andUpicNotBetween(String value1, String value2) {
            addCriterion("upic not between", value1, value2, "upic");
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