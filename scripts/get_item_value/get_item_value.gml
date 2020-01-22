/// @param _id
var _id = argument0;

if (not between(_id, 0, ORES.COUNT - 1, true))
    return -999;
    
return global.Ores[# _id, ORES_STATS.VALUE];
