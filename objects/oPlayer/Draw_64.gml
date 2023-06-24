var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;


if (global.gameOver == false) && (global.gameWon == false) && (invincible == false)
{

killtextscale = max(killtextscale * 0.95,1);
DrawSetText(c_red, fntMain, fa_right, fa_top);
draw_text_transformed(150,12,"Lives:" + string(_playerHealth), killtextscale,killtextscale,0);//allows us to draw a text of a given scale

}
