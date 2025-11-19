<?php
$mysqli = new mysqli("192.168.56.11", "tp_user", "tp_password", "tp_db");

if ($mysqli->connect_errno) {
    echo "❌ Erreur connexion DB : " . $mysqli->connect_error;
} else {
    echo "🚀 Connexion réussie à MariaDB depuis la VM Web !";
}
?>
