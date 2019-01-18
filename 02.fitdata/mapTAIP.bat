echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.100:"Year":/2.500:"North (mm)":Wesn -JX6.5i/1.8i -R2014.927/2015.802/-131.056/-114.064 -K -P -V -Y6.2i -X.8i > mapTAIP.ps
echo 2015.802-114.064 10 0 0 ML Site: TAIP | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapTAIP.ps
psxy ts_TAIP_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_n_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapTAIP.ps
psbasemap -B0.100:"Year":/10.000:"East (mm)":Wesn -JX6.5i/1.8i -R2014.927/2015.802/356.450/403.010 -K -O -P -V -Y-1.95i -X0i >> mapTAIP.ps
psxy ts_TAIP_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_e_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapTAIP.ps
psbasemap -B0.100:"Year":/10.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2014.927/2015.802/-46.864/22.544 -K -O -P -V -Y-1.95i -X0i >> mapTAIP.ps
psxy ts_TAIP_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapTAIP.ps
psxy ts_TAIP_u_t.dat -JX -R -W3/0/180/0 -P -O -V >> mapTAIP.ps
del sym .gmtcommands4 .gmtdefaults4
