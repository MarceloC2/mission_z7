function load_high_score() {
    if (file_exists("highscore.txt")) {
        var _file = file_text_open_read("highscore.txt");
        global.melhor_pontuacao = file_text_read_real(_file);
        file_text_close(_file);
    } else {
        global.melhor_pontuacao = 0; // Inicializar com 0 se o arquivo não existir
    }
}
