///@arg Direction
///@arg Speed
///@arg Impact
function Battle_BlueSoul_Impact(){
var dir = argument[0]
var spd = argument[1]
var impact = argument[2]
Battle_SetSoul(battle_soul_blue)
battle_soul.dir=dir
battle_soul.move=spd
battle_soul.impact=impact
}