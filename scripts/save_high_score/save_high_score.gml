function save_high_score() {
    var _file = file_text_open_write("highscore.txt");
    file_text_write_real(_file, global.melhor_pontuacao);
    file_text_close(_file);
}
