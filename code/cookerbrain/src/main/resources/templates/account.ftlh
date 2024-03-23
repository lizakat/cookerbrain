<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cooker Brain</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../static/styles/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style>
        body {
            margin-top: 10px;
            overflow: hidden;
            height: 100vh;
        }

        .icon {
            margin-top: 10px;
        }
    </style>

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
                <a href="/log">
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

        >

        <!-- 
      - #PRELOADER
    -->

        <div class="preload" data-preaload>
            <div class="circle"></div>
            <p class="text">Cooker Brain</p>
        </div>

        <!-- 
    - custom js link
  -->
        <script src="../static/script/script.js"></script>


        <!-- 
        - #MENU
      -->

        <section class="hero text-center" aria-label="home" id="home">

            <ul>
                <div class="slider-bg">
                    <img src="../static/images/hero-slider-1.jpg" width="1880" height="950" alt="" class="img-cover">
                </div>

                <div class="wrapper text-center">
                    <#if user.email??>
                        <br>
                        <br>
                        <br>
                        <br>
                        <h2 class="headline-1 section-title text-center">Username: <i>${user.name}</i></h2>
                        <h2 class="headline-1 section-title text-center">Email: <i>${user.email}</i></h2>
                        <br>
                        <form action="/logout" method="POST">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button type="submit" class="btn">Logout</button>
                        </form>
                        <#if errorMessage??>
                            <h2 style="color: red">${errorMessage}</h2>
                        </#if>
                    </#if>
                </div>
            </ul>


            <a href="/shop_list" class="hero-btn has-after bottom-right">
                <span class="label-2 text-center span">Create a shopping list</span>
            </a>

            <a href="/create_recipe" class="hero-btn has-after bottom-left">
                <span class="label-2 text-center span">Сreate own recipe</span>
            </a>

            <a href="/show_shop_list" class="hero-btn has-after bottom-center">
                <span class="label-2 text-center span">Show a shopping list </span>
            </a>

        </section>


        <!-- 
    - #FOOTER
  -->
        <div class="footer-bottom" style="text-align: center;">
            <p class="copyright">
                &copy; 2023 Cooker Brain. All Rights Reserved | Crafted by
                <a href="https://github.com/lizakat/cookerbrain" target="_blank" class="link">Liza Sejko (frontend) &
                    Liza Katkovskaya (backend)</a>
            </p>
        </div>
        </footer>

        <!-- 
- custom js link
-->
        <script src="../static/script/script.js"></script>


        <!-- 
    - ionicon link
  -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>
</body>

</html>