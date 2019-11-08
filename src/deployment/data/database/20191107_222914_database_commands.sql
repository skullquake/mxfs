CREATE TABLE "filesystem$symlink" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id")
 VALUES ('472be098-4f32-49dc-889a-e48d3970e711', 
'FileSystem.SymLink', 
'filesystem$symlink', 
'659ca67e-19a2-4039-8ed8-b31239bd17fd');
CREATE TABLE "filesystem$symlink_node" (
	"filesystem$symlinkid" BIGINT NOT NULL,
	"filesystem$nodeid" BIGINT NOT NULL,
	PRIMARY KEY("filesystem$symlinkid","filesystem$nodeid"),
	CONSTRAINT "uniq_filesystem$symlink_node_filesystem$symlinkid" UNIQUE ("filesystem$symlinkid"));
CREATE INDEX "idx_filesystem$symlink_node_filesystem$node_filesystem$symlink" ON "filesystem$symlink_node" ("filesystem$nodeid" ASC,"filesystem$symlinkid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('32d4f9ec-a299-4cd0-b840-1aa0789b340d', 
'FileSystem.SymLink_Node', 
'filesystem$symlink_node', 
'472be098-4f32-49dc-889a-e48d3970e711', 
'659ca67e-19a2-4039-8ed8-b31239bd17fd', 
'filesystem$symlinkid', 
'filesystem$nodeid', 
'idx_filesystem$symlink_node_filesystem$node_filesystem$symlink');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_filesystem$symlink_node_filesystem$symlinkid', 
'32d4f9ec-a299-4cd0-b840-1aa0789b340d', 
'a881ea25-bae6-3341-b48f-2dcbaad32256');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20191107 22:29:09';
