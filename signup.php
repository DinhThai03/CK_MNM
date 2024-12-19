<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container mt-5">
        <form action="index.php?page_layout=signup" method="post" class="row g-3 needs-validation" novalidate>
            <div class="col-md-6">
                <label class="form-label">User Name</label>
                <input type="text" name="username" class="form-control" required>
                <div class="invalid-feedback">
                    Vui lòng nhập tên đăng nhập.
                </div>
            </div>
            <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Password</label>
                <input type="password" name="userpass" class="form-control" required>
                <div class="invalid-feedback">
                    Vui lòng nhập mật khẩu.
                </div>
            </div>

            <div class="col-12">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name" required>
                <div class="invalid-feedback">
                    Vui lòng nhập họ tên.
                </div>
            </div>

            <div class="col-md-12">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
                <div class="invalid-feedback">
                    Vui lòng nhập email hợp lệ.
                </div>
            </div>

            <div class="col-md-6">
                <label class="form-label">Phone</label>
                <input type="text" name="phone" class="form-control" required>
                <div class="invalid-feedback">
                    Vui lòng nhập số điện thoại.
                </div>
            </div>

            <div class="col-12">
                <label class="form-label">Address</label>
                <input type="text" class="form-control" name="address" required>
                <div class="invalid-feedback">
                    Vui lòng nhập địa chỉ.
                </div>
            </div>

            <div class="col-12">
                <input type="submit" class="btn btn-primary" name="signup" value="Đăng ký">
            </div>
        </form>
    </div>

    <script>
        // Kích hoạt kiểm tra form Bootstrap
        (function() {
            'use strict';
// Lấy tất cả các form có class `needs-validation`
            var forms = document.querySelectorAll('.needs-validation');

            // Thêm sự kiện submit cho tất cả form
            Array.prototype.slice.call(forms).forEach(function(form) {
                form.addEventListener('submit', function(event) {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }

                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>
</body>

</html>