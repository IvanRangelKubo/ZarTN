  <div class="seccvideos">
    <div class="custom-container">
      <div id="w-node-_6a35c72b-370b-e50f-7f37-31302a9e5232-73a6d4f2" class="w-layout-layout stackvideos wf-layout-layout">
        
        <div class="w-layout-cell cellinfovid">
          <div class="infovideo">
            <div class="contenedor-titulos left">
              <h6 class="titlesecc white">{{ settings.videos_title }}</h6>
              <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
            </div>
            <p class="txtvideos">{{ settings.videos_description }}</p>
            <a href="{{ settings.videos_link }}" class="vermasbtn w-button">{{ settings.videos_button_name }}</a>
          </div>
        </div>

        <div class="w-layout-cell cellvideo">
          <div style="padding-top:56.17021276595745%" class="w-embed-youtubevideo">
            <iframe src="{{ settings.video_1_link }}" frameborder="0" style="position:absolute;left:0;top:0;width:100%;height:100%;pointer-events:auto" allow="autoplay; encrypted-media" allowfullscreen="" title="{{ settings.video_1_title }}"></iframe>
          </div>
        </div>

        <div class="w-layout-cell cellvideo">
          <div style="padding-top:56.17021276595745%" class="w-embed-youtubevideo">
            <iframe src="{{ settings.video_2_link }}" frameborder="0" style="position:absolute;left:0;top:0;width:100%;height:100%;pointer-events:auto" allow="autoplay; encrypted-media" allowfullscreen="" title="{{ settings.video_2_title }}"></iframe>
          </div>
        </div>

      </div>
    </div>
  </div>

<style>
  a.vermasbtn.w-button {
      border-radius: 0;
  }
</style>