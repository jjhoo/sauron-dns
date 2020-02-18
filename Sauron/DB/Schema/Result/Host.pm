use utf8;
package Sauron::DB::Schema::Result::Host;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Host

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

=head1 TABLE: C<hosts>

=cut

__PACKAGE__->table("hosts");

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
  default_value: nextval(('"hosts_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 zone

  data_type: 'integer'
  is_nullable: 0

=head2 type

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 domain

  data_type: 'text'
  is_nullable: 0

=head2 ttl

  data_type: 'integer'
  is_nullable: 1

=head2 class

  data_type: 'char'
  default_value: 'IN'
  is_nullable: 1
  size: 2

=head2 grp

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 alias

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 cname_txt

  data_type: 'text'
  is_nullable: 1

=head2 hinfo_hw

  data_type: 'text'
  is_nullable: 1

=head2 hinfo_sw

  data_type: 'text'
  is_nullable: 1

=head2 loc

  data_type: 'text'
  is_nullable: 1

=head2 wks

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 mx

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 rp_mbox

  data_type: 'text'
  default_value: '.'
  is_nullable: 1

=head2 rp_txt

  data_type: 'text'
  default_value: '.'
  is_nullable: 1

=head2 router

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 prn

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 ether

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 ether_alias

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 dhcp_date

  data_type: 'integer'
  is_nullable: 1

=head2 dhcp_info

  data_type: 'text'
  is_nullable: 1

=head2 info

  data_type: 'text'
  is_nullable: 1

=head2 location

  data_type: 'text'
  is_nullable: 1

=head2 dept

  data_type: 'text'
  is_nullable: 1

=head2 huser

  data_type: 'text'
  is_nullable: 1

=head2 model

  data_type: 'text'
  is_nullable: 1

=head2 serial

  data_type: 'text'
  is_nullable: 1

=head2 misc

  data_type: 'text'
  is_nullable: 1

=head2 asset_id

  data_type: 'text'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 flags

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 vmps

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 dhcp_last

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 email

  data_type: 'text'
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
    default_value => \"nextval(('\"hosts_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "zone",
  { data_type => "integer", is_nullable => 0 },
  "type",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "domain",
  { data_type => "text", is_nullable => 0 },
  "ttl",
  { data_type => "integer", is_nullable => 1 },
  "class",
  { data_type => "char", default_value => "IN", is_nullable => 1, size => 2 },
  "grp",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "alias",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "cname_txt",
  { data_type => "text", is_nullable => 1 },
  "hinfo_hw",
  { data_type => "text", is_nullable => 1 },
  "hinfo_sw",
  { data_type => "text", is_nullable => 1 },
  "loc",
  { data_type => "text", is_nullable => 1 },
  "wks",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "mx",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "rp_mbox",
  { data_type => "text", default_value => ".", is_nullable => 1 },
  "rp_txt",
  { data_type => "text", default_value => ".", is_nullable => 1 },
  "router",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "prn",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "ether",
  { data_type => "char", is_nullable => 1, size => 12 },
  "ether_alias",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "dhcp_date",
  { data_type => "integer", is_nullable => 1 },
  "dhcp_info",
  { data_type => "text", is_nullable => 1 },
  "info",
  { data_type => "text", is_nullable => 1 },
  "location",
  { data_type => "text", is_nullable => 1 },
  "dept",
  { data_type => "text", is_nullable => 1 },
  "huser",
  { data_type => "text", is_nullable => 1 },
  "model",
  { data_type => "text", is_nullable => 1 },
  "serial",
  { data_type => "text", is_nullable => 1 },
  "misc",
  { data_type => "text", is_nullable => 1 },
  "asset_id",
  { data_type => "text", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "flags",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "vmps",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "dhcp_last",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "email",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<asset_key>

=over 4

=item * L</asset_id>

=item * L</zone>

=back

=cut

__PACKAGE__->add_unique_constraint("asset_key", ["asset_id", "zone"]);

=head2 C<ether_key>

=over 4

=item * L</ether>

=item * L</zone>

=back

=cut

__PACKAGE__->add_unique_constraint("ether_key", ["ether", "zone"]);

=head2 C<hostname_key>

=over 4

=item * L</domain>

=item * L</zone>

=back

=cut

__PACKAGE__->add_unique_constraint("hostname_key", ["domain", "zone"]);

=head1 RELATIONS

=head2 histories

Type: has_many

Related object: L<Sauron::DB::Schema::Result::History>

=cut

__PACKAGE__->has_many(
  "histories",
  "Sauron::DB::Schema::Result::History",
  { "foreign.ref" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JTYT2JHN3s4kxPMJttOmTQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
