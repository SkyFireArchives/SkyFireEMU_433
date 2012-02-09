-- Gameobject_template
ALTER TABLE gameobject_template ADD name2 char(100) AFTER name;
ALTER TABLE gameobject_template ADD name3 char(100) AFTER name2;
ALTER TABLE gameobject_template ADD name4 char(100) AFTER name3;
ALTER TABLE gameobject_template ADD exp int(10) AFTER ScriptName;