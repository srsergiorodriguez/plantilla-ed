# Plantilla Ed en Español

## Introducción

Esta es una plantilla con una versión en español del sistema para ediciones mínimas llamado Ed.

Diferencias con la versión original:

- Puede usarse en un contenedor de Docker, lo que evita la carga instalar Ruby y Jekyll en el computador globalmente
- Tiene, en lo posible, la interfaz traducida en español latinoamericano, con tintes colombianos. Útil para proyectos situados de humanidades digitales
- Tiene incorporado un plugin para mostrar textos codificados en TEI usando HTML a través de la librería CETEIcean

## Instrucciones

### 1. Instalar Docker

Instalar docker

### 2. Clonar este repositorio

Clonar este repositorio, la carpeta clonada será lo que denominaremos la carpeta del proyecto.

### 3. Construir el contenedor de base de Docker

Correr este código para construir el contenedor de docker

`docker build -t minicomp/ed .`

### 4. Iniciar el contenedor

Iniciar el contenedor:

En Mac/Linux:

`docker run -it --rm -v ${PWD}:/ed --name ed -p 4000:4000 minicomp/ed bash`

En Windows:

`docker run -it --rm -v %cd%:/ed --name ed -p 4000:4000 minicomp/ed bash`

OJO: En caso de que esto no funcione, es necesario reemplazar `%cd%` por la ruta (path) de la carpeta del proyecto. Por ejemplo, un path podría ser `user/documents/plantilla-ed`.

### 5. Editar el contenido del sitio

#### 5.1. Versiones transcritas

Para mostrar textos transcritos puedes usar cualquiera de las layouts por defecto de Ed. que incluyen versiones apra drama, narrativa y poesía. Revisa la carpeta `_layouts` para más información.

#### 5.2. Versiones anotadas con TEI

Es posible mostrar textos anotados en TEI usando el layout tei, en la carpeta `_layouts`. Este layout usa CETEIean para convertir el xml anotado en TEI en elementos de HTML.

#### 5.3. Versiones facsimilares

Revisa la documentación sobre incluir galerías en otras opciones para más información.

### 7. Probar el sitio

`bundle exec jekyll serve --host 0.0.0.0 --livereload`

### 8. Publicar el sitio

Antes de publicar el sitio, es necesario crear una versión (o build) nuevo en caso de que se hayan cambios posteriores a las pruebas. Por eso puede ser necesario correr el comando `bundle exec jekyll serve --host 0.0.0.0`. Luego de correrlo y de que el build se haga exitosamente puedes presionar ctl/cmd + c para salir del servidor.


## Otras opciones

### Incluir el buscador

Puedes incluir el buscador poniendo este include en cualquiera de las páginas `{% include buscador.html %}`

### Incluir galería

Este include es útil para añadir una galería de imágenes sencilla en cualquier página. Puede servir para crear una galería de versiones facsimilares de un documento. Reemplaza el argumento path por la fracción de la ruta en la carpeta assets en donde se encuentra el grupo de imágenes.

`{% include galeria.html path="img/" %}`

<!-- ### Anotar con hypotesis -->