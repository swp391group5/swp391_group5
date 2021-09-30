/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDetailModel;
import dao.AccountModel;
import entity.AccountDetail;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SANG
 */
@WebServlet(name = "Account", urlPatterns = {"/servicesaccount"})
public class AccountServices extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();
            String service = request.getParameter("service");

            // LOGIN
            if (service.equals("login")) {
                String email = request.getParameter("email");
                String pass = request.getParameter("password");

                // Check account
                entity.Account accountLogin = new AccountModel().login(email, pass);
                if (accountLogin != null) {
                    session.setAttribute("currentAccount", accountLogin);
                    if (accountLogin.getRoleId() == 1) {
                        System.out.println(accountLogin);
                        System.out.println("1");
                        response.sendRedirect("admin.jsp");
                    } else {
                        System.out.println("2");
                        response.sendRedirect("products.jsp");
                    }
                } else {
                    request.setAttribute("message", "Wrong email or password");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }

            // REGISTER
            if (service.equals("register")) {
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
                            entity.Account account = new entity.Account(email, pass, idAccountDetail, 2, 1);
                            if (new AccountModel().addAccount(account)) {
                                request.setAttribute("message", "Regist successful");
                                request.getRequestDispatcher("register.jsp").forward(request, response);
                            }
                        }
                    } else {
                        request.setAttribute("message", "Pass and Repass not match");
                        request.getRequestDispatcher("register.jsp").forward(request, response);
                    }
                }
            }

            // RESET PASSWORD
            if (service.equals("remindpassword")) {
                String email = request.getParameter("email");
                String message = "";
                if (new AccountModel().checkEmail(email)) {
                    System.out.println(email);
                    message = "Check new pass in your mail !";
                } else {
                    message = "Email not exits !";
                }
                request.setAttribute("message", message);
                request.getRequestDispatcher("reset_password.jsp").forward(request, response);
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
