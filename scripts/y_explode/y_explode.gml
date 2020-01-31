var l_ctx = argument[0];
if (!is_array(l_ctx)) return array_create(4);
while (true) switch (l_ctx[1/* label */]) {
case 0/* [L3,c1] begin */:
    /// @param ctx
    l_ctx[@3/* __repeat */] = debris;
case 1/* [L3,c1] check for */:
    if (l_ctx[3/* __repeat */] < 1) { l_ctx[@1/* label */] = 4; continue; }
    debug("0");
    instance_create_layer(x, y, "Instances", obj_debris);
    l_ctx[@0/* yield */] = .1; l_ctx[@1/* label */] = 2; return true;
case 2/* [L6,c5] post yield, [L3,c1] post for */:
    l_ctx[@3/* __repeat */] -= 1;
    l_ctx[@1/* label */] = 1; continue;
case 4/* [L3,c1] end for */:
    debug("1");
    l_ctx[@0/* yield */] = 2; l_ctx[@1/* label */] = 5; return true;
case 5/* [L9,c1] post yield */:
    repeat (debris) instance_create_layer(x, y, "Instances", obj_debris);
    debug("2");
    l_ctx[@0/* yield */] = 1; l_ctx[@1/* label */] = 6; return true;
default/* [L15,c1] post yield, [L16,c1] end */: l_ctx[@0/* yield */] = 0; return false;
}

/*//!#gmcr
#gmcr

repeat(debris) { // spawning debris
    debug("0");
	instance_create_layer(x, y, "Instances", obj_debris);
    yield .1;
}
debug("1");
yield 2;

repeat(debris) { // spawning debris
	instance_create_layer(x, y, "Instances", obj_debris);
}
debug("2");
yield 1;

//!#gmcr*/
