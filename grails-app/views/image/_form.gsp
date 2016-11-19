<%@ page import="com.demoapp.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="image.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${imageInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="image.url.label" default="Image Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${imageInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'orderNumber', 'error')} required">
	<label for="orderNumber">
		<g:message code="image.orderNumber.label" default="Order Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orderNumber" type="number" value="${imageInstance.orderNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="image.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${com.demoapp.Product.list()}" optionKey="id" required="" value="${imageInstance?.product?.id}" class="many-to-one"/>

</div>

