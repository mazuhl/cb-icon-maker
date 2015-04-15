#!/bin/sh
# ------------------------------------------------------------------
# [mazuhl] cb-icon-maker.sh
#          Make icons for Content Block field types and templates
#
# Step 1: Download icons to images/ from FontAwesome, FlatIcon, etc.
# Step 2: $ cb-icon-maker.sh [--multi]
# Step 3: Check your icons and upload them to /assets/components/contentblocks/img/icons/
# ------------------------------------------------------------------

if [[ $1 == "--multi" ]]
  then
    for f in images/*.png ;
        do 
          # make 2x2 icons
          convert -size 160x160 xc:none images/temp.png;
          convert "$f" -fill white -colorize 40% "$f";    
          composite -gravity NorthEast -geometry +22+20 \( "$f" -resize 50x42 \) images/temp.png images/temp.png;
          composite -gravity NorthWest -geometry +22+20 \( "$f" -resize 50x42 \) images/temp.png images/temp.png;
          composite -gravity SouthEast -geometry +22+25 \( "$f" -resize 50x42 \) images/temp.png images/temp.png;
          composite -gravity SouthWest -geometry +22+25 \( "$f" -resize 50x42 \) images/temp.png images/temp.png;
          composite -gravity  center images/temp.png content-blocks-x2-background-multi.png "$f";
          rm images/temp.png;
          cp -p "$f" "images/$(basename $f .png)@2x.png";
          convert "$f" -resize 80x80 "$f";    
      done
else
  for f in images/*.png ;
    do 
      # make individual icons
      convert "$f" -fill white -colorize 40% "$f";
      composite -gravity center \( "$f" -resize 100x85 \) content-blocks-x2-background.png "$f";
      cp -p "$f" "images/$(basename $f .png)@2x.png";
      convert "$f" -resize 80x80 "$f";
  done
fi
