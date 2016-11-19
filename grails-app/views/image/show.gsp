
<%@ page import="com.demoapp.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-image" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="image.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${imageInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="image.url.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${imageInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.orderNumber}">
				<li class="fieldcontain">
					<span id="orderNumber-label" class="property-label"><g:message code="image.orderNumber.label" default="Order Number" /></span>
					
						<span class="property-value" aria-labelledby="orderNumber-label"><g:fieldValue bean="${imageInstance}" field="orderNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imageInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="image.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${imageInstance?.product?.id}">${imageInstance?.product?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:imageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${imageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
