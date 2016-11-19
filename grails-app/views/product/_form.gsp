<%@ page import="com.demoapp.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'availabilty', 'error')} required">
	<label for="availabilty">
		<g:message code="product.availabilty.label" default="Availabilty" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="availabilty" from="${com.demoapp.Availabilty?.values()}" keys="${com.demoapp.Availabilty.values()*.name()}" required="" value="${productInstance?.availabilty?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${com.demoapp.Category.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="product.images.label" default="Images" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productInstance?.images?}" var="i">
    <li><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="image" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'image.label', default: 'Image')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'skuNumber', 'error')} required">
	<label for="skuNumber">
		<g:message code="product.skuNumber.label" default="Sku Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="skuNumber" required="" value="${productInstance?.skuNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'specifications', 'error')} ">
	<label for="specifications">
		<g:message code="product.specifications.label" default="Specifications" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productInstance?.specifications?}" var="s">
    <li><g:link controller="specification" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="specification" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'specification.label', default: 'Specification')])}</g:link>
</li>
</ul>


</div>

