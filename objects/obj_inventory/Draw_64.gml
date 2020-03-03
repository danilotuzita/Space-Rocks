
d = ""
for(var i = 0; i < ORES.COUNT; i++)
    d += "[" + string(i) + "]: " + string(items[# i, INVENTORY.GRID_AMOUNT]) + "\n";
d += "[W]: " + string(weight) + "/" + string(max_weight);

if(DEBUG)
    draw_text(50, 50, string(d));
