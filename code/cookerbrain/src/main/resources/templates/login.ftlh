<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form | Cooker Brain</title>
  <!--<link rel="stylesheet" href="../static/styles/style log.css">-->
  <link rel="stylesheet" href="../static/styles/style log.css">
  <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
  <div class="wrapper">
    <form action="/login" method="POST">
      <h1>Login</h1>
      <div class="input-box">
        <input type="email" name="username" placeholder="Email" required>
        <i class="fa-solid fa-user" style="color: #ffffff;"></i>
      </div>
      <div class="input-box">
        <input type="password" name="password" placeholder="Password" required>
        <i class="fa-solid fa-lock" style="color: #fafafa;"></i>
      </div>
      <div class="remember-forgot">
        <label><input type="checkbox">Remember Me</label>
        <a href="#">Forgot Password</a>
      </div>
      <input type="hidden" name="_csrf" value="${_csrf.token}">
      <button type="submit" class="btn">Login</button>
      <div class="register-link">
        <p>Don't have an account? <a href="/registration">Register</a></p>
      </div>
    </form>
    <div id="message"></div>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
  </div>
<!--  <script>
    $(document).ready(function () {
      $("#loginForm").submit(function (event) {
        event.preventDefault();

        $.ajax({
          type: "POST",
          url: "/LoginServlet",
          data: $("#loginForm").serialize(),
          success: function (response) {
            var result = JSON.parse(response);
            showMessage(result.message, result.status);
          },
          error: function () {
            showMessage("An error occurred during the request.", "error");
          }
        });
      });

      function showMessage(message, status) {
        // Очищаем предыдущее сообщение
        $("#message").empty();

        // Создаем элемент для сообщения
        var messageElement = $("<div></div>").text(message);

        // Добавляем стиль в зависимости от статуса
        if (status === "error") {
          messageElement.css("color", "red");
        } else if (status === "success") {
          messageElement.css("color", "green");
        }

        // Добавляем сообщение к элементу с id="message"
        $("#message").append(messageElement);
      }
    });
  </script>-->
</body>

</html>