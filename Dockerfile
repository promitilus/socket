FROM alpine

RUN apk --update add bash build-base

COPY . /src

WORKDIR /src

RUN make SWITCHES=-static
