<?php
require "./PokemonsManager.php";

$pokemonManager = new PokemonsManager();
$pokemonManager->delete($_GET["id"]);

header("Location: ./index.php");

?>
<!--
<script>
    window.location.href = "./index.php"
</script>

-->