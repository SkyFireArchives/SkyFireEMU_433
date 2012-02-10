SET @ver=15211;
insert ignore into `emuopcodes`(`version`,`name`,`number`,`type`) values ( @ver,'MSG_OPCODE_UNKNOWN','0','msg');
UPDATE emuopcodes SET number = 297 WHERE name = "SMSG_AUTH_CHALLENGE" and version = @ver;
UPDATE emuopcodes SET number = 3668 WHERE name = "SMSG_AUTH_RESPONSE" and version = @ver;
UPDATE emuopcodes SET number = 2120 WHERE name = "CMSG_PLAYER_LOGIN" and version = @ver;
