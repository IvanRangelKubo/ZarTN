{# Update account info form #}

<section class="seccinterna">
    <div class="custom-container">
    
        <div class="containermicuenta">

            <div class="contenedor-titulos">
                <h1 class="titlesecc">MI INFORMACION</h1>
                <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
            </div>

            <div class="contbtncuenta">
                <a href="/account" class="btnmicuenta w-button">Cancelar</a>
            </div>

       
            <div class="loginpopform">
                
                    {% embed "snipplets/forms/form.tpl" with{form_id: 'info-form',form_custom_class: 'contenidoformlog direcciones', submit_custom_class: 'loginpopbtn w-button', submit_text: 'Guardar cambios' | translate } %}
                        {% block form_body %}

                            <h2 class="titles-micuenta">EDITA TU INFORMACION</h2>

                            
                            <div id="w-node-_76e90914-a609-dbd3-664f-f91026e7cc0e-73a6d4f7" class="w-layout-layout stackdireccion wf-layout-layout">
                                
                                <div class="w-layout-cell">
                                    {# Name input #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_placeholder: 'Nombre Completo*', input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name | default(customer.name), input_name: 'name', input_id: 'name' } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.name %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu nombre para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                                <div class="w-layout-cell">
                                    {# Email input #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_email: true,input_placeholder: 'Correo electrónico*', input_for: 'email',input_custom_class: 'loginreg-field email w-input', input_value: result.email | default(customer.email), input_name: 'email', input_id: 'email' } %}
                                        {% block input_form_alert %}
                                            {% if result.errors.email == 'exists' %}
                                                <div class="alert alert-danger">{{ 'Encontramos otra cuenta que ya usa este email. Intentá usando otro.' | translate }}</div>
                                            {% elseif result.errors.email %}
                                                <div class="alert alert-danger">{{ 'Necesitamos saber tu email para actualizar tu información.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                </div>

                            </div>

                            <div id="w-node-cdfa8c52-eeee-e4ef-b086-70ef29561187-73a6d4f7" class="w-layout-layout stackdireccion wf-layout-layout">
                                <div class="w-layout-cell">
                                    {# Phone input #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_tel: true,input_placeholder: 'Teléfono*', input_for: 'phone',input_custom_class: 'loginreg-field w-input', input_value: result.phone | default(customer.phone), input_name: 'phone', input_id: 'phone' } %}
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
    
</style>