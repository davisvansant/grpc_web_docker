FROM scratch

ADD focal-base-amd64.tar.gz /
COPY protoc-3.13.0-linux-x86_64.zip /protoc-3.13.0-linux-x86_64.zip
COPY protoc-gen-grpc-web-1.2.1-linux-x86_64 /usr/local/bin/protoc-gen-grpc-web
COPY unzip_6.0-25ubuntu1_amd64.deb /unzip_6.0-25ubuntu1_amd64.deb

RUN dpkg -i unzip_6.0-25ubuntu1_amd64.deb
RUN unzip protoc-3.13.0-linux-x86_64.zip
RUN chmod +x /usr/local/bin/protoc-gen-grpc-web
