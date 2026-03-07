//iniciando as variáveis do player
dir=noone;
esq=noone;
vida=3;
tempo_invencivel=0;

#region //trocando de lado
troca_lado=function()
{
	//iniciando os comandos
	var _left, _right;
	_left=keyboard_check_pressed(ord("A"));
	_right=keyboard_check_pressed(ord("D"));
	
	//descobrindo se estou na esquerda ou na direita
	if(x<room_width/2)//se o meu x for menor que a metade do tamanho da room
	{
		//então estou na esquerda
		esq=true;
		//informando que não estou na direita
		dir=false;
	}
	else //caso contrário, ou seja, se eu NÃO estiver abaixo da metade do tamanho da room
	{
		//eu estou na direita
		dir=true;
		//informando que não estou na esquerda
		esq=false;
	}
	
	
	//Eu só posso ir pra direita se eu estiver no lado esquerdo da tela
	if(esq==true)
	{
		//se eu apertar D
		if(_right)
		{
			//eu mudo a escala x(espelho a imagem)
			image_xscale=-1
			//e vou pro outro lado da tela
			x=room_width-16;
			//informo que estou na direita
			dir=true;
			//informo que não estou na esquerda
			esq=false;
			
		}
	}
	if(dir==true)
	{
		if(_left)
		{
			//eu mudo a escala x(espelho a imagem)
			image_xscale=1
			//e vou pro outro lado da tela
			x=room_width/11;
			//informo que estou na esquerda
			esq=true;
			//informo que não estou na direita
			dir=false;
		}
	}
}
#endregion

#region tomar dano
toma_dano = function()
{
	//só posso tomar dano se minha vida estiver acima de 0 e não estou invencivel
	if (vida > 0 && tempo_invencivel <= 0)
	{
		//perco vida
		vida--;
		//fico invencivel
		tempo_invencivel = 15;
		//piscando
	}
}
colide = function()
{
	if (place_meeting(x, y, obj_inimigo))
	{
		toma_dano();	
	}
}
#endregion

//desenhando as vidas que o player tem
desenha_vida = function(_icone = spr_vida, qtd = 1)
{
	//o espaço entre os corações
	var _espaco = 0
	repeat(qtd)
	{
		//desenhando os sprites
		draw_sprite_ext(_icone, 0, _espaco, room_height * 3.8, 3, 3, 0, c_white, 1);
		
		//aumentando o espaço 
		_espaco += 45;
	}
}