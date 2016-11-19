<%@ page import="com.demoapp.Specification" %>



<div class="fieldcontain ${hasErrors(bean: specificationInstance, field: 'key', 'error')} required">
	<label for="key">
		<g:message code="specification.key.label" default="Key" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="key" required="" value="${specificationInstance?.key}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specificationInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="specification.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${com.demoapp.Product.list()}" optionKey="id" required="" value="${specificationInstance?.product?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: specificationInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="specification.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="value" required="" value="${specificationInstance?.value}"/>

</div>

