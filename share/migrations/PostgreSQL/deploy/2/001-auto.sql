-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Sat Feb 22 23:55:58 2020
-- 
;
--
-- Table: cidr_entries
--
CREATE TABLE "cidr_entries" (
  "id" integer DEFAULT nextval(('"cidr_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "ip" cidr,
  "comment" text,
  "mode" integer DEFAULT 0,
  "acl" integer DEFAULT -1,
  "tkey" integer DEFAULT -1,
  "op" integer DEFAULT 0,
  "port" integer,
  PRIMARY KEY ("id")
);

;
--
-- Table: common_fields
--
CREATE TABLE "common_fields" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer
);

;
--
-- Table: dhcp_entries
--
CREATE TABLE "dhcp_entries" (
  "id" integer DEFAULT nextval(('"dhcp_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "dhcp" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: ether_info
--
CREATE TABLE "ether_info" (
  "ea" character(6) NOT NULL,
  "info" text,
  PRIMARY KEY ("ea")
);

;
--
-- Table: hinfo_templates
--
CREATE TABLE "hinfo_templates" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"hinfo_templates_id_seq"'::text)::regclass) NOT NULL,
  "hinfo" text NOT NULL,
  "type" integer DEFAULT 0,
  "pri" integer DEFAULT 100,
  PRIMARY KEY ("id"),
  CONSTRAINT "hinfo_templates_hinfo_key" UNIQUE ("hinfo")
);

;
--
-- Table: keys
--
CREATE TABLE "keys" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" serial NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "name" text NOT NULL,
  "keytype" integer DEFAULT 0,
  "nametype" integer DEFAULT 0,
  "protocol" integer NOT NULL,
  "algorithm" integer NOT NULL,
  "mode" integer DEFAULT 0,
  "keysize" integer DEFAULT -1,
  "strength" integer DEFAULT 0,
  "publickey" text,
  "secretkey" text,
  "comment" text,
  PRIMARY KEY ("id"),
  CONSTRAINT "keyname_key" UNIQUE ("name", "ref", "type")
);

;
--
-- Table: lastlog
--
CREATE TABLE "lastlog" (
  "id" integer DEFAULT nextval(('"lastlog_id_seq"'::text)::regclass) NOT NULL,
  "sid" integer NOT NULL,
  "uid" integer NOT NULL,
  "date" integer NOT NULL,
  "state" integer NOT NULL,
  "ldate" integer DEFAULT -1,
  "ip" inet,
  "host2" character(40),
  "host" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: mx_entries
--
CREATE TABLE "mx_entries" (
  "id" integer DEFAULT nextval(('"mx_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "pri" integer NOT NULL,
  "mx" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: mx_templates
--
CREATE TABLE "mx_templates" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"mx_templates_id_seq"'::text)::regclass) NOT NULL,
  "zone" integer NOT NULL,
  "alevel" integer DEFAULT 0,
  "name" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: ns_entries
--
CREATE TABLE "ns_entries" (
  "id" integer DEFAULT nextval(('"ns_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "ns" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: printer_classes
--
CREATE TABLE "printer_classes" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"printer_classes_id_seq"'::text)::regclass) NOT NULL,
  "name" text NOT NULL,
  "comment" text,
  PRIMARY KEY ("id"),
  CONSTRAINT "printer_classes_name_key" UNIQUE ("name")
);

;
--
-- Table: printer_entries
--
CREATE TABLE "printer_entries" (
  "id" integer DEFAULT nextval(('"printer_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "printer" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: servers
--
CREATE TABLE "servers" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"servers_id_seq"'::text)::regclass) NOT NULL,
  "name" text NOT NULL,
  "zones_only" boolean DEFAULT false,
  "no_roots" boolean DEFAULT false,
  "dhcp_mode" integer DEFAULT 1,
  "dhcp_flags" integer DEFAULT 0,
  "named_flags" integer DEFAULT 0,
  "masterserver" integer,
  "version" text,
  "directory" text,
  "pid_file" text,
  "dump_file" text,
  "named_xfer" text,
  "stats_file" text,
  "memstats_file" text,
  "named_ca" text DEFAULT 'named.ca',
  "pzone_path" text DEFAULT '',
  "szone_path" text DEFAULT 'NS2/',
  "query_src_ip" text,
  "query_src_port" text,
  "listen_on_port" text,
  "transfer_source" inet,
  "forward" character(1) DEFAULT 'D',
  "checknames_m" character(1) DEFAULT 'D',
  "checknames_s" character(1) DEFAULT 'D',
  "checknames_r" character(1) DEFAULT 'D',
  "nnotify" character(1) DEFAULT 'D',
  "recursion" character(1) DEFAULT 'D',
  "authnxdomain" character(1) DEFAULT 'D',
  "dialup" character(1) DEFAULT 'D',
  "multiple_cnames" character(1) DEFAULT 'D',
  "rfc2308_type1" character(1) DEFAULT 'D',
  "ttl" integer DEFAULT 86400,
  "refresh" integer DEFAULT 43200,
  "retry" integer DEFAULT 3600,
  "expire" integer DEFAULT 2419200,
  "minimum" integer DEFAULT 86400,
  "ipv6" text,
  "df_port" integer DEFAULT 519,
  "df_max_delay" integer DEFAULT 60,
  "df_max_uupdates" integer DEFAULT 10,
  "df_mclt" integer DEFAULT 3600,
  "df_split" integer DEFAULT 128,
  "df_loadbalmax" integer DEFAULT 3,
  "hostname" text,
  "hostaddr" inet,
  "hostmaster" text,
  "comment" text,
  "lastrun" integer DEFAULT -1,
  PRIMARY KEY ("id"),
  CONSTRAINT "servers_name_key" UNIQUE ("name")
);
CREATE INDEX "servers_idx_masterserver" on "servers" ("masterserver");

;
--
-- Table: settings
--
CREATE TABLE "settings" (
  "setting" text NOT NULL,
  "value" text,
  "ivalue" integer,
  PRIMARY KEY ("setting")
);

;
--
-- Table: srv_entries
--
CREATE TABLE "srv_entries" (
  "id" integer DEFAULT nextval(('"srv_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "pri" integer NOT NULL,
  "weight" integer NOT NULL,
  "port" integer NOT NULL,
  "target" text DEFAULT '.' NOT NULL,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: txt_entries
--
CREATE TABLE "txt_entries" (
  "id" integer DEFAULT nextval(('"txt_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "txt" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: user_groups
--
CREATE TABLE "user_groups" (
  "id" integer DEFAULT nextval(('"user_groups_id_seq"'::text)::regclass) NOT NULL,
  "name" text NOT NULL,
  "comment" text,
  PRIMARY KEY ("id"),
  CONSTRAINT "user_groups_name_key" UNIQUE ("name")
);

;
--
-- Table: user_rights
--
CREATE TABLE "user_rights" (
  "id" integer DEFAULT nextval(('"user_rights_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "rtype" integer NOT NULL,
  "rref" integer NOT NULL,
  "rule" character(40),
  PRIMARY KEY ("id")
);

;
--
-- Table: utmp
--
CREATE TABLE "utmp" (
  "cookie" character(32) NOT NULL,
  "uid" integer,
  "gid" integer,
  "sid" integer,
  "uname" text,
  "addr" cidr,
  "superuser" boolean DEFAULT false,
  "auth" boolean DEFAULT false,
  "mode" integer,
  "w" text,
  "serverid" integer DEFAULT -1,
  "server" text,
  "zoneid" integer DEFAULT -1,
  "zone" text,
  "login" integer DEFAULT 0,
  "last" integer DEFAULT 0,
  "searchopts" text,
  "searchdomain" text,
  "searchpattern" text,
  PRIMARY KEY ("cookie")
);

;
--
-- Table: wks_entries
--
CREATE TABLE "wks_entries" (
  "id" integer DEFAULT nextval(('"wks_entries_id_seq"'::text)::regclass) NOT NULL,
  "type" integer NOT NULL,
  "ref" integer NOT NULL,
  "proto" character(10),
  "services" text,
  "comment" text,
  PRIMARY KEY ("id")
);

;
--
-- Table: acls
--
CREATE TABLE "acls" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" serial NOT NULL,
  "server" integer,
  "name" text NOT NULL,
  "type" integer DEFAULT 0 NOT NULL,
  "comment" text,
  PRIMARY KEY ("id"),
  CONSTRAINT "acls_key" UNIQUE ("name", "server")
);
CREATE INDEX "acls_idx_server" on "acls" ("server");

;
--
-- Table: groups
--
CREATE TABLE "groups" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"groups_id_seq"'::text)::regclass) NOT NULL,
  "server" integer NOT NULL,
  "name" text NOT NULL,
  "type" integer NOT NULL,
  "alevel" integer DEFAULT 0,
  "comment" text,
  "vmps" integer DEFAULT -1,
  PRIMARY KEY ("id"),
  CONSTRAINT "groups_key" UNIQUE ("name", "server")
);
CREATE INDEX "groups_idx_server" on "groups" ("server");

;
--
-- Table: nets
--
CREATE TABLE "nets" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"nets_id_seq"'::text)::regclass) NOT NULL,
  "server" integer NOT NULL,
  "netname" text,
  "name" text,
  "net" cidr NOT NULL,
  "subnet" boolean DEFAULT true,
  "vlan" integer DEFAULT -1,
  "alevel" integer DEFAULT 0,
  "type" integer DEFAULT 0,
  "ipv6" text,
  "rp_mbox" text DEFAULT '.',
  "rp_txt" text DEFAULT '.',
  "no_dhcp" boolean DEFAULT false,
  "range_start" inet,
  "range_end" inet,
  "comment" text,
  "dummy" boolean DEFAULT false,
  PRIMARY KEY ("server", "net"),
  CONSTRAINT "nets_id_key" UNIQUE ("id")
);
CREATE INDEX "nets_idx_server" on "nets" ("server");

;
--
-- Table: news
--
CREATE TABLE "news" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"news_id_seq"'::text)::regclass) NOT NULL,
  "server" integer,
  "info" text NOT NULL,
  PRIMARY KEY ("id")
);
CREATE INDEX "news_idx_server" on "news" ("server");

;
--
-- Table: root_servers
--
CREATE TABLE "root_servers" (
  "id" integer DEFAULT nextval(('"root_servers_id_seq"'::text)::regclass) NOT NULL,
  "server" integer,
  "ttl" integer DEFAULT 3600000,
  "domain" text NOT NULL,
  "type" text NOT NULL,
  "value" text NOT NULL,
  PRIMARY KEY ("id")
);
CREATE INDEX "root_servers_idx_server" on "root_servers" ("server");

;
--
-- Table: vlans
--
CREATE TABLE "vlans" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"vlans_id_seq"'::text)::regclass) NOT NULL,
  "server" integer NOT NULL,
  "name" text NOT NULL,
  "description" text,
  "comment" text,
  "vlanno" integer,
  PRIMARY KEY ("server", "name"),
  CONSTRAINT "vlans_id_key" UNIQUE ("id")
);
CREATE INDEX "vlans_idx_server" on "vlans" ("server");

;
--
-- Table: vmps
--
CREATE TABLE "vmps" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"vmps_id_seq"'::text)::regclass) NOT NULL,
  "server" integer NOT NULL,
  "name" text NOT NULL,
  "description" text,
  "mode" integer DEFAULT 0,
  "nodomainreq" integer DEFAULT 0,
  "fallback" integer DEFAULT -1,
  "comment" text,
  PRIMARY KEY ("server", "name"),
  CONSTRAINT "vmps_id_key" UNIQUE ("id")
);
CREATE INDEX "vmps_idx_server" on "vmps" ("server");

;
--
-- Table: wks_templates
--
CREATE TABLE "wks_templates" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"wks_templates_id_seq"'::text)::regclass) NOT NULL,
  "server" integer NOT NULL,
  "alevel" integer DEFAULT 0,
  "name" text,
  "comment" text,
  PRIMARY KEY ("id")
);
CREATE INDEX "wks_templates_idx_server" on "wks_templates" ("server");

;
--
-- Table: zones
--
CREATE TABLE "zones" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"zones_id_seq"'::text)::regclass) NOT NULL,
  "server" integer NOT NULL,
  "active" boolean DEFAULT true,
  "dummy" boolean DEFAULT false,
  "type" character(1) NOT NULL,
  "reverse" boolean DEFAULT false,
  "noreverse" boolean DEFAULT false,
  "flags" integer DEFAULT 0,
  "forward" character(1) DEFAULT 'D',
  "nnotify" character(1) DEFAULT 'D',
  "chknames" character(1) DEFAULT 'D',
  "class" character(2) DEFAULT 'in',
  "name" text NOT NULL,
  "hostmaster" text,
  "serial" character(10) DEFAULT '1999123001',
  "serial_date" integer DEFAULT 0,
  "refresh" integer,
  "retry" integer,
  "expire" integer,
  "minimum" integer,
  "ttl" integer,
  "zone_ttl" integer,
  "comment" text,
  "reversenet" cidr,
  "parent" integer DEFAULT -1,
  "rdate" integer DEFAULT 0,
  "transfer_source" inet,
  PRIMARY KEY ("server", "name"),
  CONSTRAINT "zones_id_key" UNIQUE ("id")
);
CREATE INDEX "zones_idx_server" on "zones" ("server");

;
--
-- Table: hosts
--
CREATE TABLE "hosts" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"hosts_id_seq"'::text)::regclass) NOT NULL,
  "zone" integer NOT NULL,
  "type" integer DEFAULT 0,
  "domain" text NOT NULL,
  "ttl" integer,
  "class" character(2) DEFAULT 'IN',
  "grp" integer DEFAULT -1,
  "alias" integer DEFAULT -1,
  "cname_txt" text,
  "hinfo_hw" text,
  "hinfo_sw" text,
  "loc" text,
  "wks" integer DEFAULT -1,
  "mx" integer DEFAULT -1,
  "rp_mbox" text DEFAULT '.',
  "rp_txt" text DEFAULT '.',
  "router" integer DEFAULT 0,
  "prn" boolean DEFAULT false,
  "ether" character(12),
  "ether_alias" integer DEFAULT -1,
  "dhcp_date" integer,
  "dhcp_info" text,
  "info" text,
  "location" text,
  "dept" text,
  "huser" text,
  "model" text,
  "serial" text,
  "misc" text,
  "asset_id" text,
  "comment" text,
  "flags" integer DEFAULT 0,
  "vmps" integer DEFAULT -1,
  "dhcp_last" integer DEFAULT -1,
  "email" text,
  PRIMARY KEY ("id"),
  CONSTRAINT "asset_key" UNIQUE ("asset_id", "zone"),
  CONSTRAINT "ether_key" UNIQUE ("ether", "zone"),
  CONSTRAINT "hostname_key" UNIQUE ("domain", "zone")
);
CREATE INDEX "hosts_idx_zone" on "hosts" ("zone");

;
--
-- Table: users
--
CREATE TABLE "users" (
  "cdate" integer,
  "cuser" character(8) DEFAULT 'unknown',
  "mdate" integer,
  "muser" character(8) DEFAULT 'unknown',
  "expiration" integer,
  "id" integer DEFAULT nextval(('"users_id_seq"'::text)::regclass) NOT NULL,
  "gid" integer DEFAULT -1,
  "username" text NOT NULL,
  "password" text,
  "name" text,
  "email" text,
  "superuser" boolean DEFAULT false,
  "server" integer,
  "zone" integer,
  "last" integer DEFAULT 0,
  "last_pwd" integer DEFAULT 0,
  "last_from" text,
  "search_opts" text,
  "flags" integer DEFAULT 0,
  "comment" text,
  PRIMARY KEY ("id"),
  CONSTRAINT "username_key" UNIQUE ("username")
);
CREATE INDEX "users_idx_server" on "users" ("server");
CREATE INDEX "users_idx_zone" on "users" ("zone");

;
--
-- Table: a_entries
--
CREATE TABLE "a_entries" (
  "id" integer DEFAULT nextval(('"a_entries_id_seq"'::text)::regclass) NOT NULL,
  "host" integer NOT NULL,
  "ip" inet,
  "ipv6" text,
  "type" integer DEFAULT 0,
  "reverse" boolean DEFAULT true,
  "forward" boolean DEFAULT true,
  "comment" character(20),
  PRIMARY KEY ("id")
);
CREATE INDEX "a_entries_idx_host" on "a_entries" ("host");

;
--
-- Table: group_entries
--
CREATE TABLE "group_entries" (
  "id" integer DEFAULT nextval(('"group_entries_id_seq"'::text)::regclass) NOT NULL,
  "host" integer NOT NULL,
  "grp" integer NOT NULL,
  PRIMARY KEY ("id")
);
CREATE INDEX "group_entries_idx_host" on "group_entries" ("host");

;
--
-- Table: history
--
CREATE TABLE "history" (
  "id" integer DEFAULT nextval(('"history_id_seq"'::text)::regclass) NOT NULL,
  "sid" integer NOT NULL,
  "uid" integer NOT NULL,
  "date" integer NOT NULL,
  "type" integer NOT NULL,
  "ref" integer,
  "action" character(25),
  "info" character(80),
  PRIMARY KEY ("id")
);
CREATE INDEX "history_idx_ref" on "history" ("ref");

;
--
-- Table: leases
--
CREATE TABLE "leases" (
  "id" serial NOT NULL,
  "server" integer NOT NULL,
  "host" integer NOT NULL,
  "ip" inet,
  "ipv6" text,
  "lstart" integer,
  "lend" integer,
  "mac" character(12),
  "state" integer DEFAULT 0,
  "uid" text,
  "hostname" text,
  "info" text,
  PRIMARY KEY ("id")
);
CREATE INDEX "leases_idx_host" on "leases" ("host");
CREATE INDEX "leases_idx_server" on "leases" ("server");

;
--
-- Table: arec_entries
--
CREATE TABLE "arec_entries" (
  "id" integer DEFAULT nextval(('"arec_entries_id_seq"'::text)::regclass) NOT NULL,
  "host" integer NOT NULL,
  "arec" integer NOT NULL,
  PRIMARY KEY ("id")
);
CREATE INDEX "arec_entries_idx_arec" on "arec_entries" ("arec");
CREATE INDEX "arec_entries_idx_host" on "arec_entries" ("host");

;
--
-- Foreign Key Definitions
--

;
ALTER TABLE "servers" ADD CONSTRAINT "servers_fk_masterserver" FOREIGN KEY ("masterserver")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "acls" ADD CONSTRAINT "acls_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "groups" ADD CONSTRAINT "groups_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "nets" ADD CONSTRAINT "nets_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "news" ADD CONSTRAINT "news_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "root_servers" ADD CONSTRAINT "root_servers_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "vlans" ADD CONSTRAINT "vlans_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "vmps" ADD CONSTRAINT "vmps_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "wks_templates" ADD CONSTRAINT "wks_templates_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "zones" ADD CONSTRAINT "zones_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "hosts" ADD CONSTRAINT "hosts_fk_zone" FOREIGN KEY ("zone")
  REFERENCES "zones" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "users" ADD CONSTRAINT "users_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "users" ADD CONSTRAINT "users_fk_zone" FOREIGN KEY ("zone")
  REFERENCES "zones" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "a_entries" ADD CONSTRAINT "a_entries_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "group_entries" ADD CONSTRAINT "group_entries_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "history" ADD CONSTRAINT "history_fk_ref" FOREIGN KEY ("ref")
  REFERENCES "hosts" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

;
ALTER TABLE "leases" ADD CONSTRAINT "leases_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "leases" ADD CONSTRAINT "leases_fk_server" FOREIGN KEY ("server")
  REFERENCES "servers" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "arec_entries" ADD CONSTRAINT "arec_entries_fk_arec" FOREIGN KEY ("arec")
  REFERENCES "a_entries" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
ALTER TABLE "arec_entries" ADD CONSTRAINT "arec_entries_fk_host" FOREIGN KEY ("host")
  REFERENCES "hosts" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

;
