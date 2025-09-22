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

        if (!altoEl || !anchoEl || !rodadoEl || !brandEl) {
          console.error("Faltan campos en el formulario.");
          return;
        }

        const alto = altoEl.value.trim();
        const ancho = anchoEl.value.trim();
        let rodado = rodadoEl.value.trim();
        const brand = brandEl.value.trim();

        if (!alto || !ancho || !rodado || !brand) {
          alert("Por favor, completá todos los campos para buscar.");
          return;
        }

        // Normalizar rodado (agregar "R" si no tiene prefijo)
        rodado = /^R/i.test(rodado) ? rodado.toUpperCase() : "R" + rodado;

        // Armar parámetros
        const params = new URLSearchParams({
          Alto: alto,
          Ancho: ancho,
          Rodada: rodado,
          brand: brand // 👈 ahora sí va en la URL
        });

        const finalURL = `${slugCategoria}?${params.toString()}`;
        window.location.href = finalURL;
      });
    })();
  </script>

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

  <script>
  (function () {
    const slugCategoria = "/productos";

    // JSON de ejemplo (puede cargarse vía fetch si lo tenés en un archivo .json)
    const data = {
      "FORD": {
        "AEROSTAR": {
          "1991": {
            "XL": { "Ancho": "30", "Alto": "50", "Rin": "15" }
          },
          "1992": {
            "XL": { "Ancho": "35", "Alto": "55", "Rin": "16" }
          }
        }
      }
    };

    const form = document.getElementById("modelSearchForm");
    const marcaEl = document.getElementById("marca");
    const modeloEl = document.getElementById("modelo");
    const anioEl = document.getElementById("anio");
    const versionEl = document.getElementById("version");
    const submitBtn = form.querySelector("button[type=submit]");

    Object.keys(data).forEach(marca => {
      const opt = document.createElement("option");
      opt.value = marca;
      opt.textContent = marca;
      marcaEl.appendChild(opt);
    });

    marcaEl.addEventListener("change", () => {
      modeloEl.innerHTML = `<option value="" disabled selected hidden>Modelo</option>`;
      anioEl.innerHTML = `<option value="" disabled selected hidden>Año</option>`;
      versionEl.innerHTML = `<option value="" disabled selected hidden>Versión</option>`;
      modeloEl.disabled = false;
      anioEl.disabled = true;
      versionEl.disabled = true;
      submitBtn.disabled = true;

      const modelos = Object.keys(data[marcaEl.value]);
      modelos.forEach(mod => {
        const opt = document.createElement("option");
        opt.value = mod;
        opt.textContent = mod;
        modeloEl.appendChild(opt);
      });
    });

    modeloEl.addEventListener("change", () => {
      anioEl.innerHTML = `<option value="" disabled selected hidden>Año</option>`;
      versionEl.innerHTML = `<option value="" disabled selected hidden>Versión</option>`;
      anioEl.disabled = false;
      versionEl.disabled = true;
      submitBtn.disabled = true;

      const anios = Object.keys(data[marcaEl.value][modeloEl.value]);
      anios.forEach(anio => {
        const opt = document.createElement("option");
        opt.value = anio;
        opt.textContent = anio;
        anioEl.appendChild(opt);
      });
    });

    anioEl.addEventListener("change", () => {
      versionEl.innerHTML = `<option value="" disabled selected hidden>Versión</option>`;
      versionEl.disabled = false;
      submitBtn.disabled = true;

      const versiones = Object.keys(
        data[marcaEl.value][modeloEl.value][anioEl.value]
      );
      versiones.forEach(ver => {
        const opt = document.createElement("option");
        opt.value = ver;
        opt.textContent = ver;
        versionEl.appendChild(opt);
      });
    });

    versionEl.addEventListener("change", () => {
      submitBtn.disabled = false;
    });


    form.addEventListener("submit", e => {
      e.preventDefault();
      const marca = marcaEl.value;
      const modelo = modeloEl.value;
      const anio = anioEl.value;
      const version = versionEl.value;

      const specs =
        data[marca]?.[modelo]?.[anio]?.[version] || null;

      if (!specs) {
        alert("No se encontraron especificaciones.");
        return;
      }

      const rodado =
        /^R/i.test(specs.Rin) ? specs.Rin.toUpperCase() : "R" + specs.Rin;

      const params = new URLSearchParams({
        Ancho: specs.Ancho,
        Alto: specs.Alto,
        Rodada: rodado
      });

      const finalURL = `${slugCategoria}?${params.toString()}`;
      window.location.href = finalURL;
    });
  })();
</script>



