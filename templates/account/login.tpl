<section class="seccinterna">
    <div class="custom-container">

        <div class="containermicuenta">

            <div class="contenedor-titulos">
                <h1 class="titlesecc">MI CUENTA</h1>
                <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
            </div>

            {# Formulario de Inicio de Sesión #}
            <div id="w-node-a2a15f98-a8f6-6058-73bf-1c10a5e7d284-73a6d4f7" class="w-layout-layout cuentastack wf-layout-layout">

                <div class="w-layout-cell bordercell">
                    <div class="loginpopform w-form">
                        <div class="contenidoformlog">
                            <h2 class="titles-micuenta">Registrarme</h2>
                            <p class="txtlogin pagina">Regístrate y obtén descuentos y promociones especiales</p>
                            <a href="/account/register" class="loginpopbtn w-button" >CREAR CUENTA</a>
                        </div>
                    </div>
                </div>

                <div class="w-layout-cell">
                    <div class="loginpopform w-form">

                        {% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', form_custom_class: 'contenidoformlog' , submit_custom_class: 'loginpopbtn w-button', submit_text: 'INICIAR SESION' | translate, data_store: 'account-login' } %}
                            {% block form_body %}
                                <h3 class="titles-micuenta">Iniciar sesión</h3>
                                <p class="txtlogin">Escribe tu usuario y contraseña para acceder a tu cuenta</p>
                                {% embed "snipplets/forms/form-input.tpl" with{input_for: 'email',input_placeholder: 'Correo electrónico *', input_custom_class: 'loginreg-field mail w-input' , type_email: true, input_name: 'email', input_required: true } %}
                                {% endembed %}

                                {% embed "snipplets/forms/form-input.tpl" with{input_for: 'password',input_placeholder: 'Contraseña *', input_custom_class: 'loginreg-field pass w-input', type_password: true, input_name: 'password', input_required: true } %}
                                {% endembed %}

                                <div class="labelcheck-tyc pagina">*campos requeridos</div>
                                {% if result.invalid %}
                                    <div class="alert alert-danger">{{ 'Estos datos no son correctos. ¿Chequeaste que estén bien escritos?' | translate }}</div>
                                {% endif %}
                                
                            {% endblock %}
                            
                        {% endembed %}
                        
                    </div>
                </div>

            </div>
            
        </div>

    </div>
</section>

<style>
   .form-group {
        margin-bottom: 0;
    } 

    .btn.btn-primary.loginpopbtn.w-button {
        letter-spacing: normal;
        text-transform: none;
    }

    a.loginpopbtn.w-button {
        width: fit-content;
        line-height: 45px;
    }

    .form-toggle-eye {
        top: 5px !important;
        right: 36px !important;
    }

    .alert.alert-danger {
        margin: auto;
        margin-bottom: 15px;
        width: 90%;
        color: crimson;
    }
</style>