/// @param _id
/// @param weight
/// @param value
var _id = argument0, weight = argument1, value = argument2;

if (not between(_id, 0, ORES.COUNT - 1, true)) return;

global.Ores[# _id, ORES_STATS.WEIGHT] = weight;
global.Ores[# _id, ORES_STATS.VALUE] = value;
