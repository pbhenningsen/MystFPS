if (global.gameOver == false)
{

	if (menu_cursor == 0) && (pressed == 0)
	{
	killtextscale = max(killtextscale * 0.95,1);
	DrawSetText(c_white, fntMain, fa_center, fa_center);
	draw_text_transformed(480,464,"Click Here To Start", killtextscale,killtextscale,0);
	}

	if (menu_cursor == 1) && (pressed == 0)
	{
	killtextscale = max(killtextscale * 0.95,1);
	DrawSetText(c_red, fntMain, fa_center, fa_center);
	draw_text_transformed(480,464,"Click Here To Start", killtextscale,killtextscale,0);
	}

}

//SET AN ALARM TO MAKE GLOBAL.GAMEOVER TRUE TO MAKE THE WORDS POP UP AT THE RIGHT TIME.




