#!/bin/bash

OS=$(uname -s)
TAG=""

if [ "$OS" = "Darwin" ]; then
  docker build -t "$TAG" .
else
  sudo docker build -t "$TAG"  .
fi