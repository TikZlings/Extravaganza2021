# clean up old video
rm almostsilentnight.mp4

# convert to png images
convert -density 240 almostsilentnight.pdf almostsilentnight.png

# convert to video
ffmpeg  -ss 00:00:00 -i almostsilentnight-%d.png -ss 00:00:00 -i Bach_Air_Koopman_Berliner_Philharmoniker.m4a -shortest almostsilentnight_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i almostsilentnight_raw.mp4 -o almostsilentnight.mp4

# clean up
rm almostsilentnight-*.png
rm almostsilentnight_raw.mp4

# view :)
#open almostsilentnight.mp4
