package com.po;

import javax.persistence.*;
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
    private Timestamp mTime;
    private byte[] mPhoto;
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
    public Timestamp getmTime() {
        return mTime;
    }

    public void setmTime(Timestamp mTime) {
        this.mTime = mTime;
    }

    @Basic
    @Column(name = "m_photo")
    public byte[] getmPhoto() {
        return mPhoto;
    }

    public void setmPhoto(byte[] mPhoto) {
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Movies that = (Movies) o;

        if (id != that.id) return false;
        if (mName != null ? !mName.equals(that.mName) : that.mName != null) return false;
        if (mJianjie != null ? !mJianjie.equals(that.mJianjie) : that.mJianjie != null) return false;
        if (mDirector != null ? !mDirector.equals(that.mDirector) : that.mDirector != null) return false;
        if (mActor != null ? !mActor.equals(that.mActor) : that.mActor != null) return false;
        if (mCountry != null ? !mCountry.equals(that.mCountry) : that.mCountry != null) return false;
        if (mLanguage != null ? !mLanguage.equals(that.mLanguage) : that.mLanguage != null) return false;
        if (mTime != null ? !mTime.equals(that.mTime) : that.mTime != null) return false;
        if (!Arrays.equals(mPhoto, that.mPhoto)) return false;
        if (mPath != null ? !mPath.equals(that.mPath) : that.mPath != null) return false;
        if (mType != null ? !mType.equals(that.mType) : that.mType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (mName != null ? mName.hashCode() : 0);
        result = 31 * result + (mJianjie != null ? mJianjie.hashCode() : 0);
        result = 31 * result + (mDirector != null ? mDirector.hashCode() : 0);
        result = 31 * result + (mActor != null ? mActor.hashCode() : 0);
        result = 31 * result + (mCountry != null ? mCountry.hashCode() : 0);
        result = 31 * result + (mLanguage != null ? mLanguage.hashCode() : 0);
        result = 31 * result + (mTime != null ? mTime.hashCode() : 0);
        result = 31 * result + Arrays.hashCode(mPhoto);
        result = 31 * result + (mPath != null ? mPath.hashCode() : 0);
        result = 31 * result + (mType != null ? mType.hashCode() : 0);
        return result;
    }
}
