/// @arg text text for button
/// @arg x1 box x1
/// @arg y1 box y1
/// @arg x2 box x2
/// @arg y2 box y2
function button_box_init(argument0, argument1, argument2, argument3, argument4) {
	var buttonStruct = ds_map_create()

	ds_map_add(buttonStruct,"text",argument0)
	ds_map_add(buttonStruct,"x1",argument1)
	ds_map_add(buttonStruct,"y1",argument2)
	ds_map_add(buttonStruct,"x2",argument3)
	ds_map_add(buttonStruct,"y2",argument4)
	ds_map_add(buttonStruct,"cursor",0)

	return buttonStruct
}
