-- Convert schema '/home/jahakala/build/sauron-dns/share/migrations/_source/deploy/2/001-auto.yml' to '/home/jahakala/build/sauron-dns/share/migrations/_source/deploy/1/001-auto.yml':;

;
BEGIN;

;
ALTER TABLE "a_entries" DROP CONSTRAINT "a_entries_fk_host";

;
DROP INDEX "a_entries_idx_host";

;
ALTER TABLE "acls" DROP CONSTRAINT "acls_fk_server";

;
DROP INDEX "acls_idx_server";

;
ALTER TABLE "acls" ALTER COLUMN "server" SET NOT NULL;

;
ALTER TABLE "arec_entries" DROP CONSTRAINT "arec_entries_fk_arec";

;
ALTER TABLE "arec_entries" DROP CONSTRAINT "arec_entries_fk_host";

;
DROP INDEX "arec_entries_idx_arec";

;
DROP INDEX "arec_entries_idx_host";

;
ALTER TABLE "group_entries" DROP CONSTRAINT "group_entries_fk_host";

;
DROP INDEX "group_entries_idx_host";

;
ALTER TABLE "groups" DROP CONSTRAINT "groups_fk_server";

;
DROP INDEX "groups_idx_server";

;
ALTER TABLE "hosts" DROP CONSTRAINT "hosts_fk_zone";

;
DROP INDEX "hosts_idx_zone";

;
ALTER TABLE "leases" DROP CONSTRAINT "leases_fk_host";

;
ALTER TABLE "leases" DROP CONSTRAINT "leases_fk_server";

;
DROP INDEX "leases_idx_host";

;
DROP INDEX "leases_idx_server";

;
ALTER TABLE "nets" DROP CONSTRAINT "nets_fk_server";

;
DROP INDEX "nets_idx_server";

;
ALTER TABLE "news" DROP CONSTRAINT "news_fk_server";

;
DROP INDEX "news_idx_server";

;
ALTER TABLE "news" ALTER COLUMN "server" SET DEFAULT -1;

;
ALTER TABLE "root_servers" DROP CONSTRAINT "root_servers_fk_server";

;
DROP INDEX "root_servers_idx_server";

;
ALTER TABLE "root_servers" ALTER COLUMN "server" SET NOT NULL;

;
ALTER TABLE "servers" DROP CONSTRAINT "servers_fk_masterserver";

;
DROP INDEX "servers_idx_masterserver";

;
ALTER TABLE "servers" ALTER COLUMN "masterserver" SET DEFAULT -1;

;
ALTER TABLE "users" DROP CONSTRAINT "users_fk_server";

;
ALTER TABLE "users" DROP CONSTRAINT "users_fk_zone";

;
DROP INDEX "users_idx_server";

;
DROP INDEX "users_idx_zone";

;
ALTER TABLE "users" ALTER COLUMN "server" SET DEFAULT -1;

;
ALTER TABLE "users" ALTER COLUMN "zone" SET DEFAULT -1;

;
ALTER TABLE "vlans" DROP CONSTRAINT "vlans_fk_server";

;
DROP INDEX "vlans_idx_server";

;
ALTER TABLE "vmps" DROP CONSTRAINT "vmps_fk_server";

;
DROP INDEX "vmps_idx_server";

;
ALTER TABLE "wks_templates" DROP CONSTRAINT "wks_templates_fk_server";

;
DROP INDEX "wks_templates_idx_server";

;
ALTER TABLE "zones" DROP CONSTRAINT "zones_fk_server";

;
DROP INDEX "zones_idx_server";

;

COMMIT;

