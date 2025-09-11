

<div class="seccionblog">
    <div class="custom-container">

        <div class="secctitles">
            <div class="linetitle"></div>
            <h1 class="maintitle internas"></h1>
            <div class="linetitle"></div>
        </div>

        <div class="contenedor-titulos">
            <h1 class="titlesecc">{{ settings.blog_title }}</h1>
            <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
        </div>

        <p class="parrafo-about">{{ settings.blog_page_description }}</p>

        <div class="cont-elementosblog">
            {% for post in blog.posts %}

                <a href="{{ shop.url }}/blog/posts/{{ post.handle }}" class="itemblog-carrusel listing w-inline-block">
                    <div class="miniatura-entradablog listing" style="background-image: url('{{ post.thumbnail | default('images/placeholder-zar.jpg' | static_url ) }}');" ></div>
                    <div class="itemsblog-listing">
                        <div class="date-blog">{{ post.date | date("d/m/Y") }}</div>
                        <h5 class="titulo-entryblog">{{ post.title }}</h5>
                        <p class="excerptblog-slider">{{ post.summary}}</p>
                        <div class="readmore-btn">Leer más</div>
                    </div>
                </a>

            {% endfor %}
        </div>


    </div>
</div>

<style>

    .post-item.w-layout-layout.stackentry.listing.wf-layout-layout {
        display: flex !important;
        align-items: center;
    }

    .post-item-information {
        width: 50% !important;
    }

    .post-item-image-container.w-layout-cell.imgcellentry,.post-item-image-container.w-layout-cell {
        width: 50% !important;
    }



    .readmore-btn:hover {
        color: black;
    }


</style>