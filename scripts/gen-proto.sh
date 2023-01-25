#!/bin/sh

rm -rf src/grpc_test/xyz
mkdir -p src/grpc_test/xyz
touch src/grpc_test/xyz/__init__.py

python -m grpc_tools.protoc \
    -I grpc_test=protos \
    --python_out=src \
    --pyi_out=src \
    protos/xyz/msg.proto

python -m grpc_tools.protoc \
    -I grpc_test=protos \
    --grpc_python_out=src \
    protos/helloworld.proto
