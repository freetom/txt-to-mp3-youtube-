# txt-to-mp3-youtube-
Given a txt file, use the content of each line to make a search on Youtube, download the first result and convert it to mp3

## Description
The script is a web scraper that given a search query for Youtube, fetch the link of the first video. Then the script gives the link to youtube-dl that downloads the video. Finally ffmpeg convert the video to an mp3 file.
Always download the highest quality video available (to the maximum of 1080p)

## Requirements
*nix system
Install python, pip, ffmpeg then: `pip install youtube-dl`

## Usage
`./run.sh input_playlist output_folder` 

And you'll get all the songs in list in different mp3 files in the output_folder
