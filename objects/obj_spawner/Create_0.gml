//variável de controle
timer_spawna	= 120;

#region spawn player
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
#endregion

#region spawn inimigo
//spawnando os inimigos
spawn_inimigo = function()
{
	//spawnando aleatóriamente
	var _xx		= choose(room_width-16, room_width/11);
	var _yy		= -32;
	
	//se o timer for menor ou igual a 0
	if (timer_spawna <= 0)
	{
		//criando o inimigo
		instance_create_layer(_xx, _yy, "inimigo", obj_inimigo);
		//reiniciando o timer do spawner
		timer_spawna = 60;
	}
	timer_spawna -= 1;
}
#endregion
