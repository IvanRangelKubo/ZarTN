<div id="single-product" class="seccion-productovip js-has-new-shipping js-product-detail js-product-container js-shipping-calculator-container" data-variants="{{product.variants_object | json_encode }}" data-store="product-detail">
    <div class="custom-container">

        {% include "snipplets/breadcrumbs.tpl" with { breadcrumbs_custom_class: 'detalle' } %}

        <div class="colsvip-producto w-row section-single-product">
            <div class="vip-col-images w-col w-col-7" data-store="product-image-{{ product.id }}">
            	{% include 'snipplets/product/product-image.tpl' %}
            </div>
            <div class="colinfo-prod w-col w-col-5" data-store="product-info-{{ product.id }}">
            	{% include 'snipplets/product/product-form.tpl' %}
            </div>
        </div>

    </div>
</div>

<div class="seccgarantias">
    <div class="custom-container">

        <div class="contenedor-titulos">
            <h1 class="titlesecc">{{ settings.product_garranties_title }}</h1>
            <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
        </div>

        <div data-delay="3000" data-animation="slide" class="warrantyslide w-slider" data-autoplay="true" data-easing="ease-in-out" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">

            <div class="maskwarranty w-slider-mask">

                <div class="garantiaslide w-slide">
                    <div class="continfowarranty">
                        <img loading="lazy" src="{{ "product_garanty_icon_1" | static_url }}" class="iconwarranty">
                        <p class="infowarranty">{{ settings.product_garanty_1 }}</p>
                    </div>
                </div>

                <div class="garantiaslide w-slide">
                    <div class="continfowarranty">
                        <img loading="lazy" src="{{ "product_garanty_icon_2" | static_url }}" class="iconwarranty">
                        <p class="infowarranty">{{ settings.product_garanty_2 }}</p>
                    </div>
                </div>

                <div class="garantiaslide w-slide">
                    <div class="continfowarranty">
                        <img loading="lazy" src="{{ "product_garanty_icon_3" | static_url }}" class="iconwarranty">
                        <p class="infowarranty">{{ settings.product_garanty_3 }}</p>
                    </div>
                </div>

                <div class="garantiaslide w-slide">
                    <div class="continfowarranty">
                        <img loading="lazy" src="{{ "product_garanty_icon_4" | static_url }}" class="iconwarranty">
                        <p class="infowarranty">{{ settings.product_garanty_4 }}</p>
                    </div>
                </div>

                <div class="garantiaslide w-slide">
                    <div class="continfowarranty">
                        <img loading="lazy" src="{{ "product_garanty_icon_5" | static_url }}" class="iconwarranty">
                        <p class="infowarranty">{{ settings.product_garanty_5 }}</p>
                    </div>
                </div>

            </div>

            <div class="garantiasarrow w-slider-arrow-left">
                <div class="w-icon-slider-left"></div>
            </div>
            <div class="garantiasarrow w-slider-arrow-right">
                <div class="w-icon-slider-right"></div>
            </div>
            <div class="warrantyslidenav w-slider-nav w-slider-nav-invert w-round"></div>

        </div>
    </div>
</div>


{# Related products #}
{% include 'snipplets/product/product-related.tpl' %}

<style>

    .swiper-wrapper {
        max-height: 713px;
    }

    .vipImage {
        object-fit: cover;
    }

    .w-row.section-single-product {
        margin: 0;
    }

    @media screen and (max-width: 479px) {
        ul.breadcrumbs.arbol-navegacion.vip {
            display: inline-block !important;
        }

        li.list-item-arbollist-item-arbol {
            margin-top: 10px;
        }

        ul.breadcrumbs.arbol-navegacion.vip {
            padding-top: 0px;
        }

        .contsocial-media {
            padding-top: 5px;
        }

        .containershare {
            width: 300px !important;
        }

        .cont-variacion.js-product-variants-group.col-12.mb-2.text-center.text-md-left {
            display: flex;
            justify-content: flex-start;
        }

        .swiper-container {
            width: 90%;
        }

        .text-center {
            text-align: left !important;
        }
        
    }



</style>
