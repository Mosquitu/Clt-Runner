var _espaco = keyboard_check_pressed(vk_space);
if (_espaco)
{
	image_index ++;	
}
if (image_index >= image_number)
{
	room_goto_next();
}