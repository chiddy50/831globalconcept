<section class="sidebar-page">
    <div class="container">
        <div class="col-xs-12 col-sm-9 no-margin wide sidebar page-main-content">
            <div id="single-product" class="row">
                <div class="no-margin col-xs-12 col-sm-6 col-md-5 gallery-holder">
                    <div class="product-item-holder size-big single-product-gallery small-gallery">
                        <div id="owl-single-product" class="owl-carousel">
                            <div class="single-product-gallery-item" id="slide1">
                                <a data-rel="prettyphoto" href="$Photo.URL">
                                    <img class="img-responsive" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>

                            <div class="single-product-gallery-item" id="slide2">
                                <a data-rel="prettyphoto" href="$Photo.URL">
                                    <img class="img-responsive" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>

                            <div class="single-product-gallery-item" id="slide3">
                                <a data-rel="prettyphoto" href="$Photo.URL">
                                    <img class="img-responsive" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>

                        </div>
                        <div class="single-product-gallery-thumbs gallery-thumbs">
                            <div id="owl-single-product-thumbnails" class="owl-carousel">
                                <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="0" href="#slide1">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="1" href="#slide2">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide3">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="0" href="#slide1">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="1" href="#slide2">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide3">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="0" href="#slide1">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="1" href="#slide2">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                                <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide3">
                                    <img width="67" alt="" src="$Photo.URL" data-echo="$Photo.URL" />
                                </a>
                            </div>

                            <div class="nav-holder left hidden-xs">
                                <a class="prev-btn slider-prev" data-target="#owl-single-product-thumbnails" href="#prev"></a>
                            </div>

                            <div class="nav-holder right hidden-xs">
                                <a class="next-btn slider-next" data-target="#owl-single-product-thumbnails" href="#next"></a>
                            </div>

                        </div>

                    </div>

                </div>

                <div class="no-margin col-xs-12 col-sm-7 body-holder">
                    <div class="body">

                        <div class="title"><a href="#">$MenuTitle</a></div>
                        <div class="brand">$Content</div>

                        <div class="excerpt">
                            <p>$Description</p>
                        </div>
                    </div>

                </div>

            </div>
            <section id="single-product-tab">
                <div class="no-container">
                    <div class="tab-holder">
                        <ul class="nav nav-tabs simple" >
                            <li class="active"><a href="#description" data-toggle="tab">Description</a></li>
                            <% if $Additional %>

                            <li><a href="#additional-info" data-toggle="tab">Additional Information</a></li>

                            <% end_if %>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane active" id="description">
                                <p>$Description</p>
                            </div>

                            <div class="tab-pane" id="additional-info">
                                <div class="tab-pane active" id="description">
                                    <h5>Features & Functions:</h5>
                                    <p>$Additional</p>
                                </div>

                                <div class="meta-row">

                                </div>

                            </div>

                        </div>
                    </div>

                </div>

            </section>

            <section id="recently-reviewd" class="wow fadeInUp">
                <div class="no-container">
                    <div class="carousel-holder hover">
                        <div class="title-nav">
                            <h2 class="h1">Related Products</h2>
                            <div class="nav-holder">
                                <a href="#prev" data-target="#owl-recently-viewed-2" class="slider-prev btn-prev fa fa-angle-left"></a>
                                <a href="#next" data-target="#owl-recently-viewed-2" class="slider-next btn-next fa fa-angle-right"></a>
                            </div>
                        </div>

                        <div id="owl-recently-viewed-2" class="owl-carousel product-grid-holder">

                            <% loop $singleProducts %>
                            <% if $Photo %>
                                <div class="no-margin carousel-item product-item-holder size-medium hover">
                                    <div class="product-item">
                                        <div class="image">
                                            <img alt="" src="$Photo.Pad(300,300).URL" data-echo="$Photo.Pad(300,300).URL" />
                                        </div>
                                        <div class="body">
                                            <div class="title">
                                                <a href="single-product.html">$MenuTitle</a>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            <% end_if %>
                            <% end_loop %>
                        </div>

                    </div>
                </div>
            </section>
        </div>
    </div>
</section>
