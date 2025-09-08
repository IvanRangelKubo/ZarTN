{% paginate by settings.category_quantity_products %}

{% embed "snipplets/page-header.tpl" with { breadcrumbs: false, products_count: products_count, query: query } %}
  {% block page_header_text %}
    {% if query %}
      Se han encontrado {{ products_count }} resultado{{ products_count == 1 ? '' : 's' }} para "{{ query }}"
    {% else %}
      Resultados de búsqueda
    {% endif %}
  {% endblock page_header_text %}
{% endembed %}

<section class="seccinterna">
	<div class="custom-container">
		{% if products %}
			<div class="contlisting">
				{% include 'snipplets/product_grid.tpl' %}
			</div>
			{% include 'snipplets/grid/pagination.tpl' with { infinite_scroll: false } %}
		{% else %}
				<div class="notfounddiv">
					<div class="notfoundicon">:(</div>
					<h3 class="title-notfounddiv"><strong class="notfoundtxt">Lo sentimos</strong><br>Tu búsqueda no produjo ningún resultado, intenta nuevamente con otra palabra.</h3>
				</div>
	    {% endif %}
	</div>
</section>