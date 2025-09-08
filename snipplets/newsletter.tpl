{% set newsletter_contact_error = contact.type == 'newsletter' and not contact.success %}    
    
  <div class="seccnews">
    <div class="custom-container">
      <div class="js-newsletter formnews w-form">

        <form class="formnewsletter" method="post" action="/winnie-pooh" onsubmit="this.setAttribute('action', '');" data-store="newsletter-form" >
          <div class="elementsform">

            <div class="titulo-news-cont">
                {{ settings.news_title | raw }}
            </div>

            <div class="labelnews">
                {{ settings.news_text }}
            </div>

            <div class="inputybtn">
                <input type="email" id="email" autocorrect="off" autocapitalize="off" name="email" class="campo-correo w-input" placeholder="Escribe aquí tu email" raria-label="Correo electrónico" required="">
                <input type="submit" name="contact" class="suscribir-btn w-button" value='{{ "Suscribirme" | translate }}' >
            </div>

            <div class="winnie-pooh" style="display: none;">
                <label for="winnie-pooh-newsletter">{{ "No completar este campo" | translate }}</label>
                <input id="winnie-pooh-newsletter" type="text" name="winnie-pooh"/>
            </div>
            <input type="hidden" name="name" value="{{ "Sin nombre" | translate }}" />
            <input type="hidden" name="message" value="{{ "Pedido de inscripción a newsletter" | translate }}" />
            <input type="hidden" name="type" value="newsletter" /> 

          </div>
        </form>

      </div>
    </div>
  </div>

<style>
    .campo-correo {
        color: black;
    }
</style>

