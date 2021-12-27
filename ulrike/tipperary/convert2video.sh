# clean up old video
rm tipperary.mp4

# convert to png images
convert -density 240 tipperary.pdf tipperary.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i tipperary-%d.png -ss 00:00:27 -i It_s_A_Long_Way_To_Tipperary.m4a -shortest tipperary_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i tipperary_raw.mp4 -o tipperary.mp4

# clean up
rm tipperary-*.png
rm tipperary_raw.mp4

# view :)
open tipperary.mp4
