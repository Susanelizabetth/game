<%-- 
    Document   : PaginaPrincipal
    Created on : 07/01/2021, 10:01:11 p. m.
    Author     : susan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/principal-style.css" type="text/css">
        <%@ include file="nav.jsp" %>
        
    <div style="display:flex; justify-content: space-evenly">
 
        <div class="gi">
            <h2>De gamers para gamers</h2>
            <div class="carousel">
                <img src="https://www.fondosdepantalla.top/wp-content/uploads/2017/01/videojuego-wallpaper-4k-full-hd-fondosdepantalla.top-5.jpg" class="img-juego" alt="">
                <img src="https://cdn2.unrealengine.com/2ksmkt-nba2k21-epic-set-up-assets-std-cg-blog-share-image-1920x1080-1920x1080-d46c9713e326.jpg" class="img-juego" alt="">
                <img src="https://cdn2.unrealengine.com/Diesel%2Fproductv2%2Fgrand-theft-auto-v%2Fhome%2FGTAV_EGS_Artwork_1920x1080_Hero-Carousel_V06-1920x1080-1503e4b1320d5652dd4f57466c8bcb79424b3fc0.jpg" class="img-juego" alt="">
                <img src="https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_AmongUs.jpg" class="img-juego" alt="">
            </div>
        </div>
        <div class="ofertas">
            <h2>Ofertas</h2>
            <div class= "ofertota">
                <img src="https://www.allkeyshop.com/blog/wp-content/uploads/knockout-city-featured.jpg" alt="Knockout City">
                <h3 class="titulo">Knockout City</h3> 
                <p class="ahora">15.99$</p>
                <p class="antes">20.00$</p>
            </div>
        </div>
    </div>
    <div style="display: flex; justify-content: space-around">
        <div class="launches">
            <h1>Nuevos Lanzamientos</h1>
            <div class="launch-item">
                <div class="dynamic-img"><img src="https://www.godisageek.com/wp-content/uploads/days-gone-review.jpg" alt=""></div>
                <div class="details">
                    <h3>Days Gone</h3>
                    <div class="launch-item-detail-group">
                        <span>
                            $ 0.00654
                        </span>
                        <button>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <div class="launch-item">
                <div class="dynamic-img"><img src="https://lanetaneta.com/wp-content/uploads/2021/05/Revision-de-Skate-City-Chill-Out-Skate.jpg" alt=""></div>
                <div class="details">
                    <h3>Skate City</h3>
                    <div class="launch-item-detail-group">
                        <span>
                            $ 0.00654
                        </span>
                        <button>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <div class="launch-item">
                <div class="dynamic-img"><img src="https://assets.nintendo.com/image/upload/f_auto,q_auto,w_960,h_540/ncom/en_US/games/switch/a/aerial-knights-never-yield-switch/Video/posters/Aerial_Knights_Never_Yield_-_Trailer_NOA" alt=""></div>
                <div class="details">
                    <h3>Aerial_knight's Never Yield</h3>
                    <div class="launch-item-detail-group">
                        <span>
                            $ 0.00654
                        </span>
                        <button>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <div class="launch-item">
                <div class="dynamic-img"><img src="https://images.gog-statics.com/27bd494e4823a24ef16444268812bf497017b5320d827ed8e915b192b1c464a3.jpg" alt=""></div>
                <div class="details">
                    <h3>The Hand of Merlin</h3>
                    <div class="launch-item-detail-group">
                        <span>
                            $ 0.00654
                        </span>
                        <button>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="trends-container">
            <h1>Destacado</h1>
            <div class="trends">
                <div id="t-1" class="dynamic-img"><img src="https://www.somosxbox.com/wp-content/uploads/2020/05/kn4h3U31wfeeGX3Cl5LCG2nTtGVKG1lpUlODuKrrPIM.jpg" alt=""></div>
                <div id="t-2" class="dynamic-img"><img src="https://cdn.cloudflare.steamstatic.com/steam/apps/1190460/header.jpg?t=1616683107" alt=""></div>
                <div id="t-3" class="dynamic-img"><img src="https://as.com/meristation/imagenes/2020/09/23/noticias/1600849560_494635_1600849813_noticia_normal.jpg" alt=""></div>
                <div class="dynamic-img"><img src="https://i.blogs.es/909db5/hipertextual-cyberpunk-2077-retrasa-su-lanzamiento-otra-vez-2020644476/450_1000.jpeg" alt=""></div>
                <div class="dynamic-img"><img src="https://image.api.playstation.com/vulcan/ap/rnd/202008/0723/i2ICFMr0Ius6qtYYD9GNrY68.jpg?w=440" alt=""></div>
                <div class="dynamic-img"><img src="https://image.api.playstation.com/vulcan/img/rnd/202102/0422/8YNAS8majY1rLtsFCawLFTFe.jpg" alt=""></div>
            </div>
        </div>
    </div>
<%@ include file="footer.jsp"  %>