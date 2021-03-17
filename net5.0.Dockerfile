FROM alpine:latest

ENV DOTNET_ROOT $HOME/dotnet
ENV PATH $PATH:$DOTNET_ROOT

RUN apk add --no-cache wget tar icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
RUN wget https://download.visualstudio.microsoft.com/download/pr/9d29393e-788a-4435-a7b9-1f52268ca194/bd43949f39d6a5e85357daba91d99831/dotnet-sdk-5.0.201-linux-musl-x64.tar.gz -O dotnet.tar.gz
RUN mkdir -p "$DOTNET_ROOT"
RUN tar zxf "dotnet.tar.gz" -C "$DOTNET_ROOT"
RUN apk del wget tar
RUN rm "dotnet.tar.gz"

VOLUME /root/env
WORKDIR /root/env