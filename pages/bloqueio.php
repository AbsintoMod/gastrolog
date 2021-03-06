<?php
session_start();
if(empty($_SESSION['id'])){
  $_SESSION['msg'] = "<div class='alert alert-danger'>Área restrita!</div>";
  header("Location://localhost/gastroLog/pages/home.php");  
}elseif ( isset( $_SESSION["sessiontime"] ) ) { 
      if ($_SESSION["sessiontime"] < time() ) { 
        header("Location://localhost/gastroLog/pages/tela_bloqueio.php");               
        //Redireciona para login
      } else {
        //Seta mais tempo 60 segundos
        $_SESSION["sessiontime"] = time() - 300;
      }
} else { 
  session_unset();
  //Redireciona para login
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Gest Log | Bloqueado</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- icone-->
  <link rel="sortcut icon" href="../img/icon.png" type="image/x-icon">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition lockscreen">
<!-- Automatic element centering -->
<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    <b>Gest</b> Log
  </div>
    <?php
      if(isset($_SESSION['msg'])){
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
      }
    ?>
  <!-- User name -->
  <div class="lockscreen-name"><?php echo $_SESSION['usuario'];?></div>

  <!-- START LOCK SCREEN ITEM -->
  <div class="lockscreen-item">
    <!-- lockscreen image -->
    <div class="lockscreen-image">
      <img src="../dist/img/user1-128x128.jpg" alt="User Image">
    </div>
    <!-- /.lockscreen-image -->

    <!-- lockscreen credentials (contains the form) -->
    <form class="lockscreen-credentials" action="../php/valida_bloqueio.php" method="POST">
      <div class="input-group">
        <input type="password" class="form-control" placeholder="password" name="senha" autofocus/>
          <div class="input-group-btn">
            <button type="submit"  class="btn" name="go"><i class="fa fa-arrow-right text-muted"></i></button>
          </div>
      </div>
    </form>
    <!-- /.lockscreen credentials -->

  </div>
  <!-- /.lockscreen-item -->
  <div class="help-block text-center">
    Entre com sua senha e reative a sessão!
  </div>
  <div class="text-center">
    <a href="home.php">Ou entre com um usuário diferente.</a>
  </div>
  <div class="lockscreen-footer text-center">
    Copyright &copy; 2018-2019 <b><a href="#" class="text-black">Heavy Studio</a></b><br>
    All rights reserved
  </div>
</div>
<!-- /.center -->

<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
