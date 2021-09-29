/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.AccountDetail;
import entity.Account;
import dao.AccountModel;
import dao.AccountDetailModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SANG
 */
@WebServlet(name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            // Get in4 Account Customer
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String rePass = request.getParameter("repassword");
            
            // Get in4 Account Detail
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            int gender = Integer.parseInt(request.getParameter("gender"));

            int idAccountDetail = 0;
            // Check mail
            if (new AccountModel().checkEmail(email)) {
                request.setAttribute("message", "Email already exist");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                // Check pass
                if (pass.equals(rePass)) {
                    AccountDetail accountDetail = new AccountDetail(name, phone, gender, address);
                    idAccountDetail = new AccountDetailModel().addAccountDetail(accountDetail);
                    if (idAccountDetail > 0) {
                        Account account = new Account(email, pass, idAccountDetail, 2, 1);
                        if (new AccountModel().addAccount(account)) {
                            request.setAttribute("message", "Regist successful");
                            request.getRequestDispatcher("register.jsp").forward(request, response);
                        }
                    }
                }else{
                    request.setAttribute("message", "Pass and Repass not match");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
