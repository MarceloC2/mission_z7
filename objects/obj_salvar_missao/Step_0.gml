// Evento Create no objeto de controle de salvamento
if (file_exists("savegame.sav")) {
    var file = file_text_open_read("savegame.sav");
    global.missao_1_completa = file_text_read_bool(file);
    global.missao_2_completa = file_text_read_bool(file);
    global.missao_3_completa = file_text_read_bool(file);
    global.missao_4_completa = file_text_read_bool(file);
    global.pontuacao = file_text_read_real(file);
    file_text_close(file);
}

// Função de salvamento
function salvar_progresso() {
    var file = file_text_open_write("savegame.sav");
    file_text_write_bool(file, global.missao_1_completa);
    file_text_write_bool(file, global.missao_2_completa);
    file_text_write_bool(file, global.missao_3_completa);
    file_text_write_bool(file, global.missao_4_completa);
    file_text_write_real(file, global.pontuacao);
    file_text_close(file);
}
