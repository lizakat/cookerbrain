<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cooker Brain</title>
    <script src="https://kit.fontawesome.com/047a896e47.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../static/styles/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"-->
    <!--
      - favicon - лого при загрузке
    <link rel="shortcut icon" href="...." type="image/svg+xml">-->

    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap" rel="stylesheet">

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="../static/styles/style.css">

    <!--
      - preload images
    -->
    <link rel="preload" as="image" href="../static/images/hero-slider-1.jpg">
    <link rel="preload" as="image" href="../static/images/hero-slider-2.jpg">
    <link rel="preload" as="image" href="../static/images/hero-slider-3.jpg">

</head>

<body id="top">

<!--
  - #PRELOADER
-->

<div class="preload" data-preaload>
    <div class="circle"></div>
    <p class="text">Cooker Brain</p>
</div>

<!--
  - #TOP BAR
-->

<div class="topbar">
    <div class="container">
        <div class="box">
            <input type="text" placeholder="Type to search">
            <a href="#">
                <i class="fas fa-search"></i>
            </a>
        </div>

        <div class="icon">
            <a href="/heart">
                <i class="fa-solid fa-heart" style="color: #fffafa;"></i>
            </a>
            <a href="/show_shop_list">
                <i class="fa-solid fa-cart-shopping" style="color: #ffffff;"></i>
            </a>
            <a href="/account">
                <i class="fa-solid fa-user" style="color: #ffffff;"></i>
            </a>
        </div>
    </div>
</div>

<!--
  - #HEADER
-->

<header class="header" data-header>
    <div class="container">

        <nav class="navbar" data-navbar>

            <button class="close-btn" aria-label="close menu" data-nav-toggler>
                <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
            </button>


            <ul class="navbar-list">

                <li class="navbar-item">
                    <a href="#home" class="navbar-link hover-underline active">
                        <div class="separator"></div>

                        <span class="span">Home</span>
                    </a>
                </li>

                <li class="navbar-item">
                    <a href="#about" class="navbar-link hover-underline">
                        <div class="separator"></div>

                        <span class="span">About Us</span>
                    </a>
                </li>

                <li class="navbar-item">
                    <a href="#categories" class="navbar-link hover-underline">
                        <div class="separator"></div>

                        <span class="span">Categories</span>
                    </a>
                </li>

                <li class="navbar-item">
                    <a href="#myrecipes" class="navbar-link hover-underline">
                        <div class="separator"></div>

                        <span class="span">My Recipes</span>
                    </a>
                </li>

                <li class="navbar-item">
                    <a href="#contactus" class="navbar-link hover-underline">
                        <div class="separator"></div>

                        <span class="span">Contact</span>
                    </a>
                </li>

            </ul>

        </nav>

        <button class="nav-open-btn" aria-label="open menu" data-nav-toggler>
            <span class="line line-1"></span>
            <span class="line line-2"></span>
            <span class="line line-3"></span>
        </button>

        <div class="overlay" data-nav-toggler data-overlay></div>

    </div>

    <div class="cart-items-container" id="cart-container">
        <div class="cart-item">
            <span class="fas fa-times"></span>
            <div class="content">
                <h3>Tomato</h3>
            </div>
        </div>
        <div class="cart-item">
            <span class="fas fa-times"></span>
            <div class="content">
                <h3>Mushrooms</h3>
            </div>
        </div>
        <div class="cart-item">
            <span class="fas fa-times"></span>
            <div class="content">
                <h3>Potato</h3>
            </div>
        </div>
        <div class="cart-item">
            <span class="fas fa-times"></span>
            <div class="content">
                <h3>Cheese</h3>
            </div>
        </div>
    </div>

</header>

<main>
    <article>

        <!--
          - #HERO
        -->

        <section class="hero text-center" aria-label="home" id="home">

            <ul class="hero-slider" data-hero-slider>

                <li class="slider-item active" data-hero-slider-item>

                    <div class="slider-bg">
                        <img src="../static/images/hero-slider-1.jpg" width="1880" height="950" alt="" class="img-cover">
                    </div>

                    <p class="label-2 section-subtitle slider-reveal">Delicious & Simple</p>

                    <h1 class="display-1 hero-title slider-reveal">
                        COOKER BRAIN
                    </h1>

                    <p class="body-2 section-subtitle slider-reveal">
                        Better food , better mood
                    </p>

                    <a href="#categories" class="btn btn-secondary slider-reveal">
                        <span class="text text-1">View Сategories</span>

                        <span class="text text-2" aria-hidden="true">View Сategories</span>
                    </a>

                </li>

                <li class="slider-item" data-hero-slider-item>

                    <div class="slider-bg">
                        <img src="../static/images/hero-slider-2.jpg" width="1880" height="950" alt="" class="img-cover">
                    </div>

                    <p class="label-2 section-subtitle slider-reveal">new experience</p>

                    <h1 class="display-1 hero-title slider-reveal">
                        Flavors Inspired by <br>
                        the Seasons
                    </h1>

                    <p class="body-2 hero-text slider-reveal"></p>

                    <a href="#categories" class="btn btn-secondary slider-reveal">
                        <span class="text text-1">View Сategories</span>

                        <span class="text text-2" aria-hidden="true">View Сategories</span>
                    </a>

                </li>

                <li class="slider-item" data-hero-slider-item>

                    <div class="slider-bg">
                        <img src="../static/images/hero-slider-3.jpg" width="1880" height="950" alt="" class="img-cover">
                    </div>

                    <p class="label-2 section-subtitle slider-reveal">amazing & delicious</p>

                    <h1 class="display-1 hero-title slider-reveal">
                        Where every flavor <br>
                        tells a story
                    </h1>

                    <p class="body-2 hero-text slider-reveal"></p>

                    <a href="#categories" class="btn btn-secondary slider-reveal">
                        <span class="text text-1">View Сategories</span>

                        <span class="text text-2" aria-hidden="true">View Сategories</span>
                    </a>

                </li>

            </ul>

            <button class="slider-btn prev" aria-label="slide to previous" data-prev-btn>
                <ion-icon name="chevron-back"></ion-icon>
            </button>

            <button class="slider-btn next" aria-label="slide to next" data-next-btn>
                <ion-icon name="chevron-forward"></ion-icon>
            </button>

            <a href="/shop_list" class="hero-btn has-after bottom-right">
                <span class="label-2 text-center span">Create a shopping list</span>
            </a>

            <a href="/create_recipe" class="hero-btn has-after bottom-left">
                <span class="label-2 text-center span">Сreate own recipe</span>
            </a>

        </section>

        <!--
          - #ABOUT
        -->

        <section class="section about bg-black-10 text-center" aria-labelledby="about-label" id="about">
            <div class="container">

                <div class="about-content">

                    <p class="label-2 section-subtitle" id="about-label">About Us</p>

                    <h2 class="headline-1 section-title">What is our website for?</h2>

                    <p class="section-text">
                        With the help of our website, you can search for recipes in various categories and save the ones you like.
                        You can also create your own recipes. Moreover, it is possible to create your own shopping lists for your
                        convenience.<span>We are glad that you are with us!</span>
                    </p>

                </div>

                <figure class="about-banner">

                    <img src="../static/images/3.jpg" width="570" height="570" loading="lazy" alt="about banner" class="w-100"
                         data-parallax-item data-parallax-speed="1">

                    <div class="abs-img abs-img-1 has-before" data-parallax-item data-parallax-speed="1.75">
                        <img src="../static/images/about-abs-image.jpg" width="285" height="285" loading="lazy" alt="" class="w-100">
                    </div>

                </figure>

                <img src="../static/images/shape-5.png" width="921" height="1036" loading="lazy" alt="shape"
                     class="shape shape-2 move-anim">
                <img src="../static/images/shape-6.png" width="343" height="345" loading="lazy" alt="shape"
                     class="shape shape-3 move-anim">

            </div>
        </section>

        <!--
          - #FEATURES
        -->

        <section class="section features bg-black-10 text-center" aria-label="features">
            <div class="container">

                <p class="section-subtitle label-2">Why Choose Us</p>

                <h2 class="headline-1 section-title">Our Strength</h2>

                <ul class="grid-list">

                    <li class="feature-item">
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="../static/images/features-icon-1.png" width="100" height="80" loading="lazy" alt="icon">
                            </div>

                            <h3 class="title-2 card-title">Healthy eating</h3>

                            <p class="label-1 card-text">We try to instill healthy eating habits</p>

                        </div>
                    </li>

                    <li class="feature-item">
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="../static/images/features-icon-2.png" width="100" height="80" loading="lazy" alt="icon">
                            </div>

                            <h3 class="title-2 card-title">Сool Environment</h3>

                            <p class="label-1 card-text">You will be able to find like-minded people</p>

                        </div>
                    </li>

                    <li class="feature-item">
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="../static/images/features-icon-3.png" width="100" height="80" loading="lazy" alt="icon">
                            </div>

                            <h3 class="title-2 card-title">Developing your skills</h3>

                            <p class="label-1 card-text">We offer recipes of varying complexity</p>

                        </div>
                    </li>

                    <li class="feature-item">
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="../static/images/features-icon-4.png" width="100" height="80" loading="lazy" alt="icon">
                            </div>

                            <h3 class="title-2 card-title">Event & Party</h3>

                            <p class="label-1 card-text">We organize various events in order to be closer to you</p>

                        </div>
                    </li>

                </ul>

                <img src="../static/images/shape-4.png" width="208" height="178" loading="lazy" alt="shape"
                     class="shape shape-1">

                <img src="../static/images/shape-1.png" width="120" height="115" loading="lazy" alt="shape"
                     class="shape shape-2">

            </div>
        </section>
        <div>

        </div>





        <!--
          - #CATEGORY
        -->

        <section class="section service  bg-black-10 text-center" aria-label="service" , id="categories">
            <div class="container">

                <p class="section-subtitle label-2">Flavors For Royalty</p>

                <h2 class="headline-1 section-title">Сategories</h2>

                <p class="section-text">
                    Choose the recipe category that interests you
                </p>

                <ul class="grid-list">

                    <li>
                        <div class="service-card">

                            <a href="#" class="has-before hover:shine">
                                <figure class="card-banner img-holder" style="--width: 285; --height: 336;">
                                    <img src="../static/images/service-1.jpg" width="285" height="336" loading="lazy" alt="Decerts"
                                         class="img-cover">
                                </figure>
                            </a>

                            <div class="card-content">

                                <h3 class="title-4 card-title">
                                    <a href="#">Decerts</a>
                                </h3>

                                <a href="#" class="btn-text hover-underline label-2">View Recipes</a>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="service-card">

                            <a href="choose_category.html" class="has-before hover:shine">
                                <figure class="card-banner img-holder" style="--width: 285; --height: 336;">
                                    <img src="../static/images/service-2.jpg" width="285" height="336" loading="lazy" alt="Main Dish"
                                         class="img-cover">
                                </figure>
                            </a>

                            <div class="card-content">
                                <h3 class="title-4 card-title">
                                    <a href="choose_category.html">Main Dish</a>
                                </h3>

                                <a href="choose_category.html" class="btn-text hover-underline label-2">View Recipes</a>
                            </div>


                        </div>
                    </li>

                    <li>
                        <div class="service-card">

                            <a href="#" class="has-before hover:shine">
                                <figure class="card-banner img-holder" style="--width: 285; --height: 336;">
                                    <img src="../static/images/service-3.jpg" width="285" height="336" loading="lazy" alt="Drinks"
                                         class="img-cover">
                                </figure>
                            </a>

                            <div class="card-content">

                                <h3 class="title-4 card-title">
                                    <a href="#">Drinks</a>
                                </h3>

                                <a href="#" class="btn-text hover-underline label-2">View Recipes</a>

                            </div>

                        </div>
                    </li>

                </ul>

                <img src="../static/images/shape-1.png" width="246" height="412" loading="lazy" alt="shape"
                     class="shape shape-1 move-anim">
                <img src="../static/images/shape-2.png" width="343" height="345" loading="lazy" alt="shape"
                     class="shape shape-2 move-anim">

            </div>
        </section>


        <!--
          - #EVENT
        -->

        <section class="section event bg-black-10" aria-label="event">
            <div class="container">

                <p class="section-subtitle label-2 text-center">Recent Updates</p>

                <h2 class="section-title headline-1 text-center">Upcoming Event</h2>

                <ul class="grid-list">

                    <li>
                        <div class="event-card has-before hover:shine">

                            <div class="card-banner img-holder" style="--width: 350; --height: 450;">
                                <img src="../static/images/event-1.jpg" width="350" height="450" loading="lazy"
                                     alt="Flavour so good you’ll try to eat with your eyes." class="img-cover">

                                <time class="publish-date label-2" datetime="2023-12-15">15/12/2023</time>
                            </div>

                            <div class="card-content">
                                <p class="card-subtitle label-2 text-center">Food, Flavour</p>

                                <h3 class="card-title title-2 text-center">
                                    Flavour so good you’ll try to eat with your eyes.
                                </h3>
                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="event-card has-before hover:shine">

                            <div class="card-banner img-holder" style="--width: 350; --height: 450;">
                                <img src="../static/images/event-2.jpg" width="350" height="450" loading="lazy"
                                     alt="Flavour so good you’ll try to eat with your eyes." class="img-cover">

                                <time class="publish-date label-2" datetime="2023-12-08">08/12/2023</time>
                            </div>

                            <div class="card-content">
                                <p class="card-subtitle label-2 text-center">Healthy Food</p>

                                <h3 class="card-title title-2 text-center">
                                    Flavour so good you’ll try to eat with your eyes.
                                </h3>
                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="event-card has-before hover:shine">

                            <div class="card-banner img-holder" style="--width: 350; --height: 450;">
                                <img src="../static/images/event-3.jpg" width="350" height="450" loading="lazy"
                                     alt="Flavour so good you’ll try to eat with your eyes." class="img-cover">

                                <time class="publish-date label-2" datetime="2023-12-03">03/12/2023</time>
                            </div>

                            <div class="card-content">
                                <p class="card-subtitle label-2 text-center">Recipe</p>

                                <h3 class="card-title title-2 text-center">
                                    Flavour so good you’ll try to eat with your eyes.
                                </h3>
                            </div>

                        </div>
                    </li>

                </ul>

            </div>
        </section>

    </article>
</main>


<!--
  - #FOOTER
-->

<style>
    .title-1 {
        align-content: center;
    }
</style>

<footer class="footer section has-bg-image text-center," style="background-image: url('../static/images/footer-bg.jpg')"
        , id="contactus">
    <div class="container">

        <div class="footer-top grid-list">

            <div class="footer-brand has-before has-after">

                <p class="title-1">COOKER BRAIN</p>

                <a href="mailto:cooking_brain@gmail.com" class="body-4 contact-link">cooking_brain@gmail.com</a>
                <div class="wrapper">
                    <div class="separator"></div>
                    <div class="separator"></div>
                    <div class="separator"></div>
                </div>

                <p class="title-1">Get News & Offers</p>

                <p class="label-1">
                    Subscribe us
                </p>

                <form action="" class="input-wrapper">
                    <div class="icon-wrapper">
                        <ion-icon name="mail-outline" aria-hidden="true"></ion-icon>

                        <input type="email" name="email_address" placeholder="Your email" autocomplete="off" class="input-field">
                    </div>

                    <button type="submit" class="btn btn-secondary">
                        <span class="text text-1">Subscribe</span>

                        <span class="text text-2" aria-hidden="true">Subscribe</span>
                    </button>
                </form>

            </div>

            <ul class="footer-list">

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Home</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">About Us</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Categories</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">My Recipes</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Contact</a>
                </li>

            </ul>

            <ul class="footer-list">

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Facebook</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Instagram</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Twitter</a>
                </li>

                <li>
                    <a href="#" class="label-2 footer-link hover-underline">Youtube</a>
                </li>

            </ul>

        </div>

        <div class="footer-bottom">

            <p class="copyright">
                &copy; 2023 Cooker Brain. All Rights Reserved | Crafted by <a href="https://github.com/lizakat/cookerbrain"
                                                                              target="_blank" class="link">Sejko (frontend) & Liza Katkovskaya (backend)</a>
            </p>

        </div>

    </div>
</footer>




<!--
  - #BACK TO TOP
-->

<a href="#top" class="back-top-btn active" aria-label="back to top" data-back-top-btn>
    <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
</a>





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