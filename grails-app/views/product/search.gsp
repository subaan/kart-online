<!DOCTYPE html>
<html lang="en">
  <g:render template="/layouts/header" />
  <body>
    <!-- Top Header -->
    <g:render template="/layouts/top_header" />
    <!-- End Top Header -->
    <input type="hidden" id="metadata_app_name" value="${grailsApplication.metadata.'app.name'}">
    <!-- Middle Header -->
    <g:render template="/layouts/middle_header" />
    <!-- End Middle Header -->

    <!-- Navigation Bar -->
    <g:render template="/layouts/navigation_bar" />
    <!-- End Navigation Bar -->

    <!-- Main Content -->
    <div class="container m-t-3">
      <div class="row">

        <!-- Filter Sidebar -->
        <div class="col-sm-3" style="display: none">
          <div class="filter-sidebar">
            <div class="title"><span>Enabled Filters</span></div>
            <ul>
                <li>Categories: T-Shirts <a href="" class="remove-filter" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></li>
                <li>Availability: In Stock <a href="" class="remove-filter" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></li>
                <li>Brand: Brand Name 1 <a href="" class="remove-filter" data-toggle="tooltip" title="Remove"><i class="fa fa-remove"></i></a></li>
            </ul>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Categories</span></div>
            <div class="checkbox"><label><input type="checkbox" checked="checked"><span> T-Shirts (10)</span></label></div>
            <div class="checkbox"><label><input type="checkbox"><span> Polo T-Shirts (11)</span></label></div>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Options</span></div>
            <ul>
              <li>
                <select class="selectpicker" data-width="100%">
                  <option value="0">All Options</option>
                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                </select>
              </li>
              <li>
                <select class="selectpicker" data-width="100%">
                  <option value="0">All Options</option>
                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                </select>
              </li>
            </ul>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Options 2</span></div>
            <div class="radio"><label><input type="radio" name="options2" checked="checked"><span>All Options 2</span></label></div>
            <div class="radio"><label><input type="radio" name="options2"><span>Options 2.1</span></label></div>
            <div class="radio"><label><input type="radio" name="options2"><span>Options 2.2</span></label></div>
            <div class="radio"><label><input type="radio" name="options2"><span>Options 2.3</span></label></div>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Availability</span></div>
            <div class="checkbox"><label><input type="checkbox" checked="checked"><span> In Stock (20)</span></label></div>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Brand</span></div>
            <div class="checkbox"><label><input type="checkbox" checked="checked"><span> Brand Name 1 (11)</span></label></div>
            <div class="checkbox"><label><input type="checkbox"><span> Brand Name 2 (12)</span></label></div>
            <div class="checkbox"><label><input type="checkbox"><span> Brand Name 3 (13)</span></label></div>
            <div class="checkbox"><label><input type="checkbox"><span> Brand Name 4 (14)</span></label></div>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Price Range</span></div>
            <div id="range-value">Range: <span id="min-price"></span> - <span id="max-price"></span></div>
            <input type="hidden" name="min-price" value="">
            <input type="hidden" name="max-price" value="">
            <div class="price-range">
              <div id="price"></div>
            </div>
          </div>
          <div class="filter-sidebar">
            <div class="title"><span>Size</span></div>
            <label class="checkbox-inline"><input type="checkbox"><span> M (12)</span></label>
            <label class="checkbox-inline"><input type="checkbox"><span> L (13)</span></label>
            <label class="checkbox-inline"><input type="checkbox"><span> XL (14)</span></label>
          </div>
        </div>
        <!-- End Filter Sidebar -->

        <!-- Product List -->
        <div class="col-sm-12">
          <div class="title"><span>T-Shirts</span></div>

          <!-- Product Sorting Bar -->
          <div class="product-sorting-bar">
            <div>Sort By
              <select name="sortby" class="selectpicker" data-width="180px">
                <option value="recomended">Recomended</option>
                <option value="low">Low Price &raquo; High Price</option>
                <option value="hight">High Price &raquo; High Price</option>
              </select>
            </div>
            <div>Show
              <select name="show" class="selectpicker" data-width="60px">
                <option value="8">8</option>
                <option value="12">12</option>
                <option value="16">16</option>
              </select> per page
            </div>
          </div>
          <!-- End Product Sorting Bar -->
              
            <g:each var="product" in="${products}">
                <div class="col-sm-4 col-md-3 box-product-outer">
                    <div class="box-product">
                        <div class="img-wrapper">
                            <a href="${"detail/" + product.id}">
                                <!--<img alt="Product" src="${resource(dir: 'images', file: product.images[0].url)}">-->
                            <g:img dir="image" file="renderImage?imagePath=${product.images[0].url}"/>                                                       
                            </a>
                            <g:if test="${product.type.name().equals("FEATURED")}">
                                <div class="tags">
                                    <span class="label-tags"><span class="label label-default arrowed">Featured</span></span>
                                </div>
                                <div class="tags tags-left">
                                    <span class="label-tags"><span class="label label-danger arrowed-right">Sale</span></span>
                                </div>
                            </g:if>
                            <g:elseif test="${product.type.name().equals("NEW")}">
                                <div class="tags tags-left">
                                    <span class="label-tags"><span class="label label-success arrowed-right">New Arrivals</span></span>
                                </div>
                            </g:elseif>
                            <g:elseif test="${product.type.name().equals("POPULAR")}">
                                <div class="tags">
                                    <span class="label-tags"><span class="label label-primary arrowed">Popular</span></span>
                                </div>
                            </g:elseif>
                            <g:elseif test="${product.type.name().equals("BEST_SELLING")}">
                                <div class="tags">
                                    <span class="label-tags"><span class="label label-danger arrowed">Hot Item</span></span>
                                </div>
                            </g:elseif>
                            <g:else>
                                <div class="tags">
                                    <span class="label-tags"><span class="label label-danger arrowed">Sale</span></span>
                                    <span class="label-tags"><span class="label label-info arrowed">Collection</span></span>
                                </div>
                            </g:else>

                            <div class="option">
                                <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                                <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                                <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <h6><a href="detail.html">${product.name}</a></h6>
                        <div class="price">
                            <div>$<g:formatNumber number="${product.price}" type="number" minFractionDigits="2" maxFractionDigits="2"/>
                                <span class="label-tags"><span class="label label-default">${product.offerPercentage}%</span></span></div>
                            <span class="price-old">$<g:formatNumber number="${product.oldPrice}" type="number" minFractionDigits="2" maxFractionDigits="2"/></span>
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
          <div class="col-xs-12 text-center">
            <nav aria-label="Page navigation">
              <ul class="pagination">
                <!--<li class="disabled"><span>&laquo;</span></li>-->
                <li id="page_nav_prev" class="disabled"><a href="#">&lsaquo;</a></li>
                <li id="page_nav_first" class="active"><a id="page_nav_first_link" href="#">1</a></li>
                <li id="page_nav_middle"><a id="page_nav_middle_link" href="#">2</a></li>
                <li id="page_nav_last"><a id="page_nav_last_link" href="#">3</a></li>
                <li id="page_nav_next" ><a href="#">&rsaquo;</a></li>
                <!--<li><a href="#">&raquo;</a></li>-->
              </ul>
            </nav>
          </div>
        </div>
        <!-- End Product List -->

      </div>
    </div>
    <!-- End Main Content -->

    <!-- Footer -->
    <g:render template="/layouts/footer" />
    <!-- End Footer -->

    <a href="#top" class="back-top text-center" onclick="$('body,html').animate({scrollTop:0},500); return false">
      <i class="fa fa-angle-double-up"></i>
    </a>

<!--    <div class="chooser chooser-hide">
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
    <script src="${resource(dir: 'js/app', file: 'jquery.js')}"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${resource(dir: 'js/bootstrap', file: 'bootstrap.js')}"></script>
    <!-- Plugins -->
    <script src="${resource(dir: 'js/app', file: 'bootstrap-select.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'nouislider.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'mimity.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'mimity.filter-sidebar.js')}"></script>
    <script src="${resource(dir: 'js', file: 'application.js')}"></script>
  </body>
</html>