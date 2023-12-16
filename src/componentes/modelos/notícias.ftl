<div class="container">
    <h2 class="font-weight-bold lead">
        <#if (titulo.getData())??>
            ${titulo.getData()}
        </#if>
    </h2>
    <div class="content">
        <div class="content-image">
            <#if (imagem.getData())?? && imagem.getData() !="">
                <img alt="${imagem.getAttribute("alt")}" data-fileentryid="${imagem.getAttribute("fileEntryId")}" src="${imagem.getData()}" />
            </#if>
        </div>
        <div class="content-text">
            <#if (conteudo.getData())??>
                ${conteudo.getData()}
            </#if>
        </div>
        <div class="">
            <#if AssetCategoryLocalService??>
                <#list AssetCategoryLocalService.getEntryCategories(curEntry.getEntryId()) as entryCat>
                    <p>
                        ${entryCat.getName()}
                    </p>
                </#list>
            </#if>
        </div>
    </div>
</div>