<?php
include("config/db_config.php");
session_destroy();
header("Location:index.php");
exit();
?>