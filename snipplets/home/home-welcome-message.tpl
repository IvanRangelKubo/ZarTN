  <div class="seccmarcas">
    <div class="custom-container">

      <h3 class="titlesecc white">{{ settings.brands_section_title }}</h3>

      <div class="customhtml w-embed">
        <div class="owl-carousel marcas owl-theme" id="sync2">

          {% if settings.link_1  %}
            <a href="{{ settings.link_1 }}" class="marca_link w-inline-block">
              <img src="{{ "icono1.jpg" | static_url }}" alt="{{ settings.icon_alt_1 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_2  %}
            <a href="{{ settings.link_2 }}" class="marca_link w-inline-block">
              <img src="{{ "icono2.jpg" | static_url }}" alt="{{ settings.icon_alt_2 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_3  %}
            <a href="{{ settings.link_3 }}" class="marca_link w-inline-block">
              <img src="{{ "icono3.jpg" | static_url }}" alt="{{ settings.icon_alt_3 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_4  %}
            <a href="{{ settings.link_4 }}" class="marca_link w-inline-block">
              <img src="{{ "icono4.jpg" | static_url }}" alt="{{ settings.icon_alt_4 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_5  %}
            <a href="{{ settings.link_5 }}" class="marca_link w-inline-block">
              <img src="{{ "icono5.jpg" | static_url }}" alt="{{ settings.icon_alt_5 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_6  %}
            <a href="{{ settings.link_6 }}" class="marca_link w-inline-block">
              <img src="{{ "icono6.jpg" | static_url }}" alt="{{ settings.icon_alt_6 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_7  %}
            <a href="{{ settings.link_7 }}" class="marca_link w-inline-block">
              <img src="{{ "icono7.jpg" | static_url }}" alt="{{ settings.icon_alt_7 }}" class="marcacarrusel">
            </a>
          {% endif %}

          {% if settings.link_8  %}
            <a href="{{ settings.link_8 }}" class="marca_link w-inline-block">
              <img src="{{ "icono8.jpg" | static_url }}" alt="{{ settings.icon_alt_8 }}" class="marcacarrusel">
            </a>
          {% endif %}

        </div>
      </div>

    </div>
  </div>