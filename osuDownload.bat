@echo off
set /p "video=URL: "
yt-dlp --embed-thumbnail --add-metadata --write-thumbnail --convert-thumbnails png --merge-output-format mp4 -o "osuvideo/%%(title)s/video.%%(ext)s" -o "thumbnail:osuvideo/%%(title)s/video.%%(ext)s" %video%

yt-dlp --embed-thumbnail --add-metadata  --extract-audio --audio-format mp3 -o "osuvideo/%%(title)s/audio.%%(ext)s" %video%

ffmpeg -i video.mp4 -vf "scale=1280:720" -an okvideo.mp4