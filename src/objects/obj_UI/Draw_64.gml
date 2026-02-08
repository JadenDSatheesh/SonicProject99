/// @description Insert description here
// You can write your code in this editor

var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;

var _playerHealthFrac = frac(_playerHealth);

_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i++)
{
	var _imageIndex = (i > _playerHealth);
	
	if(i == _playerHealth + 1)
	{
		_imageIndex += (_playerHealthFrac > 0);
		_imageIndex += (_playerHealthFrac > 0.25);
		_imageIndex += (_playerHealthFrac > 0.5);
	}
	draw_sprite(spr_icon, 0, 1, 10);
	draw_sprite(spr_text_health, 0, 30, 2)
	draw_sprite(spr_health, _imageIndex, 37 + ((i-1) * 17), 15);
}
