#! /bin/bash

# set parameter
gopath=/e/DeveloperAdvance/Project/golang/go-crontab-master/go-crontab/gopath
#buildOS=windows
buildOS=linux

# build master
cd ${gopath}/src/github.com/KrisKKGG/go-crontab/master/main
cp master.json ../../build/bin
cp -r webroot ../../build/bin
env GOOS=${buildOS} GOARCH=amd64 go build -o ../../build/bin/master_${buildOS}
echo build master success!

# build worker
cd ${gopath}/src/github.com/KrisKKGG/go-crontab/worker/main
cp worker.json ../../build/bin
env GOOS=${buildOS} GOARCH=amd64 go build -o ../../build/bin/worker_${buildOS}
echo build worker success!

# tar files
cd ${gopath}/src/github.com/KrisKKGG/go-crontab/build
tar -zcvf crontab.tar.gz bin
echo tar success!