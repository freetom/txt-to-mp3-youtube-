# txt-to-mp3-youtube-
Given a list of songs download the first result on youtube, convert it to mp3 and put it in output folder

## Description
The script is a web scraper that given a search query for youtube, fetch the link of the first video; then give it to youtube-dl that do all the work. Finally ffmpeg convert it to mp3.
Always download the highest quality video available (to the maximum of 1080p)

## Requirements
Install python, pip, ffmpeg then: `pip install youtube-dl`

## Usage
`./run.sh input_playlist output_folder` 
