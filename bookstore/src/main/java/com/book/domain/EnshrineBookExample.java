package com.book.domain;

import java.util.ArrayList;
import java.util.List;

public class EnshrineBookExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EnshrineBookExample() {
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

        public Criteria andEidIsNull() {
            addCriterion("eid is null");
            return (Criteria) this;
        }

        public Criteria andEidIsNotNull() {
            addCriterion("eid is not null");
            return (Criteria) this;
        }

        public Criteria andEidEqualTo(String value) {
            addCriterion("eid =", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotEqualTo(String value) {
            addCriterion("eid <>", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidGreaterThan(String value) {
            addCriterion("eid >", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidGreaterThanOrEqualTo(String value) {
            addCriterion("eid >=", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLessThan(String value) {
            addCriterion("eid <", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLessThanOrEqualTo(String value) {
            addCriterion("eid <=", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidLike(String value) {
            addCriterion("eid like", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotLike(String value) {
            addCriterion("eid not like", value, "eid");
            return (Criteria) this;
        }

        public Criteria andEidIn(List<String> values) {
            addCriterion("eid in", values, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotIn(List<String> values) {
            addCriterion("eid not in", values, "eid");
            return (Criteria) this;
        }

        public Criteria andEidBetween(String value1, String value2) {
            addCriterion("eid between", value1, value2, "eid");
            return (Criteria) this;
        }

        public Criteria andEidNotBetween(String value1, String value2) {
            addCriterion("eid not between", value1, value2, "eid");
            return (Criteria) this;
        }

        public Criteria andEunameIsNull() {
            addCriterion("euname is null");
            return (Criteria) this;
        }

        public Criteria andEunameIsNotNull() {
            addCriterion("euname is not null");
            return (Criteria) this;
        }

        public Criteria andEunameEqualTo(String value) {
            addCriterion("euname =", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameNotEqualTo(String value) {
            addCriterion("euname <>", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameGreaterThan(String value) {
            addCriterion("euname >", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameGreaterThanOrEqualTo(String value) {
            addCriterion("euname >=", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameLessThan(String value) {
            addCriterion("euname <", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameLessThanOrEqualTo(String value) {
            addCriterion("euname <=", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameLike(String value) {
            addCriterion("euname like", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameNotLike(String value) {
            addCriterion("euname not like", value, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameIn(List<String> values) {
            addCriterion("euname in", values, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameNotIn(List<String> values) {
            addCriterion("euname not in", values, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameBetween(String value1, String value2) {
            addCriterion("euname between", value1, value2, "euname");
            return (Criteria) this;
        }

        public Criteria andEunameNotBetween(String value1, String value2) {
            addCriterion("euname not between", value1, value2, "euname");
            return (Criteria) this;
        }

        public Criteria andEbidIsNull() {
            addCriterion("ebid is null");
            return (Criteria) this;
        }

        public Criteria andEbidIsNotNull() {
            addCriterion("ebid is not null");
            return (Criteria) this;
        }

        public Criteria andEbidEqualTo(String value) {
            addCriterion("ebid =", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidNotEqualTo(String value) {
            addCriterion("ebid <>", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidGreaterThan(String value) {
            addCriterion("ebid >", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidGreaterThanOrEqualTo(String value) {
            addCriterion("ebid >=", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidLessThan(String value) {
            addCriterion("ebid <", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidLessThanOrEqualTo(String value) {
            addCriterion("ebid <=", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidLike(String value) {
            addCriterion("ebid like", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidNotLike(String value) {
            addCriterion("ebid not like", value, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidIn(List<String> values) {
            addCriterion("ebid in", values, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidNotIn(List<String> values) {
            addCriterion("ebid not in", values, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidBetween(String value1, String value2) {
            addCriterion("ebid between", value1, value2, "ebid");
            return (Criteria) this;
        }

        public Criteria andEbidNotBetween(String value1, String value2) {
            addCriterion("ebid not between", value1, value2, "ebid");
            return (Criteria) this;
        }

        public Criteria andEpriceIsNull() {
            addCriterion("eprice is null");
            return (Criteria) this;
        }

        public Criteria andEpriceIsNotNull() {
            addCriterion("eprice is not null");
            return (Criteria) this;
        }

        public Criteria andEpriceEqualTo(Integer value) {
            addCriterion("eprice =", value, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceNotEqualTo(Integer value) {
            addCriterion("eprice <>", value, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceGreaterThan(Integer value) {
            addCriterion("eprice >", value, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("eprice >=", value, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceLessThan(Integer value) {
            addCriterion("eprice <", value, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceLessThanOrEqualTo(Integer value) {
            addCriterion("eprice <=", value, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceIn(List<Integer> values) {
            addCriterion("eprice in", values, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceNotIn(List<Integer> values) {
            addCriterion("eprice not in", values, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceBetween(Integer value1, Integer value2) {
            addCriterion("eprice between", value1, value2, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpriceNotBetween(Integer value1, Integer value2) {
            addCriterion("eprice not between", value1, value2, "eprice");
            return (Criteria) this;
        }

        public Criteria andEpicIsNull() {
            addCriterion("epic is null");
            return (Criteria) this;
        }

        public Criteria andEpicIsNotNull() {
            addCriterion("epic is not null");
            return (Criteria) this;
        }

        public Criteria andEpicEqualTo(String value) {
            addCriterion("epic =", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicNotEqualTo(String value) {
            addCriterion("epic <>", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicGreaterThan(String value) {
            addCriterion("epic >", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicGreaterThanOrEqualTo(String value) {
            addCriterion("epic >=", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicLessThan(String value) {
            addCriterion("epic <", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicLessThanOrEqualTo(String value) {
            addCriterion("epic <=", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicLike(String value) {
            addCriterion("epic like", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicNotLike(String value) {
            addCriterion("epic not like", value, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicIn(List<String> values) {
            addCriterion("epic in", values, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicNotIn(List<String> values) {
            addCriterion("epic not in", values, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicBetween(String value1, String value2) {
            addCriterion("epic between", value1, value2, "epic");
            return (Criteria) this;
        }

        public Criteria andEpicNotBetween(String value1, String value2) {
            addCriterion("epic not between", value1, value2, "epic");
            return (Criteria) this;
        }

        public Criteria andEbnameIsNull() {
            addCriterion("ebname is null");
            return (Criteria) this;
        }

        public Criteria andEbnameIsNotNull() {
            addCriterion("ebname is not null");
            return (Criteria) this;
        }

        public Criteria andEbnameEqualTo(String value) {
            addCriterion("ebname =", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameNotEqualTo(String value) {
            addCriterion("ebname <>", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameGreaterThan(String value) {
            addCriterion("ebname >", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameGreaterThanOrEqualTo(String value) {
            addCriterion("ebname >=", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameLessThan(String value) {
            addCriterion("ebname <", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameLessThanOrEqualTo(String value) {
            addCriterion("ebname <=", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameLike(String value) {
            addCriterion("ebname like", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameNotLike(String value) {
            addCriterion("ebname not like", value, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameIn(List<String> values) {
            addCriterion("ebname in", values, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameNotIn(List<String> values) {
            addCriterion("ebname not in", values, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameBetween(String value1, String value2) {
            addCriterion("ebname between", value1, value2, "ebname");
            return (Criteria) this;
        }

        public Criteria andEbnameNotBetween(String value1, String value2) {
            addCriterion("ebname not between", value1, value2, "ebname");
            return (Criteria) this;
        }

        public Criteria andEcategoryIsNull() {
            addCriterion("ecategory is null");
            return (Criteria) this;
        }

        public Criteria andEcategoryIsNotNull() {
            addCriterion("ecategory is not null");
            return (Criteria) this;
        }

        public Criteria andEcategoryEqualTo(String value) {
            addCriterion("ecategory =", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryNotEqualTo(String value) {
            addCriterion("ecategory <>", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryGreaterThan(String value) {
            addCriterion("ecategory >", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryGreaterThanOrEqualTo(String value) {
            addCriterion("ecategory >=", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryLessThan(String value) {
            addCriterion("ecategory <", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryLessThanOrEqualTo(String value) {
            addCriterion("ecategory <=", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryLike(String value) {
            addCriterion("ecategory like", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryNotLike(String value) {
            addCriterion("ecategory not like", value, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryIn(List<String> values) {
            addCriterion("ecategory in", values, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryNotIn(List<String> values) {
            addCriterion("ecategory not in", values, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryBetween(String value1, String value2) {
            addCriterion("ecategory between", value1, value2, "ecategory");
            return (Criteria) this;
        }

        public Criteria andEcategoryNotBetween(String value1, String value2) {
            addCriterion("ecategory not between", value1, value2, "ecategory");
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