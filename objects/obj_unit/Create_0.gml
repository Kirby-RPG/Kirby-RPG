/// @description Insert description here
// You can write your code in this editor
self.SetUnitStats = function(name, max_health, hp_current, attack, defense, xp, level) {
	self.name = name;
	self.max_health = max_health;
	self.health = hp_current;
	self.attack = attack;
	self.defense = defense;
	self.experience = xp;
	self.level = level;
}