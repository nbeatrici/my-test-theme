<div class="bannerimg">
    <div class="row">
        <div class="col-md-5 d-md-flex flex-column justify-content-center align-items-start text-center text-md-left mb-4 mb-md-0">
            <#if (titulo.getData())??>
                <h1 class="mb-4">
                    ${titulo.getData()}
                </h1>
            </#if>
            <#if (subtitulo.getData())??>
                <p class="mb-5">
                    ${subtitulo.getData()}
                </p>
            </#if>
            <#if (botao.getData())??>
                <a href="#" class="btn-primary py-3 px-5 font-weight-bold d-inline-block">
                    ${botao.getData()}
                </a>
            </#if>
        </div>
        <div class="col-md-7 d-flex justify-content-center">
            <#if (imagemdesktop.getData())?? && imagemdesktop.getData() !="" && (imagemmobile.getData())?? && imagemmobile.getData() !="" && (textoalternativo.getData())??>
                <img srcset="${imagemmobile.getData()} 800w,	${imagemdesktop.getData()} 1400w" sizes="(max-width: 768px) 768px, 1400px" alt="${textoalternativo.getData()}" />
            </#if>
        </div>
    </div>
</div>