<div data-delay="5000" data-animation="cross" class="main-slider w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="700" data-infinite="true">
	<div class="w-slider-mask">
	{% for image in settings.slider %}
		<div class="slide w-slide">
			<a href="{{ image.link }}" class="slider-img w-inline-block">
				<img alt="{{ image.title }}" src="{{ image.image | static_url }}" loading="lazy" class="slider-img">
			</a>
		</div>
	{% endfor %}
	</div>

    <div class="mainslider-arrow white w-slider-arrow-left">
      <div class="w-icon-slider-left"></div>
    </div>
    <div class="mainslider-arrow white w-slider-arrow-right">
      <div class="w-icon-slider-right"></div>
    </div>
    <div class="slide-nav w-hidden-small w-hidden-tiny w-slider-nav w-round"></div>

</div>

<div data-delay="5000" data-animation="cross" class="main-slider mobile w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="700" data-infinite="true">
	
	<div class="w-slider-mask">
	{% for image in settings.slider_mobile %}
			<div class="slide w-slide">
				<a href="{{ image.link }}" class="slider-img w-inline-block">
					<img alt="{{ image.title }}" src="{{ image.image | static_url }}" loading="lazy" class="slider-img">
				</a>
			</div>
	{% endfor %}
	</div>

    <div class="left-arrow w-slider-arrow-left">
      <div class="icon-slider w-icon-slider-left"></div>
    </div>
    <div class="right-arrow w-slider-arrow-right">
      <div class="icon-slider w-icon-slider-right"></div>
    </div>
    <div class="slide-nav w-hidden-small w-hidden-tiny w-slider-nav w-round"></div>

</div>