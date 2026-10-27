#!/bin/sh
# Construye la web: descarga una versión fija del editor de código abierto, lo compila
# y copia encima nuestros archivos de la carpeta overlay/.
# Resultado final en: editor/dist
set -e

UPSTREAM_REPO="ranuts/document"
UPSTREAM_SHA="2c26ad7aafb0978162f2d3af1aba0806ed8749cc"

rm -rf editor
git init editor
cd editor
git remote add origin "https://github.com/${UPSTREAM_REPO}.git"
git fetch --depth 1 origin "${UPSTREAM_SHA}"
git checkout FETCH_HEAD

corepack enable
pnpm install --frozen-lockfile
BUILD_REVISION="${UPSTREAM_SHA}" pnpm run build

cd ..
if [ -d overlay ]; then
  cp -r overlay/. editor/dist/
fi
echo "Listo: editor/dist"
