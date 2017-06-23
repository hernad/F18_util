#!/bin/bash

PROG=${1:-F18_sha256sum}

export GOOS=windows
export GOARCH=386 
go build -o $PROG.exe $PROG.go
CMD="zip ${PROG}_${GOOS}_${GOARCH}.zip $PROG.exe"
echo $CMD
eval $CMD

export GOOS=darwin 
export GOARCH=amd64

go build -o $PROG $PROG.go
CMD="zip ${PROG}_${GOOS}_${GOARCH}.zip $PROG"
echo $CMD
eval $CMD

export GOOS=linux
export GOARCH=386 
go build -o $PROG $PROG.go
CMD="zip ${PROG}_${GOOS}_${GOARCH}.zip $PROG"
echo $CMD
eval $CMD

