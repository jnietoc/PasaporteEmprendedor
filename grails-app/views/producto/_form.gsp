<%@ page import="org.apache.commons.lang.RandomStringUtils; com.pasaporte.emprendedor.compras.Producto" %>
<div class="input-group-lg" style=" margin-left: 30%;margin-top: 3%">

    <div class="text-field ${hasErrors(bean: productoInstance, field: 'codigo', 'error')} required">
        <label for="codigo" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.codigo.label" default="Codigo"/>

        </label>
        <g:textField name="codigo" required="" value="${productoInstance?.codigo}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
        <label for="nombre" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.nombre.label" default="Nombre"/>

        </label>
        <g:textField name="nombre" maxlength="30" required="" value="${productoInstance?.nombre}"/>

    </div>

    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'marca', 'error')} required">
        <label for="marca" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.marca.label" default="Marca"/>

        </label>
        <g:textField name="marca" maxlength="30" required="" value="${productoInstance?.marca}"/>

    </div>

    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} required">
        <label for="categoria" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.categoria.label" default="Categoria"/>

        </label>
        <g:select id="categoria" name="categoria.id" from="${com.pasaporte.emprendedor.compras.Categoria.list()}"
                  optionKey="id" required="" value="${productoInstance?.categoria?.id}" class="many-to-one"
                  onchange="${remoteFunction([controller: 'categoria', action: 'findSubcategoriasForCategoria', params: '\'categoria.id=\' + this.value', update: 'subcategoriasDiv'])}"
                  noSelection="${['null': 'Selecciona Uno...']}"></g:select>

    </div>

    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'subcategoria', 'error')} required">
        <label for="subcategoria" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.subcategoria.label" default="Subcategoria"/>

        </label>
        <span id="subcategoriasDiv">
            <g:select id="subcategoria" name="subcategoria.id"
                      from="${com.pasaporte.emprendedor.compras.Subcategoria.list()}" optionKey="id" required=""
                      value="${productoInstance?.subcategoria?.id}" class="many-to-one"/>
        </span>
    </div>

    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'color', 'error')} required">
        <label for="color" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.color.label" default="Color"/>
        </label>
        <g:select id="color" name="color.id" from="${com.pasaporte.emprendedor.compras.Color.list()}" optionKey="id"
                  required="" value="${productoInstance?.color?.id}" class="many-to-one"/>

    </div>


    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precio', 'error')} required">
        <label for="precio" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.precio.label" default="Precio"/>

        </label>
        <g:field name="precio" value="${fieldValue(bean: productoInstance, field: 'precio')}" required="" type="value"/>

    </div>

    <div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'imagen', 'error')} required">
        <label for="urlImagenes" class="etiquetasProducto">
            <span class="required-indicator">*</span>
            <g:message code="producto.imagen.label" default="Imagen"/>

        </label>
        <span>
            <uploadr:add name="uploadFile" path="web-app/imagenes-productos/${productoInstance.codigo}"
                         direction="up" maxVisible="8"
                         unsupported="${createLink(plugin: 'uploadr', controller: 'upload', action: 'warning')}"
                         rating="false" voting="false" colorPicker="false" noSound="true" maxSize="20004800"
                         allowedExtensions="jpg,png"/>
            <input type="hidden" name="urlImagenes" value="imagenes-productos/${productoInstance.codigo}"
                   required=""/>
        </span>
    </div>


    <div hidden="hidden" class="proprogress-bar progress-bar-striped active">
        <div class="active">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="5"
                 aria-valuemax="100" style="width: 20% ">
                <span class="sr-only">45% Complete</span>
            </div>
        </div>

        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="5" aria-valuemin="0"
                 aria-valuemax="100" style="width: 15%">
                <span class="sr-only">45% Complete</span>
            </div>
        </div>

        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="15"
                 aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                <span class="sr-only">45% Complete</span>
            </div>
        </div>

        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="30"
                 aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                <span class="sr-only">45% Complete</span>
            </div>
        </div>

        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45"
                 aria-valuemin="0" aria-valuemax="100" style="width: 55%">
                <span class="sr-only">55% Complete</span>
            </div>
        </div>

        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="55"
                 aria-valuemin="0" aria-valuemax="100" style="width: 65%">
                <span class="sr-only">65% Complete</span>
            </div>
        </div>

        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="65"
                 aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                <span class="sr-only">70% Complete</span>
            </div>
        </div>

    </div>

</div>
