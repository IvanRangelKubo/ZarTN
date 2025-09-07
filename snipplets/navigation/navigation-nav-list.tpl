<nav role="navigation" class="custom-navigationmenu w-nav-menu">

  <div class="titlemenu">Encuentra tu llanta</div>

  {% set menu_key = settings.main_menu | default('navigation') %}
  {% set menu_items = attribute(menus, menu_key) ?? navigation %}

  {% for item in menu_items %}
    {% if item.subitems %}
      {% set is_medida = item.name|upper == 'MEDIDA' %}
      <div data-delay="0" data-hover="true" class="customdrop-nav w-dropdown">
        <div class="menunav-link drop w-dropdown-toggle">
          <div class="icondropmenu w-icon-dropdown-toggle"></div>
          <div>{{ item.name }}</div>
        </div>

        <nav class="megamenu-colecciones{% if is_medida %} scroll{% endif %} w-dropdown-list">
          <div class="containermegamenufull">
            {% for subitem in item.subitems %}
              <a href="{{ subitem.url }}" class="regulardroplink{% if is_medida %} medida{% endif %} w-dropdown-link">
                {{ subitem.name }}
              </a>
            {% endfor %}
          </div>
        </nav>
      </div>
    {% else %}
      <a href="{{ item.url }}" class="menunav-link nav-link w-nav-link">{{ item.name }}</a>
    {% endif %}
  {% endfor %}

  <div class="extramenu-mobile">
    <img src="{{ "images/user_icon_black.svg" | static_url }}" alt="Mi cuenta" class="icnomenu-mobile">
    <a href="/account" class="menunav-link mobile nav-link w-nav-link">MI CUENTA</a>
  </div>

</nav>
