{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}

{# Here we will add an example as a help, you can delete this after you upload your products #}

{% if show_help %}
	<div id="product-example">
		{% snipplet 'defaults/show_help_product.tpl' %}
	</div>
{% else %}
	<section id="404" class="productslist">
		<div class="customcontainer" >
			<div class="not-found-div">
        <img src="{{ "images/notfount_icon.svg" | static_url }}" alt="Not found icon" class="imgsearch">
        <h1 class="no-reults-txt">LO SENTIMOS<br>La pagina que estas buscando, no existe.</h1>
      </div>
		</div>
	</section>
{% endif %}
