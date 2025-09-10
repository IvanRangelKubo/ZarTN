{% set templateTitle = 'NUEVA DIRECCION' %}
{% if address.name %}
    {% set templateTitle = 'EDITAR DIRECCION' %}
{% endif %}

<section class="seccinterna">
    <div class="custom-container">

        <div class="containermicuenta">

            <div class="contenedor-titulos">
                <h1 class="titlesecc">MIS DIRECCIONES</h1>
                <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
            </div>

            <div class="contbtncuenta">
                <a href="/account/addresses" class="btnmicuenta w-button">Cancelar</a>
            </div>
            
            <div class="loginpopform">
                {% embed "snipplets/forms/form.tpl" with{form_id: 'address-form', form_custom_class: 'contenidoformlog', submit_custom_class: 'loginpopbtn w-button', submit_text: 'Guardar cambios' | translate } %}
                    {% block form_body %}

                        <h2 class="titles-micuenta">{{ templateTitle }}</h2>

                        <div id="w-node-_76e90914-a609-dbd3-664f-f91026e7cc0e-73a6d4f7" class="w-layout-layout stackdireccion wf-layout-layout">
                            
                            <div class="w-layout-cell">
                                {# Name input #}                
                                {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name | default(address.name),  input_name: 'name', input_id: 'name', input_placeholder: 'Nombre(Alias)*' | translate, input_required: true } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.name %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu nombre para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                            <div class="w-layout-cell">
                                {# Address input #}
                                {% embed "snipplets/forms/form-input.tpl" with{type_text: true, input_for: 'address',input_custom_class: 'loginreg-field w-input', input_value: result.address | default(address.address),  input_name: 'address', input_id: 'address', input_placeholder: 'Direccion*', input_required: true  } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.address %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu dirección para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                        </div>

                        <div id="w-node-cdfa8c52-eeee-e4ef-b086-70ef29561187-73a6d4f7" class="w-layout-layout stackdireccion wf-layout-layout">
                            
                            <div class="w-layout-cell">
                                {# Address Zipcode #}    
                                {% embed "snipplets/forms/form-input.tpl" with{type_tel: true,input_custom_class: 'loginreg-field w-input', input_for: 'zipcode', input_value: result.zipcode | default(address.zipcode), input_name: 'zipcode', input_id: 'zipcode', input_placeholder: 'Codigo Postal*' | translate, input_required: true } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.zipcode %}
                                            <div class="alert alert-danger">{{ 'Debes ingresar tu código postal' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                            <div class="w-layout-cell">
                                {# Address City #}
                                {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'city', input_value: result.city | default(address.city), input_name: 'city', input_id: 'city', input_placeholder: 'Ciudad*' | translate, input_required: true } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.city %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu ciudad para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                        </div>

                        <div id="w-node-_35ff062c-6a51-32d2-462c-9d369a212ecf-73a6d4f7" class="w-layout-layout stackdireccion wf-layout-layout">
                            
                            <div class="w-layout-cell">
                                {# Address Province #}
                                {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'province', input_value: result.province | default(address.province), input_name: 'province', input_id: 'province', input_placeholder: 'Estado*' | translate, input_required: true } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.province %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu provincia para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                            <div class="w-layout-cell">
                                {# Address Country #}
                                {% embed "snipplets/forms/form-select.tpl" with{select_for: 'country', select_custom_class: 'loginreg-field w-select', select_name: 'country', select_id: 'country' } %}
                                    {% block select_options %}
                                        {{ country_options }}
                                    {% endblock select_options %}
                                    {% block input_form_alert %}
                                        {% if result.errors.country %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu país para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                        </div>

                        <div id="w-node-_8e7fa812-d998-5929-14bb-1328c8bbebfa-73a6d4f7" class="w-layout-layout stackdireccion wf-layout-layout">
                            
                            <div class="w-layout-cell">
                                {# Phone input #}
                                {% embed "snipplets/forms/form-input.tpl" with{type_tel: true,input_custom_class: 'loginreg-field w-input', input_for: 'phone', input_value: result.phone | default(address.phone), input_name: 'phone', input_id: 'phone', input_placeholder: 'Telefono*' | translate, input_required: true } %}
                                    {% block input_form_alert %}
                                        {% if result.errors.phone %}
                                            <div class="alert alert-danger">{{ 'Necesitamos saber tu teléfono para actualizar tu información.' | translate }}</div>
                                        {% endif %}
                                    {% endblock input_form_alert %}
                                {% endembed %}
                            </div>

                        </div>

                        <p class="txtlogin">*Campos requeridos</p>

                    {% endblock %}
                {% endembed %}
            </div>
            
        </div>

    </div>
</section>

<style>
   .form-group {
        margin-bottom: 0;
    }

    .form-toggle-eye {
        top: 9px !important;
        right: 36px !important;
    }

    .contenidoformlog {
        margin-top: 0px;
        padding: 0px;
	}


    .btn.btn-primary.loginpopbtn.w-button {
        letter-spacing: normal;
        text-transform: none;
        margin-top: 0;
    }

    .alert.alert-danger {
        margin: auto;
        margin-bottom: 15px;
        width: 90%;
        color: crimson;
    }

    .alert.alert-danger {
        margin: auto;
        margin-bottom: 15px;
        width: 90%;
        color: crimson;
    }

    .alert.alert-success {
        margin: auto;
        width: 90%;
    }

    .form-group .form-select-icon {
        display: none;
    }
    select.form-select.loginreg-field.w-select {
            appearance: auto !important;
    }

    select#province {
        border: 1px solid var(--brand-light-black);
        color: #000;
        background-color: #fff;
        border-radius: 9px;
        height: 45px;
        margin-bottom: 15px;
        padding: 10px;
        font-family: Ubuntu, Helvetica, sans-serif;
        font-size: 15px;
        font-weight: 400;
        line-height: 18px;
        width: 100%;
    }

    @media screen and (max-width: 991px) {
        .txtlogin {
            max-width: none;
        }
    }
    
</style>