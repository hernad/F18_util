#!/bin/bash

PROG=F18_sha256sum

GOOS=windows GOARCH=386 go build -o $PROG.exe $PROG.go
