# clean up old video
rm granfinale.mp4

# convert to png images
convert -density 240 granfinale.pdf granfinale.png

# convert to video
ffmpeg -r 0.5 -ss 00:00:00 -i granfinale-%d.png -ss 00:00:47 -i ABBA.m4a -shortest granfinale_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i granfinale_raw.mp4 -o granfinale.mp4

# clean up
rm granfinale-*.png
rm granfinale_raw.mp4

# view :)
open granfinale.mp4
