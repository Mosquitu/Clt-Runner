//me destruindo sempre que saio da tela
if (y > room_height *2)
{
	//destruindo quem precisa ser destruído e não chamando o evento de contar pontos
	instance_destroy(id, false);	
}
