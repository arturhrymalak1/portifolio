
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-bs-theme="dark">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Deseja Alterar este Aluno?</h1>
        <main id="maina">
            <form action="alterar_aluno.jsp" class="form-control" id="formulario" method="POST">
                <label>
                    Código:
                    <input class="form-control" type="number" name="txtId" value="<%=request.getParameter("codigo")%>">
                </label>
                <label>
                    Nome:
                    <input class="form-control" type="text" name="txtNome" value="<%=request.getParameter("nome")%>">
                </label>
                <label>
                    Idade:
                    <input class="form-control" type="text" name="txtIdade" value="<%=request.getParameter("idade")%>">
                </label>
                <label>
                    Peso:
                    <input class="form-control" type="text" name="txtPeso" value="<%=request.getParameter("peso")%>">
                </label>
                <label>
                    Altura:
                    <input class="form-control" type="text" name="txtAltura" value="<%=request.getParameter("altura")%>">
                </label>
                <input type="submit" class="btn btn-success" value="Alterar">

            </form>
        </main>
    </body>
</html>
