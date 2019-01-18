echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.150:"Year":/3.000:"North (mm)":Wesn -JX6.5i/1.8i -R2015.903/2017.064/-116.266/-93.514 -K -P -V -Y6.2i -X.8i > mapANKN.ps
echo 2017.064 -93.514 10 0 0 ML Site: ANKN | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapANKN.ps
psxy ts_ANKN_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_n_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapANKN.ps
psbasemap -B0.150:"Year":/10.000:"East (mm)":Wesn -JX6.5i/1.8i -R2015.903/2017.064/324.815/367.955 -K -O -P -V -Y-1.95i -X0i >> mapANKN.ps
psxy ts_ANKN_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_e_t.dat -JX -R -W3/0/180/0 -P -K -O -V >> mapANKN.ps
psbasemap -B0.150:"Year":/10.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2015.903/2017.064/-43.838/26.698 -K -O -P -V -Y-1.95i -X0i >> mapANKN.ps
psxy ts_ANKN_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapANKN.ps
psxy ts_ANKN_u_t.dat -JX -R -W3/0/180/0 -P -O -V >> mapANKN.ps
del sym .gmtcommands4 .gmtdefaults4
