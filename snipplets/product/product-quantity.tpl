{# Product quantity #}

{% if not quickshop %}
    <div class="quantityContainer" data-component="product.quantity"> 
{% endif %}

{% embed "snipplets/forms/form-input.tpl" with{type_number: true, input_value: '1', input_name: 'quantity' ~ item.id, input_custom_class: 'js-quantity-input text-center cantidad-input w-input', input_label: false, input_append_content: true, input_group_custom_class: 'js-quantity form-row align-items-center w-clearfix', input_min: '1', input_aria_label: 'Cambiar cantidad' | translate, data_component: 'adding-amount.value' } %}
    {% block input_prepend_content %}
        <span class="boton_cant w-button js-quantity-down text-center" data-component="product.quantity.minus">
            -
        </span>
    {% endblock input_prepend_content %}
    {% block input_append_content %}
        <span class="boton_cant mas w-button js-quantity-up text-center" data-component="product.quantity.plus">
            +
        </span>
    {% endblock input_append_content %}
{% endembed %}

{% if not quickshop %}
    </div>
{% endif %}

<style>
    .boton_cant.mas {
        padding: 4px 5px 3px;
    }

    .quantityContainer {
        display: flex;
        flex-wrap: wrap;
    }

    .form-group.js-quantity.form-row.align-items-center.w-clearfix {
        margin: 0px;
    }

</style>