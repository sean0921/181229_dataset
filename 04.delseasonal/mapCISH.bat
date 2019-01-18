echo off
gmtset ANNOT_FONT_SIZE 8p LABEL_FONT_SIZE 9p TICK_LENGTH -0.030i ANNOT_OFFSET 0.035i LABEL_OFFSET 0.0525i HEADER_FONT_SIZE 12 HEADER_OFFSET 0.01i
psbasemap -B0.900:"Year":/10.000:"North (mm)":Wesn -JX6.5i/1.8i -R2011.384/2018.778/-29.163/19.233 -K -P -V -Y6.2i -X.8i > mapCISH.ps
echo    0.0000   -29.163 >  sym
echo    0.0000    19.233 >> sym
psxy sym -JX -R -W3/50 -O -P -V -K >> mapCISH.ps
echo 2018.778  19.233 10 0 0 ML Site: CISH | pstext -JX -R -N -O -K -D-.7i/.2i -P -V >> mapCISH.ps
psxy ts_CISH_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_n_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_n_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapCISH.ps
psbasemap -B0.900:"Year":/10.000:"East (mm)":Wesn -JX6.5i/1.8i -R2011.384/2018.778/-34.429/19.079 -K -O -P -V -Y-1.95i -X0i >> mapCISH.ps
echo    0.0000   -34.429 >  sym
echo    0.0000    19.079 >> sym
psxy sym -JX -R -W3/50 -O -P -V -K >> mapCISH.ps
psxy ts_CISH_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178  -P -K -O -V >> mapCISH.ps
psxy ts_CISH_e_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_e_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapCISH.ps
psbasemap -B0.900:"Year":/10.000:"Up (mm)":WeSn -JX6.5i/1.8i -R2011.384/2018.778/-30.662/34.522 -K -O -P -V -Y-1.95i -X0i >> mapCISH.ps
echo    0.0000   -30.662 >  sym
echo    0.0000    34.522 >> sym
psxy sym -JX -R -W3/50 -O -P -V -K >> mapCISH.ps
psxy ts_CISH_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -Ey.05i/2/178/178/178 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_u_o.dat -JX -R -Sc.02i -W2/255/0/0 -G250/250/250 -P -K -O -V >> mapCISH.ps
psxy ts_CISH_u_c.dat -JX -R -Sc.02i -W2/0/0/255 -G250/250/250 -P -K -O -V >> mapCISH.ps
del sym .gmtcommands4 .gmtdefaults4
