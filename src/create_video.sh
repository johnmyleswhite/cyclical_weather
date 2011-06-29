rm video/standard_temperature.mp4
rm video/polar_temperature.mp4
ffmpeg -r 20 -i graphs/standard_temperature_%d.png -b 800k video/standard_temperature.mp4
ffmpeg -r 20 -i graphs/polar_temperature_%d.png -b 800k video/polar_temperature.mp4
rm graphs/standard_temperature_*.png
rm graphs/polar_temperature_*.png
