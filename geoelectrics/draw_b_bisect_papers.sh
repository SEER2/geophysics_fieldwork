#!/bin/sh

gmt blockmean b_bisect_xyz_6.txt -I1 -R-16/19/-52/38 > d.xyz
gmt surface -I1 -R-16/19/-52/38 d.xyz -Gd.grd
gmt grd2cpt d.grd -Crainbow > d.cpt

gmt grdimage d.grd -JX3i/5i -Ba10f1/a10f1:."Bedrock Bisect":WSnE -Cd.cpt -K > bedrock_bisect_AB_6.ps
gmt grdcontour d.grd -J -B -C5 -A10 -T0.5i/0.5i:-+ -K -O >> bedrock_bisect_AB_6.ps
gmt psscale -D1.5i/-0.3i/3i/0.3ch -B10 -Cd.cpt -O >>bedrock_bisect_AB_6.ps
gmt psconvert -Tj -A -Fbedrock_bisect_AB_6.jpg bedrock_bisect_AB_6.ps

rm d.xyz
rm d.grd
rm d.cpt
rm gmt.history
