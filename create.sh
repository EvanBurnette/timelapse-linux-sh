#! /bin/bash

ffmpeg -framerate 5 -i ./temp/frame%04d.png timelapse_$(date +"%m_%d_%y_%k%M").mp4
