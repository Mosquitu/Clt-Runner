//iniciando variáveis
vel		= 3;
dano	= 1;

//indo pra baixo
vspeed	= vel;

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
