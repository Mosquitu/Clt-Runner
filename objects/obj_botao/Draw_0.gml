//me desenhando
draw_self();

//setando a font
draw_set_font(fnt_1);

//alinhando o texto
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

//desenhando o texto
draw_text_ext_transformed(x, y, botao_texto, 50, 100, .2, .2, 0);

//resetando o alinhamento
draw_set_valign(-1);
draw_set_halign(-1);

//resetando a fonte
draw_set_font(-1);