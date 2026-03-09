randomise();
//spawnando o inimigo
spawn_inimigo();

//spawnando o coletável
spawn_coletavel();

//fechando o jogo
if (keyboard_check_pressed(vk_escape))
{
	game_end();
}