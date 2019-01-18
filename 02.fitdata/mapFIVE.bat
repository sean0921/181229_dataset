echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.200:"Year":/3.500:"North (mm)":Wesn -JX6.5i/1.8i -R2014.869/2016.437/-266.779/-242.191 -K -P -V -Y6.2i -X.8i > mapFIVE.ps
echo 2016.437-242.191 10 0 0 ML Site: FIVE | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapFIVE.ps
psxy ts_FIVE_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_n_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapFIVE.ps
psbasemap -B0.200:"Year":/10.000:"East (mm)":Wesn -JX6.5i/1.8i -R2014.869/2016.437/643.253/710.777 -K -O -P -V -Y-1.95i -X0i >> mapFIVE.ps
psxy ts_FIVE_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_e_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapFIVE.ps
psbasemap -B0.200:"Year":/10.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2014.869/2016.437/9.224/62.816 -K -O -P -V -Y-1.95i -X0i >> mapFIVE.ps
psxy ts_FIVE_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapFIVE.ps
psxy ts_FIVE_u_t.dat -JX -R -W3/0/180/0 -P -O -V >> mapFIVE.ps
del sym .gmtcommands4 .gmtdefaults4
