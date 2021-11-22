<!DOCTYPE html>
<html lang="fr-FR">

<?php

function getPageName(): string {
    $path_parts = pathinfo($_SERVER["REQUEST_URI"]);
    $fileName = $path_parts["filename"];
    switch ($fileName) {
        case 'index':
            return "Accueil";
            break;
        case 'post':
            return "Créer un Pokémon";
            break;
        default:
            return "Not Found";
            break;
    }
}

?>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous">
    </script>
    <title>Pokédex Studi - <?= getPageName() ?></title>
</head>

<body>
    <?php require("./layout/navbar.php"); ?>
    <main class="container">