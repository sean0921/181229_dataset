echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.900:"Year":/25.000:"North (mm)":Wesn -JX6.5i/1.8i -R2011.384/2018.778/-178.486/-5.374 -K -P -V -Y6.2i -X.8i > mapAKND.ps
echo 2018.778  -5.374 10 0 0 ML Site: AKND | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapAKND.ps
psxy ts_AKND_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_n_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapAKND.ps
psbasemap -B0.900:"Year":/15.000:"East (mm)":Wesn -JX6.5i/1.8i -R2011.384/2018.778/-110.571/4.401 -K -O -P -V -Y-1.95i -X0i >> mapAKND.ps
psxy ts_AKND_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapAKND.ps
psxy ts_AKND_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_e_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapAKND.ps
psbasemap -B0.900:"Year":/15.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2011.384/2018.778/-23.690/65.950 -K -O -P -V -Y-1.95i -X0i >> mapAKND.ps
psxy ts_AKND_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapAKND.ps
psxy ts_AKND_u_t.dat -JX -R -W3/0/180/0 -P -O -V >> mapAKND.ps
del sym .gmtcommands4 .gmtdefaults4
