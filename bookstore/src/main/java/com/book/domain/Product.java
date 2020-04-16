package com.book.domain;

public class Product {
    private String bid;

    private String bcategory;

    private String bname;

    private String bauthor;

    private String bpublish;

    private Integer bprice;

    private Integer bnumber;

    private String bpic;

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    public String getBcategory() {
        return bcategory;
    }

    public void setBcategory(String bcategory) {
        this.bcategory = bcategory;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBauthor() {
        return bauthor;
    }

    public void setBauthor(String bauthor) {
        this.bauthor = bauthor;
    }

    public String getBpublish() {
        return bpublish;
    }

    public void setBpublish(String bpublish) {
        this.bpublish = bpublish;
    }

    public Integer getBprice() {
        return bprice;
    }

    public void setBprice(Integer bprice) {
        this.bprice = bprice;
    }

    public Integer getBnumber() {
        return bnumber;
    }

    public void setBnumber(Integer bnumber) {
        this.bnumber = bnumber;
    }

    public String getBpic() {
        return bpic;
    }

    public void setBpic(String bpic) {
        this.bpic = bpic;
    }
}