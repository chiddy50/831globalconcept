<% if $searchresults %>
    <section id="cart-page">
        <div class="container">
            <% loop $searchresults %>
            <div class="col-xs-12 col-md-9 items-holder no-margin">
                <div class="row no-margin cart-item">
                    <div class="col-xs-12 col-sm-2 no-margin">
                        <a href="#" class="thumb-holder">
                            <img class="lazy" alt="" src="$Photo.URL">
                        </a>
                    </div>

                    <div class="col-xs-12 col-sm-5 ">
                        <div class="title">
                            <a href="$Link">$Title</a>
                        </div>
                        <div class="brand">$Content</div>
                    </div>
                </div>
            </div>
            <% end_loop %>
        </div>
    </section>
    <% else %>
    <p>Search results could not be found</p>
<% end_if %>
