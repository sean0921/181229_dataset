echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.900:"Year":/25.000:"North (mm)":Wesn -JX6.5i/1.8i -R2011.384/2018.778/-181.246/-7.174 -K -P -V -Y6.2i -X.8i > mapCISH.ps
echo 2018.778  -7.174 10 0 0 ML Site: CISH | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapCISH.ps
psxy ts_CISH_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_n_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapCISH.ps
psbasemap -B0.900:"Year":/20.000:"East (mm)":Wesn -JX6.5i/1.8i -R2011.384/2018.778/-171.276/-16.284 -K -O -P -V -Y-1.95i -X0i >> mapCISH.ps
psxy ts_CISH_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapCISH.ps
psxy ts_CISH_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_e_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapCISH.ps
psbasemap -B0.900:"Year":/15.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2011.384/2018.778/-23.918/76.738 -K -O -P -V -Y-1.95i -X0i >> mapCISH.ps
psxy ts_CISH_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_u_t.dat -JX -R -W3/0/180/0 -P -O -V >> mapCISH.ps
del sym .gmtcommands4 .gmtdefaults4
