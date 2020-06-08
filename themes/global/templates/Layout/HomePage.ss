<div id="top-banner-and-menu">
    <div class="container">
        <div class="col-xs-12 col-sm-4 col-md-3 sidemenu-holder">
            <div class="side-menu animate-dropdown">
                <div class="head"><i class="fa fa-list"></i> our Services</div>
                <nav class="yamm megamenu-horizontal" role="navigation">
                    <ul class="nav">
                        <% loop $SpecialtyList %>
                            <li class="menu-item">
                            <a>$Name</a>
                            </li>
                        <% end_loop %>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="col-xs-12 col-sm-8 col-md-9 homebanner-holder">
            <div id="hero">
                <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                    <div class="item" style="background-image: url(images/secure.jpg);"></div>

                    <div class="item" style="background-image: url(images/secure3.jpg);"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<%-- <section id="banner-holder" class="wow fadeInUp">
    <div class="container">
        <div class="col-xs-12 col-lg-6 no-margin banner">
            <a href="category-grid-2.html">
                <div class="banner-text theblue">
                    <h1>New Life</h1>
                    <span class="tagline">Introducing New Category</span>
                </div>
                <img class="banner-image" alt="" src="images/blank.gif" data-echo="images/banners/banner-narrow-01.jpg" />
            </a>
        </div>
        <div class="col-xs-12 col-lg-6 no-margin text-right banner">
            <a href="category-grid-2.html">
                <div class="banner-text right">
                    <h1>Time &amp; Style</h1>
                    <span class="tagline">Checkout new arrivals</span>
                </div>
                <img class="banner-image" alt="" src="images/blank.gif" data-echo="images/banners/banner-narrow-02.jpg" />
            </a>
        </div>
    </div>
</section> --%>

<section id="bestsellers" class="color-bg wow fadeInUp">
    <div class="container">
        <h1 class="section-title">Some Products</h1>
        <div class="product-grid-holder medium">
            <div class="col-xs-12 col-md-7 no-margin">
                <div class="row no-margin">
                    <% loop $SecuritySystems(3) %>
                    <div class="col-xs-12 col-sm-4 no-margin product-item-holder size-medium hover">
                        <div class="product-item">
                            <div class="image">
                                <img alt="" src="$Photo.Pad(300,300).URL" data-echo="$Photo.Pad(300,300).URL" />
                            </div>
                            <div class="body">
                                <div class="label-discount clear"></div>
                                <div class="title">
                                    <a href="$Link">$Title</a>
                                </div>
                                <div class="brand">$Content</div>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                </div>
                <div class="row no-margin">
                    <% loop $Cctv %>
                    <div class="col-xs-12 col-sm-4 no-margin product-item-holder size-medium hover">
                        <div class="product-item">
                            <div class="image">
                                <img alt="" src="$Photo.Pad(300,300).URL" data-echo="$Photo.Pad(300,300).URL" />
                            </div>
                            <div class="body">
                                <div class="label-discount clear"></div>
                                <div class="title">
                                    <a href="$Link">$Title</a>
                                </div>
                                <div class="brand">$Content</div>
                            </div>
                        </div>
                    </div>
                    <% end_loop %>
                </div>
            </div>
            <div class="col-xs-12 col-md-5 no-margin">
                <div class="product-item-holder size-big single-product-gallery small-gallery">

                    <div id="best-seller-single-product-slider" class="single-product-slider owl-carousel">
                        <% loop $one %>
                            <div class="single-product-gallery-item" id="slide1">
                                <a data-rel="prettyphoto" href="$Photo.URL">
                                    <img alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>

                            <div class="single-product-gallery-item" id="slide2">
                                <a data-rel="prettyphoto" href="$Photo.URL">
                                    <img alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>

                            <div class="single-product-gallery-item" id="slide3">
                                <a data-rel="prettyphoto" href="$Photo.URL">
                                    <img alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>
                        <% end_loop %>
                    </div>

                    <div class="body">
                    <% loop $one %>
                        <div class="label-discount clear"></div>
                        <div class="title">
                            <a href="$Link">$Title</a>
                        </div>
                        <div class="brand">$Content</div>
                    <% end_loop %>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section id="recently-reviewd" class="wow fadeInUp">
    <div class="container">
        <div class="carousel-holder hover">

            <div class="title-nav">
                <h2 class="h1">You May Also Like</h2>
                <div class="nav-holder">
                    <a href="#prev" data-target="#owl-recently-viewed" class="slider-prev btn-prev fa fa-angle-left"></a>
                    <a href="#next" data-target="#owl-recently-viewed" class="slider-next btn-next fa fa-angle-right"></a>
                </div>
            </div>

            <div id="owl-recently-viewed" class="owl-carousel product-grid-holder">
                <% loop $singleProducts %>
                    <% if $Photo %>
                    <div class="no-margin carousel-item product-item-holder size-small hover">
                        <div class="product-item">
                            <div class="image">
                                <img alt="" src="$Photo.FillMax(300,300).URL" data-echo="$Photo.FillMax(300,300).URL" />
                            </div>
                            <div class="body">
                                <div class="title">
                                    <a href="$Link">$Title</a>
                                </div>
                                <div class="brand">$Content</div>
                            </div>
                        </div>
                    </div>
                    <% end_if %>
                <% end_loop %>
            </div>

        </div>
    </div>
</section>
<section id="top-brands" class="wow fadeInUp">
    <div class="container">
        <div class="carousel-holder" >

            <div class="title-nav">
                <h1>Our Clients</h1>
                <div class="nav-holder">
                    <a href="#prev" data-target="#owl-brands" class="slider-prev btn-prev fa fa-angle-left"></a>
                    <a href="#next" data-target="#owl-brands" class="slider-next btn-next fa fa-angle-right"></a>
                </div>
            </div>

            <div id="owl-brands" class="owl-carousel brands-carousel">
                <% loop $Clients %>
                    <div class="carousel-item">
                        <a href="#">
                            <img alt="" src="$Photo.Pad(300,300).URL" />
                        </a>
                    </div>
                <% end_loop %>
            </div>

        </div>
    </div>
</section>



