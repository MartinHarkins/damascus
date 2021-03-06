<#include "./license.ftl">
<#include "./valuables.ftl">
<#assign createPath = "${webModulePath}/src/main/java/${packagePath}/web/constants/${capFirstModel}WebKeys.java">
<#assign skipTemplate = !generateWeb>
package ${packageName}.web.constants;

/**
* @author Yasuyuki Takeo
* @author ${damascus_author}
*/
public class ${capFirstModel}WebKeys {
    public static final String VIEW_JSP = "/${snakecaseModel}/view.jsp";
    public static final String VIEW_RECORD_JSP = "/${snakecaseModel}/view_record.jsp";
    public static final String EDIT_JSP = "/${snakecaseModel}/edit.jsp";

    public static final String ${uppercaseModel}_ITEM_SELECTOR_HELPER =
        "${uppercaseModel}_ITEM_SELECTOR_HELPER";

    public static final String ${uppercaseModel}_VIEW_HELPER =
        "${uppercaseModel}_VIEW_HELPER";
        
<#list application.fields as field >
	<#if field.validation?? && field.validation.className??>
		<#assign uppercaseValidationModel = "${field.validation.className?upper_case}">
		public static final String ${uppercaseValidationModel}_LOCAL_SERVICE =
            "${uppercaseValidationModel}_LOCAL_SERVICE";		
	</#if>
</#list>        
}
