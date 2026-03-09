//se eu to na direita 
if (dir)
{
	//eu crio o efeito de morte
	instance_create_layer(x - 13, y, "player", obj_morte_player);
}
//se eu to na direita
else if (esq)
{
	//eu crio o efeito de morte
	instance_create_layer(x + 13, y, "player", obj_morte_player)	
}
//criando os botões
instance_create_layer(room_width/2, y - 20, "player", obj_botao);
instance_create_layer(room_width/2, y + 20, "player", obj_botao, {botao_texto : "Exit"});	