#!/bin/sh

gmt blockmean ua_bisect_xyz.txt -I1 -R0/46/0/30 > d.xyz
gmt surface -I1 -R0/46/0/30 d.xyz -Gd.grd
gmt psbasemap -R0/46/0/30 -JX5i/3i -Ba10f1/a10f1:."Underground ab Bisect":WSnE -K > ua_bisect.ps
gmt grdcontour d.grd -J -B -C0.1 -A0.5 -O >> ua_bisect.ps
gmt psconvert -Tj -A -Fua_bisect.jpg ua_bisect.ps

rm d.xyz
rm d.grd
rm gmt.history
