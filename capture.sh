#! /bin/bash
n=0;
mkdir temp;
cd temp;
while true;
	do
		n=$((n+1));
		printf "\r";
		printf "Saving frame %04d" $n;
		TIME=$(date +"%T");
		sleep 5s &
		ffmpeg -hide_banner -loglevel error -f video4linux2 -s 1920x1080 -i /dev/video0 -ss 0:0:2 -frames 1 -vf "drawtext=fontsize=30:fontcolor=red:text=\'$TIME\'" ./`printf frame%04d $n`.png;
done