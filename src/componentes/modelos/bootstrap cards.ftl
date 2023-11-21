<div class="container bootstrap-grid-selector">
    <div class="row">
        <#if group.getSiblings()?has_content>
            <#list group.getSiblings() as cur_group>
                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <#if (cur_group.image.getData())?? && cur_group.image.getData() !="">
                            <img alt="${cur_group.image.getAttribute("alt")}" data-fileentryid="${cur_group.image.getAttribute("fileEntryId")}" src="${cur_group.image.getData()}" class="img-fluid bootstrap-button-color" />
                        </#if>
                        <div class="card-body">
                            <#if (cur_group.text.getData())??>
                                <h5 class="card-title">
                                    ${cur_group.text.getData()}
                                </h5>
                            </#if>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <div class="mt-auto">
                                <a href="#" class="btn btn-primary btn-block bootstrap-button-color">Acessar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>