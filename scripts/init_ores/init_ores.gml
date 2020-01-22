// load and init all items

enum ORES // enums auto allocates
{
    IRON,
    COPPER,
    COUNT
}

enum ORES_STATS
{
    WEIGHT,
    VALUE,
    COUNT    
}

global.Ores = ds_grid_create(ORES.COUNT, ORES_STATS.COUNT);

for(var i = 0; i < ORES.COUNT; i++)
    for (var j = 0; j < ORES_STATS.COUNT; j++)
        global.Ores[# i, j] = 0; // initalizing with something at least
        
create_ores(ORES.IRON, 1, 1);
create_ores(ORES.COPPER, 1, 2);
