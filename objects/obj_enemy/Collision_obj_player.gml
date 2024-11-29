//Reduce player's health on collision
var _player_shield=obj_player.shield-5;

if _player_shield<0
instance_destroy(other);

instance_destroy();
