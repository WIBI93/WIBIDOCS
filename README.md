# WIBIDOCS

App web personal con editores de texto, hojas de cálculo y presentaciones compatibles con archivos de Microsoft Office (.docx, .xlsx, .pptx), pensada para usarse en tablet con un aspecto lo más parecido posible al de Office en PC.

## Cómo funciona

El repositorio no guarda el editor. En cada publicación, GitHub Actions descarga una versión fija del proyecto de código abierto [ranuts/document](https://github.com/ranuts/document) (basado en el motor de ONLYOFFICE, que se ejecuta en el navegador sin servidor), lo construye y lo publica en GitHub Pages.

- `.github/workflows/pages.yml`: descarga, construye y publica.
- `overlay/`: archivos propios que se copian encima de la web construida (pantalla de inicio, ajustes de aspecto para tablet).

## Licencia

El editor de ranuts/document se distribuye bajo AGPL-3.0, y el motor de ONLYOFFICE incluido tiene sus propias licencias. Este repositorio es público y contiene las modificaciones propias.
