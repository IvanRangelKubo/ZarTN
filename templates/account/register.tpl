
{# Account validation #}
{% if account_validation == 'pending' %}

	<section class="seccinterna">
		<div class="custom-container">

			<div class="containermicuenta">

				<div class="contenedor-titulos">
						<h1 class="titlesecc">{{ "¡Estás a un paso de crear tu cuenta! 🫰" | translate }}</h1>
						<img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
				</div>

				<div class="w-layout-cell logcell">


					<p class="txtlogin center">{{ "Te enviamos un link a <strong>{1}</strong> para que valides tu email." | t(customer_email) }} </p>

					<div class="font-small mb-4">
						<p class="txtlogin center" >{{ "¿Todavía no lo recibiste?" | translate }} <span class="js-resend-validation-link btn-link">{{ "Enviar link de nuevo" | translate }}</span></p>
					</div>
					<div class="js-resend-validation-success alert alert-success" style="display:none">
						<p class="txtlogin center">{{ "¡El link fue enviado correctamente!" | translate }}</p>
					</div>
					<div class="js-resend-validation-error alert alert-danger" style="display:none">
						<p class="txtlogin center">{{ "No pudimos enviar el email, intentalo de nuevo en unos minutos." | translate }}</p>
					</div>

				</div>


			</div>

		</div>
	</div>

{% else %}

	{# Register Form #}

	<section class="seccinterna">
		<div class="custom-container">

			<div class="containermicuenta">

				<div class="contenedor-titulos">
						<h1 class="titlesecc">MI CUENTA</h1>
						<img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
				</div>
				
				<div id="w-node-a2a15f98-a8f6-6058-73bf-1c10a5e7d284-73a6d4f7" class="w-layout-layout cuentastack wf-layout-layout">

					<div class="w-layout-cell bordercell">
						<div class="loginpopform w-form">
							{% embed "snipplets/forms/form.tpl" with{form_id: 'login-form', form_custom_class: 'contenidoformlog', submit_custom_class: 'js-recaptcha-button btn-block loginpopbtn w-button', submit_prop: 'disabled', submit_text: 'CREAR CUENTA' | translate, data_store: 'account-register' } %}
								{% block form_body %}

                  <h2 class="titles-micuenta">Registrarme</h2>
                  <p class="txtlogin pagina">Regístrate y obtén descuentos y promociones especiales</p>

									{# Name input #}
									
									{% embed "snipplets/forms/form-input.tpl" with{type_text: true,input_custom_class: 'loginreg-field w-input', input_for: 'name', input_value: result.name, input_name: 'name', input_id: 'name', input_placeholder: 'Nombre Completo *', input_required: true} %}
										{% block input_form_alert %}
											{% if result.errors.name %}
																<div class="alert alert-danger">{{ 'Usamos tu nombre para identificar tus pedidos.' | translate }}</div>
														{% endif %}
										{% endblock input_form_alert %}
									{% endembed %}

									{# Email input #}

									{% embed "snipplets/forms/form-input.tpl" with{type_email: true, input_custom_class: 'loginreg-field mail w-input', input_for: 'email', input_value: result.email, input_name: 'email', input_id: 'email', input_placeholder: 'Correo electrónico*', input_required: true} %}
										{% block input_form_alert %}
											{% if result.errors.email == 'exists' %}
																<div class="alert alert-danger">{{ 'Encontramos otra cuenta que ya usa este email. Intentá usando otro o iniciá sesión.' | translate }}</div>
														{% elseif result.errors.email %}
																<div class="alert alert-danger">{{ 'Necesitamos un email válido para crear tu cuenta.' | translate }}</div>
														{% endif %}
										{% endblock input_form_alert %}
									{% endembed %}

									{# Password input #}

									{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_custom_class: 'loginreg-field pass w-input', input_for: 'password', input_name: 'password', input_id: 'password',input_placeholder: 'Contraseña*', input_required: true} %}
										{% block input_form_alert %}
											{% if result.errors.password == 'required' %}
																<div class="alert alert-danger">{{ 'Necesitamos una contraseña para registrarte.' | translate }}</div>
														{% endif %}
										{% endblock input_form_alert %}
									{% endembed %}

									{# Password confirm input #}

									{% embed "snipplets/forms/form-input.tpl" with{type_password: true, input_custom_class: 'loginreg-field pass w-input', input_for: 'password_confirmation', input_name: 'password_confirmation', input_id: 'password_confirmation', input_placeholder: 'Confirmar contraseña*', input_required: true } %}
										{% block input_form_alert %}
											{% if result.errors.password == 'confirmation' %}
																<div class="alert alert-danger">{{ 'Las contraseñas no coinciden.' | translate }}</div>
														{% endif %}
										{% endblock input_form_alert %}
									{% endembed %}

									<div class="labelcheck-tyc pagina">*Campos requeridos</div>
									{# Aceptar Términos #}
									<label class="w-checkbox accept-tyc left">
											<div class="w-checkbox-input w-checkbox-input--inputType-custom logincheck"></div>
											<input type="checkbox" name="checkbox-2" id="checkbox-2" data-name="Checkbox 2" required="" style="opacity:0;position:absolute;z-index:-1" oninvalid="this.setCustomValidity('Marque esta casilla si desea continuar')" oninput="this.setCustomValidity('')">
											<span class="w-form-label" for="checkbox-2">
													<a href="/aviso-de-privacidad" class="labelcheck-tyc">Acepto el Aviso de Privacidad</a>
											</span>
									</label>
									
								{% endblock %}
							{% endembed %}
						</div>
					</div>

					<div class="w-layout-cell">
							<div class="loginpopform w-form">

									<div class="contenidoformlog">
											<h2 class="titles-micuenta">Iniciar sesión</h2>
											<p class="txtlogin pagina">Con tu usuario y contraseña puedes acceder a tu cuenta</p>
											<a href="/account/login" class="loginpopbtn w-button" >INICIAR SESION</a>
									</div>
									
							</div>
					</div>
									
				</div>


			</div>

		</div>
	</section>


{% endif %}


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

		.contenidoformlog {
			margin-top: 0px;
			padding: 0px;
	}

	p.center.txtlogin {
    text-align: center;
	}

	.font-small.mb-4 {
    width: 100%;
	}

    @media screen and (max-width: 479px) {
        .bordercell {
            border-top: 0;
            border-bottom: 1px solid #c9c9c9;
        }
    }
		
</style>