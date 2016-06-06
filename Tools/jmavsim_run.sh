#! /bin/bash

cd "$(dirname "$(readlink -f "$0")")"
cd jMAVSim

ant create_run_jar copy_res
cd out/production
java -Djava.ext.dirs= -jar jmavsim_run.jar -udp 127.0.0.1:14560
