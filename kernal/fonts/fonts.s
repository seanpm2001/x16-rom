.setcpu "65c02"

.include "../../regs.inc"
.include "../../io.inc"
.include "../../mac.inc"
.include "fonts.inc"

.import k_col1, k_col2

.export curIndexTable, baselineOffset, curSetWidth, curHeight, cardDataPntr, currentMode, windowTop, windowBottom, leftMargin, rightMargin

.segment "ZPFONTS" : zp
; GEOS public ZP
curIndexTable:	.res 2

.segment "FONTSVAR"
; GEOS public
baselineOffset:	.res 1
curSetWidth:	.res 2
curHeight:	.res 1
cardDataPntr:	.res 2

currentMode:	.res 1
windowTop:	.res 1
windowBottom:	.res 1
leftMargin:	.res 2
rightMargin:	.res 2

; GEOS private
;compatMode:	.res 1
fontTemp1:	.res 8
fontTemp2:	.res 9
PrvCharWidth:	.res 1 ; XXX used by conio1
FontTVar1:	.res 1
FontTVar2:	.res 2
FontTVar3:	.res 1
FontTVar4:	.res 1

compatMode      =       $3f ; (on C128, this is graphMode)

.segment "GRAPH"

.include "fonts1.s"
.include "fonts2.s"
.include "fonts3.s"
.include "fonts4.s"
.include "fonts4a.s"
.include "fonts4b.s"
.include "conio1.s"
.include "conio3b.s"
.include "sysfont.s"
