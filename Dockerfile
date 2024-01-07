FROM titom73/mkdocs as contentBaseImage

WORKDIR /

COPY mkdocs.yml /

COPY . /docs

RUN mkdocs build

FROM nginx

COPY --from=contentBaseImage /site /usr/share/nginx/html
