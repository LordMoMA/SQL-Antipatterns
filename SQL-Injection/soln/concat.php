<?php
$sql = "INSERT INTO Accounts (account_id, account_name, email, password)
  VALUES (".intval($account_id).","
  .mysqli_real_escape_string($conn, $account_name)."', '"
  .mysqli_real_escape_string($conn, $email)."' SHA256('"
  .mysqli_real_escape_string($conn, $password).", 256)";
mysqli_query($sql);
