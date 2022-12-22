FROM alpine:3.17.0
CMD ["id"]

ARG DOCKER_UID
ARG DOCKER_GID

RUN addgroup -g $DOCKER_GID matchinguser
RUN adduser -u $DOCKER_UID -G matchinguser -D matchinguser

USER $DOCKER_UID:$DOCKER_GID
