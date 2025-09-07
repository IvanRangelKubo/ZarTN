<div id="barritabuscador"  class="search-suggest-list">
    {% set search_suggestions = products | take(6) %}

    {% for product in search_suggestions %}
        <a href="{{ product.url }}" class="itemrecomend w-inline-block">
            <div id="w-node-_831d208b-bb13-4e2d-e47f-81c90b55ecf0-0b55eca1" class="w-layout-layout quick-stack wf-layout-layout">
                <div class="w-layout-cell cellpicrecomend">
                    {{ product.featured_image | product_image_url("tiny") | img_tag(product.featured_image.alt, {class: 'picrecomend'}) }}
                </div>
                <div class="w-layout-cell cellnamerecomend">
                    <div class="namerecomend">{{ product.name | highlight(query) }}</div>
                </div>
            </div>
        </a>
    {% endfor %}
</div>
