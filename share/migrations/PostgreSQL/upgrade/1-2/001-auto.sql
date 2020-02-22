-- Convert schema '/home/jahakala/build/sauron-dns/share/migrations/_source/deploy/1/001-auto.yml' to '/home/jahakala/build/sauron-dns/share/migrations/_source/deploy/2/001-auto.yml':;

;
BEGIN;

;
CREATE INDEX "a_entries_idx_host" on "a_entries" ("host");

;
ALTER TABLE "a_entries" ADD CONSTRAINT "a_entries_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "acls" ALTER COLUMN "server" DROP NOT NULL;

;
CREATE INDEX "acls_idx_server" on "acls" ("server");

;
ALTER TABLE "acls" ADD CONSTRAINT "acls_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "arec_entries_idx_arec" on "arec_entries" ("arec");

;
CREATE INDEX "arec_entries_idx_host" on "arec_entries" ("host");

;
ALTER TABLE "arec_entries" ADD CONSTRAINT "arec_entries_fk_arec" FOREIGN KEY ("arec")
  REFERENCES "a_entries" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "arec_entries" ADD CONSTRAINT "arec_entries_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "group_entries_idx_host" on "group_entries" ("host");

;
ALTER TABLE "group_entries" ADD CONSTRAINT "group_entries_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "groups_idx_server" on "groups" ("server");

;
ALTER TABLE "groups" ADD CONSTRAINT "groups_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "hosts_idx_zone" on "hosts" ("zone");

;
ALTER TABLE "hosts" ADD CONSTRAINT "hosts_fk_zone" FOREIGN KEY ("zone")
  REFERENCES "zones" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "leases_idx_host" on "leases" ("host");

;
CREATE INDEX "leases_idx_server" on "leases" ("server");

;
ALTER TABLE "leases" ADD CONSTRAINT "leases_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "leases" ADD CONSTRAINT "leases_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "nets_idx_server" on "nets" ("server");

;
ALTER TABLE "nets" ADD CONSTRAINT "nets_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "news" ALTER COLUMN "server" DROP DEFAULT;

;
CREATE INDEX "news_idx_server" on "news" ("server");

;
ALTER TABLE "news" ADD CONSTRAINT "news_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "root_servers" ALTER COLUMN "server" DROP NOT NULL;

;
CREATE INDEX "root_servers_idx_server" on "root_servers" ("server");

;
ALTER TABLE "root_servers" ADD CONSTRAINT "root_servers_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "servers" ALTER COLUMN "masterserver" DROP DEFAULT;

;
CREATE INDEX "servers_idx_masterserver" on "servers" ("masterserver");

;
ALTER TABLE "servers" ADD CONSTRAINT "servers_fk_masterserver" FOREIGN KEY ("masterserver")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "users" ALTER COLUMN "server" DROP DEFAULT;

;
ALTER TABLE "users" ALTER COLUMN "zone" DROP DEFAULT;

;
CREATE INDEX "users_idx_server" on "users" ("server");

;
CREATE INDEX "users_idx_zone" on "users" ("zone");

;
ALTER TABLE "users" ADD CONSTRAINT "users_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "users" ADD CONSTRAINT "users_fk_zone" FOREIGN KEY ("zone")
  REFERENCES "zones" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "vlans_idx_server" on "vlans" ("server");

;
ALTER TABLE "vlans" ADD CONSTRAINT "vlans_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "vmps_idx_server" on "vmps" ("server");

;
ALTER TABLE "vmps" ADD CONSTRAINT "vmps_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "wks_templates_idx_server" on "wks_templates" ("server");

;
ALTER TABLE "wks_templates" ADD CONSTRAINT "wks_templates_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
CREATE INDEX "zones_idx_server" on "zones" ("server");

;
ALTER TABLE "zones" ADD CONSTRAINT "zones_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;

COMMIT;

