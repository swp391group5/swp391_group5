/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author SANG
 */
public class Account_Detail {

    private int id;
    private String name;
    private String phone;
    private byte Gender;
    private String Address;

    public Account_Detail(int id, String name, String phone, byte Gender, String Address) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.Gender = Gender;
        this.Address = Address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public byte getGender() {
        return Gender;
    }

    public void setGender(byte Gender) {
        this.Gender = Gender;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    @Override
    public String toString() {
        return "Account_Detail{" + "id=" + id + ", name=" + name + ", phone=" + phone + ", Gender=" + Gender + ", Address=" + Address + '}';
    }
}
