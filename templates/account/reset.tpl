	<section class="seccinterna">
		<div class="custom-container">

			<div class="containermicuenta">

				<div class="contenedor-titulos">
						<h1 class="titlesecc">MI CUENTA</h1>
						<img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
				</div>
				
				<div id="w-node-a2a15f98-a8f6-6058-73bf-1c10a5e7d284-73a6d4f7" class="w-layout-layout cuentastack wf-layout-layout">

					<div class="w-layout-cell bordercell">
						<div class="loginpopform">
                            {% embed "snipplets/forms/form.tpl" with{form_id: 'resetpass-form',form_custom_class: 'contenidoformlog',submit_custom_class: 'loginpopbtn w-button', submit_text: 'Enviar email' | translate } %}
                                {% block form_body %}
                                    <h2 class="titles-micuenta">Recupera tu contraseña</h2>
                                    <p class="txtlogin">{{ 'Vamos a enviarte un email para que puedas cambiar tu contraseña.' | translate }}</p>

                                    {# Email input #}
                                    {% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_for: 'email', input_placeholder: 'Correo electrónico', input_custom_class: 'loginreg-field mail w-input' , input_value: email, input_name: 'email', input_id: 'email', input_required: true } %}
                                        {% block input_form_alert %}
                                            {% if failure %}
                                                <div class="alert alert-danger">{{ 'No encontramos ninguna cuenta registrada con este email. Intentalo nuevamente chequeando que esté bien escrito.' | translate }}</div>
                                            {% endif %}
                                        {% endblock input_form_alert %}
                                    {% endembed %}
                                    
                                {% endblock %}
                            {% endembed %}

                            {% if success %}
                                <div class="alert alert-success">{{ '¡Listo! Te enviamos un email a {1}' | translate(email) }}</div>
                            {% endif %}
						</div>
					</div>

					<div class="w-layout-cell">
							<div class="loginpopform w-form">

									<div class="contenidoformlog">
                                        <h2 class="titles-micuenta">Iniciar sesión</h2>
                                        <p class="txtlogin pagina">Recordaste tu contraseña? puedes acceder a tu cuenta aqui!</p>
                                        <a href="/account/login" class="loginpopbtn w-button" >INICIAR SESION</a>
									</div>
									
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
        margin-top: 0;
    }

    a.loginpopbtn.w-button {
        width: fit-content;
        line-height: 45px;
    }
    
</style>