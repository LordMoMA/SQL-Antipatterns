<?php
$sql = "INSERT INTO Accounts (account_id, account_name, email, password)
  VALUES (?, ?, ?, SHA256(?, 256))";
$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "isss", $account_id, $account_name, $email, $password);
mysqli_stmt_execute($stmt);
