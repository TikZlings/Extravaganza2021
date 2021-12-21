# clean up old video
rm BrazilianFriend.mp4

# convert to png images
convert -density 240 BrazilianFriend.pdf BrazilianFriend.png

# convert to video
ffmpeg  -ss 00:00:00 -i BrazilianFriend-%d.png -ss 00:02:09 -i Simon_Garfunkel.m4a -shortest BrazilianFriend_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i BrazilianFriend_raw.mp4 -o BrazilianFriend.mp4

# clean up
rm BrazilianFriend-*.png
rm BrazilianFriend_raw.mp4

# view :)
open BrazilianFriend.mp4
