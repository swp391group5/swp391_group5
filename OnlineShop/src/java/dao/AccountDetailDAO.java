/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.AccountDetail;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DucAnh
 */
public class AccountDetailDAO extends DBContext{
    
    public AccountDetail getAccountDetail(int id) {
        AccountDetail accDetail = new AccountDetail();
        try {
            String sql = "SELECT * FROM Account_Detail WHERE Id = ?";
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                accDetail.setId(rs.getInt("Id"));
                accDetail.setName(rs.getString("Name"));
                accDetail.setPhone(rs.getString("Phone_Number"));
                accDetail.setGender(rs.getByte("Gender"));
                accDetail.setAddress(rs.getString("Address"));
            }
        } catch (Exception e) {
            System.out.println("Get Account Detail Fail: " + e.getMessage());
        }
        return accDetail;
    }
    
}
