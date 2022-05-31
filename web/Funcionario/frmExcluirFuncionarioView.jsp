<%-- 
    Document   : frmExcluirFuncionarioView
    Created on : 26 de mai. de 2022, 14:54:50
    Author     : Adiel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Cadastro Funcionario</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="frmFuncionario.css" />
    <link
      rel="shortcut icon"
      href="../index/img/favicon-32x32.png"
      type="image/x-icon"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <header class="cabecalho">
      <div class="headerLogo">
        <a href="../index/index.html"
          ><img src="../index/img/android-chrome-192x192.png" alt="Logotipo"
        /></a>
      </div>
      <div class="headerTitulo">
        <h1>Info<span>Tech.</span></h1>
      </div>
    </header>
    <div class="sub-menu">
      <ul>
        <li>
          <a href="frmFuncionarioView.html"><p>Cadastrar Funcionario</p></a>
        </li>
        <li>
          <a href="../Cliente/frmCadastroCliente.html">
            <p>Cadastrar cliente</p>
          </a>
        </li>
      </ul>
    </div>
    <main class="box-container">
      <section class="form-container">
        <h1 class="titulo">Excluir Funcionario ?</h1>
        <form action="excluirFuncionario.jsp" method="POST" class="formulario">
            <div class="ipt-field">
            <p>ID:</p>
            <input type="text" name="id" class="ipt-txt" value="<%=request.getParameter("id")%>" readonly/>
          </div>
          <div class="ipt-field">
            <p>Nome:</p>
            <input type="text" name="nome" class="ipt-txt" value="<%=request.getParameter("nome")%>" readonly/>
          </div>
          <div class="ipt-field">
            <p>CPF:</p>
            <input type="text" name="cpf" class="ipt-txt"value="<%=request.getParameter("cpf")%>" readonly />
          </div>
          <div class="ipt-field">
            <p>Setor:</p>
            <input type="text" name="setor" class="ipt-txt" value="<%=request.getParameter("setor")%>" readonly />
          </div>
          <div class="ipt-field">
            <p>Senha:</p>
            <input type="text" name="senha" class="ipt-txt" value="<%=request.getParameter("senha")%>" readonly/>
          </div>
          <div class="ipt-field">
            <button type="submit" class="btn">Excluir</button>
          </div>
        </form>
      </section>
    </main>
    <footer class="rodape">
      <p class="copyright">Info Tech @ 2021</p>
    </footer>
  </body>
</html>
