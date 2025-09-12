{% set is_account_activation = action == 'account_activation' %}

<section class="seccinterna">
    <div class="custom-container">

        <div class="containermicuenta">

            <div class="contenedor-titulos">
                <h1 class="titlesecc">MI CUENTA</h1>
                <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
            </div>

            <div class="formin">

                {% if link_expired %}

                    
                    <div class="mb-4 text-center">
                        {% if is_account_activation %}

                            <div class="mb-1 font-weight-bold">{{ 'El link para activar tu cuenta expiró' | translate }}</div>
                            <div>{{ 'Contactanos para que te enviemos uno nuevo.' | translate }}</div>
                        {% else %}
                            <div class="mb-1 font-weight-bold">{{ 'El link para cambiar tu contraseña expiró' | translate }}</div>
                            <div class="mb-3">{{ 'Ingresá tu email para recibir uno nuevo.' | translate }}</div>
                            <a href="{{ store.customer_reset_password_url }}" class="btn-link btn-link-primary">{{ 'Ingresar email' | translate }}</a>
                        {% endif %}
                    </div>

                {% else %}

                    {% embed "snipplets/forms/form.tpl" with{form_id: 'newpass-form',form_custom_class: 'contenidoformlog',submit_custom_class: 'loginpopbtn w-button', submit_text: (customer.password ? 'Cambiar contraseña' : 'Activar cuenta')  | translate } %}
                        {% block form_body %}
                            <h2 class="titles-micuenta">Crea tu nueva contraseña </h2>
                            {# Password input #}

                            {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password', input_name: 'password', input_id: 'password', input_placeholder: 'Contraseña', input_required: true, input_custom_class: 'loginreg-field pass w-input' } %}
                            {% endembed %}

                            {# Password confirm input #}

                            {% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_for: 'password_confirm', input_name: 'password_confirm', input_id: 'password_confirm', input_placeholder: 'Confirmar contraseña', input_required: true, input_custom_class: 'loginreg-field pass w-input' } %}
                            {% endembed %}
                            
                        {% endblock %}
                    {% endembed %}

                    {% if failure %}
                        <div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
                    {% endif %}

                {% endif %}
            </div>

        </div>
    </div>
</section>

<style>
   .form-group {
        margin-bottom: 0;
    }

    .form-toggle-eye {
        top: 5px !important;
        right: 36px !important;
    }

    .contenidoformlog {
        margin-top: 0px;
        padding: 0px;
	}  

    .formin {
        width: 50%;
        margin: auto;
    }

    .btn.btn-primary.loginpopbtn.w-button {
        letter-spacing: normal;
        text-transform: none;
        margin-top: 0;
    }

    @media screen and (max-width: 479px) {
        .loginpopform {
            margin-top: 20px;
        }
    }
    
</style>