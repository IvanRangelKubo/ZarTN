<div class="entradablog">
    <div class="custom-container">
        <div class="entryblogcont">

            <div class="contenedor-titulos">
                <h1 class="titlesecc">{{ post.title }}</h1>
                <img src="{{ "images/title_decoration.svg" | static_url }}" class="icon_titles">
            </div>

            <div class="date-blog detalle">
                {{ post.date|date("d/m/Y") }}
            </div>  
                
            {{ component(
                'blog/blog-post-content', {
                    image_lazy: true,
                    image_lazy_js: true,
                    post_content_classes: {
                        date: 'hide',
                        image: 'picblog-entry',
                        content: 'parrafoblog',
                    },
                })
            }}


            <div class="containershare">

                <div class="sharetxt">Compartir</div>
                <div class="contsocial-media">
                    <a data-network="facebook" href="#" class="st-custom-button-2 w-inline-block">
                        <img alt="Facebook" src="https://cdn.prod.website-files.com/68508ff8283fdd4d623957a4/6862e801ad3d2280a042f02a_socialicon%20copy.svg" class="iconshare-social">
                    </a>
                    <a data-network="whatsapp" href="#" class="st-custom-button-2 w-inline-block">
                        <img alt="Whatsapp" src="{{ "images/socialicon-copy-3.svg" | static_url }}" class="iconshare-social">
                    </a>
                    <a data-network="telegram" href="#" class="st-custom-button-2 w-inline-block">
                        <img alt="Telegram" src="{{ "images/socialicon-copy-5.svg" | static_url }}" class="iconshare-social">
                    </a>
                    <a data-network="messenger" href="#" class="st-custom-button-2 w-inline-block">
                        <img alt="Messenger" src="{{ "images/socialicon-copy-4.svg" | static_url }}" class="iconshare-social">
                    </a>
                    <a data-network="twitter" href="#" class="st-custom-button-2 w-inline-block">
                        <img alt="Twitter" src="{{ "images/icon_twitter.svg" | static_url }}" class="iconshare-social">
                    </a>
                    <a data-network="copy" href="#" class="st-custom-button-2 w-inline-block">
                        <img alt="Compartir" src="{{ "images/socialicon.svg" | static_url }}" class="iconshare-social">
                    </a>
                </div>

            </div>

            <a href="/blog/" class="ctaback w-button">Regresar al blog</a>

        </div>
    </div>
</div>

<style>

    .hide{
        display: none !important;
    }

    .post-content, .post-content p{
        font-size: 14px !important;
    }

    .post-content.parrafoblog > .compartirblog {
        display: none !important;
    }

    .picblog-entry {
        width: 40%;
    }

    a.ctaback.w-button {
        border-radius: 0;
    }

    @media screen and (max-width: 479px) {
        .picblog-entry {
            width: 100%;
        }
    }

</style>
