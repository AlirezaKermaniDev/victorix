ARG WORKDIR=/app

FROM fischerscode/flutter:latest AS FLUTTER_BUILDER

ARG WORKDIR


ENV HTTP_TIMEOUT=5000
RUN flutter precache

COPY . ${WORKDIR}
WORKDIR ${WORKDIR}

RUN flutter clean
RUN flutter pub get
RUN flutter build web


FROM nginx:latest

ARG WORKDIR
EXPOSE 80
COPY --from=FLUTTER_BUILDER ${WORKDIR}/build/web /usr/share/nginx/html
