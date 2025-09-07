  <div class="customfooter">
    <div class="custom-container">

      <div id="w-node-_34b901d2-fc78-12e8-962d-984706326143-06326141" class="w-layout-layout stackfooter wf-layout-layout">

        <div id="w-node-_34b901d2-fc78-12e8-962d-984706326144-06326141" class="w-layout-cell">
          <a href="{{ store.url }}" class="logolink-footer w-inline-block">
            <img src="{{ "logo_footer.jpg" | static_url }}" alt="Zar de las llantas" class="logofooter">
          </a>
        </div>

        <div class="w-layout-cell">
          <div class="colfooter">
            <h5 data-w-id="0737ae8c-1141-924f-e9ac-aff72f070260" class="footertiltulo">{{ settings.menu_1_name }}</h5>
            <div class="cont-items-footer">
              <ul role="list" class="items-footer">
								{% for item in menus[settings.footer_menu_1] %}
									<li class="item-list-footer">
										<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlink">{{ item.name }}</a>
									</li>
								{% endfor %}
              </ul>
            </div>
          </div>
        </div>

        <div class="w-layout-cell">
          <div class="colfooter">
            <h5 data-w-id="0737ae8c-1141-924f-e9ac-aff72f070275" class="footertiltulo">{{ settings.menu_2_name }}</h5>
            <div class="cont-items-footer">
              <ul role="list" class="items-footer">
								{% for item in menus[settings.footer_menu_2] %}
									<li class="item-list-footer">
										<a href="{{ item.url }}" {% if item.url | is_external %} target="_blank" {% endif %} class="footerlink">{{ item.name }}</a>
									</li>
								{% endfor %}
              </ul>
            </div>
          </div>
        </div>

        <div class="w-layout-cell">
          <div class="colfooter">

            <h6 data-w-id="34b901d2-fc78-12e8-962d-98470632616d" class="footertiltulo">CONTACTO</h6>

            <div class="cont-items-footer">

              <ul role="list" class="listafooter-elements w-list-unstyled">

                <li class="listitem-footer">
                  <img src="{{ "images/phone_1phone.png" | static_url }}" width="20" alt="Telefono" class="contact-iconfooter">
                  <a href="tel:{{ settings.phone }}" class="footerlink">{{ settings.phone }}</a>
                </li>

                <li class="listitem-footer">
                  <img src="{{ "images/mail_1mail.png" | static_url }}" width="20" alt="Correo" class="contact-iconfooter">
                  <a href="{{ settings.email_link }}" class="footerlink">{{ settings.email }}</a>
                </li>

              </ul>

            </div>

          </div>
        </div>

        <div id="w-node-_34b901d2-fc78-12e8-962d-984706326179-06326141" class="w-layout-cell">
          <div class="colfooter">

            <h5 class="footertiltulo">SÍGUENOS</h5>

            <div class="cont-items-footer visible">
              <ul role="list" class="items-footer">
                <li class="item-list-footer contact">

									{% if settings.facebook_url %}
										<a href="{{ settings.facebook_url }}" target="_blank" class="footerlink social w-inline-block">
											<img src="{{ "images/facebook_icon.svg" | static_url }}" alt="Facebook" class="footericon">
										</a>
									{% endif %}

									{% if settings.instagram_url %}
										<a href="{{ settings.instagram_url }}" target="_blank" class="footerlink social w-inline-block">
											<img src="{{ "images/instagram_icon.svg" | static_url }}" alt="Instagram" class="footericon">
										</a>
									{% endif %}

									{% if settings.tiktok_url %}
										<a href="{{ settings.tiktok_url }}" target="_blank" class="footerlink social w-inline-block">
											<img src="{{ "images/tiktok_icon.svg" | static_url }}" alt="TikTok" class="footericon">
										</a>
									{% endif %}

                </li>
              </ul>
            </div>

          </div>
        </div>	
      </div>

      <div id="w-node-_34b901d2-fc78-12e8-962d-984706326186-06326141" class="w-layout-layout stackcopyr wf-layout-layout">
        <div id="w-node-_34b901d2-fc78-12e8-962d-984706326187-06326141" class="w-layout-cell cellcopyr">
          <div class="copytxt" id="copy">Copyright © ZAR DE LAS LLANTAS • Designed by <a href="https://kubodigital.mx" target="_blank" class="kdlink">Kubo Digital</a></div>
          <div style=" display: flex; flex-direction: row; justify-content: center; ">{{ new_powered_by_link }}</div>
        </div>
        <div class="w-layout-cell">
          <div class="contlogospagos">
							<img  src="{{ "pago1.jpg" | static_url }}" alt="{{ settings.pago1_alt}}" class="mediopago">
							<img  src="{{ "pago2.jpg" | static_url }}" alt="{{ settings.pago2_alt}}" class="mediopago">
							<img  src="{{ "pago3.jpg" | static_url }}" alt="{{ settings.pago3_alt}}" class="mediopago">
							<img  src="{{ "pago4.jpg" | static_url }}" alt="{{ settings.pago4_alt}}" class="mediopago">
							<img  src="{{ "pago5.jpg" | static_url }}" alt="{{ settings.pago5_alt}}" class="mediopago">
							<img  src="{{ "pago6.jpg" | static_url }}" alt="{{ settings.pago6_alt}}" class="mediopago">
          </div>
        </div>
      </div>
      
    </div>
  </div>

<script>
	window.addEventListener('load', () => {
		const copy = document.getElementById('copy');
		const copyIndex = copy.innerHTML.indexOf('©');
		const date = new Date();
		const year = date.getFullYear();

		if (copyIndex !== -1) {
		const content = ` ${year}`
		copy.innerHTML = copy.innerHTML.replace('©', '©' + content);
		}
	})
</script>


<style>

  svg#svg_brand {
      fill: white;
  }

  .footerlink {
    white-space: normal;
  }

  @media screen and (max-width: 479px) {
    div#w-node-_0737ae8c-1141-924f-e9ac-aff72f0702be-2f070258 {
        align-items: center;
    }
  }
</style>