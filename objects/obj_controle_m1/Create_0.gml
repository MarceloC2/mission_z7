// Evento Create no controlador da Missão 1 (obj_controle_m1)
global.missao_atual = 1; // Define a missão atual como Missão 1
global.chefe_derrotado = false; // Variável para rastrear se o chefe foi derrotado
global.pontuacao = 0; // futuramente será removida para obj_controle_mapa

// Declaração de variáveis de instância
self.margem_lateral = 60;
self.deslocamento_vertical = 160; // Deslocamento vertical para ajustar a formação
self.espaco_horizontal = 80;
self.espaco_vertical = 100;
self.linha_atual = 0;
self.coluna_atual = 0;
self.todas_naves_criadas = false; // Variável para rastrear se todas as naves foram criadas

// Variáveis de controle para as ondas de inimigos
self.onda_atual = 1; // Onda inicial
self.total_ondas = 6; // Total de ondas

alarm[0] = 10; // Ajuste o tempo conforme necessário para a primeira nave

botao_mute = instance_create_layer(400, 10, "Instances", obj_menu_pauser_missao);
painel = instance_create_layer(1, 1, "Instances", obj_painel_missao);

// Inicializa a nave do jogador
instance_create_layer(room_width / 2, room_height - 50, "Instances", obj_player_mission);



global.eliminacoes_circular = 0; // Inicializa a contagem de eliminações
