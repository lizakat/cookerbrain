<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form | Cooker Brain</title>
  <link rel="stylesheet" href="../static/styles/style log.css">
  <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
  <div class="wrapper">
    <form action="/registration" method="POST">
      <h1>Register</h1>
      <div class="input-box">
        <input type="text" name="name" placeholder="Name" required>
        <i class="fa-solid fa-user" style="color: #ffffff;"></i>
      </div>
      <div class="input-box">
        <input type="text" name="email" placeholder="Email" required>
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
      <button type="submit" class="btn">Register</button>
      <input type="hidden" name="_csrf" value="${_csrf.token}">
      <div class="register-link">
        <p>Already have an account? <a href="/login">Login</a></p>
      </div>
    </form>
  </div>
</body>

</html>