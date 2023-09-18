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
        <h1>Preencha os dados do aluno!</h1>
        <main id="mainc">
            <form id="formulario" class="form-control" action="cadastrar_aluno.jsp" method="POST">
                <label>
                    Nome:
                    <input type="text" name="txtNome" class="form-control">
                </label>
                <label>
                    Idade:
                    <input type="text" name="txtIdade" class="form-control">
                </label>
                <label>
                    Peso:
                    <input type="text" name="txtPeso" class="form-control">
                </label>
                <label>
                    Altura:
                    <input type="text" name="txtAltura" class="form-control">
                </label>
                <input type="submit" class="btn btn-warning btn-cadastrar" value="Cadastrar Aluno">
            </form>
        </main>
    </body>
</html>
