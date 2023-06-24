if (image_xscale = 9) 
{
	HurtPlayer(1);
	instance_create_layer(x,y,"Screenflash",oScreenFlash);
	instance_destroy();
}

if (hp <= 0)
{
	instance_destroy();
}