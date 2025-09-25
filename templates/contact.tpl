
{% set is_order_cancellation_without_id = params.order_cancellation_without_id == 'true' %}
<section class="contact-page">

  <div class="header-internas contacto">
    <div class="custom-container">
      <div class="titulo-cate">
        <h1 class="innertitle legales">CONTACTO TIENDA</h1>
				<img src="{{ "images/titleline_white.svg" | static_url }}" class="imgtitle-listing">
      </div>
    </div>
  </div>

  <div class="custom-container">
    <div id="w-node-_791ef530-db77-688e-fff5-a4ce1769d6ef-c21f7b48" class="w-layout-layout stackcontacto wf-layout-layout">

      <div class="w-layout-cell imgcellcontact"></div>

      <div class="w-layout-cell">

        <h2 class="titleforms">ESCRÍBENOS</h2>
        <p class="txtformcontact underline">Nos interesa escucharte, si tienes alguna duda o comentario puedes ponerte en contacto con nosotros a través del siguiente formulario para dar seguimiento a tu solicitud.</p>
        
				<div class="loginpopform contacto w-form">

					{% embed "snipplets/forms/form.tpl" with{form_id: 'contact-form', form_custom_class: 'js-winnie-pooh-form contenidoformlog', submit_custom_class: 'loginpopbtn w-button', form_action: '/winnie-pooh', submit_name: 'contact', submit_text: 'ENVIAR MENSAJE' | translate, data_store: 'contact-form' } %}
						{% block form_body %}

							{# Hidden inputs used to send attributes #}
							<div class="winnie-pooh hidden">
								<label for="winnie-pooh">{{ "No completar este campo" | translate }}:</label>
								<input type="text" id="winnie-pooh" name="winnie-pooh">
							</div>
							<input type="hidden" value="{{ product.id }}" name="product"/>
							<input type="hidden" name="type" value="contact" />
							<input type="hidden" name="message"/>
									
									{# Name input #}
									{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'Nombre Completo*', input_for: 'name', type_text: true, input_name: 'name', input_id: 'name', input_required: true } %}
									{% endembed %}

									{# Email input #}
									{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'Correo electrónico (con el que realizaste la compra)',  input_for: 'email', type_email: true, input_name: 'email', input_id: 'email' } %}
									{% endembed %}

									{# Phone input #}
									{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'Teléfono*',  input_for: 'phone', type_tel: true, input_name: 'phone', input_id: 'phone', input_required: true } %}
									{% endembed %}

									{# Order input #}
									{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field w-input', input_placeholder: 'No. de Pedido de Compra',  input_for: 'order', type_text: true, input_name: 'order', input_id: 'order' } %}
									{% endembed %}

									{# Help input #}
									{% embed "snipplets/forms/form-select.tpl" with{select_for: 'help',select_custom_class: 'loginreg-field w-select', select_name: 'help', select_id: 'help' } %}
										{% block select_options %}
											<option value="">Elige el motivo de contacto</option>
											<option value="Estatus de mi pedido">Estatus de mi pedido</option>
											<option value="Dudas de los productos">Dudas de los productos</option>
											<option value="No recibí mi pedido">No recibí mi pedido</option>
											<option value="Venta Mayorista">Venta Mayorista</option>
											<option value="Otro">Otro</option>
										{% endblock select_options %}
									{% endembed %}

									{# Message textarea #}
									{% embed "snipplets/forms/form-input.tpl" with{input_custom_class: 'loginreg-field txtarea w-input', input_placeholder: 'Escribe un mensaje (opcional)', text_area: true, input_for: 'custom_message', input_name: 'custom_message', input_id: 'custom_message', input_rows: '7' } %}
									{% endembed %}
					

							<p class="txtformcontact">Los campos marcados (*) son obligatorios </p>

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

				<!-- Notificaciones de usuario -->
				{% if contact %}
					{% if contact.success %}
							<div class="alert alert-success" data-component="contact-success-message">{{ "¡Gracias por contactarnos! Vamos a responderte apenas veamos tu mensaje." | translate }}</div>
					{% else %}
						<div class="alert alert-danger">{{ "Necesitamos tu nombre y un email para poder responderte." | translate }}</div>
					{% endif %}
				{% endif %}
				<!-- Notificaciones de usuario -->

      </div>

    </div>
  </div>

	<script>
			document.addEventListener('DOMContentLoaded', function () {
			const form = document.querySelector('#contact-form');
			const helpInput = document.querySelector('[name="help"]');
			const orderInput = document.querySelector('[name="order"]');
			const customMessageInput = document.querySelector('[name="custom_message"]');
			const messageInput = document.querySelector('[name="message"]');
			if (form && helpInput && orderInput && customMessageInput && messageInput) {
				form.addEventListener('submit', function (event) {
					const fields = [
						{ input: helpInput, label: 'Help' },
						{ input: orderInput, label: 'Order' },
						{ input: customMessageInput, label: 'Message' }
					];

					const message = fields
						.filter(field => field.input.value !== '')
						.map(field => `${field.label}: ${field.input.value.trim()}`)
						.join(',  ');

					messageInput.value = message;
				});
			}
		});
	</script>

	<style>
		.form-group {
				margin: 0px;
		}

		.form-group .form-select-icon {
			display: none;
		}

		select.form-select.loginreg-field.w-select {
				appearance: auto !important;
		}

		input.btn.btn-primary.loginpopbtn.w-button {
				letter-spacing: normal;
				text-transform: none;
		}

		.alert.alert-success {
				margin-top: 25px;
		}

		.contenidoformlog {
				padding: 0px;
		}

		.stackcontacto {
				height: auto;
		}

	</style>
</section>