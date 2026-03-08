//iniciando variáveis
vel		= 3;
//andando pra baixo
vspeed	= vel;
//quantos pontos ele vale
valor	= 1;

#region escala_x
//invertendo a minha escala x se eu estiver do lado direito da tela
if (x >= room_width/2)
{
	image_xscale = -1;	
}
else
{
	image_xscale = 1;	
}
#endregion

