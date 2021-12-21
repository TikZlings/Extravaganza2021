# clean up old video
rm walkuere.mp4

# convert to png images
convert -density 240 walkuere_wrapper.pdf walkuere.png

# convert to video
ffmpeg -r 10 -ss 00:00:00 -i walkuere-%d.png -ss 00:00:26 -i Ride_of_the_Valkyries.m4a -shortest walkuere_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i walkuere_raw.mp4 -o walkuere.mp4

# clean up
rm walkuere-*.png
rm walkuere_raw.mp4

# view :)
#open walkuere.mp4
