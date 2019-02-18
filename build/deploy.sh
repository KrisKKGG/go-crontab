#! /bin/bash
cd bin
i=0
for ((i=0;i<3;i++))
do
    nohup ./worker_windows &
done
echo start {$i}worker

