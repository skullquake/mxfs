ALTER TABLE "filesystem$node" ADD "nodetype" VARCHAR_IGNORECASE(6) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('ab985bb4-9a14-4e52-9399-8378c43a693c', 
'659ca67e-19a2-4039-8ed8-b31239bd17fd', 
'NodeType', 
'nodetype', 
40, 
6, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20191107 11:48:36';
