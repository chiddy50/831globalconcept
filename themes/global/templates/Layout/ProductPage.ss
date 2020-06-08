<section id="category-grid">
    <div class="container">
        <div class="col-xs-12 col-sm-12 no-margin wide">
            <section id="recommended-products" class="carousel-holder hover small">
                <% loop $Children %>
                    <% if $Children %>
                        <div class="title-nav">
                            <h2 class="inverse"><a href="$Link">$MenuTitle</a></h2>
                            <div class="nav-holder">
                                <a href="#prev" data-target="#products-carousel-{$Pos}" class="slider-prev btn-prev fa fa-angle-left"></a>
                                <a href="#next" data-target="#products-carousel-{$Pos}" class="slider-next btn-next fa fa-angle-right"></a>
                            </div>
                        </div>

                        <div id="products-carousel-{$Pos}" class="owl-carousel product-grid-holder product-carousel">
                            <% loop $Children %>
                            <div class="no-margin carousel-item product-item-holder hover size-medium">
                                <div class="product-item">
                                    <div class="image">
                                        <img alt="" src="$Photo.FillMax(300,300).URL" data-echo="$Photo.FillMax(300,300).URL" />
                                    </div>
                                    <div class="body">
                                        <div class="title">
                                            <a href="$Link">$Title</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% end_loop %>
                        </div>
                    <% end_if %>
                <% end_loop %>
            </section>
        </div>
    </div>
</section>
