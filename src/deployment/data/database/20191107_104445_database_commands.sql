ALTER TABLE "filesystem$file_filedocument" DROP CONSTRAINT "uniq_filesystem$file_filedocument_filesystem$fileid";
ALTER TABLE "filesystem$file_filedocument" DROP CONSTRAINT "uniq_filesystem$file_filedocument_system$filedocumentid";
DROP INDEX "idx_filesystem$file_filedocument_system$filedocument_filesystem$file";
ALTER TABLE "filesystem$file_filedocument" RENAME TO "97822026676549d49beab14819443ba8";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '93cef7e6-c217-4579-8fdd-19a9993f7a3d';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_filesystem$file_filedocument_filesystem$fileid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_filesystem$file_filedocument_system$filedocumentid';
CREATE TABLE "filesystem$file_filedocument" (
	"filesystem$fileid" BIGINT NOT NULL,
	"filesystem$filedocumentid" BIGINT NOT NULL,
	PRIMARY KEY("filesystem$fileid","filesystem$filedocumentid"),
	CONSTRAINT "uniq_filesystem$file_filedocument_filesystem$filedocumentid" UNIQUE ("filesystem$filedocumentid"),
	CONSTRAINT "uniq_filesystem$file_filedocument_filesystem$fileid" UNIQUE ("filesystem$fileid"));
CREATE INDEX "idx_filesystem$file_filedocument_filesystem$filedocument_filesystem$file" ON "filesystem$file_filedocument" ("filesystem$filedocumentid" ASC,"filesystem$fileid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('f6574308-f2c9-4ee5-b332-29131d57c33d', 
'FileSystem.File_FileDocument', 
'filesystem$file_filedocument', 
'29d583bb-d91d-4eea-86f8-5a63c1471b01', 
'58edc496-5819-4bb3-92ec-3ede09cb6556', 
'filesystem$fileid', 
'filesystem$filedocumentid', 
'idx_filesystem$file_filedocument_filesystem$filedocument_filesystem$file');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_filesystem$file_filedocument_filesystem$filedocumentid', 
'f6574308-f2c9-4ee5-b332-29131d57c33d', 
'78fd2943-5dbc-3bed-9a37-39365b873388');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_filesystem$file_filedocument_filesystem$fileid', 
'f6574308-f2c9-4ee5-b332-29131d57c33d', 
'd189169d-8379-300a-8958-873837ef0294');
CREATE TABLE "filesystem$filedocument" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id")
 VALUES ('58edc496-5819-4bb3-92ec-3ede09cb6556', 
'FileSystem.FileDocument', 
'filesystem$filedocument', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39');
DROP TABLE "97822026676549d49beab14819443ba8";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20191107 10:44:43';
