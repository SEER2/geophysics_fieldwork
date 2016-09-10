#!/bin/sh

gmt blockmean b_bisect_xyz_6.txt -I1 -R-16/20/-52/38 > d.xyz
gmt surface -I1 -R-16/19/-52/38 d.xyz -Gd.grd
gmt psbasemap -R-16/19/-52/38 -JX3i/5i -Ba10f1/a10f1:."Bedrock Bisect":WSnE -K > bedrock_bisect_AB_6.ps
gmt grdcontour d.grd -J -B -C5 -A10 -O >> bedrock_bisect_AB_6.ps
gmt psconvert -Tj -A -Fbedrock_bisect_AB_6.jpg bedrock_bisect_AB_6.ps

rm d.xyz
rm d.grd
rm gmt.history
