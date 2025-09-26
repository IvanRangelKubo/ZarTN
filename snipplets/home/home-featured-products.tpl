  {% set section = {
    'primary': sections.primary.products,
    'secundary': sections.secundary.products,
  } %}
 
  <div class="carrusel-productos">
    <div class="custom-container">

      <div class="contenedor-titulos">
        <h2 class="titlesecc">{{ settings.home_featured_products_title | raw }}</h2>
        <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
      </div>

      <div class="customhtml w-embed">
       <div class="owl-carousel productos owl-theme" id="sync2">
          {% for product in section[settings.home_featured_products] %}
            <div class="container-producto">
              <div class="contimgproducto">

                {% if not product.has_stock %}
                  <div class="etiquetas-prod agotado">AGOTADO</div>
                {% endif %}

                {% if product.compare_at_price > product.price %}
                  <div class="etiquetas-prod oferta">-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</div>
                {% endif %}

                <a href="{{product.canonical_url}}" class="linkproducto w-inline-block">
                  {% if product.images_count > 1 %}
                    <div style="background-image:url({{ product.images[1] | product_image_url('original') }})" class="imgback" ></div>
                  {% else %}
                    <div style="background: transparent" class="imgback" ></div>
                  {% endif %}

                  {# armamos la URL "real" de la imagen destacada #}
                  {% set featured_url = product.featured_image | product_image_url('original') %}
                  {# en TN, cuando no hay imagen, la URL incluye "no-photo" #}
                  {% set has_real_image = featured_url and ('no-photo' not in featured_url) %}

                  {% if has_real_image %}
                    <div class="imgfront {% if product.images_count > 1 %}hoverOn{% endif %}"
                        style="background-image:url({{ featured_url }})"></div>
                  {% else %}
                    <div class="imgfront {% if product.images_count > 1 %}hoverOn{% endif %}"
                        style="background-image:url({{ 'images/llanta_ejemplo.jpg' | static_url }})"></div>
                  {% endif %}
                </a>
              </div>

              <div class="container-titleandprices">
                
                <div>{{product.featured_image.name}}</div>
                <a href="{{product.canonical_url}}" class="nombre-producto">{{product.name}}</a>
                <div class="precios-container">
                    {% if product.compare_at_price or product.promotional_offer %}
                      <div class="precio-regular" style="text-decoration: line-through;">{{ product.compare_at_price | money }}</div>
                      <div class="precio-oferta">{{ product.price | money }}</div>
                    {% else %}
                      <div class="precio-regular">{{ product.price | money }}</div>
                    {% endif %}  
                </div>
    
              </div>

                {% if product.available  %}
                  <form class="js-product-form" method="post" action="{{ store.cart_url }}">
                    <input type="hidden" name="add_to_cart" value="{{ product.id }}" />
                    <input type="hidden" name="quantity" value="1" />
                    {% if not product.variations %}
                      <button type="submit"
                              class="btnadd w-button js-addtocart js-prod-submit-form"
                              data-store="product-buy-button">
                              COMPRAR
                      </button>
                    {% else %}
                      <a href="{{ product.canonical_url }}" class="btnadd w-button" >COMPRAR</a>
                    {% endif %}
                  </form>
                {% endif %}

            </div>
          {% endfor %}
        </div>
      </div>
    </div>
  </div>