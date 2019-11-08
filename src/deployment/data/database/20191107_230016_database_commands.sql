ALTER TABLE "filesystem$node" ALTER COLUMN "nodetype" SET DATA TYPE VARCHAR_IGNORECASE(7);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '659ca67e-19a2-4039-8ed8-b31239bd17fd', 
"attribute_name" = 'NodeType', 
"column_name" = 'nodetype', 
"type" = 40, 
"length" = 7, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'ab985bb4-9a14-4e52-9399-8378c43a693c';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20191107 23:00:15';
