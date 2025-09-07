<div class="cont-cartcontact">

    <div class="linkicons-nav buscadormobile">
        <img src="{{ "images/search_icon.svg" | static_url }}" alt="Buscador" class="icononav js-modal-open js-toggle-search" data-toggle="#nav-search">
    </div>


    <a href="{{ store.customer_home_url }}" class="linkicons-nav mobile w-inline-block">
        <img src="{{ "images/user_icon.svg" | static_url }}" alt="Mi cuenta" class="icononav">
    </a>

    <div class="linkicons-nav">
        <a {% if settings.ajax_cart and template != 'cart' %} href="#" class="js-modal-open js-fullscreen-modal-open js-toggle-cart" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart" {% else %} href="{{ store.cart_url }}" {% endif %}>
            <img  src="{{ "images/cart_icon.svg" | static_url }}" alt="Carrito" class="icononav">
            <div class="qtynumber js-cart-widget-amount">{{ cart.items_count }}</div>
        </a>
    </div>

</div>
