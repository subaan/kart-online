<!DOCTYPE html>
<html lang="en">
    <!-- Header -->
    <g:render template="/layouts/header" />
    <body>
        <input type="hidden" id="metadata_app_name" value="${grailsApplication.metadata.'app.name'}">
            <!-- Top Header -->
        <g:render template="/layouts/top_header" />
        <!-- End Top Header -->

    <!-- Middle Header -->
        <g:render template="/layouts/middle_header" />
        <!-- End Middle Header -->

    <!-- Navigation Bar -->
        <g:render template="/layouts/navigation_bar" />
        <!-- End Navigation Bar -->

    <!-- Full Slider -->
        <div class="container-fluid">
            <div class="row">
                <div class="slider home-slider">
<!--                    <div class="item">
                        <a href="product"><img src="${resource(dir: 'images/demo', file: 'slide-1-full.jpg')}" alt="Slider"></a>
                    </div>-->
                    <div class="item">
                        <a href="product"><img src="${resource(dir: 'images/demo', file: 'slide-2-full.jpg')}" alt="Slider"></a>
                    </div>
                    <div class="item">
                        <a href="product"><img src="${resource(dir: 'images/demo', file: 'slide-3-full.jpg')}" alt="Slider"></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Full Slider -->

    <!-- Main Content -->
        <div class="container m-t-2">
            <div class="row">

        <!-- New Arrivals & Best Selling -->
                <div class="col-md-3">
                    <div class="title"><span><a href="product/detail.html">New Arrivals <i class="fa fa-chevron-circle-right"></i></a></span></div>
                    <div class="slider widget-slider">
                        <g:each var="newProduct" in="${newProducts}">
                            <div class="box-product">
                                <div class="img-wrapper">
                                    <a href="${"product/detail/" + newProduct.id}">
                                        <!--<img alt="Product" src="${resource(dir: 'images', file: newProduct.images[0].url)}" >-->
                                    <g:img dir="image" file="renderImage?imagePath=${newProduct.images[0].url}"/>
                                    </a>
                                    <div class="tags tags-left">
                                        <span class="label-tags"><a href="product/detail"><span class="label label-success arrowed-right">New Arrivals</span></a></span>
                                    </div>
                                    <div class="option">
                                        <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                                <h6><a href="${"product/detail/" + newProduct.id}">${newProduct.name}</a></h6>
                                <div class="price">
                                    <div>$<g:formatNumber number="${newProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/></div>
                                </div>
                            </div>  
                        </g:each>
                    </div>
                    <div class="title m-t-3"><span><a href="product/detail.html">Best Selling <i class="fa fa-chevron-circle-right"></i></a></span></div>
                    <div class="slider widget-slider">
                        <g:each var="bestSellingProduct" in="${bestSellingProducts}">
                            <div class="box-product">
                                <div class="img-wrapper">
                                    <a href="${"product/detail/" + bestSellingProduct.id}">
                                        <!--<img alt="Product" src="${resource(dir: 'images', file: bestSellingProduct.images[0].url)}" >-->
                                        <g:img dir="image" file="renderImage?imagePath=${bestSellingProduct.images[0].url}"/>
                                    </a>
                                    <div class="tags tags-left">
                                        <span class="label-tags"><span class="label label-primary arrowed-right">Popular</span></span>
                                        <span class="label-tags"><span class="label label-default arrowed-right">Top Week</span></span>
                                    </div>
                                    <div class="option">
                                        <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                                <h6><a href="${"product/detail/" + bestSellingProduct.id}">${bestSellingProduct.name}</a></h6>
                                <div class="price">
                                    <div>$<g:formatNumber number="${bestSellingProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/> <span class="label-tags"><span class="label label-danger arrowed">${bestSellingProduct.offerPercentage}%</span></span></div>
                                    <span class="price-old">$<g:formatNumber number="${bestSellingProduct.oldPrice}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/></span>
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <a href="#">(5 reviews)</a>
                                </div>
                            </div>

                        </g:each>
                    </div>
                </div>
                <!-- End New Arrivals & Best Selling -->

                <div class="clearfix visible-sm"></div>

        <!-- Featured -->
                <div class="col-md-9">
                    <div class="title"><span>Featured Products</span></div>

                    <g:each var="featuredProduct" in="${featuredProducts}">
                        <div class="col-sm-4 col-md-3 box-product-outer">
                            <div class="box-product">
                                <div class="img-wrapper">
                                    <g:link controller="product"  action="detail"  
                                        params="[id: "${featuredProduct.id}"]">
                                        <!--<img alt="Product" src="${resource(dir: 'images', file: featuredProduct.images[0].url)}" >-->
                                        <g:img dir="image" file="renderImage?imagePath=${featuredProduct.images[0].url}"/>
                                    </g:link>
                  <!--                <a href="${createLink(controller:'product', action:'view')}" />
                                    <img alt="Product" src="${resource(dir: 'images/demo', file: 'polo1.jpg')}">
                                  </a>-->
                                    <div class="tags">
                                        <span class="label-tags"><span class="label label-default arrowed">Featured</span></span>
                                    </div>
                                    <div class="tags tags-left">
                                        <span class="label-tags"><span class="label label-danger arrowed-right">Sale</span></span>
                                    </div>
                                    <div class="option">
                                        <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                                <h6><a href="${"product/detail/" + featuredProduct.id}">${featuredProduct.name}</a></h6>
                                <div class="price">
                                    <div>$<g:formatNumber number="${featuredProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/>&nbsp;<span class="label-tags"><span class="label label-default">${featuredProduct.offerPercentage}%</span></span></div>
                                    <span class="price-old">$<g:formatNumber number="${featuredProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/></span>
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <a href="#">(5 reviews)</a>
                                </div>
                            </div>
                        </div>
                    </g:each>
                    <div class="title"><span>V-Neck Collection</span></div>

                    <g:each var="availableProduct" in="${availableProducts}">
                        <div class="col-sm-4 col-md-3 box-product-outer">
                            <div class="box-product">
                                <div class="img-wrapper">
                                    <g:link controller="product"  action="detail"  
                                        params="[id: "${availableProduct.id}"]">
                                        <!--<img alt="Product" src="${resource(dir: 'images', file: availableProduct.images[0].url)}" >-->
                                        <g:img dir="image" file="renderImage?imagePath=${availableProduct.images[0].url}"/>
                                    </g:link>
                                    <div class="tags">
                                        <span class="label-tags"><span class="label label-danger arrowed">Sale</span></span>
                                        <span class="label-tags"><span class="label label-default arrowed">Collection</span></span>
                                    </div>
                                    <div class="option">
                                        <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                                    </div>
                                </div>
                                <h6><a href="${"product/detail/" + availableProduct.id}">${availableProduct.name}</a></h6>
                                <div class="price">
                                    <div>$<g:formatNumber number="${availableProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/>&nbsp;<span class="label-tags"><span class="label label-danger arrowed">${availableProduct.offerPercentage}%</span></span></div>
                                    <span class="price-old">$<g:formatNumber number="${availableProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/></span>
                                </div>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <a href="#">(5 reviews)</a>
                                </div>
                            </div>
                        </div>
                    </g:each>
                </div>
              <!-- End Featured -->

            </div>
        </div>
        <!-- End Main Content -->

    <!-- Footer -->
        <g:render template="/layouts/footer" />
        <!-- End Footer -->

        <a href="#top" class="back-top text-center" onclick="$('body,html').animate({scrollTop:0},500); return false">
            <i class="fa fa-angle-double-up"></i>
        </a>

<!--        <div class="chooser chooser-hide">
            <div class="chooser-toggle"><button class="btn btn-warning" type="button"><i class="fa fa-paint-brush bigger-130"></i></button></div>
            <div class="chooser-content">
                <label>Color</label>
                <select name="color-chooser" id="color-chooser" class="form-control input-sm selectpicker">
                    <option value="indigo">Indigo</option>
                    <option value="red">Red</option>
                    <option value="teal">Teal</option>
                    <option value="brown">Brown</option>
                </select>
                <label class="m-t-1">Style</label>
                <select name="style-chooser" id="style-chooser" class="form-control input-sm selectpicker">
                    <option value="flat">Flat</option>
                    <option value="rounded">Rounded</option>
                </select>
            </div>
        </div>-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${resource(dir: 'js/app', file: 'jquery.js')}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap.js')}"></script>
    <!-- Plugins -->
    <script src="${resource(dir: 'js/app', file: 'bootstrap-select.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'owl.carousel.min.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'mimity.js')}"></script>
        <script src="${resource(dir: 'js', file: 'application.js')}"></script>
    </body>
</html>