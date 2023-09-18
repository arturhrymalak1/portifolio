
<%@page import="br.edu.qi.DAO.StudantDAO"%>
<%@page import="br.edu.qi.DTO.Studant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="0.001; listar_aluno_page.jsp">
    </head>
    <body>
        <% 
            Studant objStudant = new Studant();
            objStudant.setId(Integer.parseInt(request.getParameter("txtId")));
            
            StudantDAO objStudantDAO = new StudantDAO();
            objStudantDAO.excluirAluno(objStudant);
        %>
    </body>
</html>
