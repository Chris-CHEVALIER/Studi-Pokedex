<!DOCTYPE html>
<html lang="fr-FR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
        integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous">
    </script>
    <title>Pokédex Studi - Créer un Pokémon</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="./index.php">
                <img src="./images/logo.png" width="60" alt="Logo Pokédex">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="./index.php">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Types</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Chercher" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Chercher</button>
                </form>
            </div>
        </div>
    </nav>

    <?php 
        require("./PokemonsManager.php");
        $manager = new PokemonsManager();
    ?>

    <main class="container">
        <form method="post" enctype="multipart/form-data">
            <label for="number" class="form-label">Numéro</label>
            <input type="number" name="number" placeholder="Le numéro du Pokémon" id="number" class="form-control" min=1 max=901>
            <label for="name" class="form-label">Nom</label>
            <input type="text" name="name" placeholder="Le nom du Pokémon" id="name" class="form-control" minlength="3" maxlength="40">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control" rows="6" placeholder="La description du Pokémon" minlength="10" maxlength="200"></textarea>
            <label for="type1" class="form-label">Type</label>
            <!--
            <select name="type1" id="type1" class="form-select">
                <option value=""></option>
            </select>
            -->
            <br/>
            <label for="image" class="form-label">Image</label>
            <input type="file" name="image" id="image" class="form-control">

            <input type="submit" class="btn btn-success mt-3" value="Créer">
        </form>
    </main>
</body>

</html>