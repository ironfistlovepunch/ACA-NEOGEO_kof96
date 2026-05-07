REM kof96
REM SROM
copy 2F4448 214-s1.s1
copy /b 214-s1.s1+

REM MROM PROM
romcutter 1E50CC 214-m1.m1 0 20000

romcutter 1E50CC 214-p1.p1 20000 100000
romcutter 1E50CC 214-p2.sp2 120000 200000

REM PROM
REM romcutter 1F0638 214-p1.p1 0 100000
REM romcutter 1F0638 214-p2.sp2 100000 200000

REM VROM
romcutter 102BE04 214-v1.v1 0 400000
romcutter 102BE04 214-v2.v2 400000 400000
romcutter 102BE04 214-v3.v3 800000 200000

REM CROM
copy /b 345F10+685054+9DFBF4+D4C474 crom
romcutter crom c1c2 0 800000
romcutter crom c3c4 800000 800000
romcutter crom c5c6 1000000 800000
romcutter crom c7c8 1800000 800000

BSwap.exe d B c1c2 oddeven.txt 214-c1.c1 214-c2.c2
BSwap.exe d B c3c4 oddeven.txt 214-c3.c3 214-c4.c4
BSwap.exe d B c5c6 oddeven.txt 214-c5.c5 214-c6.c6
BSwap.exe d B c7c8 oddeven.txt 214-c7.c7 214-c8.c8

REM delete
del c1c2 c3c4 c5c6 c7c8
del crom

REM compress
powershell Compress-Archive 214*.* -Force -DestinationPath kof96.zip

REM delete
del c1c2 c3c4 c5c6 c7c8
del crom
