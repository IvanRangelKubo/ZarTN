{# /*============================================================================
  #Page breadcrumbs
==============================================================================*/
#Properties

#Breadcrumb
    //breadcrumbs_custom_class for custom CSS classes
#}

{% if breadcrumbs %}

    <ul class="breadcrumbs listaarbol {{ breadcrumbs_custom_class }}">

        <li class="list-item-arbol">
          <a href="{{ store.url }}" class="arbolcategorias white">Inicio /</a>
        </li>
        
        {% if template == 'page' %}
          <li class="list-item-arbol">
            <a href="#" class="arbolcategorias white">{{ page.name }} /</a>
          </li>
        {% elseif template == 'cart' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias white">{{ "Carrito de compras" | translate }} /</a>
            </li>
        {% elseif template == 'search' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias white">{{ "Resultados de búsqueda" | translate }} /</a>
            </li>

        {% elseif template == 'account.order' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias white">{{ 'Orden {1}' | translate(order.number) }} /</a>
            </li>

        {% elseif template == 'blog' %}
            <li class="list-item-arbol">
              <a href="#" class="arbolcategorias white">{{ 'Blog' | translate }} /</a>
            </li>

        {% elseif template == 'blog-post' %}
            <li class="list-item-arbol">
              <a href="{{ store.blog_url }}" class="arbolcategorias white">{{ 'Blog' | translate }} /</a>
            </li>
            <li class="list-item-arbol">
              <a href="{{ store.blog_url }}" class="arbolcategorias white">{{ post.title }} /</a>
            </li>
             <span class="crumb active"></span>

       {% elseif template == 'category' %}
        
          {% if category.name != 'Productos' %}
              <li class="list-item-arbol">
                <a href="/productos" class="arbolcategorias white">Catálogo /</a>
              </li>
          {% endif %}
        
          {% if category.parents %}
              {% for parent in category.parents %}
                  {% if parent.name != 'Productos' %}
                      <li class="list-item-arbol">
                        <a href="{{ parent.url }}" class="arbolcategorias white">{{ parent.name }} /</a>
                      </li>
                  {% endif %}
              {% endfor %}
          {% endif %}
          
          <li class="list-item-arbol">
            <span class="arbolcategorias white">{{ category.name }} /</span>
          </li>


        {% else %}

            {% for crumb in breadcrumbs %}
                {% if crumb.last %}
                    <li class="list-item-arbol">
                      <div href="#" class="arbolcategorias white">{{ crumb.name }} /</div>
                    </li>
                    
                {% else %}
                    <li class="list-item-arbol">
                      <a href="{{ crumb.url }}" class="arbolcategorias white">{{ crumb.name }} /</a>
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
