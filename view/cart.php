<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="index.html">Home</a>
    </li>
    <li class="breadcrumb-item active">View cart</li>
</ol>

<section class="ab-info-main py-5">
    <div class="container py-3">
        <h3 class="tittle text-center">View Cart</h3>
        <div class="row contact-main-info mt-5">
            <div class="col-md-6 contact-right-content">
                <?php
                if (isset($_SESSION['username']) && ($_SESSION['username'] != "")) {
                    if (!empty($_SESSION['giohang'])) { // Kiểm tra nếu giỏ hàng không rỗng
                        echo '<table class="table table-striped">
                        <thead class="thead-dark">
                        <tr>
                            <th>Stt</th>
                            <th>Tên sp</th>
                            <th>Hình</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                            <th>Hành động</th>
                        </tr>
                        <tbody>';

                        $i = 0;
                        $tong = 0;
                        foreach ($_SESSION['giohang'] as $item) {
                            $tt = $item[3] * $item[4];
                            $tong += $tt;
                            echo '
                            <tr>
                                <td>' . ($i + 1) . '</td>
                                <td>' . $item[1] . '</td>
                                <td> <img width=100px; src="image/' . $item[2] . '" alt=""></td>
                                <td>' . $item[3] . '</td>
                                <td>' . $item[4] . '</td>
                                <td>' . $tt . '</td>
                                <td><a href="index.php?page_layout=delcart&i=' . $i . '" class="btn btn-danger mx-2">Xóa </a> </td>
                            </tr>';
                            $i++;
                        }
                        echo '<tr><td colspan="5">Tổng tiền thanh toán là:</td><td>' . $tong . '(VND)</td><td></td><td></td><td></td></tr>';
                        echo ' </tbody></table>';
                    } else {
                        echo '<p class="text-danger">Giỏ hàng trống. Hãy thêm sản phẩm trước khi thanh toán!</p>';
                    }
                } else {
                    echo '<p class="text-danger">Bạn cần đăng nhập để xem giỏ hàng.</p>';
                }
                ?>
                <br>
                <a href="index.php" class="btn btn-info">Tiếp tục mua hàng</a>|<a href="#" class="btn btn-success">Thanh toán</a>|<a href="index.php?page_layout=delcart" class="btn btn-danger ">Xóa giỏ hàng</a>
            </div>
            <div class="col-md-6 contact-left-content">
                <form action="index.php?page_layout=thanhtoan" method="post" onsubmit="return validateForm()">
                    <input type="hidden" name="tongtien" value="<?= isset($tong) ? $tong : 0 ?>">

                    <table class="table">
                        <tbody>
                            <tr>
                                <td><input type="text" name="name" placeholder="Họ tên"></td>
                            </tr>
                            <tr>
                                <td><input type="text" name="address" placeholder="Địa chỉ"></td>
                            </tr>
                            <tr>
                                <td><input type="text" name="phone" placeholder="Số điện thoại"></td>
                            </tr>
                            <tr>
                                <td>Phương thức thanh toán: <br>
                                    <input type="radio" name="pttt" value="1"> Thanh toán khi nhận hàng <br>
                                    <input type="radio" name="pttt" value="2"> Thanh toán qua ngân hàng <br>
                                    <input type="radio" name="pttt" value="3"> Thanh toán qua MoMo <br>
                                    <input type="radio" name="pttt" value="4"> Thanh toán qua ZaloPay <br>
                                </td>
                            </tr>
                            <tr><td><input type="submit" name="thanhtoan" value="Thanh toán"></td></tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
function validateForm() {
    <?php if (!isset($_SESSION['username']) || $_SESSION['username'] == "") { ?>
        alert("Bạn cần đăng nhập để thực hiện thanh toán.");
        return false;
    <?php } ?>

    <?php if (empty($_SESSION['giohang'])) { ?>
        alert("Giỏ hàng trống. Hãy thêm sản phẩm trước khi thanh toán.");
        return false;
    <?php } ?>

    return true;
}
</script>
