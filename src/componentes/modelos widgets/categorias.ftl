<#assign hasCategories=false />
<#if entries?has_content>
    <@clay.row>
        <#list entries as entry>
            <#assign categories=entry.getCategories() />
            <#if categories?has_content>
                <#assign hasCategories=true />
                <@clay.col m="3">
                    <div class="results-header">
                        <h3>
                            Seleção de Novidades
                        </h3>
                    </div>
                    <@displayCategories categories=categories />
                </@clay.col>
            </#if>
        </#list>
        <#if !hasCategories>
            ${renderRequest.setAttribute("PORTLET_CONFIGURATOR_VISIBILITY", true)}
            <div class="alert alert-info w-100">
                <@liferay_ui.message key="there-are-no-categories" />
            </div>
        </#if>
    </@clay.row>
</#if>
<#macro displayCategories categories>
    <#assign categoryColors={ "História" : "#baffc9" , "Conjuntos" : "#ffdfba" , "Mídia" : "#bae1ff" , "Ação" : "#dbcdf0" , "Playground" : "#f2c6de" } />
    <#if categories?has_content>
        <div class="d-flex flex-row">
            <#list categories as category>
                <div>
                    <#assign categoryURL=renderResponse.createRenderURL() />
                    <#assign categoryName=category.getName()?trim />
                    <#assign categoryColor=categoryColors[categoryName]!'' />
                    ${categoryURL.setParameter("resetCur", "true")}
                    ${categoryURL.setParameter("categoryId", category.getCategoryId()?string)}
                    <a class="btn" href="${categoryURL}" style="background-color: ${categoryColor}; color: black;">
                        ${category.getName()}
                    </a>
                    <#if serviceLocator??>
                        <#assign assetCategoryService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryService")
                            childCategories=assetCategoryService.getChildCategories(category.getCategoryId()) />
                        <@displayCategories categories=childCategories />
                    </#if>
                </div>
            </#list>
        </div>
    </#if>
</#macro>