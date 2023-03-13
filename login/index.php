<!DOCTYPE html>
<?php
include('conexao.php');

if(isset($_POST['email']) || isset($_POST['senha'])){
    if(strlen($_POST['email']) == 0){
        echo "Preencha seu email.";
    }else if(strlen($_POST['senha']) == 0){
        echo "Preencha sua senha.";
    }else{
        $email = $mysqli->real_escape_string($_POST['email']);
        $senha = $mysqli->real_escape_string($_POST['senha']);

        $sql_code = "SELECT * FROM Usuario WHERE email = '$email' AND senha='$senha'";
        $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);

       $quantidade = $sql_query->num_rows;

        if($quantidade==1){
            $usuario = $sql_query->fetch_assoc();

            if(!isset($_SESSION)){
                session_start();
            }

            $_SESSION['usuario'] = $usuario['email']; // ou id_usuario
            $_SESSION['nome'] = $usuario['nome'];

            header("Location: principal.php");

        }else{
            echo "Email ou senha incorretos!";
        }
    }
}
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
</head>
<body>
    <h1>Login</h1>
    <form action="" method="POST">
        <p>
            <label>Email</label>
            <input type="email" name="email" required>
        </p>

        <p>
            <label>Senha</label>
            <input type="password" name="senha" required>
        </p>

        <p>
            <button type="submit">Entrar</button>
        </p>
    </form>
</body>
</html>