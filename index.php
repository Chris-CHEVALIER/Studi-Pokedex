    <?php
        require("./layout/header.php");
        require './PokemonsManager.php';
        $manager = new PokemonsManager();
        require './ImagesManager.php';
        $imagesManager = new ImagesManager();
        $pokemons = $manager->getAll();
    ?>

    <section class="d-flex flex-wrap justify-content-center">
        <?php foreach ($pokemons as $pokemon): ?>
            <?php $imagesManager->get($pokemon->getImage()); ?>
            <div class="card m-5" style="width: 18rem;">
                <img src="<?= $imagesManager
                    ->get($pokemon->getImage())
                    ->getPath() ?>" class="card-img-top" alt="<?= $pokemon->getName() ?>">
                <div class="card-body">
                    <h5 class="card-title"><?= $pokemon->getNumber() ?># <?= $pokemon->getName() ?></h5>
                    <p class="card-text"><?= $pokemon->getDescription() ?></p>
                    <a href="./post.php?id=<?= $pokemon->getId() ?>" class="btn btn-warning">Modifier</a>
                    <a href="./delete.php?id=<?= $pokemon->getId() ?>" class="btn btn-danger">Supprimer</a>
                </div>
            </div>
        <?php endforeach; ?>
    </section>
    <a href="./post.php" class="btn btn-success">Créer un Pokémon</a>

    <?php require("./layout/footer.php") ?>