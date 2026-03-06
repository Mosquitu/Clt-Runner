//spawnando o player
spawn_player = function()
{
	//definindo aonde o player vai nascer
	var _meu_x, _meu_y
	_meu_x = room_width/11;
	_meu_y = room_height - 40;
	//se o player NÃO existir
	if (!instance_exists(obj_player))
	{
		//eu crio o player
		instance_create_layer(_meu_x, _meu_y, "player", obj_player);
	}
}
//usando a função de spawn
spawn_player();

