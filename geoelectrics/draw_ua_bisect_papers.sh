#!/bin/sh

gmt blockmean ua_bisect_xyz.txt -I1 -R0/46/0/30 > d.xyz
gmt surface -I1 -R0/46/0/30 d.xyz -Gd.grd
gmt grd2cpt d.grd -Crainbow > d.cpt

gmt grdimage d.grd -JX5i/3i -Ba10f1/a10f1:."Underground Abnormity Bisect":WSnE -Cd.cpt -K > ua_bisect.ps
gmt grdcontour d.grd -J -B -C0.5 -A1 -T0.2i/0.2i:-+ -K -O>> ua_bisect.ps
gmt psscale -D2.5i/-0.3i/5i/0.3ch -B1 -Cd.cpt -O >> ua_bisect.ps
gmt psconvert -Tj -A -Fua_bisect.jpg ua_bisect.ps

rm d.xyz
rm d.grd
rm d.cpt
rm gmt.history
