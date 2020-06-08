<footer id="footer" class="color-bg">
    <div class="link-list-row">
        <div class="container no-padding">
            <div class="col-xs-12 col-md-4 ">
                <div class="contact-info">
                    <div class="footer-logo">
                        <img alt="logo" src="images/logosmall4.svg" width="450" height="130"/>
                    </div>
                        <p class="regular-bold"> Feel free to contact us via phone or email</p>
                        <p>
                            $SiteConfig.Address<br><br>
                            $SiteConfig.Email <br><br>$SiteConfig.Phone
                        </p>
                </div>
            </div>

            <div class="col-xs-12 col-md-8 no-margin">
                <div class="link-widget">
                    <div class="widget">
                        <h3>Specialties</h3>
                        <ul>
                        <% loop $SpecialtyList %>
                            <li>$Name</li>
                        <% end_loop %>
                        </ul>
                    </div>
                </div>

                <div class="link-widget">
                    <div class="widget">
                        <h3>Our Products</h3>
                        <ul>
                        <% loop $AllProducts %>
                            <li><a href="$Link">$Name</a></li>
                        <% end_loop %>
                        </ul>
                    </div>
                </div>

                <div class="link-widget">
                    <div class="widget">
                        <h3>Pages</h3>
                        <ul>
                            <% loop $Menu(1) %>
                            <li><a href="$Link">$MenuTitle</a></li>
                            <% end_loop %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-margin">
                <div class="copyright">
                    &copy; $Now.format('Y') <a href="$AbsolutBaseURL">$SiteConfig.Title</a> - all rights reserved
                </div>
            </div>
        </div>
    </div>
</footer>
