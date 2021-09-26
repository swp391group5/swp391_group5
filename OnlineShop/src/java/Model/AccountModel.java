/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author SANG
 */
public class AccountModel {

    Connection connection = null;
    DBConnect dbcon = null;
    ResultSet rs = null;
    PreparedStatement ps = null;

    public AccountModel(DBConnect dbcon) {
        connection = dbcon.con;
        this.dbcon = dbcon;
    }

    public Account login(String email, String password) {
        String sql = "SELECT * FROM Account WHERE Email = ? and [Password] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)
                );
                return account;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Account> getAllAccount() {
        ArrayList<Account> list = new ArrayList<Account>();
        String sql = "SELECT * FROM account";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)
                );
                list.add(account);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        DBConnect dBConnect = new DBConnect();
        AccountModel accountModel = new AccountModel(dBConnect);
        ArrayList<Account> list = accountModel.getAllAccount();
        for (Account account : list) {
            System.out.println(account);
        }
    }
}
