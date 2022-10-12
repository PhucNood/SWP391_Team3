/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.BrandDAO;
import dao.ProductDAO;
import dao.impl.BrandDAOImpl;
import dao.impl.ProductDAOImpl;
import entity.Brand;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class SearchController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet searchController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet searchController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();
        String text = "";
        if(request.getParameter("text")!= null){
            text = request.getParameter("text");
            request.setAttribute("textSearch", text);
            session.setAttribute("doSearch", "1");
            session.removeAttribute("brandID");
            session.removeAttribute("filterID");
            session.removeAttribute("sortID");
        }
        else {
            text = (String) session.getAttribute("text");
        }
        ProductDAO ProductDAO = new ProductDAOImpl();
        List<Product> sList = ProductDAO.searchListProduct(text);
        List<Product> list = new ArrayList<>();
        BrandDAO BrandDAO = new BrandDAOImpl();

        List<Brand> listBrand = BrandDAO.getAllBrand();
        request.setAttribute("listB", listBrand);
        String categoryID = null, brandID = null, filterID = null, sortID = null;
        session.setAttribute("inPage", "shop");
        categoryID = "0";
        if (session.getAttribute("brandID") != null) {
            brandID = (String) session.getAttribute("brandID");
        } else {
            brandID = "0";
        }
        if (session.getAttribute("filterID") != null) {
            filterID = (String) session.getAttribute("filterID");
        } else {
            filterID = "0";
        }
        if (session.getAttribute("sortID") != null) {
            sortID = (String) session.getAttribute("sortID");
        } else {
            sortID = "0";
        }

        if (request.getParameter("brandID") != null) {
            brandID = request.getParameter("brandID");
        }
        if (request.getParameter("filterID") != null) {
            filterID = request.getParameter("filterID");
        }
        if (request.getParameter("sortID") != null) {
            sortID = request.getParameter("sortID");
        }
        List<Product> newList = new ArrayList<>();
        list = ProductDAO.getProduct(categoryID, brandID, filterID, sortID);
        if (list.isEmpty()) {
            request.setAttribute("emptyP", "Not found!");
        } else {
            for (Product item : list) {
                if(checkInSearchList(item, sList)) newList.add(item);
            }
        }
        
        int size = newList.size();
        int page, numberpage = 8;
        int number = (size % numberpage == 0 ? (size / numberpage) : ((size / numberpage) + 1));
        String xpage = request.getParameter("page");
        if (xpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
        }
        int start, end;
        start = (page - 1) * numberpage;
        end = Math.min(page * numberpage, size);
        List<Product> listProductInPage = ProductDAO.getListByPage(newList, start, end);
        request.setAttribute("page", page);
        request.setAttribute("num", number);
        
        session.setAttribute("listProduct", listProductInPage);
        session.removeAttribute("categoryID");
        session.setAttribute("text", text);
        session.setAttribute("brandID", brandID);
        session.setAttribute("filterID", filterID);
        session.setAttribute("sortID", sortID);
        
        request.getRequestDispatcher("view/shop.jsp").forward(request, response);
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

    public boolean checkInSearchList(Product item, List<Product> sList) {
        for (Product p : sList) {
            if (item.getProductID() == p.getProductID()) {
                return true;
            }
        }
        return false;
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
