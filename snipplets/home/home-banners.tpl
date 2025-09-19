  <div class="seccelegir">
    <div class="custom-container">

      <div class="contenedor-titulos">
        <h4 class="titlesecc">{{ settings.banners_section_title }}</h4>
        <img src="{{ "images/title_decoration.svg" | static_url }}"  class="icon_titles">
      </div>

      <div id="w-node-_659a0ef3-de18-932a-f3fc-c276d1d6931f-73a6d4f2" class="w-layout-layout stacktips wf-layout-layout">
        
        <div class="w-layout-cell cellimgtips">

          <div class="cont_info">
            <img src="{{ 'banner_section_icon_1.jpg' | static_url }}" class="img-elegir">
            <div class="continfocomo">
              <h5 class="titlecomo">{{ settings.banner_title_1 }}</h5>
              <p class="txt-elegir">{{ settings.banners_section_description_1 }}</p>
            </div>
          </div>

          <div class="cont_info">
            <img src="{{ 'banner_section_icon_2.jpg' | static_url }}"  class="img-elegir">
            <div class="continfocomo">
              <h5 class="titlecomo">{{ settings.banner_title_2 }}</h5>
              <p class="txt-elegir">{{ settings.banners_section_description_2 }}</p>
            </div>
          </div>

        </div>

        <div class="w-layout-cell cellinfocomo izq">
          <img src="{{ "banner_section_image.jpg" | static_url }}"  class="imgllanta">
        </div>

        <div class="w-layout-cell cellinfocomo der">

          <div class="cont_info">
            <img src="{{ 'banner_section_icon_3.jpg' | static_url }}"  class="img-elegir">
            <div class="continfocomo">
              <h5 class="titlecomo">{{ settings.banner_title_3 }}</h5>
              <p class="txt-elegir">{{ settings.banners_section_description_3 }}</p>
            </div>
          </div>
          <div class="cont_info"><img src="{{ 'banner_section_icon_4.jpg' | static_url }}"  class="img-elegir">
            <div class="continfocomo">
              <h5 class="titlecomo">{{ settings.banner_title_4 }}</h5>
              <p class="txt-elegir">{{ settings.banners_section_description_4 }}</p>
            </div>
          </div>
        </div>
      </div>
      
      <div class="advancedSearch">
        <form id="deepSearch" class="deepSearchForm">

          <select name="Ancho" id="ancho" class="form-select loginreg-field w-select">
            <option value="" disabled selected hidden>Ancho</option>
            <option value="30">30</option>
            <option value="35">35</option>
            <option value="40">40</option>
          </select>

          <select name="Alto" id="alto" class="form-select loginreg-field w-select">
            <option value="" disabled selected hidden>Alto</option>
            <option value="50">50</option>
            <option value="55">55</option>
            <option value="60">60</option>
          </select>

          <select name="Rodado" id="rodado" class="form-select loginreg-field w-select">
            <option value="" disabled selected hidden>Rodado</option>
            <option value="R15">R15</option>
            <option value="16">R16</option> 
            <option value="R17">R17</option> 
          </select>

          <button type="submit" class="btn btn-primary loginpopbtn w-button">Buscar</button>
        </form>

      </div>

    </div>
  </div>

  <style>

  .deepSearchForm {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    flex-wrap: nowrap;
    gap: 20px;
  }

  select#alto, select#ancho, select#rodado {
      margin: 0;
      border-radius: 0;
  }

  button.btn.btn-primary.loginpopbtn.w-button {
      margin: 0;
  }
  </style>

<script>
  (function () {
    const form = document.getElementById('deepSearch');
    if (!form) return console.warn('Formulario avanzado no encontrado.');

    const slugCategoria = "/productos";

    form.addEventListener('submit', function (event) {
      event.preventDefault();

      const altoEl = document.getElementById('alto');
      const anchoEl = document.getElementById('ancho');
      const rodadoEl = document.getElementById('rodado');

      if (!altoEl || !anchoEl || !rodadoEl) {
        console.error("Faltan campos en el formulario.");
        return;
      }

      const alto = altoEl.value.trim();
      const ancho = anchoEl.value.trim();
      let rodado = rodadoEl.value.trim();

      if (!alto || !ancho || !rodado) {
        alert("Por favor, completá todos los campos para buscar.");
        return;
      }

      rodado = /^R/i.test(rodado) ? rodado.toUpperCase() : "R" + rodado;

  
      const params = new URLSearchParams({
        Alto: alto,
        Ancho: ancho,
        Rodada: rodado
      });

      const finalURL = `${slugCategoria}?${params.toString()}`;
      window.location.href = finalURL;
    });
  })();
</script>

