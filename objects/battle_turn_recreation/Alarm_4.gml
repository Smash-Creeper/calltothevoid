if gbproc1 == 2
	Battle_SetGasterBlaster(50,100,-15,0,0,2,2,-1,-1,60)
if gbproc1 == 1
	Battle_SetGasterBlaster(70,240,24,0,0,2,2,-1,-1,85)
if gbproc1 == 0
	Battle_SetGasterBlaster(100,390,40,0,0,2,2,-1,-1,110)
gbdir1+=35
gbproc1+=1
if(gbproc1<3){
alarm[4]=20
}else{
alarm[6]=120	
}