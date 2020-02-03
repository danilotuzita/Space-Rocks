var l_ctx = argument[0];
if (!is_array(l_ctx)) {
    l_ctx = array_create(6);
    var l_argc = argument_count - 1;
    var l_args = array_create(l_argc);
    while (--l_argc >= 0) l_args[@l_argc] = argument[l_argc + 1];
    l_ctx[2/* args */] = l_args;
    return l_ctx;
}
var l_args = l_ctx[2/* args */];
while (true) switch (l_ctx[1/* label */]) {
case 0/* [L1,c1] begin */:
    /// @param ctx
    /// @param ore_id
    l_ctx[@3/* ore_id */] = l_args[0];
    l_ctx[@4/* i */] = 0;
case 1/* [L6,c1] check for */:
    if (l_ctx[4/* i */] >= instance_number(obj_asteroid)) { l_ctx[@1/* label */] = 5; continue; }
    l_ctx[@5/* ast */] = instance_find(obj_asteroid, l_ctx[4/* i */]);
    if (!((l_ctx[5/* ast */] != -4) && (l_ctx[5/* ast */].ore == l_ctx[3/* ore_id */]))) { l_ctx[@1/* label */] = 2/* end if */; continue; }
    l_ctx[@0/* yield */] = l_ctx[5/* ast */]; l_ctx[@1/* label */] = 2; return true;
case 2/* [L10,c9] post yield, [L9,c5] end if, [L6,c1] post for */:
    l_ctx[@4/* i */]++;
    l_ctx[@1/* label */] = 1; continue;
case 5/* [L6,c1] end for */:
    l_ctx[@0/* yield */] = -4; l_ctx[@1/* label */] = 6; return true;
default/* [L13,c1] post yield, [L14,c1] end */: l_ctx[@0/* yield */] = 0; return false;
}

/*//!#gmcr
/// @param ore_id
#gmcr

var ore_id = argument0;

for(var i = 0; i < instance_number(obj_asteroid); i++)
{
    var ast = instance_find(obj_asteroid, i);
    if(ast != noone && ast.ore == ore_id)
        yield ast;
}

yield noone;

//!#gmcr*/
