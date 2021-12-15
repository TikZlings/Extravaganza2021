# clean up old video
rm NorthPole.mp4

# convert to png images
convert -density 240 NorthPole.pdf NorthPole.png

# convert to video
ffmpeg  -ss 00:00:00 -i NorthPole-%d.png -ss 00:00:00 -i Santas_First_Rush.m4a -shortest NorthPole_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i NorthPole_raw.mp4 -o NorthPole.mp4

# clean up
rm NorthPole-*.png
rm NorthPole_raw.mp4

# view :)
open NorthPole.mp4
