<p class="card-text">
    <#assign dateField=DDMFormFieldsReferencesMap['data'].name />
    <#assign date=DDMFormFieldValuesMap[dateField]
        [0].getValue().getString(locale) />
    ${date}
</p>