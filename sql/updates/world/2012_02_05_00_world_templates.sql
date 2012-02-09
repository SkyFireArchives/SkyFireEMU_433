-- Gameobject_template
ALTER TABLE gameobject_template ADD name2 char(100) AFTER name;
ALTER TABLE gameobject_template ADD name3 char(100) AFTER name2;
ALTER TABLE gameobject_template ADD name4 char(100) AFTER name3;
ALTER TABLE gameobject_template ADD exp int(10) AFTER ScriptName;
-- Creature_template
ALTER TABLE creature_template ADD name2 char(100) AFTER name;
ALTER TABLE creature_template ADD name3 char(100) AFTER name2;
ALTER TABLE creature_template ADD name4 char(100) AFTER name3;
ALTER TABLE creature_template ADD unk char(100) AFTER name4;
ALTER TABLE creature_template ADD unk2 char(100) AFTER unk;
ALTER TABLE creature_template ADD unk3 char(100) AFTER unk2;
ALTER TABLE creature_template ADD unk4 char(100) AFTER unk3;
ALTER TABLE creature_template ADD unk_flags int(10) AFTER speed_run;

