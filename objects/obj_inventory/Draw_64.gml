
d = ""
for(var i = 0; i < ORES.COUNT; i++)
    d += "ID: " + string(i) + " | AMNT: " + string(items[# i, INVENTORY.GRID_AMOUNT]) + "\n";
d += "WEIGHT: " + string(weight) + "/" + string(max_weight);

if(HUD_DEBUG)
    draw_text(50, 50, string(d));
