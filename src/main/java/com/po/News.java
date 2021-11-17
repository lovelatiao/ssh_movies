package com.po;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
@Table(name = "news", schema = "shixun", catalog = "")
public class News {
    private int id;
    private String nTitle;
    private String nJianjie;
    private String nContext;
    private String nAuthor;
    private Date nTime;
    private Integer nSee;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "n_title")
    public String getnTitle() {
        return nTitle;
    }

    public void setnTitle(String nTitle) {
        this.nTitle = nTitle;
    }

    @Basic
    @Column(name = "n_jianjie")
    public String getnJianjie() {
        return nJianjie;
    }

    public void setnJianjie(String nJianjie) {
        this.nJianjie = nJianjie;
    }

    @Basic
    @Column(name = "n_context")
    public String getnContext() {
        return nContext;
    }

    public void setnContext(String nContext) {
        this.nContext = nContext;
    }

    @Basic
    @Column(name = "n_author")
    public String getnAuthor() {
        return nAuthor;
    }

    public void setnAuthor(String nAuthor) {
        this.nAuthor = nAuthor;
    }

    @Basic
    @Column(name = "n_time")
    public Date getnTime() {
        return nTime;
    }

    public void setnTime(Date nTime) {
        this.nTime = nTime;
    }

    @Basic
    @Column(name = "n_see")
    public Integer getnSee() {
        return nSee;
    }

    public void setnSee(Integer nSee) {
        this.nSee = nSee;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        News that = (News) o;

        if (id != that.id) return false;
        if (nTitle != null ? !nTitle.equals(that.nTitle) : that.nTitle != null) return false;
        if (nJianjie != null ? !nJianjie.equals(that.nJianjie) : that.nJianjie != null) return false;
        if (nContext != null ? !nContext.equals(that.nContext) : that.nContext != null) return false;
        if (nAuthor != null ? !nAuthor.equals(that.nAuthor) : that.nAuthor != null) return false;
        if (nTime != null ? !nTime.equals(that.nTime) : that.nTime != null) return false;
        if (nSee != null ? !nSee.equals(that.nSee) : that.nSee != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (nTitle != null ? nTitle.hashCode() : 0);
        result = 31 * result + (nJianjie != null ? nJianjie.hashCode() : 0);
        result = 31 * result + (nContext != null ? nContext.hashCode() : 0);
        result = 31 * result + (nAuthor != null ? nAuthor.hashCode() : 0);
        result = 31 * result + (nTime != null ? nTime.hashCode() : 0);
        result = 31 * result + (nSee != null ? nSee.hashCode() : 0);
        return result;
    }
}
