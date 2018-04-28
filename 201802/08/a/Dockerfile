FROM alpine:edge
ADD Ave.class Ave.class
COPY ./ld-musl-x86_64.path /etc/ld-musl-x86_64.path

RUN apk --update add openjdk8-jre

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "Ave"]

