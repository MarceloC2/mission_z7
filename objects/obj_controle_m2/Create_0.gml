// Evento Create no controlador da Missão 2 (obj_controle_m2)
global.missao_atual = 2; // Define a missão atual como Missão 2
global.chefe_derrotado_m2 = false; // Variável para rastrear se o chefe foi derrotado

// Declaração de variáveis de instância
self.margem = 50;
self.espaco_horizontal = 100;
self.espaco_vertical = 100;

self.linha_atual = 0;
self.coluna_atual = 0;

self.todas_naves_criadas = false; // Variável para rastrear se todas as naves foram criadas

alarm[0] = 20; // Ajuste o tempo conforme necessário para a primeira nave

