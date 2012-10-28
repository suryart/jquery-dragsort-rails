# jQuery Drag Sort for Rails 3.1 Asset Pipeline

[jQuery-DragSort-Plugin](http://dragsort.codeplex.com/) is a list drag and sort plugin made available by and on [CodePlex](http://dragsort.codeplex.com/). jQuery List Drag Sort features list element's dragging, dropping, and saving the sorted list by user using jQuery.

jquery-dragsort-rails is a library that integrates jQuery List Drag Sort for Rails 3.1 or above Asset Pipeline.

## Plugin version

* jQuery List Drag Sort Plugin v0.5.1

## Installing Gem

    gem "jquery-dragsort-rails"

## How to use this plugin
To use this plugin follow these steps:

### Refer javascript
Require jquery-dragsort in your app/assets/application.js file.

    //= require jquery-dragsort

### In your code:

Let's assume you are sorting products on your page, and your code looks something like this in your sort_products.html.erb template -

      <%= form_tag save_order_products_path do -%>
        <!-- save sort order here which can be retrieved from server on postback -->
        <input id= "product_positions" name="product_positions" type="hidden" value="0" />
        <div class="span2" id="save_order"></div><!--  To insert a button when list's position is changed. -->
      <% end -%>

      <ul id="products" class="thumbnails">
        <% @products.each do |product| %>
          <% unless product.pictures.blank? %>
            <%= content_tag_for :li, product, :class=> "span2" do %>
              <div class="span2 thumbnail" value="<%= product.id %>">
                  <%= image_tag(product.pictures.first.image(:small), :size => "260x180") %>
                  <div class="caption">
                    <h5><%= product.name %></h5>
                    <p><%= product.sku_code %></p>
                    <p><%= truncate(product.description, :length => 45, :separator => ' ') %></p>
                  </div>
              </div>
            <% end %>
          <% end %>
        <% end %>
      </ul>

In your products.js.cofee file -

      saveOrder = ->
        data = $("#products li").map -> 
          $(this).children().attr("value")
        .get()
        $("input[name=product_positions]").val data.join(",")
        $("#save_order").html '<button class="btn btn-primary"><i class="icon-ok icon-white"></i> Save</button>'

      $("#products, #list2").dragsort
        dragSelector: "div"
        dragBetween: true
        dragEnd: saveOrder
        placeHolderTemplate: "<li class='placeHolder'><div></div></li>"

## Thanks
Thanks to [Codeplex](http://dragsort.codeplex.com/) for making list dragsort plugin available.

## License
This project is released under and uses [MIT-LICENSE](/MIT-LICENSE).