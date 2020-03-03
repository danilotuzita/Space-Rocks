var final_string = "";

for (var i = 0; i < argument_count; i++)
    final_string += string(argument[i]) + " ";

show_debug_message(final_string);
return final_string;
