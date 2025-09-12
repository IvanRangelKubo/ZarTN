{% set image_sizes = ['small', 'large', 'huge', 'original', '1080p'] %}
{% set category_images = [] %}
{% set has_category_images = category.images is not empty %}

{% for size in image_sizes %}
    {% if has_category_images %}
        {# Define images for admin categories #}
        {% set category_images = category_images|merge({(size):(category.images | first | category_image_url(size))}) %}
    {% else %}
        {# Define images for general banner #}
        {% set category_images = category_images|merge({(size):('banner_listing.jpg' | static_url | settings_image_url(size))}) %}
    {% endif %}
{% endfor %}

{% set category_image_url = 'banner_listing.jpg' | static_url %}

  <div class="listing-header" style="background-image:url({{ category_images['1080p'] }})" >
    <div class="custom-container">
        <div class="titulo-cate">
          <h1 class="innertitle">{{ category.name }}</h1>
          <img src="{{ "images/titleline_white.svg" | static_url }}" class="imgtitle-listing">
        </div>
      {% include "snipplets/breadcrumbs.tpl" %}
    </div>
  </div>