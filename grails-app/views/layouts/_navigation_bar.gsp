<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="cart.html" class="btn btn-default btn-cart-xs visible-xs pull-right">
                <i class="fa fa-shopping-cart"></i> Cart : 4 items
            </a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="${createLink(controller:'home', action:'index')}" />Home</a>
                </li>
                <li><g:link controller="product" action="">Product </g:link></li>
                <li><a href="#">Shopping Cart</a></li>
                <li><a href="#">Checkout</a></li>
<!--                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Pages <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="blog-detail.html">Blog Detail</a></li>
                        <li><a href="compare.html">Compare</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="detail.html">Product Detail</a></li>
                        <li><a href="register.html">Register</a></li>
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="wishlist.html">Wishlist</a></li>
                    </ul>
                </li>-->
            </ul>
        </div>
    </div>
</nav>