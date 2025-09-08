{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}

{# Here we will add an example as a help, you can delete this after you upload your products #}

{% if show_help %}
	<div id="product-example">
		{% snipplet 'defaults/show_help_product.tpl' %}
	</div>
{% else %}
	<section id="404" class="seccinterna">
		<div class="custom-container" >
			<div class="notfounddiv">
				<div class="notfoundicon">:(</div>
				<h3 class="title-notfounddiv"><strong class="notfoundtxt">Lo sentimos</strong><br>La pagina que buscas, no existe.</h3>
			</div>
		</div>
	</section>
{% endif %}
