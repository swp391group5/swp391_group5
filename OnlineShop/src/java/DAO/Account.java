/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author nghia
 */
public class Account {
    private int id;
    private String user;
    private String pass;
    private int isSell;
    private int isAdmin;
    private int deleted;

    public Account() {
    }

    public Account(int id, String user, String pass, int isSell, int isAdmin, int deleted) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
        this.deleted = deleted;
    }

    public int getId() {
        return id;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", isSell=" + isSell + ", isAdmin=" + isAdmin + ", deleted=" + deleted + '}';
    }


}
