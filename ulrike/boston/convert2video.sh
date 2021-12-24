# clean up old video
rm boston.mp4

# convert to png images
convert -density 240 boston.pdf boston.png

# convert to video
ffmpeg -r 2 -ss 00:00:00 -i boston-%d.png -ss 00:00:18 -i Bee_Gees.m4a -shortest boston_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i boston_raw.mp4 -o boston.mp4

# clean up
rm boston-*.png
rm boston_raw.mp4

# view :)
open boston.mp4
