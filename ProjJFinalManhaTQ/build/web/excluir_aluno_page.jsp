
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
        <h1>Deseja excluir este Aluno?</h1>
        <main id="maine">
            <form id="formulario" class="form-control" action="excluir_aluno.jsp" method="POST">
                <label>
                    Código:
                    <input type="number" name="txtId" class="form-control" value="<%=request.getParameter("codigo")%>">
                </label>
                <label>
                    Nome:
                    <input type="text" name="txtNome" class="form-control" value="<%=request.getParameter("nome")%>">
                </label>
                <label>
                    Idade:
                    <input type="text" name="txtIdade" class="form-control" value="<%=request.getParameter("idade")%>">
                </label>
                <label>
                    Peso:
                    <input type="text" name="txtPeso" class="form-control" value="<%=request.getParameter("peso")%>">
                </label>
                <label>
                    Altura:
                    <input type="text" name="txtAltura" class="form-control" value="<%=request.getParameter("altura")%>">
                </label>
                <input type="submit" class="btn btn-warning" value="Excluir">

            </form>
        </main>
    </body>
</html>
