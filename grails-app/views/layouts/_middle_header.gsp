<div class="middle-header">
    <div class="container">
        <div class="row">
            <div class="col-md-3 logo">
              <!--<a href="index.html"><img alt="Logo" src="${resource(dir: 'images', file: 'logo-teal.png')}" class="img-responsive" /></a>-->
                <g:link controller="home"  action="index" >
                    <img alt="Logo" src="${resource(dir: 'images', file: 'logo-teal.png')}" class="img-responsive" />
                </g:link>
            </div>
            <div class="col-sm-8 col-md-6 search-box m-t-2">
                <div class="input-group">
                    <input type="text" id="search_value" class="form-control" aria-label="Search here..." placeholder="Search here...">
                    <div class="input-group-btn">
                        <g:select class="selectpicker hidden-xs" data-width="150px" id="search_category" name="subject" from="${categories.entrySet()}" 
                            optionValue="value" optionKey="key"
                            noSelection="['0': 'All Categories']"/>
                        <!--<select class="selectpicker hidden-xs" data-width="150px">
                            <option value="0">All Categories</option>
                            <option value="1">Dresses</option>
                            <option value="2">Tops</option>
                            <option value="3">Bottoms</option>
                            <option value="4">Jackets / Coats</option>
                            <option value="5">Sweaters</option>
                            <option value="6">Gym Wear</option>
                            <option value="7">Others</option>
                        </select> -->
                        
                            <button type="button" id="search_button" class="btn btn-default btn-search"><i class="fa fa-search"></i></button>
                          
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3 cart-btn hidden-xs m-t-2">
                <button type="button" class="btn btn-default dropdown-toggle" id="dropdown-cart" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <i class="fa fa-shopping-cart"></i> Shopping Cart : 0 items <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-cart">
                    <span> You don't have any item </span>
<!--                    <div class="media">
                        <div class="media-left">
                            <a href="detail.html"><img class="media-object img-thumbnail" src="${resource(dir: 'images/demo', file: 'p1-small-1.jpg')}" width="50" alt="product"></a>
                        </div>
                        <div class="media-body">
                            <a href="detail.html" class="media-heading">WranglerGrey Printed Slim Fit Round Neck T-Shirt</a>
                            <div>x 1 $13.50</div>
                        </div>
                        <div class="media-right"><a href="#" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="detail.html"><img class="media-object img-thumbnail" src="${resource(dir: 'images/demo', file: 'p2-small-1.jpg')}" width="50" alt="product"></a>
                        </div>
                        <div class="media-body">
                            <a href="detail.html" class="media-heading">CelioKhaki Printed Round Neck T-Shirt</a>
                            <div>x 1 $13.50</div>
                        </div>
                        <div class="media-right"><a href="#" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="detail.html"><img class="media-object img-thumbnail" src="${resource(dir: 'images/demo', file: 'p3-small-1.jpg')}" width="50" alt="product"></a>
                        </div>
                        <div class="media-body">
                            <a href="detail.html" class="media-heading">CelioOff White Printed Round Neck T-Shirt</a>
                            <div>x 1 $13.50</div>
                        </div>
                        <div class="media-right"><a href="#" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></div>
                    </div>
                    <div class="media">
                        <div class="media-left">
                            <a href="detail.html"><img class="media-object img-thumbnail" src="${resource(dir: 'images/demo', file: 'p4-small-1.jpg')}" width="50" alt="product"></a>
                        </div>
                        <div class="media-body">
                            <a href="detail.html" class="media-heading">Levi'sNavy Blue Printed Round Neck T-Shirt</a>
                            <div>x 1 $13.50</div>
                        </div>
                        <div class="media-right"><a href="#" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></div>
                    </div>-->
                    <div class="subtotal-cart">Subtotal: <span>$0.00</span></div>
                    <div class="text-center">
                        <div class="btn-group" role="group" aria-label="View Cart and Checkout Button">
                            <button class="btn btn-default btn-sm" type="button"><i class="fa fa-shopping-cart"></i> View Cart</button>
                            <button class="btn btn-default btn-sm" type="button"><i class="fa fa-check"></i> Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>