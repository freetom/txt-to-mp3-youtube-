#check deps
if [ ! -x "$(command -v python3)" ];
then echo "Please install python3"; exit 1
fi
if [ ! -x "$(command -v yt-dlp)" ];
then echo "Please install yt-dlp"; exit 1
fi
if [ ! -x "$(command -v ffmpeg)" ];
then echo "Please install ffmpeg"; exit 1
fi

#go go gooo

if [[ "$#" -ne 2 ]]
then echo "$0 input_txt out_folder"; exit 1
fi

if [ ! -f "$1" ]
then echo "Input does not exist"; exit 1
fi

if [ ! -d "$2" ]
then echo "Output directory invalid"; exit 1
fi

echo "Remove empty lines from input..."
sed '/^$/d' "$1" > output.txt
rm "$1"
mv output.txt "$1"

python3 get_video_handles.py "$1" > links
i=0
cat links | while read link; do yt-dlp -x --audio-format mp3 --audio-quality 0  -o "$2/%(title)s.%(ext)s" "$link";  done

echo "$i audio-files/songs added to $2 [!!]"

rm links
#rm *.webm
#rm *.mp4
#rm *.mkv

# ...
