
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SPP Online</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: -apple-system,  "Segoe UI", Roboto, sans-serif;
        }

        body {
            background-color: #f8fafc;
            color: #1e293b;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .login-box {
            width: 100%;
            max-width: 320px;
            padding: 20px;
            text-align: center;
        }

        .logo {
            width: 60px;
            height: auto;
            margin-bottom: 16px;
        }

        h1 {
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 24px;
            color: #0f172a;
        }

        .alert {
            color: #ef4444;
            font-size: 13px;
            margin-bottom: 16px;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin-bottom: 12px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            font-size: 14px;
            outline: none;
            background-color: #ffffff;
        }

        .input-field:focus {
            border-color: #2563eb;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            background-color: #2563eb;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            margin-top: 4px;
        }

        .btn-login:hover {
            background-color: #1d4ed8;
        }
    </style>
</head>
<body>

    <div class="login-box">
        <img src="src/logo.png" alt="Logo" class="logo">
        <h1>SPP Online</h1>

        <?php
        if(isset($_GET['pesan'])){
            if($_GET['pesan']=="gagal"){
                echo "<div class='alert'>Username atau password salah</div>";
            }
        }
        ?>

        <form action="login_validasi.php" method="post">
            <input type="text" name="username" class="input-field" placeholder="Username" required autocomplete="off">
            <input type="password" name="password" class="input-field" placeholder="Password" required>
            <button type="submit" name="login" class="btn-login">Masuk</button>
             <tr><td> </tr></td>
<tr><td> </tr></td>
<tr> <td align="center"> <a href = "bayar.php"> CEK PEMBAYARAN </a> </tr></td>
        </form>
    </div>
   

</body>
</html>