<%-- 
    Document   : Login
    Created on : 27 de mai. de 2022, 14:09:12
    Author     : Adiel
--%>
<%  
    boolean rt = false;
    if (request.getParameter("submit") != null){
           FuncionarioDTO objFuncionario = new FuncionarioDTO();
            objFuncionario.setNome(request.getParameter("nome"));
            objFuncionario.setSenha(request.getParameter("senha"));
            
            FuncionarioDAO DAOFuncionario = new FuncionarioDAO();
            rt = DAOFuncionario.LoginFuncionario(objFuncionario);
            if (rt){
                response.sendRedirect("index/index.html");
            }
    }
       %>  
<%@page import="integrado.com.DAO.FuncionarioDAO"%>
<%@page import="integrado.com.DTO.FuncionarioDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="integrado.com.DAO.ConexaoDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if(!rt && request.getParameter("submit") != null ){
        %>
     
    <h1>ERRO<h1> 
        
           <% } %>
           
       <form action ="index.jsp" method="GET">
            <label>Nome: </label>
            <input type = "text" name = "nome">
            <label>Senha: </label>
            <input type = "text" name = "senha">
       
            
            <button type="submit" name = "submit">Logar</button>
         </form>
    </body>
</html>
