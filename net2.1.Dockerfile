FROM alpine:latest

ENV DOTNET_ROOT $HOME/dotnet
ENV PATH $PATH:$DOTNET_ROOT

RUN apk add --no-cache wget tar icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
RUN wget https://download.visualstudio.microsoft.com/download/pr/a42362d9-eeb5-408e-8ed1-75a1ad13dff6/cc83c55a8839033dbd90ecf0c1d38841/dotnet-sdk-2.1.814-linux-musl-x64.tar.gz -O dotnet.tar.gz
RUN mkdir -p "$DOTNET_ROOT"
RUN tar zxf "dotnet.tar.gz" -C "$DOTNET_ROOT"
RUN apk del wget tar
RUN rm "dotnet.tar.gz"

VOLUME /root/env
WORKDIR /root/env