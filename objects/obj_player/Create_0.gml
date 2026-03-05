//iniciando as variáveis do player
vel=4;

//fazendo os controles do player 
movimentacao = function()
{
	//iniciando os comandos
	var _left, _right;
	_left=keyboard_check(ord("A"));
	_right=keyboard_check(ord("D"));
	
	//andando
	x+=(_right - _left) * vel;
}