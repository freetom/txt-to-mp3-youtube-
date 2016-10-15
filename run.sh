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

python get_video_handles.py "$1" > links
i=0
cat links | while read CMD; do youtube-dl -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' "$CMD";  done
for j in *.mkv *.webm *.mp4; do
	ffmpeg -i "$j" "$2/$j.mp3";
	i=$((i+1))
done

echo "$i mp3 added to $2 [!!]"
exit 0
rm links
rm *.webm
rm *.mp4
rm *.mkv

# ...
