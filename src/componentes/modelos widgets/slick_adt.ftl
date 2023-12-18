<#if entries?has_content>
    <div class="container">
        <div class="responsive row">
            <#list entries as entry>
                <#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
                <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <div class="col-md-12">
                    <a href="${viewURL}" target="_blank">
                        <div class="card">
                            <#assign imgField=DDMFormFieldsReferencesMap['imagem'].name />
                            <#assign imgValue=DDMFormFieldValuesMap[imgField]
                                [0].getValue().getString(locale) />
                            <#assign imgTop=imgValue?eval />
                            <img class="card-img-top" src="${imgTop.url}">
                            <div class="card-body">
                                <h5 class="card-title font-weight-bold">
                                    <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                    <#assign title=DDMFormFieldValuesMap[titleField]
                                        [0].getValue().getString(locale) />
                                    ${title}
                                </h5>
                                <div>
                                    <#list AssetCategoryLocalService.getEntryCategories(entry.getEntryId()) as entryCat>
                                        <p class="tag m-0 font-weight-light">
                                            ${entryCat.getName()}
                                        </p>
                                    </#list>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </#list>
        </div>
    </div>
</#if>