FROM alpine:latest

ENV DOTNET_ROOT $HOME/dotnet
ENV PATH $PATH:$DOTNET_ROOT

RUN apk add --no-cache wget tar icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
RUN wget https://download.visualstudio.microsoft.com/download/pr/6c05ee6b-021f-4502-b98b-459d82a0c215/8f820bbad22b4dde475ec2dbff38737f/dotnet-sdk-3.1.407-linux-musl-x64.tar.gz -O dotnet.tar.gz
RUN mkdir -p "$DOTNET_ROOT"
RUN tar zxf "dotnet.tar.gz" -C "$DOTNET_ROOT"
RUN apk del wget tar
RUN rm "dotnet.tar.gz"

VOLUME /root/env
WORKDIR /root/env