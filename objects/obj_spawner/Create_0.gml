//variável de controle
timer_spawna_inimigo	= 60;
timer_spawna_coletavel	= 120;
#region spawn player
//spawnando o player
spawn_player = function()
{
	//definindo aonde o player vai nascer
	var _meu_x, _meu_y
	_meu_x = room_width/11;
	_meu_y = room_height - 60;
	//se o player NÃO existir
	if (!instance_exists(obj_player))
	{
		//eu crio o player
		instance_create_layer(_meu_x, _meu_y, "player", obj_player);
		
	}
	if (!audio_is_playing(snd_musica))
	{
		audio_play_sound(snd_musica, 1, 1);	
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
	if (timer_spawna_inimigo <= 0)
	{
		//criando o inimigo
		instance_create_layer(_xx, _yy, "inimigo", obj_inimigo);
		//reiniciando o timer do spawner
		timer_spawna_inimigo = random_range(45, 120);
	}
	timer_spawna_inimigo -= 1;
}
#endregion

#region spawn coletavel
spawn_coletavel = function()
{
	//spawnando aleatóriamente
	var _xx			= choose(room_width-16, room_width/11);
	var _yy			= -32;
	
	//escolhendo qual objeto vou spawnar
	var _coletavel	= choose(obj_coletavel_1, obj_coletavel_2, obj_coletavel_3, obj_coletavel_4)

	//se o timer for menor ou igual a 0
	if (timer_spawna_coletavel <= 0)
	{
		//criando o inimigo
		instance_create_layer(_xx, _yy, "coletavel", _coletavel);
		//reiniciando o timer do spawner
		timer_spawna_coletavel = random_range(60, 180);
	}
	timer_spawna_coletavel -= 1;
}
#endregion

//desenhando as vidas que o player tem
desenha_pontos = function(_icone = spr_coletavel_2)
{
	//desenhando os sprites
	draw_sprite_ext(_icone, 0, 25, room_height * 3.78, 3, 3, 90, c_white, 1);

	//setando a fonte
	draw_set_font(fnt_1);
	
	//mudando a cor da fonte
	draw_set_colour(c_orange);
	
	//desenhando o simoblo de igualdade
	draw_text(50, room_height * 3.65, " = ");
	
	//desenhando pontuação
	draw_text(95, room_height * 3.65, string(global.pontuacao));
	
	//resetado a cor	
	draw_set_colour(-1);
	
	//resetando a fonte
	draw_set_font(-1);
}
