function HurtPlayer(_damage)
{	
		global.playerHealth = (global.playerHealth-_damage);
		if (global.playerHealth < 1)
		{
			with (oPlayer) alarm[5] = 5;
		}
}