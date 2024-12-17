<?php
session_start();
include "./connect/connect.php";
include "./connect/sanphamconn.php";
include "./connect/nhasanxuatconn.php";
include "./connect/categoriesconn.php";
include "./connect/user.php";
$dssp = getallsp();
$hang = getallnsx();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/app.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


  <title>XGAER</title>
</head>

<body>
  <?php
  include "./view/header.php";
  if (isset($_GET['page_layout'])) {
    switch ($_GET['page_layout']) {
      case 'nsx':
        if (isset($_GET['manhasanxuat']) && $_GET['manhasanxuat'] > 0) {
          $idnsx = $_GET['manhasanxuat'];
          $dssp = getspBynsx($idnsx);
        }
        include "./view/home.php";
        break;  
      case 'category':
        if (isset($_GET['loai_id']) && $_GET['loai_id'] > 0) {
          $idcate = $_GET['loai_id'];
          $dssp = getallsp_byCate($idcate);
        }
        include "./view/home.php";
        break;
        case 'search':

          $keyword = trim($_POST['keyword']); // Loại bỏ khoảng trắng thừa
          echo "<script>console.log('" . $keyword . "')</script>";
          $dssp = searchProducts($keyword); // Gọi hàm tìm kiếm
          include "./view/home.php"; // Hiển thị kết quả
  
          break;
      case 'detail':
        if (isset($_GET['id']) && $_GET['id'] > 0) {
          $id = $_GET['id'];
          $prodetail = getdetail($id);
        } else {
          $prodetail = 0;
        }

        include 'detail.php';
        break;
      
      case 'logout':
        unset($_SESSION['role']);
        unset($_SESSION['iduser']);
        unset($_SESSION['username']);
        header('location: index.php');
        break;
      case 'login':
        if ((isset($_POST['login'])) && ($_POST['login'])) {
          $username = $_POST['username'];
          $userpass = $_POST['userpass'];

          $kq = getuserinfo($username, $userpass);
          if($kq != null){
            $role = $kq[0]['role'];
          if ($role == 1) {
            $_SESSION['role'] = $role;
            header('location: ./admin/index.php');
          } else {
            $_SESSION['role'] = $role;
            $_SESSION['iduser'] = $kq[0]['id_tk'];

            $_SESSION['username'] = $kq[0]['username'];

            header('location: index.php');
          }
          }
          
        }
        include "./login.php";
        break;
      case 'signup':
        include './signup.php';
        break;
    }
  } else {
    include "./view/home.php";
  }
  include "./view/footer.php";

  ?>
  <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>