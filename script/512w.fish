#!/usr/bin/env fish
cd ./img
for file in *
  convert $file -resize 512x\> ../img-512w/(path change-extension -- "" $file)-512w(path extension $file)
end
