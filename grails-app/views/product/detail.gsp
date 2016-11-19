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

        <!-- Image List -->
        <div class="col-sm-4">
          <div class="image-detail">
            <!--<g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[0].url}" data-zoom-image= "${"/" + grailsApplication.metadata.'app.name' + "/image/renderImage?imagePath="+currentProduct.images.sort{it.orderNumber}[1].url}"/>-->
            <g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[0].url}"/>
          </div>
          <div class="products-slider-detail m-b-2">
              <!--<a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[0].url}" class="img-thumbnail" data-zoom-image= "${"/" + grailsApplication.metadata.'app.name' + "/image/renderImage?imagePath="+currentProduct.images.sort{it.orderNumber}[1].url}"/></a>
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[2].url}" class="img-thumbnail" data-zoom-image= "${"/" + grailsApplication.metadata.'app.name' + "/image/renderImage?imagePath="+currentProduct.images.sort{it.orderNumber}[3].url}"/></a>
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[4].url}" class="img-thumbnail" data-zoom-image= "${"/" + grailsApplication.metadata.'app.name' + "/image/renderImage?imagePath="+currentProduct.images.sort{it.orderNumber}[5].url}"/></a>
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[6].url}" class="img-thumbnail" data-zoom-image= "${"/" + grailsApplication.metadata.'app.name' + "/image/renderImage?imagePath="+currentProduct.images.sort{it.orderNumber}[7].url}"/></a>-->
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[0].url}" class="img-thumbnail" /></a>
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[2].url}" class="img-thumbnail" /></a>
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[4].url}" class="img-thumbnail" /></a>
              <a href="#"><g:img dir="image" file="renderImage?imagePath=${currentProduct.images.sort{it.orderNumber}[6].url}" class="img-thumbnail"/></a>
<!--            <a href="#"><img src="${resource(dir: 'images', file: currentProduct.images[0].url)}" data-zoom-image="${resource(dir: 'images', file: currentProduct.images[4].url)}" alt="" class="img-thumbnail"></a>
            <a href="#"><img src="${resource(dir: 'images', file: currentProduct.images[1].url)}" data-zoom-image="${resource(dir: 'images', file: currentProduct.images[5].url)}" alt="" class="img-thumbnail"></a>
            <a href="#"><img src="${resource(dir: 'images', file: currentProduct.images[2].url)}" data-zoom-image="${resource(dir: 'images', file: currentProduct.images[6].url)}" alt="" class="img-thumbnail"></a>
            <a href="#"><img src="${resource(dir: 'images', file: currentProduct.images[3].url)}" data-zoom-image="${resource(dir: 'images', file: currentProduct.images[7].url)}" alt="" class="img-thumbnail"></a>-->
          </div>
          <div class="title"><span>Share to</span></div>
          <div class="share-button m-b-3">
            <button type="button" class="btn btn-primary"><i class="fa fa-facebook"></i></button>
            <button type="button" class="btn btn-info"><i class="fa fa-twitter"></i></button>
            <button type="button" class="btn btn-danger"><i class="fa fa-google-plus"></i></button>
            <button type="button" class="btn btn-primary"><i class="fa fa-linkedin"></i></button>
            <button type="button" class="btn btn-warning"><i class="fa fa-envelope"></i></button>
          </div>
        </div>
        <!-- End Image List -->

        <div class="col-sm-8">
          <div class="title-detail">${currentProduct.name}</div>
          <table class="table table-detail">
            <tbody>
              <tr>
                <td>Price</td>
                <td>
                  <div class="price">
                    <div>$<g:formatNumber number="${currentProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2"/> <span class="label label-default arrowed">-10%</span></div>
                    <span class="price-old">$<g:formatNumber number="${currentProduct.oldPrice}" type="number" minFractionDigits="2" maxFractionDigits="2"/></span>
                  </div>
                </td>
              </tr>
              <tr>
                <td>Availability</td>
                <td><span class="label label-success arrowed">
                        <g:if test="${currentProduct.availabilty.name().equals("READY_STOCK")}">
                            Ready Stock
                        </g:if>
                        <g:elseif test="${currentProduct.availabilty.name().equals("OUT_OF_STOCK")}">
                            Out of Stock
                        </g:elseif>
                        <g:else>
                            Sold Out
                        </g:else></span></td>
              </tr>
              <tr>
                <td>Quantity</td>
                <td>
                  <div class="input-qty">
                    <input type="text" value="1" class="form-control text-center"/>
                  </div>
                </td>
              </tr>
              <tr>
                <td>Size</td>
                <td>
                  <select class="selectpicker" data-width="80px">
                    <option value="S">S</option>
                    <option value="M">M</option>
                    <option value="L">L</option>
                    <option value="XL">XL</option>
                    <option value="XXL">XXL</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td>Checkbox</td>
                <td>
                  <div class="checkbox"><label><input type="checkbox" id="checkbox1"><span> Checkbox 1</span></label></div>
                  <div class="checkbox"><label><input type="checkbox" id="checkbox2"><span> Checkbox 2</span></label></div>
                </td>
              </tr>
              <tr>
                <td>Radio</td>
                <td>
                  <div class="radio"><label><input type="radio" name="radio-product" checked="checked"><span>Radio 1</span></label></div>
                  <div class="radio"><label><input type="radio" name="radio-product"><span>Radio 2</span></label></div>
                </td>
              </tr>
              <tr>
                <td></td>
                <td>
                  <button class="btn btn-theme m-b-1" type="button"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                  <button class="btn btn-theme m-b-1" type="button"><i class="fa fa-align-left"></i> Add to Compare</button>
                  <button class="btn btn-theme m-b-1" type="button"><i class="fa fa-heart"></i> Add to Wishlist</button>
                </td>
              </tr>
            </tbody>
          </table>

          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#desc" aria-controls="desc" role="tab" data-toggle="tab">Description</a></li>
            <li role="presentation"><a href="#detail" aria-controls="detail" role="tab" data-toggle="tab">Detail</a></li>
            <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">Reviews (2)</a></li>
          </ul>
          <!-- End Nav tabs -->

          <!-- Tab panes -->
          <div class="tab-content tab-content-detail">

              <!-- Description Tab Content -->
              <div role="tabpanel" class="tab-pane active" id="desc">
                <div class="well">
                  <p>
                    ${currentProduct.description}
                  </p>
                </div>
              </div>
              <!-- End Description Tab Content -->

              <!-- Detail Tab Content -->
              <div role="tabpanel" class="tab-pane" id="detail">
                <div class="well">
                  <table class="table table-bordered">
                    <tbody>
                        <g:each var="spec" in="${currentProduct.specifications}">
                            <tr>
                                <td>${spec.name}</td>
                                <td>${spec.value}</td>
                            </tr>
                        </g:each>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- End Detail Tab Content -->

              <!-- Review Tab Content -->
              <div role="tabpanel" class="tab-pane" id="review">
                <div class="well">
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="media-object img-thumbnail" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+">
                      </a>
                      <div class="product-rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                      </div>
                    </div>
                    <div class="media-body">
                      <h5 class="media-heading"><strong>John Thor</strong></h5>
                      Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                    </div>
                  </div>
                  <div class="media">
                     <div class="media-left">
                      <a href="#">
                        <img class="media-object img-thumbnail" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+">
                      </a>
                      <div class="product-rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <i class="fa fa-star-o"></i>
                      </div>
                    </div>
                    <div class="media-body">
                      <h5 class="media-heading"><strong>Michael</strong></h5>
                      Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                    </div>
                  </div>
                  <hr/>
                  <h4 class="m-b-2">Add your review</h4>
                  <form role="form">
                    <div class="form-group">
                      <label for="Name">Name</label>
                      <input type="text" id="Name" class="form-control" placeholder="Name">
                    </div>
                    <div class="form-group">
                      <label for="Email">Email</label>
                      <input type="text" id="Email" class="form-control" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <label>Rating</label><div class="clearfix"></div>
                      <div class="input-rating"></div>
                    </div>
                    <div class="form-group">
                      <label for="Review">Your Review</label>
                      <textarea id="Review" class="form-control" rows="5" placeholder="Your Review"></textarea>
                    </div>
                    <button type="submit" class="btn btn-theme">Submit Review</button>
                  </form>
                </div>
              </div>
              <!-- End Review Tab Content -->

          </div>
          <!-- End Tab panes -->

        </div>
      </div>

      <!-- Related Products -->
      <div class="row m-t-3">
        <div class="col-xs-12">
          <div class="title"><span>Related Products</span></div>
          <g:each var="product" in="${productList}">
              <div class="col-sm-3 col-md-2 box-product-outer">
                  <div class="box-product">
                      <div class="img-wrapper">
                          <a href="${product.id}">
                              <!--<img alt="Product" src="${resource(dir: 'images', file: product.images[0]?.url)}">-->
                              <g:img dir="image" file="renderImage?imagePath=${product.images[0].url}"/>
                          </a>
                          <g:if test="${product.type.name().equals("BEST_SELLING")}">
                              <div class="tags">
                                  <span class="label-tags"><span class="label label-success arrowed-right">Best Selling</span></span>
                              </div>
                          </g:if>
                            <g:elseif test="${product.type.name().equals("FEATURED")}">
                                <div class="tags">
                                    <span class="label-tags"><span class="label label-default arrowed">Featured</span></span>
                                </div>
                                <div class="tags tags-left">
                                    <span class="label-tags"><span class="label label-danger arrowed-right">Sale</span></span>
                                </div>
                            </g:elseif>    

                          <div class="option">
                              <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
                              <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="fa fa-align-left"></i></a>
                              <a href="#" data-toggle="tooltip" title="Add to Wishlist" class="wishlist"><i class="fa fa-heart"></i></a>
                          </div>
                      </div>
                      <h6><a href="${"detail/" + product.id}">${currentProduct.name}</a></h6>
                      <div class="price">
                          <div>$<g:formatNumber number="${currentProduct.price}" type="number" minFractionDigits="2" maxFractionDigits="2" currencySymbol='USD'/> 
                              <span class="label-tags"><span class="label label-default">${currentProduct.offerPercentage}%</span></span></div>
                          <span class="price-old">$<g:formatNumber number="${currentProduct.oldPrice}" type="number" minFractionDigits="2" maxFractionDigits="2" /></span>
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
      </div>
      <!-- End Related Products -->

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
    <script src="${resource(dir: 'js/app', file: 'owl.carousel.min.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'jquery.ez-plus.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'jquery.bootstrap-touchspin.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'jquery.raty-fa.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'mimity.js')}"></script>
    <script src="${resource(dir: 'js/app', file: 'mimity.detail.js')}"></script>
    <script src="${resource(dir: 'js', file: 'application.js')}"></script>
  </body>
</html>