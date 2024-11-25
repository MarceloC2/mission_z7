// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function resetar_jogo(){
	global.pausado = false;
	global.pontos = 0;
	global.vida_player = 100;
	global.inimigos_destruidos = 0;
	global.obstaculos_destruidos = 0;
	global.inimigos_criados = 0;
	global.escudo_ativo = false;
	global.tempo_escudo = 0;
	global.onda = 1;
	global.inimigos_restantes = 20 * global.onda;

}