<#if entries?has_content>
    <div class="container">
        <div class="responsive row">
            <#list entries as entry>
                <#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, entry, !stringUtil.equals(assetLinkBehavior, "showFullContent" )) />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <#assign categoryColors={ "História" : "#baffc9" , "Conjuntos" : "#ffdfba" , "Mídia" : "#bae1ff" , "Ação" : "#dbcdf0" , "Playground" : "#f2c6de" } />
                <div class="col-sm-12">
                    <div class="card">
                        <#assign imgField=DDMFormFieldsReferencesMap['imagem'].name />
                        <#assign imgValue=DDMFormFieldValuesMap[imgField]
                            [0].getValue().getString(locale) />
                        <#assign imgTop=imgValue?eval />
                        <img class="card-img-top image" src="${imgTop.url}">
                        <div class="card-body">
                            <a href="${viewURL}">
                                <h5 class="card-title font-weight-bold">
                                    <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                    <#assign title=DDMFormFieldValuesMap[titleField]
                                        [0].getValue().getString(locale) />
                                    ${title}
                                </h5>
                            </a>
                            <div class="cats d-flex mt-1">
                                <#list AssetCategoryLocalService.getEntryCategories(entry.getEntryId()) as entryCat>
                                    <#assign categoryName=entryCat.getName()?trim />
                                    <#assign categoryColor=categoryColors[categoryName]!'' />
                                    <p class="cats m-0" style="background-color: ${categoryColor}; color: black;">
                                        ${entryCat.getName()}
                                    </p>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</#if>