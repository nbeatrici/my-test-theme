<div class="container">
    <div class="mx-n5">
        <div class="d-flex align-items-center">
            <h1>
                <#if (titulo.getData())??>
                    ${titulo.getData()}
                </#if>
            </h1>
            <div>
                <#if (imagem.getData())?? && imagem.getData() !="">
                    <img class="img-fluid rounded" alt="${imagem.getAttribute("alt")}" data-fileentryid="${imagem.getAttribute("fileEntryId")}" src="${imagem.getData()}" />
                </#if>
            </div>
        </div>
        <div class="pt-4 px-n5">
            <p>
                <#if (conteudo.getData())??>
                    ${conteudo.getData()}
                </#if>
            </p>
        </div>
    </div>
</div>