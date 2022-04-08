# Timelaspe for Raspberry Pi/linux
These scripts allow for easy capture of timelapses using a Raspberry Pi and a regular USB webcam (not the camera with the special connector for the RPI).

[ffmpeg](http://ffmpeg.org/) must be installed for these scripts to work.

These were created as a way to monitor sun levels in our garden, so there is a red timestamp in the top corner. Remove the -vf "drawtext..." option to remove the timestamp

./capture.sh to start timelapse
./create.sh to combine image sequence into mp4 video
