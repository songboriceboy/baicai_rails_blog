CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "links" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "url" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "sort" integer);
CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "text" text(16777214), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "category_id" integer, "views" integer DEFAULT 0);
CREATE INDEX "index_articles_on_category_id" ON "articles" ("category_id");
CREATE TABLE "configs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "sc_key" varchar, "sc_value" text, "sc_note" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "req_logs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "ip" varchar, "url" varchar(250), "method" varchar, "ua" varchar(250), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20160428041322');

INSERT INTO schema_migrations (version) VALUES ('20160429143423');

INSERT INTO schema_migrations (version) VALUES ('20160430000545');

INSERT INTO schema_migrations (version) VALUES ('20160502063727');

INSERT INTO schema_migrations (version) VALUES ('20160502071222');

INSERT INTO schema_migrations (version) VALUES ('20160502112706');

INSERT INTO schema_migrations (version) VALUES ('20160502112707');

INSERT INTO schema_migrations (version) VALUES ('20160504151342');

INSERT INTO schema_migrations (version) VALUES ('20160508071635');

INSERT INTO schema_migrations (version) VALUES ('20160702024312');

