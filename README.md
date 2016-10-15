# txt-to-mp3-youtube-
Given a list of songs, for each one, download the first result on youtube and convert it to mp3

## Description
The script is a web scraper that given a search query for youtube, fetch the link of the first video; then give it to youtube-dl that do all the work. Finally ffmpeg convert it to mp3.
Always download the highest quality video available (to the maximum of 1080p)

## Requirements
*nix system
Install python, pip, ffmpeg then: `pip install youtube-dl`

## Usage
`./run.sh input_playlist output_folder` 

And you'll get all the songs in list in different mp3
