ARG BASE_IMAGE=nginx:1.29.5-alpine3.23
ARG PORT=80

FROM $BASE_IMAGE

ARG PORT

ENV PORT=$PORT

COPY /dist /usr/share/nginx/html
COPY /server/nginx /etc/nginx/templates
