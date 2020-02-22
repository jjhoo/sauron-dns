use utf8;
package Sauron::DB::Schema::Result::Server;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Server

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<servers>

=cut

__PACKAGE__->table("servers");

=head1 ACCESSORS

=head2 cdate

  data_type: 'integer'
  is_nullable: 1

=head2 cuser

  data_type: 'char'
  default_value: 'unknown'
  is_nullable: 1
  size: 8

=head2 mdate

  data_type: 'integer'
  is_nullable: 1

=head2 muser

  data_type: 'char'
  default_value: 'unknown'
  is_nullable: 1
  size: 8

=head2 expiration

  data_type: 'integer'
  is_nullable: 1

=head2 id

  data_type: 'integer'
  default_value: nextval(('"servers_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 zones_only

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 no_roots

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 dhcp_mode

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 dhcp_flags

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 named_flags

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 masterserver

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 version

  data_type: 'text'
  is_nullable: 1

=head2 directory

  data_type: 'text'
  is_nullable: 1

=head2 pid_file

  data_type: 'text'
  is_nullable: 1

=head2 dump_file

  data_type: 'text'
  is_nullable: 1

=head2 named_xfer

  data_type: 'text'
  is_nullable: 1

=head2 stats_file

  data_type: 'text'
  is_nullable: 1

=head2 memstats_file

  data_type: 'text'
  is_nullable: 1

=head2 named_ca

  data_type: 'text'
  default_value: 'named.ca'
  is_nullable: 1

=head2 pzone_path

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 1

=head2 szone_path

  data_type: 'text'
  default_value: 'NS2/'
  is_nullable: 1

=head2 query_src_ip

  data_type: 'text'
  is_nullable: 1

=head2 query_src_port

  data_type: 'text'
  is_nullable: 1

=head2 listen_on_port

  data_type: 'text'
  is_nullable: 1

=head2 transfer_source

  data_type: 'inet'
  is_nullable: 1

=head2 forward

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 checknames_m

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 checknames_s

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 checknames_r

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 nnotify

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 recursion

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 authnxdomain

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 dialup

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 multiple_cnames

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 rfc2308_type1

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 ttl

  data_type: 'integer'
  default_value: 86400
  is_nullable: 1

=head2 refresh

  data_type: 'integer'
  default_value: 43200
  is_nullable: 1

=head2 retry

  data_type: 'integer'
  default_value: 3600
  is_nullable: 1

=head2 expire

  data_type: 'integer'
  default_value: 2419200
  is_nullable: 1

=head2 minimum

  data_type: 'integer'
  default_value: 86400
  is_nullable: 1

=head2 ipv6

  data_type: 'text'
  is_nullable: 1

=head2 df_port

  data_type: 'integer'
  default_value: 519
  is_nullable: 1

=head2 df_max_delay

  data_type: 'integer'
  default_value: 60
  is_nullable: 1

=head2 df_max_uupdates

  data_type: 'integer'
  default_value: 10
  is_nullable: 1

=head2 df_mclt

  data_type: 'integer'
  default_value: 3600
  is_nullable: 1

=head2 df_split

  data_type: 'integer'
  default_value: 128
  is_nullable: 1

=head2 df_loadbalmax

  data_type: 'integer'
  default_value: 3
  is_nullable: 1

=head2 hostname

  data_type: 'text'
  is_nullable: 1

=head2 hostaddr

  data_type: 'inet'
  is_nullable: 1

=head2 hostmaster

  data_type: 'text'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 lastrun

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cdate",
  { data_type => "integer", is_nullable => 1 },
  "cuser",
  {
    data_type => "char",
    default_value => "unknown",
    is_nullable => 1,
    size => 8,
  },
  "mdate",
  { data_type => "integer", is_nullable => 1 },
  "muser",
  {
    data_type => "char",
    default_value => "unknown",
    is_nullable => 1,
    size => 8,
  },
  "expiration",
  { data_type => "integer", is_nullable => 1 },
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"servers_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "name",
  { data_type => "text", is_nullable => 0 },
  "zones_only",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "no_roots",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "dhcp_mode",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "dhcp_flags",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "named_flags",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "masterserver",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "version",
  { data_type => "text", is_nullable => 1 },
  "directory",
  { data_type => "text", is_nullable => 1 },
  "pid_file",
  { data_type => "text", is_nullable => 1 },
  "dump_file",
  { data_type => "text", is_nullable => 1 },
  "named_xfer",
  { data_type => "text", is_nullable => 1 },
  "stats_file",
  { data_type => "text", is_nullable => 1 },
  "memstats_file",
  { data_type => "text", is_nullable => 1 },
  "named_ca",
  { data_type => "text", default_value => "named.ca", is_nullable => 1 },
  "pzone_path",
  { data_type => "text", default_value => "", is_nullable => 1 },
  "szone_path",
  { data_type => "text", default_value => "NS2/", is_nullable => 1 },
  "query_src_ip",
  { data_type => "text", is_nullable => 1 },
  "query_src_port",
  { data_type => "text", is_nullable => 1 },
  "listen_on_port",
  { data_type => "text", is_nullable => 1 },
  "transfer_source",
  { data_type => "inet", is_nullable => 1 },
  "forward",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "checknames_m",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "checknames_s",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "checknames_r",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "nnotify",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "recursion",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "authnxdomain",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "dialup",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "multiple_cnames",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "rfc2308_type1",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "ttl",
  { data_type => "integer", default_value => 86400, is_nullable => 1 },
  "refresh",
  { data_type => "integer", default_value => 43200, is_nullable => 1 },
  "retry",
  { data_type => "integer", default_value => 3600, is_nullable => 1 },
  "expire",
  { data_type => "integer", default_value => 2419200, is_nullable => 1 },
  "minimum",
  { data_type => "integer", default_value => 86400, is_nullable => 1 },
  "ipv6",
  { data_type => "text", is_nullable => 1 },
  "df_port",
  { data_type => "integer", default_value => 519, is_nullable => 1 },
  "df_max_delay",
  { data_type => "integer", default_value => 60, is_nullable => 1 },
  "df_max_uupdates",
  { data_type => "integer", default_value => 10, is_nullable => 1 },
  "df_mclt",
  { data_type => "integer", default_value => 3600, is_nullable => 1 },
  "df_split",
  { data_type => "integer", default_value => 128, is_nullable => 1 },
  "df_loadbalmax",
  { data_type => "integer", default_value => 3, is_nullable => 1 },
  "hostname",
  { data_type => "text", is_nullable => 1 },
  "hostaddr",
  { data_type => "inet", is_nullable => 1 },
  "hostmaster",
  { data_type => "text", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "lastrun",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<servers_name_key>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("servers_name_key", ["name"]);

=head1 RELATIONS

=head2 acls

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Acl>

=cut

__PACKAGE__->has_many(
  "acls",
  "Sauron::DB::Schema::Result::Acl",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 groups

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Group>

=cut

__PACKAGE__->has_many(
  "groups",
  "Sauron::DB::Schema::Result::Group",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 leases

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Lease>

=cut

__PACKAGE__->has_many(
  "leases",
  "Sauron::DB::Schema::Result::Lease",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 masterserver

Type: belongs_to

Related object: L<Sauron::DB::Schema::Result::Server>

=cut

__PACKAGE__->belongs_to(
  "masterserver",
  "Sauron::DB::Schema::Result::Server",
  { id => "masterserver" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);

=head2 nets

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Net>

=cut

__PACKAGE__->has_many(
  "nets",
  "Sauron::DB::Schema::Result::Net",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 news

Type: has_many

Related object: L<Sauron::DB::Schema::Result::News>

=cut

__PACKAGE__->has_many(
  "news",
  "Sauron::DB::Schema::Result::News",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 root_servers

Type: has_many

Related object: L<Sauron::DB::Schema::Result::RootServer>

=cut

__PACKAGE__->has_many(
  "root_servers",
  "Sauron::DB::Schema::Result::RootServer",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 servers

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Server>

=cut

__PACKAGE__->has_many(
  "servers",
  "Sauron::DB::Schema::Result::Server",
  { "foreign.masterserver" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 users

Type: has_many

Related object: L<Sauron::DB::Schema::Result::User>

=cut

__PACKAGE__->has_many(
  "users",
  "Sauron::DB::Schema::Result::User",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vlans

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Vlan>

=cut

__PACKAGE__->has_many(
  "vlans",
  "Sauron::DB::Schema::Result::Vlan",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vmps

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Vmp>

=cut

__PACKAGE__->has_many(
  "vmps",
  "Sauron::DB::Schema::Result::Vmp",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 wks_templates

Type: has_many

Related object: L<Sauron::DB::Schema::Result::WksTemplate>

=cut

__PACKAGE__->has_many(
  "wks_templates",
  "Sauron::DB::Schema::Result::WksTemplate",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 zones

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Zone>

=cut

__PACKAGE__->has_many(
  "zones",
  "Sauron::DB::Schema::Result::Zone",
  { "foreign.server" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fJxNZSPKegiRUle4s2W8Mg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
