var l_ctx = argument[0];
if (!is_array(l_ctx)) return array_create(4);
while (true) switch (l_ctx[1/* label */]) {
case 0/* [L3,c1] begin */:
    /// @param ctx
    l_ctx[@3/* __repeat */] = 15;
case 1/* [L3,c1] check for */:
    if (l_ctx[3/* __repeat */] < 1) { l_ctx[@1/* label */] = 4; continue; }
    create_debris(x, y, 5);
    l_ctx[@0/* yield */] = .1; l_ctx[@1/* label */] = 2; return true;
case 2/* [L5,c2] post yield, [L3,c1] post for */:
    l_ctx[@3/* __repeat */] -= 1;
    l_ctx[@1/* label */] = 1; continue;
case 4/* [L3,c1] end for */:
    l_ctx[@0/* yield */] = 1; l_ctx[@1/* label */] = 5; return true;
case 5/* [L7,c1] post yield */:
    repeat (15) create_debris(x, y, 2);
    l_ctx[@0/* yield */] = 1; l_ctx[@1/* label */] = 6; return true;
default/* [L12,c1] post yield, [L13,c1] end */: l_ctx[@0/* yield */] = 0; return false;
}

/*//!#gmcr
#gmcr

repeat(15) { // spawning debris
	create_debris(x, y, 5);
	yield .1;
}
yield 1;

repeat(15) { // spawning debris
	create_debris(x, y, 2);
}
yield 1;

//!#gmcr*/
