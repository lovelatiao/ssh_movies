package com.po;

import javax.persistence.*;

@Entity
@Table(name = "admin", schema = "shixun", catalog = "")
public class Admin {
    private int id;
    private String aName;
    private String aPassword;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "a_name")
    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    @Basic
    @Column(name = "a_password")
    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Admin that = (Admin) o;

        if (id != that.id) return false;
        if (aName != null ? !aName.equals(that.aName) : that.aName != null) return false;
        if (aPassword != null ? !aPassword.equals(that.aPassword) : that.aPassword != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (aName != null ? aName.hashCode() : 0);
        result = 31 * result + (aPassword != null ? aPassword.hashCode() : 0);
        return result;
    }
}
