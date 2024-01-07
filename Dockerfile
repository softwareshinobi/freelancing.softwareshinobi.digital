FROM titom73/mkdocs  as builder

# Install MkDocs and dependencies
#RUN pip install mkdocs mkdocs-material

## Create working directory

WORKDIR /

## Copy project files

COPY mkdocs.yml /

COPY . /docs

RUN mkdocs build

RUN pwd

RUN ls -lha .



FROM nginx

COPY --from=builder /site /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
