echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.150:"Year":/3.000:"North (mm)":Wesn -JX6.5i/1.8i -R2015.900/2017.100/-263.081/-241.589 -K -P -V -Y6.2i -X.8i > mapBANC.ps
echo 2017.100-241.589 10 0 0 ML Site: BANC | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapBANC.ps
psxy ts_BANC_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_n_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapBANC.ps
psbasemap -B0.150:"Year":/10.000:"East (mm)":Wesn -JX6.5i/1.8i -R2015.900/2017.100/717.858/763.002 -K -O -P -V -Y-1.95i -X0i >> mapBANC.ps
psxy ts_BANC_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapBANC.ps
psxy ts_BANC_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_e_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapBANC.ps
psbasemap -B0.150:"Year":/10.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2015.900/2017.100/-7.458/55.278 -K -O -P -V -Y-1.95i -X0i >> mapBANC.ps
psxy ts_BANC_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapBANC.ps
psxy ts_BANC_u_t.dat -JX -R -W3/0/180/0 -P -O -V >> mapBANC.ps
del sym .gmtcommands4 .gmtdefaults4
