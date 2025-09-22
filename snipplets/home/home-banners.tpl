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

      <div class="searchOptions">
        <button class="btn btn-primary loginpopbtn w-button" id="wheel" >
          Medida
        </button>
        <button class="btn btn-primary loginpopbtn w-button" id="model" >
          Vehiculo  
        </button>
      </div>
      
      <div class="advancedSearch" id="wheelSearch">
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

          <select name="Brand" id="brand" class="form-select loginreg-field w-select">
            <option value="" disabled selected hidden>Marca</option>
            <option value="Alliance">Alliance</option>
            <option value="Firestone">Firestone</option> 
            <option value="Yokohama">Yokohama</option> 
          </select>

          <button type="submit" class="btn btn-primary loginpopbtn w-button">Buscar</button>
        </form>

      </div>

      <div class="advancedSearchModel" id="modelSearch">
        <form id="modelSearchForm" class="deepSearchForm">

          <select id="marca" class="form-select loginreg-field w-select">
            <option value="" disabled selected hidden>Marca</option>
          </select>

          <select id="modelo" class="form-select loginreg-field w-select" disabled>
            <option value="" disabled selected hidden>Modelo</option>
          </select>

          <select id="anio" class="form-select loginreg-field w-select" disabled>
            <option value="" disabled selected hidden>Año</option>
          </select>

          <select id="version" class="form-select loginreg-field w-select" disabled>
            <option value="" disabled selected hidden>Versión</option>
          </select>

          <button type="submit" class="btn btn-primary loginpopbtn w-button" disabled>
            Buscar
          </button>
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

    select#alto, select#ancho, select#rodado,select#brand {
        margin: 0;
        border-radius: 0;
    }

    button.btn.btn-primary.loginpopbtn.w-button {
        margin: 0;
    }

    .searchOptions {
        display: flex;
        gap: 20px;
        align-items: center;
        justify-content: center;
        padding: 30px;
    }

    @media screen and (max-width: 479px) {
      .deepSearchForm {
        flex-wrap: wrap;
        padding: 20px;
      }
    }
  </style>

  <!-- Script para búsqueda por medida -->
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
        const brandEl = document.getElementById('brand');

        if (!altoEl || !anchoEl || !rodadoEl) {
          console.error("Faltan campos en el formulario.");
          return;
        }

        const alto = altoEl.value.trim();
        const ancho = anchoEl.value.trim();
        let rodado = rodadoEl.value.trim();
        const brand = brandEl ? brandEl.value.trim() : "";

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

        if (brand) {
          params.set("brand", brand);
        }

        const finalURL = `${slugCategoria}?${params.toString()}`;
        window.location.href = finalURL;
      });
    })();
  </script>


  <!-- Script para alternar entre búsquedas -->
  <script>

    document.addEventListener('DOMContentLoaded', function() {

      const wheelBtn = document.getElementById('wheel');
      const modelBtn = document.getElementById('model');
      const wheelSearch = document.getElementById('wheelSearch');
      const modelSearch = document.getElementById('modelSearch');

      wheelBtn.addEventListener('click', function() {
        wheelSearch.style.display = 'block';
        modelSearch.style.display = 'none';
      });

      modelBtn.addEventListener('click', function() {
        modelSearch.style.display = 'block';
        wheelSearch.style.display = 'none';
      });

      wheelSearch.style.display = 'block';
      modelSearch.style.display = 'none';
    });

  </script>

  <!-- Script para búsqueda por modelo -->
  <script>
    (function () {
      const form = document.getElementById("modelSearchForm");
      if (!form) return;

      const marcaSelect = document.getElementById("marca");
      const modeloSelect = document.getElementById("modelo");
      const anioSelect = document.getElementById("anio");
      const versionSelect = document.getElementById("version");
      const submitBtn = form.querySelector("button[type='submit']");

      const modelsUrl = "{{ 'utils/models.json' | static_url }}";

      fetch(modelsUrl)
        .then((res) => res.json())
        .then((data) => {
          initSearch(data);
        })
        .catch((err) => {
          console.error("Error cargando models.json:", err);
        });

      function initSearch(data) {

        Object.keys(data).forEach((marca) => {
          marcaSelect.innerHTML += `<option value="${marca}">${marca}</option>`;
        });
        marcaSelect.disabled = false;

        marcaSelect.addEventListener("change", () => {
          const marca = marcaSelect.value;
          modeloSelect.innerHTML = `<option value="" disabled selected hidden>Modelo</option>`;
          anioSelect.innerHTML = `<option value="" disabled selected hidden>Año</option>`;
          versionSelect.innerHTML = `<option value="" disabled selected hidden>Versión</option>`;

          modeloSelect.disabled = true;
          anioSelect.disabled = true;
          versionSelect.disabled = true;
          submitBtn.disabled = true;

          if (marca && data[marca]) {
            Object.keys(data[marca]).forEach((modelo) => {
              modeloSelect.innerHTML += `<option value="${modelo}">${modelo}</option>`;
            });
            modeloSelect.disabled = false;
          }
        });

        modeloSelect.addEventListener("change", () => {
          const marca = marcaSelect.value;
          const modelo = modeloSelect.value;
          anioSelect.innerHTML = `<option value="" disabled selected hidden>Año</option>`;
          versionSelect.innerHTML = `<option value="" disabled selected hidden>Versión</option>`;
          anioSelect.disabled = true;
          versionSelect.disabled = true;
          submitBtn.disabled = true;

          if (marca && modelo && data[marca][modelo]) {
            Object.keys(data[marca][modelo]).forEach((anio) => {
              anioSelect.innerHTML += `<option value="${anio}">${anio}</option>`;
            });
            anioSelect.disabled = false;
          }
        });

        anioSelect.addEventListener("change", () => {
          const marca = marcaSelect.value;
          const modelo = modeloSelect.value;
          const anio = anioSelect.value;
          versionSelect.innerHTML = `<option value="" disabled selected hidden>Versión</option>`;
          versionSelect.disabled = true;
          submitBtn.disabled = true;

          if (marca && modelo && anio && data[marca][modelo][anio]) {
            Object.keys(data[marca][modelo][anio]).forEach((version) => {
              versionSelect.innerHTML += `<option value="${version}">${version}</option>`;
            });
            versionSelect.disabled = false;
          }
        });

        versionSelect.addEventListener("change", () => {
          submitBtn.disabled = !versionSelect.value;
        });

        form.addEventListener("submit", (e) => {
          e.preventDefault();

          const marca = marcaSelect.value;
          const modelo = modeloSelect.value;
          const anio = anioSelect.value;
          const version = versionSelect.value;

          if (marca && modelo && anio && version) {
            const medidas = data[marca][modelo][anio][version];
            const params = new URLSearchParams({
              Ancho: medidas.Ancho,
              Alto: medidas.Alto,
              Rodada: "R" + medidas.Rin,
            });
            window.location.href = `/productos?${params.toString()}`;
          } else {
            alert("Por favor selecciona todos los campos");
          }
        });
      }
    })();
  </script>





