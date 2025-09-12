{% set has_multiple_slides = product.images_count > 1 or product.video_url %}

{# armamos la URL "real" de la imagen destacada #}
{% set featured_url = product.featured_image | product_image_url('original') %}
{# en TN, cuando no hay imagen, la URL incluye "no-photo" #}
{% set has_real_image = featured_url and ('no-photo' not in featured_url) %}

{% if product.images_count > 0 and has_real_image %}
		<div class="product-image-container col-12 {% if show_thumbs %}col-md-10{% endif %} p-0">
			<div class="js-swiper-product{% if settings.scroll_product_images %} product-detail-slider{% endif %} swiper-container" style="visibility:hidden; height:0;" data-product-images-amount="{{ product.images_count }}">
					<div class="swiper-wrapper">
						{% for image in product.images %}
							<div class="swiper-slide js-product-slide slider-slide" data-image="{{image.id}}" data-image-position="{{loop.index0}}">
								<a href="{{ image | product_image_url('original') }}" data-fancybox="product-gallery" class="js-product-slide-link d-block position-relative" style="padding-bottom: {{ image.dimensions['height'] / image.dimensions['width'] * 100}}%;">
									<img src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{  image | product_image_url('large') }} 480w, {{  image | product_image_url('huge') }} 640w, {{  image | product_image_url('original') }} 1024w' data-sizes="auto" class="js-product-slide-img product-slider-image img-absolute img-absolute-centered lazyautosizes lazyload vipImage" {% if image.alt %}alt="{{image.alt}}"{% endif %} />
									<img src="{{ image | product_image_url('tiny') }}" class="js-product-slide-img product-slider-image img-absolute img-absolute-centered blur-up" {% if image.alt %}alt="{{image.alt}}"{% endif %} />
								</a>
						</div>
					{% endfor %}
					{% include 'snipplets/product/product-video.tpl' %}
				</div>
				<div class="js-swiper-product-pagination swiper-pagination"></div>
			</div>
		</div>
{% else %}
	<img src="{{ 'images/placeholder-zar.jpg' | static_url }}" alt="{{ product.name }}">
{% endif %}

<img loading="lazy" src="{{ "images/share-icon.svg" | static_url }}" alt="Compartir" class="shareicon" data-ix="showsocialshare">

<div class="contsocial-media detalle">

	<a data-network="copy" href="#" class="st-custom-button w-inline-block">
		<img alt="Compartir" src="{{ "images/socialicon.svg" | static_url }}" class="iconshare-social">
	</a>

	<a data-network="facebook" href="#" class="st-custom-button w-inline-block">
		<img alt="Facebook" src="{{ "images/socialicon-copy.svg" | static_url }}" class="iconshare-social">
	</a>

	<a data-network="whatsapp" href="#" class="st-custom-button w-inline-block">
		<img alt="Whatsapp" src="{{ "images/socialicon-copy-3.svg" | static_url }}" class="iconshare-social">
	</a>

	<a data-network="telegram" href="#" class="st-custom-button w-inline-block">
		<img alt="Telegram" src="{{ "images/socialicon-copy-5.svg" | static_url }}" class="iconshare-social">
	</a>

	<a data-network="messenger" href="#" class="st-custom-button w-inline-block">
		<img alt="Messenger" src="{{ "images/socialicon-copy-4.svg" | static_url }}" class="iconshare-social">
	</a>

	<a data-network="twitter" href="#" class="st-custom-button w-inline-block">
		<img alt="Twitter" src="{{ "images/icon_twitter.svg" | static_url }}" class="iconshare-social">
	</a>

</div>

