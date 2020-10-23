<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Yoo</title>
    <link rel="stylesheet" href="/css/egovframework/profile_page/profile_css.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
        integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:200" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Sunflower:300" rel="stylesheet">
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3c255ddb735f12a7650d5e49387ff98a"></script>
</head>

<body>

    <!-- boxLoading -->
    <div class="bg">
        <div class="boxLoading"></div>
    </div>
    <!-- boxLoading -->

    <!-- icon -->
    <div class="i icon-bars"><i class="fas fa-bars"></i></div>
    <div class="i icon-top"><i class="fas fa-chevron-up"></i></div>
    <!-- icon -->

    <!-- menu -->
    <div class="background"></div>
    <div class="menu">
        <div class="name"><a href="#" class="fira">My Portfolio</a></div>
        <nav>
            <div class="box home"><span><i class="fas fa-home"></i>Home</span></div>
            <div class="box motto"><span><i class="fas fa-align-center"></i>Motto</span></div><!-- 좌우명 -->
            <div class="box interests"><span><i class="fas fa-star"></i>Interests</span></div>
            <div class="box portfolio"><span><i class="fas fa-file"></i>Portfolio</span></div>
            <div class="box awards"><span><i class="fas fa-award"></i>Awards</span></div>
        </nav>
        <div class="lang">
            <p><i class="fas fa-globe"></i>Language</p>
            <a href="index.html"><i class="fas fa-circle"></i>English</a><br>
            <a href="index_k.html"><i class="fas fa-circle"></i>Korean</a>
        </div>
    </div>
    <!-- menu -->

    <!-- section1 -->
    <section id="section1">

        <!-- container -->
        <div class="container">
            <div class="text fira">
                <p>My Portfolio</p>
                <div class="sub">Stylish portfolio of future programmer Yoo JunWoo</div>
                <button class="btn fira motto">My motto</button>
            </div>
        </div>
        <!-- container -->

    </section>
    <!-- section1 -->

    <!-- section2 -->
    <section id="section2">

        <!-- container -->
        <div class="container">
            <div class="content" title="승리를 바라지 않는다면 이미 패배한 것이다">He who does not hope to win has already lost</div>
            <div class="sub" title="에콰도르의 정치인">"Jose Joaquin Olmedo"</div>
            <button class="btn fira interests">My interests</button>
        </div>
        <!-- container -->

    </section>
    <!-- section2 -->

    <!-- section3 -->
    <section id="section3">

        <!-- container -->
        <div class="container">
            <div class="tag">Interests</div>
            <div class="title fira">My interests</div>
            <div class="box flex">
                <div class="group group1">
                    <div class="icon"><i class="fas fa-code"></i></div>
                    <div class="name">Programing</div>
                    <div class="info">Learn how to coding with <a href="https://www.sublimetext.com"
                            target="_blank">Sublime Text</a></div>
                </div>
                <div class="group group2">
                    <div class="icon"><i class="fas fa-desktop"></i></div>
                    <div class="name">Computer</div>
                    <div class="info">I'm interested in Computer these days</div>
                </div>
                <div class="group group3">
                    <div class="icon"><i class="fas fa-futbol"></i></div>
                    <div class="name">Football</div>
                    <div class="info">I like football since I was child</div>
                </div>
                <div class="group group3">
                    <div class="icon"><i class="fas fa-gamepad"></i></div>
                    <div class="name">Game</div>
                    <div class="info">FO4, PUBG, OverWatch...</div>
                </div>
            </div>
        </div>
        <!-- container -->

    </section>
    <!-- section3 -->

    <!-- section4 -->
    <section id="section4">

        <!-- container -->
        <div class="container">
            <div class="tag">Portfolio</div>
            <div class="title fira">My Projects</div>
            <div class="box">
                <div class="caption caption1">
                    <div class="pic pic1">
                        <h2>Korean Air<span class="date">2018.3</span></h2>
                        <p>I made this page similar to the Korean Air site. I created using pure HTML5 and CSS3.</p>
                    </div>
                    <img src="/images/egovframework/profile_images/koreanAir.jpg" alt="img">
                </div>
                <div class="caption caption2">
                    <div class="pic pic2">
                        <h2>Lamborghini <span class="date">2018.4</span></h2>
                        <p>This page is a page that explains the Lamborghini model. By default, we created a layout
                            using HTML5 and CSS3, and created a scroll event using JavaScript and JQuery easing to
                            create a parallax effect. I inserted the video in the main screen so made it more lively.
                        </p>
                    </div>
                    <img src="/images/egovframework/profile_images/lamborghini.jpg" alt="img">
                 
                </div>
                <div class="caption caption3">
                    <div class="pic pic3">
                        <h2>Mp3 Player <span class="date">2018.6</span></h2>
                        <p>This page is a simple mp3 music player. Using JavaScript and JQuery, I implemented song play
                            / pause, next / previous song, and song selection.</p>
                    </div>
                    <img src="/images/egovframework/profile_images/mp3.jpg" alt="img">
                
                </div>
                <div class="caption caption4">
                    <div class="pic pic4">
                        <h2>Wolrdcup Search<span class="date">2018.7</span></h2>
                        <p>This application is a simple program to get information of the 2018 Russia World Cup using
                            Java. Use Java WebView to display actual sites. If you select a country in the Select Box,
                            the athletes from that country will be shown, and if you select a group, you can see the
                            ranking of that group.</p>
                    </div>
                    <img src="/images/egovframework/profile_images/worldcup.png" alt="img">
     
                </div>

                <div class="hidden">
                    <div class="caption caption5">
                        <div class="pic pic5">
                            <h2>Shooting Game <span class="date">2018.8</span></h2>
                            <p>This page is a simple shooting game using JavaScript and JQuery. Use your mouse to make
                                your enemies disappear. You lose 1 point when you shoot, and the score increases each
                                time you hit the enemy. If you miss enemy three times, the game ends and the name is
                                saved in the database. If the score is in Top 10, it is recorded in the table on the
                                right.</p>
                        </div>
                        <img src= "/images/egovframework/profile_images/ajaxgame.jpg" alt="img">
                       
                    </div>
                    <div class="caption caption6">
                        <div class="pic pic6">
                            <h2>Our Blog<span class="date">2018.8</span></h2>
                            <p>This page is a blog created using HTML5, CSS3, PHP, MySql. We created a layout using
                                Bootstrap3, configured MySql database, and realized login / register, write / modify /
                                delete, category, and comment using PHP. Also, designed only logged in members.</p>
                        </div>
                        <img src="/images/egovframework/profile_images/ourblog.jpg" alt="img">
                         
                    </div>
                    <div class="caption caption7">
                        <div class="pic pic7">
                            <h2>My EPL Team <span class="date">2018.11</span></h2>
                            <p>This application is a British Premier League schedule program using Java. If you log in /
                                register with your own account and decide your favorite team, you will see the rank of
                                the team, fixtures, results, and recent news. I created the layout of the program using
                                JAVA FX, and crawled on the real site using Selenium to get information.</p>
                        </div>
                        <img src="/images/egovframework/profile_images/epl.jpg" alt="img">
                        
                    </div>
                </div>

            </div>
            <button class="btn more"><i class="fas fa-angle-double-down"></i>See More<i
                    class="fas fa-angle-double-down"></i></button>
            <button class="btn close"><i class="fas fa-angle-double-up"></i>Close<i
                    class="fas fa-angle-double-up"></i></button>
        </div>
        <!-- container -->

    </section>
    <!-- section4 -->

    <!-- section5 -->
    <section id="section5">

        <!-- container -->
        <div class="container">
            <div class="tag">Awards</div>
            <div class="title fira">My experience</div>
            <div class="box">
                <div class="inner competition">
                    <h2>Competiton</h2>
                    <ul class="timeline">
                        <li class="event" data-date="2018.7">
                            <p>Award for outstanding performance in mathematics</p>
                        </li>
                        <li class="event" data-date="2018.5">
                            <p>#3 in School App Development Plan Competition</p>
                        </li>
                        <li class="event" data-date="2018.5">
                            <p>#2 in School Web Publishing Competition</p>
                        </li>
                        <li class="event" data-date="2016.7">
                            <p>Participated in Samsung Junior Software Cup (Embedded Software Part)</p>
                        </li>
                    </ul>
                </div>
                <div class="inner certificate">
                    <h2>certificate</h2>
                    <ul class="timeline">
                        <li class="event" data-date="2019.3">
                            <p>Craftsman Information Processing (intended)</p>
                        </li>
                        <li class="event" data-date="2018.7">
                            <p>GTQ(Graphic Technology Qualification) Level-2</p>
                        </li>
                        <li class="event" data-date="2017.9">
                            <p>Computer Specialist in Spreadsheet & Database Level-2</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- container -->

    </section>
    <!-- section5 -->

    <!-- footer -->
    <footer>

        <!-- container -->
        <div class="container">

            <div class="social" id="map" style="width:300px;height:200px;margin-top:50px;"></div>
            <div class="textBox flex">
                <div class="box box1">
                    <div class="head">MENU</div>
                    <div class="bar"></div>
                    <div class="body">
                        <p class="home"><i class="fas fa-home"></i>Home</p>
                        <p class="motto"><i class="fas fa-align-center"></i>About</p>
                        <p class="interests"><i class="fas fa-star"></i>Interests</p>
                        <p class="portfolio"><i class="fas fa-file"></i>Portfolio</p>
                        <p class="awards"><i class="fas fa-award"></i>Awards</p>
                    </div>
                </div>
                <div class="box box2">
                    <div class="head">CONTACT</div>
                    <div class="bar"></div>
                    <div class="body">
                        <p><i class="fas fa-headset"></i>010-9371-4020</p>
                        <p><i class="fas fa-envelope"></i>jsju4020@naver.com</p>
                        <p><i class="fas fa-map-marked-alt"></i>33, Yeonwon-ro 42beon-gil, Giheung-gu, Yongin-si, Gyeonggi-do, Republic of Korea</p>
                        <p><i class="fas fa-sitemap"></i><a href="http://y-y.hs.kr/">y-y.hs.kr</a></p>
                    </div>
                </div>
            </div>
            <div class="copy">

            </div>
        </div>
        <!-- container -->

    </footer>
    <!-- footer -->

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="/js/egovframework/profile_page/profile_script.js"></script>
    <script>
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(37.30144827508113, 127.11474292108991), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
        };

        var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
    </script>

</body>

</html>