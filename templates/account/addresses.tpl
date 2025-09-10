{# User addresses listed #}

<section class="seccinterna">
    <div class="ccustom-container">

        <div class="containermicuenta">

            <div class="contenedor-titulos">
                <h1 class="titlesecc">MIS DIRECCIONES</h1>
                <img src="{{ "images/title_decoration.svg" | static_url }}" loading="lazy" alt="" class="icon_titles">
            </div>

            <div class="contbtncuenta">
                <a href="/account" class="btnmicuenta w-button">Regresar</a>
                <a href="{{ store.customer_new_address_url }}" class="btnmicuenta w-button">{{ 'Agregar una nueva dirección' | translate }}</a>
            </div>

            <p class="txtlogin">Estas son las direcciones que has dado de alta para envíos o facturación.</p>

            <div class="container-direcciones" >
                {% for address in customer.addresses %}
                    <div class="direccion-container">

                        <div class="conticons-editadress w-clearfix">
                            <a href="{{ store.customer_address_url(address) }}" class="btndirecciones editar w-button">{{ 'Editar' | translate }}</a>
                        </div>
                        
                        <div class="infodireccion">{{ address | format_address }}</div>

                    </div>
                {% endfor %}
            </div>

            

        </div>

    </div>
</section>

<style>

    .txtlogin {
        text-align: center;
    }

</style>