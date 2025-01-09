#!/bin/bash

set -e

echo "---------zola version-------------------"
zola --version
echo "---------binaries------------------------"
ls -l /usr/local/cargo/bin/*
echo "---------end-----------------------------"
