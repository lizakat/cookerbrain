<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form | Cooker Brain</title>
    <link rel="stylesheet" href="../static/styles/style%20log.css">
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

    <body>
    <div class="topbar">
        <div class="container">
            <div class="box">
                <input type="text" placeholder="Type to search">
                <a href="#">
                    <i class="fas fa-search icon"></i>
                </a>
            </div>

            <div class="icon">

                <a href="/shop_list">
                    <i class="fa-solid fa-cart-shopping" style="color: #ffffff;"></i>
                </a>
                <a href="login.ftlh">
                    <i class="fa-solid fa-user" style="color: #ffffff;"></i>
                </a>
                <i id="homeIcon" class="fa-solid fa-arrow-rotate-left" style="color: #ffffff;"></i>
                <a href="/index">
                    <i class="fa-solid fa-home fa-2xl" style="color: #ffffff;"></i>
                </a>
            </div>
        </div>
    </div>
    <script>
        document.getElementById('homeIcon').addEventListener('click', goBack);

        function goBack() {
            window.history.back();
        }
    </script>

    <!--
    - favicon - лого при загрузке
  <link rel="shortcut icon" href="...." type="image/svg+xml">-->

    <!--
    - google font link
  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap"
          rel="stylesheet">

    <!--
    - custom css link
  -->
    <link rel="stylesheet" href="../static/styles/style.css">

    <body id="top">


    <div class="preload" data-preaload>
        <div class="circle"></div>
        <p class="text">Cooker Brain</p>
    </div>

    <!--
- custom js link
-->
    <script src="../static/script/script.js"></script>

    <div class="wrapper">

            <form action="/logout" method="POST">
                <h1>Logout</h1>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="btn">Logout</button>
            </form>
            <#if errorMessage??>
                <h2 style="color: red">${errorMessage}</h2>
            </#if>
        </div>
    </body>

</html>