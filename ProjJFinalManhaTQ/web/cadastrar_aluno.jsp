<%@page import="br.edu.qi.DAO.StudantDAO"%>
<%@page import="br.edu.qi.DTO.Studant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro-aluno</title>
        <meta http-equiv="refresh" content="0.001; listar_aluno_page.jsp">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    </head>
    <body>
        <%
            Studant objStudant = new Studant();
            objStudant.setNome(request.getParameter("txtNome"));
            objStudant.setIdade(request.getParameter("txtIdade"));
            objStudant.setPeso(request.getParameter("txtPeso")); 
            objStudant.setAltura(request.getParameter("txtAltura"));
            
            StudantDAO objStudantDAO = new StudantDAO();
            objStudantDAO.cadastrarStudant(objStudant);
        %>
    </body>
</html>