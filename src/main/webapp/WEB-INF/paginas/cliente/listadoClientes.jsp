<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_COL"/>
<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>
                            Listado de clientes
                        </h4>
                        <table class="table table-st">
                            <thead class="thead-dark">
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Saldo</th>
                                    <th></th>
                                </tr>

                            </thead>
                            <tbody>   
                                <c:forEach var="cliente" items="${clientes}" varStatus="status">
                                    <tr>
                                        <td>${status.count}</td>
                                        <td>${cliente.idCliente}</td>
                                        <td>${cliente.nombre} ${cliente.apellido}</td>  
                                        <td> <fmt:formatNumber value="${cliente.saldo}" type="currency" /></td>
                                        <td> <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                                class="btn btn-secondary">Editar</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo total</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h4>
                    </div>
                </div>
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Clientes</h3>
                        <h4 class="display-4">${totalClientes}</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>