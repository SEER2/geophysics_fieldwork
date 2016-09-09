gmt nearneighbor -R-16/20/-52/38 -I5 -S20 -Gd.grd -V b_bisect_xyz_5.txt
gmt psbasemap -R-16/20/-52/38 -JX3i/5i -Ba5f2/a5f2 -K >d.ps
gmt grdcontour d.grd -J -B -C1 -A20 -O >> d.ps
gmt psconvert -Tj -A -Fd.jpg d.ps