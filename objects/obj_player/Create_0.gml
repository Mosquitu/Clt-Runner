//iniciando as variáveis do player
vel=4;
dir=noone;
esq=noone;


//trocando de lado
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
	}
	else //caso contrário, ou seja, se eu NÃO estiver abaixo da metade do tamanho da room
	{
		//eu estou na direita
		dir=true;	
	}
	
	
	//Eu só posso ir pra direita se eu estiver no lado esquerdo da tela
	if(esq=true)
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
	if(dir=true)
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