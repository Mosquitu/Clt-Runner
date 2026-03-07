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
