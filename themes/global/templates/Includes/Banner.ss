<header>
    <div class="container no-padding">
        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder" style="margin-right:20px;">
            <div class="logo">
                <a href="$AbsoluteBaseURL">
                    <img alt="logo" src="images/logosmall4.svg" class="banner-image" width="300" height="100"/>
                </a>
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder no-margin">
            <div class="contact-row">
                <div class="phone inline">
                    <i class="fa fa-phone"></i> $SiteConfig.Phone
                </div>
                <div class="contact inline">
                    <i class="fa fa-envelope"></i> $SiteConfig.Email
                </div>
            </div>
            <div class="search-area">
                <form method="post" action="{$AbsoluteBaseURL}searchresults">
                    <div class="control-group">
                        <input class="search-field" name="search" id="field" placeholder="Search for item" />

                        <ul class="categories-filter animate-dropdown">
                            <li class="dropdown">
                                <a class="dropdown-toggle"  data-toggle="dropdown" href="#">our products</a>
                                <ul class="dropdown-menu" role="menu" >
                                    <% loop $AllProducts %>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="$Link">$Name</a></li>
                                    <% end_loop %>
                                </ul>
                            </li>
                        </ul>

                        <button class="search-button" type="submit"></button>
                    </div>
                </form>
            </div>

        </div>


    </div>

    <nav id="top-megamenu-nav" class="megamenu-vertical animate-dropdown">
        <div class="container">
            <div class="yamm navbar">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mc-horizontal-menu-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse"  style="margin:0 auto;" id="mc-horizontal-menu-collapse">
                    <ul class="nav navbar-nav">
                        <% loop $Menu(1) %>
                        <li class="dropdown">
                            <a href="$Link">$MenuTitle</a>
                        </li>
                        <% end_loop %>
                    </ul>
                </div>
            </div>
        </div>
    </nav>


    <div class="animate-dropdown">
        <div id="breadcrumb-alt">
            <div class="container">
                <div class="breadcrumb-nav-holder minimal">
                    <ul>
                    <% loop $AllProducts %>
                        <% if $Children %>
                        <li class="dropdown breadcrumb-item">
                            <a href="$Link" class="dropdown-toggle" target="_self" data-toggle="dropdown">
                                $Name
                            </a>
                            <ul class="dropdown-menu">
                                <% loop $Children %>
                                    <li><a href="$Link">$MenuTitle</a></li>
                                <% end_loop %>
                            </ul>
                        </li>
                        <%-- <% else %>
                        <li class="breadcrumb-item">
                            <a href="$Link">$Name</a>
                        </li> --%>
                        <% end_if %>

                    <% end_loop %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>


