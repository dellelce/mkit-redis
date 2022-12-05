FROM ghcr.io/dellelce/mkit-base as build

RUN ./mkit.sh profile=redis /app/redis

FROM alpine:3.8 as target

COPY --from=build /app/redis /app/redis
