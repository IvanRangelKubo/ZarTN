    {# Product name and breadcrumbs #}
    <h1 class="titleproductvip"></h1>

    <div class="cont-infovip">

        <h1 class="title-prod-detalle">{{ product.name }}</h1>
        <div class="label-vip">SKU: {{ product.sku }}</div>
        {% if product.compare_at_price or product.promotional_offer %}
            <div id="compare_price_display" class="js-compare-price-display preciovip" style="text-decoration: line-through;">{{ product.compare_at_price | money }}</div>
            <div id="price_display" data-product-price="{{ product.price }}" class="js-price-display preciovip oferta">{{ product.price | money }}</div>
        {% else %}
            <div id="price_display" data-product-price="{{ product.price }}" class="js-price-display preciovip">{{ product.price | money }}</div>
        {% endif %} 
        {% if product.compare_at_price > product.price %}
            <div class="tagvip">-{{ (((product.compare_at_price - product.price) * 100) / product.compare_at_price) | round(0, 'floor') }}%</div>
        {% endif %}

    </div>

    {# Product form, includes: Variants, CTA and Shipping calculator #}
    <div class="w-form">
        <form id="product_form" class="js-product-form formcat" method="post" action="{{ store.cart_url }}" data-store="product-form-{{ product.id }}">
            <input type="hidden" name="add_to_cart" value="{{product.id}}" />
            
            {% if product.variations %}
                {% include "snipplets/product/product-variants.tpl" %}
            {% endif %}

            {% if product.available and product.display_price %}
                {% include "snipplets/product/product-quantity.tpl" %}
            {% endif %}

            {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
            {% set texts = {'cart': "AGREGAR AL CARRITO", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}
            {% set jsClasses = ''%}
            {% set btnType = 'button' %}
            {% if state != 'nostock' %}
                {% set jsClasses = 'js-addtocart js-prod-submit-form' %}
                {% set btnType = 'submit' %}
            {% endif %}

            
            <input type="{{ btnType }}" class="btn-vip agregar w-button {{ jsClasses }}  btn btn-primary btn-block {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %} disabled {% endif %} data-store="product-buy-button" data-component="product.add-to-cart"/>
            {# Fake add to cart CTA visible during add to cart event #}
            {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "btn-block mb-4"} %}
            <div class="js-added-to-cart-product-message float-leftt w-100 mb-3 text-center text-md-left" style="display: none;">
                {{'Ya agregaste este producto.' | translate }}<a href="#" class="js-modal-open js-fullscreen-modal-open btn btn-link ml-1" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart">{{ 'Ver carrito' | translate }}</a>
            </div>    
        </form>
    </div>

    <div>
        <div class="smalltitle-detalle">Métodos de pago</div>
        <img loading="lazy" src="{{ "product_payment_1.jpg" | static_url }}" alt="{{ settings.product_payment_1_alt }}" class="mediopago">
        <img loading="lazy" src="{{ "product_payment_2.jpg" | static_url }}" alt="{{ settings.product_payment_2_alt }}" class="mediopago">
        <img loading="lazy" src="{{ "product_payment_3.jpg" | static_url }}" alt="{{ settings.product_payment_3_alt }}" class="mediopago">
        <img loading="lazy" src="{{ "product_payment_4.jpg" | static_url }}" alt="{{ settings.product_payment_4_alt }}" class="mediopago">
        <img loading="lazy" src="{{ "product_payment_5.jpg" | static_url }}" alt="{{ settings.product_payment_5_alt }}" class="mediopago">
        <img loading="lazy" src="{{ "product_payment_6.jpg" | static_url }}" alt="{{ settings.product_payment_6_alt }}" class="mediopago">
    </div>

    {# Product description #}

    {% if product.description is not empty %}

        <div data-delay="0" data-hover="false" class="dropcuidados w-dropdown">
            <div class="toggle-desscription w-dropdown-toggle">
                <div class="w-icon-dropdown-toggle"></div>
                <div class="droptitle">DESCRIPCIÓN</div>
            </div>
            <nav class="contdropdescrip w-dropdown-list">
                <div class="descripcion-corta">
                    <div class="txtdescription" data-store="product-description-{{ product.id }}">
                         {{ product.description | raw }}
                    </div>
                </div>
            </nav>
        </div>

    {% endif %}

    <style>

        .containershare {
            width: 240px;
            margin-bottom: 20px;
        }

        input.btn-vip.w-button.js-addtocart.js-prod-submit-form.btn.btn-primary.btn-block.mb-4.cart {
            letter-spacing: normal;
            text-transform: none;
        }

        .js-added-to-cart-product-message.float-leftt.w-100.mb-3.text-center.text-md-left {
            font-family: Ubuntu, Helvetica, sans-serif;
            font-size: 14px;
            font-weight: 500;
            line-height: 22px;
        }

        .nostock, .nostock:hover {
            background: #ddd !important;
            opacity: 0.5 !important;
            cursor: not-allowed !important;
        }

        span.js-addtocart-text.transition-container.btn-transition-start.active {
            position: relative;
        }

        .js-addtocart-adding.transition-container.btn-transition-progress {
            position: relative;
        }

        .w-input:focus, .w-select:focus {
            border-color: black;
        }

        .alert.alert-warning {
            margin-top: 25px;
        }

    </style>
