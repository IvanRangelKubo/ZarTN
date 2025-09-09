{# /*============================================================================
  #Page breadcrumbs
==============================================================================*/
#Properties

#Breadcrumb
    //breadcrumbs_custom_class for custom CSS classes
#}

{% set breadcrumbClass = '' %}
{% if template != 'product' %}
  {% set breadcrumbClass = 'white' %}
{% endif %}

{% if breadcrumbs %}

    <ul class="breadcrumbs listaarbol {{ breadcrumbs_custom_class }}">

        <li class="list-item-arbol">
          <a href="{{ store.url }}" class="arbolcategorias {{ breadcrumbClass }}">Inicio /</a>
        </li>
        
        {% if template == 'page' %}
          <li class="list-item-arbol">
            <a href="#" class="arbolcategorias {{ breadcrumbClass }}">{{ page.name }} /</a>
          </li>
        {% elseif template == 'cart' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias {{ breadcrumbClass }}">{{ "Carrito de compras" | translate }} /</a>
            </li>
        {% elseif template == 'search' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias {{ breadcrumbClass }}">{{ "Resultados de búsqueda" | translate }} /</a>
            </li>

        {% elseif template == 'account.order' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias {{ breadcrumbClass }}">{{ 'Orden {1}' | translate(order.number) }} /</a>
            </li>

        {% elseif template == 'blog' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias {{ breadcrumbClass }}">{{ 'Blog' | translate }} /</a>
            </li>

        {% elseif template == 'blog-post' %}
            <li class="list-item-arbol">
              <a href="{{ store.blog_url }}" class="arbolcategorias {{ breadcrumbClass }}">{{ 'Blog' | translate }} /</a>
            </li>
            <li class="list-item-arbol">
              <a href="{{ store.blog_url }}" class="arbolcategorias {{ breadcrumbClass }}">{{ post.title }} /</a>
            </li>
             <span class="crumb active"></span>

       {% elseif template == 'category' %}
        
          {% if category.name != 'Productos' %}
              <li class="list-item-arbol">
                <a href="/productos" class="arbolcategorias {{ breadcrumbClass }}">Catálogo /</a>
              </li>
          {% endif %}
        
          {% if category.parents %}
              {% for parent in category.parents %}
                  {% if parent.name != 'Productos' %}
                      <li class="list-item-arbol">
                        <a href="{{ parent.url }}" class="arbolcategorias {{ breadcrumbClass }}">{{ parent.name }} /</a>
                      </li>
                  {% endif %}
              {% endfor %}
          {% endif %}
          
          <li class="list-item-arbol">
            <span class="arbolcategorias {{ breadcrumbClass }}">{{ category.name }} /</span>
          </li>


        {% else %}

            {% for crumb in breadcrumbs %}
                {% if crumb.last %}
                    <li class="list-item-arbol">
                      <div href="#" class="arbolcategorias {{ breadcrumbClass }}">{{ crumb.name }} /</div>
                    </li>
                    
                {% else %}
                    <li class="list-item-arbol">
                      <a href="{{ crumb.url }}" class="arbolcategorias {{ breadcrumbClass }}">{{ crumb.name }} /</a>
                    </li>
                {% endif %}
            {% endfor %}
        {% endif %}

    </ul>

    <style>
      .arbol-navegacion {
          display: flex !important;
          gap: 7px;
          justify-content: center;
      }
    </style>

{% endif %}
