//se eu apertar no botão de try again ou no botão exit
if (botao_texto = "Try Again")
{
	//reseto a variável global de pontuação
	global.pontuacao = 0;
	room_restart();
}
else if (botao_texto = "Exit")
{
	//fecho o jogo
	game_end();	
}