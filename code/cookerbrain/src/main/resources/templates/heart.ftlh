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

                <a href="shop_list.ftlh">
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

        <section class="section menu" aria-label="menu-label" id="menu">
            <div class="container">

                <p class="section-subtitle text-center label-2">Best food</p>

                <h2 class="headline-1 section-title text-center">Favourites</h2>

                <ul class="grid-list">

                    <li>
                        <div class="menu-card hover:card">

                            <figure class="card-banner img-holder" style="--width: 100; --height: 100;">
                                <img src="../static/images/greek%20salad%201.jpg" width="100" height="100" loading="lazy"
                                     alt="Greek Salad" class="img-cover">
                            </figure>

                            <div>

                                <div class="title-wrapper">
                                    <h3 class="title-3">
                                        <a href="recipe.html" class="card-title">Greek Salad</a>
                                    </h3>


                                    <span class="badge label-1"></span>

                                    <span class="span title-2"></span>
                                </div>

                                <p class="card-text label-1">
                                    Tomatoes, green bell pepper, sliced cucumber onion, olives, and feta cheese.
                                </p>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="menu-card hover:card">

                            <figure class="card-banner img-holder" style="--width: 100; --height: 100;">
                                <img src="../static/images/menu-2.png" width="100" height="100" loading="lazy"
                                     alt="Lasagne" class="img-cover">
                            </figure>

                            <div>

                                <div class="title-wrapper">
                                    <h3 class="title-3">
                                        <a href="#" class="card-title">Lasagne</a>
                                    </h3>

                                    <span class="span title-2"></span>
                                </div>

                                <p class="card-text label-1">
                                    Vegetables, cheeses, ground meats, tomato sauce, seasonings and spices
                                </p>

                            </div>

                        </div>
                    </li>


                    <img src="../static/images/shape-5.png" width="921" height="1036" loading="lazy" alt="shape"
                         class="shape shape-2 move-anim">
                    <img src="../static/images/shape-6.png" width="343" height="345" loading="lazy" alt="shape"
                         class="shape shape-3 move-anim">

            </div>
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

</html>