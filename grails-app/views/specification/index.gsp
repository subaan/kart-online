
<%@ page import="com.demoapp.Specification" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'specification.label', default: 'Specification')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-specification" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-specification" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="key" title="${message(code: 'specification.key.label', default: 'Key')}" />
					
						<th><g:message code="specification.product.label" default="Product" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'specification.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${specificationInstanceList}" status="i" var="specificationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${specificationInstance.id}">${fieldValue(bean: specificationInstance, field: "key")}</g:link></td>
					
						<td>${fieldValue(bean: specificationInstance, field: "product")}</td>
					
						<td>${fieldValue(bean: specificationInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${specificationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
