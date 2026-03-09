//me movimentando
troca_lado();

//colidindo
colide();

//se o tempo de invencibilidade for maior que 0
if (tempo_invencivel > 0)
{
	//eu diminuo o tempo de invencibilidade
	tempo_invencivel--;
	// faz o sprite piscar
    visible = !visible;
}
else
{
	//fico visivel
	visible = true;	
}
if(morto)
 {
	instance_destroy();
 }
//tocando o som de quando ganho vida
if (global.pontuacao >= ganho_vida)
{
	audio_play_sound(snd_1up, 1, 0, 2);	
	ganho_vida += 200;
	vida += 1;
}
//se minhas vidas foram maior ou igual a 3 vidas
if (vida >= 3)
{
	//eu volto a ter 3 vidas
	vida = 3;	
}