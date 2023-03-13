<?php
$usuario = 'root';
$senha = '';
$database = 'ifsp';
$host = 'localhost';

$mysqli = new mysqli($host, $usuario, $senha, $database);

if($mysqli->error){
    die("não conectou" . $mysqli->error);
}
?>