//Damage the player
shield-=other.damage;
instance_destroy(other);
if shield<0 
{
	instance_destroy();
	game_restart();
}