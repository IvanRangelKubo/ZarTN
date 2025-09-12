{# /*============================================================================
  #Page header
==============================================================================*/

#Properties

#Title

#Breadcrumbs 

#}

{% if template == 'category' or template == 'search' %}
  <div class="listing-header" >
    <div class="custom-container">
        <div class="titulo-cate">
          <h1 class="innertitle">{% block page_header_text %}{% endblock %}</h1>
          <img src="{{ "images/titleline_white.svg" | static_url }}" class="imgtitle-listing">
        </div>
      {% include "snipplets/breadcrumbs.tpl" %}
    </div>
  </div>
{% endif %}
