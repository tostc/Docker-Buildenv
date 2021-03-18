FROM alpine:latest

ENV DOTNET_ROOT $HOME/dotnet
ENV PATH $PATH:$DOTNET_ROOT

RUN apk add --no-cache wget tar icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib
RUN wget https://download.visualstudio.microsoft.com/download/pr/ae5c17cb-7e03-4564-85cc-c53abc3827b6/30b8f35934437db6f4b5a9624faaf872/dotnet-sdk-6.0.100-preview.2.21155.3-linux-musl-x64.tar.gz -O dotnet.tar.gz
RUN mkdir -p "$DOTNET_ROOT"
RUN tar zxf "dotnet.tar.gz" -C "$DOTNET_ROOT"
RUN apk del wget tar
RUN rm "dotnet.tar.gz"

VOLUME /root/env
WORKDIR /root/env