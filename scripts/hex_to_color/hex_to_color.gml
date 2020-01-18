/// @param HEX
var HEX = argument0;

return ((HEX&$FF)<<16)|(HEX&$FF00)|(HEX>>16);
