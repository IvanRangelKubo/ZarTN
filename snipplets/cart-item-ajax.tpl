<div class="js-cart-item cart-item {% if item.product.is_non_shippable %}js-cart-item-non-shippable{% else %}js-cart-item-shippable{% endif %} {% if cart_page %}row align-items-md-center mx-0 {% if loop.last %}mb-2{% else %}mb-5{% endif %} {% else %}form-row{% endif %}" data-item-id="{{ item.id }}" data-store="cart-item-{{ item.product.id }}" data-component="cart.line-item">

  {# Cart item image #}
  <div class="cart-tem-image">
    <a href="{{ item.url }}">
                        {# armamos la URL "real" de la imagen destacada #}
      {% set featured_url = item.featured_image | product_image_url('original') %}
      {# en TN, cuando no hay imagen, la URL incluye "no-photo" #}
      {% set has_real_image = featured_url and ('no-photo' not in featured_url) %}

      {% if has_real_image %}
        <img src="{{ item.featured_image | product_image_url('medium') }}" class="img-fluid" />
      {% else %}
        <img src="{{ 'images/placeholder_amieworld.webp' | static_url }}" class="img-fluid" />
      {% endif %}
      
    </a>
  </div>

  <div class="cart-item-info">

    {# Cart item name #}
    <div class="{% if cart_page %}row align-items-center{% else %}w-100{% endif %}">
      <h6 class="font-weight-normal {% if cart_page %}col-12 col-md-6 h4-md mb-2 mb-md-0{% else %}cart-item-name mb-0{% endif %}" data-component="line-item.name">
        <a href="{{ item.url }}" data-component="name.short-name">
          {{ item.short_name }}
        </a>
        <small data-component="name.short-variant-name">{{ item.short_variant_name }}</small>
        {{ component(
          'cart-labels', {
            group: true,
            labels_classes: {
              group: 'mt-2',
              label: 'd-inline-block label label-secondary font-smallest mb-1 mr-1',
              shipping: 'label-secondary',
              promotion: 'label-accent',
            },
          })
        }}
      </h6>
      
      {% if cart_page %}
        {% set cart_quantity_class = 'float-md-none m-auto ' %}
      {% else %}
        {% set cart_quantity_class = 'float-left ' %}
      {% endif %}

      <div class="QuantityDelete">
        <div class="cart-item-quantity {% if cart_page %}col-7 col-md-3{% endif %}" data-component="line-item.subtotal">
          {% embed "snipplets/forms/form-input.tpl" with{
            type_number: true, 
            input_value: item.quantity, 
            input_name: 'quantity[' ~ item.id ~ ']', 
            input_data_attr: 'item-id',
            input_data_val: item.id,
            input_group_custom_class: cart_quantity_class ~ 'form-quantity w-auto mb-2', 
            input_custom_class: 'js-cart-quantity-input cart-item-input form-control', 
            input_label: false,
            data_component: 'quantity.value',
            input_append_content: true} %}
              {% block input_prepend_content %}
              <div class="row m-0 justify-content-md-center {% if cart_page %}align-items-center{% endif %}">
                <span class="js-cart-quantity-btn cart-item-btn btn" onclick="LS.minusQuantity({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="quantity.minus">
                  {% include "snipplets/svg/minus.tpl" with {svg_custom_class: "icon-inline svg-icon-text"} %}
                </span>
              {% endblock input_prepend_content %}
              {% block input_append_content %}
                <span class="js-cart-input-spinner cart-item-spinner" style="display: none;">
                  {% include "snipplets/svg/sync-alt.tpl" with {svg_custom_class: "icon-inline icon-spin svg-icon-text"} %}
                </span>
                <span class="js-cart-quantity-btn cart-item-btn btn" onclick="LS.plusQuantity({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="quantity.plus">
                  {% include "snipplets/svg/plus.tpl" with {svg_custom_class: "icon-inline svg-icon-text"} %}
                </span>
              </div>

              {# Cart item delete #}
              <div class="cart-item-delete text-right">
                <button type="button" class="btn h6 {% if cart_page %}h5-md{% endif %} m-0" onclick="LS.removeItem({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="line-item.remove">
                  {% include "snipplets/svg/trash-alt.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-text"} %}
                </button>
              </div>
              {% endblock input_append_content %}
          {% endembed %}
        </div>

      </div>

      {# Cart item subtotal #}
      <h6 class="js-cart-item-subtotal cart-item-subtotal {% if cart_page %}col-5 col-md-3 text-right text-md-center h4-md font-weight-bold{% endif %}" data-line-item-id="{{ item.id }}" data-component="subtotal.value" data-component-value='{{ item.subtotal | money }}'> {{ item.subtotal | money }} </h6>
    </div>
  </div>
  
</div>