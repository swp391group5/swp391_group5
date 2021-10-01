/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Product;
import dbcontext.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author DucAnh
 */
public class ProductDAO extends DBContext {

    public ArrayList<Product> getListProduct(String search) {
        ArrayList<Product> listProduct = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Products";
            if (!search.trim().isEmpty()) {
                sql += " WHERE name LIKE '%" + search + "%'";
            }
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("Id"));
                product.setName(rs.getString("Name"));
                product.setCategory_id(rs.getInt("Category_Id"));
                product.setPrice(rs.getInt("Price"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setStatus(rs.getInt("Status"));
                product.setImage(rs.getString("Image"));
                product.setNote(rs.getString("Note"));
                listProduct.add(product);
            }
        } catch (Exception e) {
            System.err.println("Get List Product Fail: " + e.getMessage());
        }
        return listProduct;
    }

    public Product getProductDetail(int id) {
        Product product = new Product();
        try {
            String sql = "SELECT * FROM Products WHERE Id = ?";
            PreparedStatement ps = getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.setId(rs.getInt("Id"));
                product.setName(rs.getString("Name"));
                product.setCategory_id(rs.getInt("Category_Id"));
                product.setPrice(rs.getInt("Price"));
                product.setDescription(rs.getString("Description"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setStatus(rs.getInt("Status"));
                product.setImage(rs.getString("Image"));
                product.setNote(rs.getString("Note"));
            }
        } catch (Exception e) {
            System.err.println("Get Product Fail: " + e.getMessage());
        }
        return product;
    }

}
