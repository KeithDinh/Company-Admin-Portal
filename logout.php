<?php
session_start();
require_once "controller/template.controller.php";
require_once "controller/users.controller.php";
require_once "controller/roles.controller.php";
require_once "controller/links.controller.php";

require_once "model/users.model.php";
require_once "model/roles.model.php";
require_once "model/links.model.php";
?>

<?php

session_destroy();

echo '<script>


	window.location = "index.php";

</script>';
?>