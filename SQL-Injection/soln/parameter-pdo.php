<?php
$sql = "INSERT INTO Accounts (account_id, account_name, email, password)
  VALUES (?, ?, ?, SHA256(?, 256))";
$stmt = $pdo->prepare($sql);
$stmt->execute([$account_id, $account_name, $email, $password]);

