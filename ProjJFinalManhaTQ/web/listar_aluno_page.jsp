<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.qi.DTO.Studant"%>
<%@page import="br.edu.qi.DAO.StudantDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header id="top">
            <a href="cadastrar_studant_page.jsp"><button id="btn_novo" class="btn btn-warning btn-lg">Novo Contato</button></a>
            <a href="index.html"><button id="btn_home" class="btn btn-warning btn-lg">Home</button></a>
        </header>
        <main id="principal">
            <h1>Lista dos Alunos</h1>
            <%
                StudantDAO objStudantDAO = new StudantDAO();

                ArrayList<Studant> l = objStudantDAO.listarAlunos();

                for (int i = 0; i < l.size(); i++) {
                    out.print("<div class='container-md'><p>Código: " + l.get(i).getId() + "</p>");
                    out.print("<p>Nome: " + l.get(i).getNome() + "</p>");
                    out.print("<p>Idade: " + l.get(i).getIdade() + "</p>");
                    out.print("<p>Peso: " + l.get(i).getPeso() + "</p>");
                    out.print("<p>Altura: " + l.get(i).getAltura() + "</p>");

                    out.print("<a href='excluir_aluno_page.jsp?"
                            + "codigo=" + l.get(i).getId() + ""
                            + "&nome=" + l.get(i).getNome() + ""
                            + "&idade=" + l.get(i).getIdade() + ""
                            + "&peso=" + l.get(i).getPeso() + ""
                            + "&altura=" + l.get(i).getAltura() + "'><button class='btn btn-danger'>Excluir</button</a>");

                    out.print("<a href='alterar_aluno_page.jsp?"
                            + "codigo=" + l.get(i).getId() + ""
                            + "&nome=" + l.get(i).getNome() + ""
                            + "&idade=" + l.get(i).getIdade() + ""
                            + "&peso=" + l.get(i).getPeso() + ""
                            + "&altura=" + l.get(i).getAltura() + "'><button class='btn btn-primary'>Alterar</button></a></div><br><br>");

                }

            %>
        </main>
    </body>
</html>
