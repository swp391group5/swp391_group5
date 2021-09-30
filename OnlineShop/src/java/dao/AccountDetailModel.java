/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dbcontext.DBContext;
import entity.AccountDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author SANG
 */
public class AccountDetailModel extends DBContext {

    ResultSet rs = null;
    PreparedStatement ps = null;

    public int addAccountDetail(AccountDetail accountDetail) {
        int n = 0;
        String sql = "INSERT INTO Account_Detail(Name, Phone_Number, Gender, Address) VALUES(?, ?, ?, ?)";
        try {
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setString(1, accountDetail.getName());
            ps.setString(2, accountDetail.getPhone());
            ps.setInt(3, accountDetail.getGender());
            ps.setString(4, accountDetail.getAddress());
            n = ps.executeUpdate();
        } catch (Exception e) {
        }
        return n;
    }
}
