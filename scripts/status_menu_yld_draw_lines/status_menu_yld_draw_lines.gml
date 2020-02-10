var l_ctx = argument[0];
if (!is_array(l_ctx)) return array_create(3);
while (true) switch (l_ctx[1/* label */]) {
case 0/* [L3,c29] begin */:
    /// @param ctx
    status_menu_btn1_custom_draw(0);
    l_ctx[@0/* yield */] = 2; l_ctx[@1/* label */] = 1; return true;
case 1/* [L4,c1] post yield */:
    status_menu_btn1_custom_draw(0);
    l_ctx[@0/* yield */] = -1; l_ctx[@1/* label */] = 2; return true;
default/* [L7,c1] post yield, [L8,c1] end */: l_ctx[@0/* yield */] = 0; return false;
}

/*//!#gmcr
#gmcr
// WIP
status_menu_btn1_custom_draw(0);
yield 2;

status_menu_btn1_custom_draw(0);
yield -1;

//!#gmcr*/
