/// @func scr_CRT_update_shader
/// @desc Updates the shader variables
/// @param RadEnable Enable radial distortion
/// @param DistAmount Radial Distortion amount. Range is (-2.0 - 2.0)  the lower the camera view size, means there are less pixel there are on the screen, so use less distortion. Default = 0.12
/// @param BorderEnable Enable radial distortion
/// @param RGBEnable Enable RGB separation
/// @param ScanEnable Enable Scanlines
/// @param CornerSize The size of the border corner. Range is (0.0 - 1.0) Lower = smaller corners. Default = 0.3
/// @param CornerSmooth The falloff of the border corner.  Range is (10.0 - 200.0) Lower = longer falloff. Default = 80.0
/// @param Brightness The amount of brightness. Range is (0.0 - 2.0) Default = 1.0
/// @param UseNoise Enable texture noise
/// @param NoiseStrength Noise strength ammount. Range is (0.0 - 1.0) Lower = noise is less visible. Default = 0.2

var_use_radial_distortion =     argument0;
var_radial_distortion_ammount = argument1;
var_use_border =                argument2;
var_use_RGB_separation =        argument3;
var_use_scanlines =             argument4;
var_border_corner_size =	    argument5;
var_border_corner_smoothness =  argument6;
var_brightness =				argument7;
var_use_noise = 				argument8;
var_noise_strength =     		argument9;
