  <div class="secccreviews">
    <div class="custom-container">

      <div class="contenedor-titulos">
        <h6 class="titlesecc white">{{ settings.reviews_section_title }}</h6>
        <img src="{{ "images/titleline_white.svg" | static_url }}" alt="" class="icon_titles">
      </div>

      <div data-delay="4000" data-animation="slide" class="reviews-slider w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="true">
        <div class="w-slider-mask">

          {% if settings.review_01_show %}
            <div class="slide-comment w-slide">
              <div class="contreview">
                <div class="comentario-slide">{{ settings.review_1 }}</div>
                <div class="comment-name">{{ settings.review_name_1 }}</div>
              </div>
            </div>
          {% endif %}

          {% if settings.review_02_show %}
            <div class="slide-comment w-slide">
              <div class="contreview">
                <div class="comentario-slide">{{ settings.review_2 }}</div>
                <div class="comment-name">{{ settings.review_name_2 }}</div>
              </div>
            </div>
          {% endif %}

          {% if settings.review_03_show %}
            <div class="slide-comment w-slide">
              <div class="contreview">
                <div class="comentario-slide">{{ settings.review_3 }}</div>
                <div class="comment-name">{{ settings.review_name_3 }}</div>
              </div>
            </div>
          {% endif %}

          {% if settings.review_04_show %}
            <div class="slide-comment w-slide">
              <div class="contreview">
                <div class="comentario-slide">{{ settings.review_4 }}</div>
                <div class="comment-name">{{ settings.review_name_4 }}</div>
              </div>
            </div>
          {% endif %}

          {% if settings.review_05_show %}
            <div class="slide-comment w-slide">
              <div class="contreview">
                <div class="comentario-slide">{{ settings.review_5 }}</div>
                <div class="comment-name">{{ settings.review_name_5 }}</div>
              </div>
            </div>
          {% endif %}

          {% if settings.review_06_show %}
            <div class="slide-comment w-slide">
              <div class="contreview">
                <div class="comentario-slide">{{ settings.review_6 }}</div>
                <div class="comment-name">{{ settings.review_name_6 }}</div>
              </div>
            </div>
          {% endif %}
          
        </div>

        <div class="hiddenarrow w-slider-arrow-left">
          <div class="w-icon-slider-left"></div>
        </div>
        <div class="hiddenarrow w-slider-arrow-right">
          <div class="w-icon-slider-right"></div>
        </div>
        <div class="slide-anvreviews w-slider-nav w-round"></div>

      </div>

    </div>
  </div>