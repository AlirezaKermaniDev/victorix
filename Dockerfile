ARG WORKDIR=/app

FROM mobiledevops/flutter-sdk-image:3.10.1 AS FLUTTER_BUILDER

ARG WORKDIR


ENV HTTP_TIMEOUT=5000
RUN flutter precache

COPY . ${WORKDIR}
WORKDIR ${WORKDIR}

RUN flutter build web


FROM nginx:latest

ARG WORKDIR
EXPOSE 80
COPY --from=FLUTTER_BUILDER ${WORKDIR}/build/web /usr/share/nginx/html
