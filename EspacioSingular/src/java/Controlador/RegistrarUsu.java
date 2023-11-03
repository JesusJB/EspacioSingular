/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import JPADAO.usuariosJpaController;
import entidades.usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "RegistrarUsu", urlPatterns = {"/RegistrarUsu"})
public class RegistrarUsu extends HttpServlet {

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
        
            //Creamos un EMF
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("EspacioSingularPU");
            //Creamos un Objeto para el manejo de BD
            usuariosJpaController UJC = new usuariosJpaController(emf);
            
            String nombreUsu = (String) request.getParameter("NombreUsuarioRegistra");
            String email = (String) request.getParameter("EmailRegistra");
            String direccionPostal = (String) request.getParameter("DireccionUsuario");
            String contra = (String) request.getParameter("ContraRegistra");
            
            //Comprobamos que se haya enviado algo
            if (nombreUsu != null && email != null && direccionPostal != null && contra != null){
                
                //Si lo enviado por el formulario está relleno, creamos un usuario y lo introducimos en la BD
                usuarios usu = new usuarios();
                
                usu.setNombreUsuario(nombreUsu);
                usu.setEmail(email);
                usu.setDireccion(direccionPostal);
                usu.setContra(contra);
                usu.setRol("cliente");
                
                
                //Comprobamos que si el create lanza algun error, lo mande a la vista y no muestre la pagina de error predeterminada
                try{
                
                    UJC.create(usu);
                
                }catch(Exception e){
                    
                    request.setAttribute("error", "Has introducido algo mal...");
                    getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                    
                }
                
                request.setAttribute("Correcto", "Se ha creado el usuario correctamente");
                
            }             
            emf.close();
            
            //Una vez terminado, se haya creado o no el usuario, devolvemos al login
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        
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
