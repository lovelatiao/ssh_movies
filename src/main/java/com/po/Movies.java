package com.po;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;

@Entity
@Table(name = "movies", schema = "shixun", catalog = "")
public class Movies {
    private int id;
    private String mName;
    private String mJianjie;
    private String mDirector;
    private String mActor;
    private String mCountry;
    private String mLanguage;
    private Date mTime;
    private String mPhoto;
    private String mPath;
    private Integer mType;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "m_name")
    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    @Basic
    @Column(name = "m_jianjie")
    public String getmJianjie() {
        return mJianjie;
    }

    public void setmJianjie(String mJianjie) {
        this.mJianjie = mJianjie;
    }

    @Basic
    @Column(name = "m_director")
    public String getmDirector() {
        return mDirector;
    }

    public void setmDirector(String mDirector) {
        this.mDirector = mDirector;
    }

    @Basic
    @Column(name = "m_actor")
    public String getmActor() {
        return mActor;
    }

    public void setmActor(String mActor) {
        this.mActor = mActor;
    }

    @Basic
    @Column(name = "m_country")
    public String getmCountry() {
        return mCountry;
    }

    public void setmCountry(String mCountry) {
        this.mCountry = mCountry;
    }

    @Basic
    @Column(name = "m_language")
    public String getmLanguage() {
        return mLanguage;
    }

    public void setmLanguage(String mLanguage) {
        this.mLanguage = mLanguage;
    }

    @Basic
    @Column(name = "m_time")
    public Date getmTime() {
        return mTime;
    }

    public void setmTime(Date mTime) {
        this.mTime = mTime;
    }

    @Basic
    @Column(name = "m_photo")
    public String getmPhoto() {
        return mPhoto;
    }

    public void setmPhoto(String mPhoto) {
        this.mPhoto = mPhoto;
    }

    @Basic
    @Column(name = "m_path")
    public String getmPath() {
        return mPath;
    }

    public void setmPath(String mPath) {
        this.mPath = mPath;
    }

    @Basic
    @Column(name = "m_type")
    public Integer getmType() {
        return mType;
    }

    public void setmType(Integer mType) {
        this.mType = mType;
    }




}
