use utf8;
package Sauron::DB::Schema::Result::Net;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Net

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

=head1 TABLE: C<nets>

=cut

__PACKAGE__->table("nets");

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
  default_value: nextval(('"nets_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 server

  data_type: 'integer'
  is_nullable: 0

=head2 netname

  data_type: 'text'
  is_nullable: 1

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 net

  data_type: 'cidr'
  is_nullable: 0

=head2 subnet

  data_type: 'boolean'
  default_value: true
  is_nullable: 1

=head2 vlan

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 alevel

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 type

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 ipv6

  data_type: 'text'
  is_nullable: 1

=head2 rp_mbox

  data_type: 'text'
  default_value: '.'
  is_nullable: 1

=head2 rp_txt

  data_type: 'text'
  default_value: '.'
  is_nullable: 1

=head2 no_dhcp

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 range_start

  data_type: 'inet'
  is_nullable: 1

=head2 range_end

  data_type: 'inet'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 dummy

  data_type: 'boolean'
  default_value: false
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
    default_value => \"nextval(('\"nets_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "server",
  { data_type => "integer", is_nullable => 0 },
  "netname",
  { data_type => "text", is_nullable => 1 },
  "name",
  { data_type => "text", is_nullable => 1 },
  "net",
  { data_type => "cidr", is_nullable => 0 },
  "subnet",
  { data_type => "boolean", default_value => \"true", is_nullable => 1 },
  "vlan",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "alevel",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "type",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "ipv6",
  { data_type => "text", is_nullable => 1 },
  "rp_mbox",
  { data_type => "text", default_value => ".", is_nullable => 1 },
  "rp_txt",
  { data_type => "text", default_value => ".", is_nullable => 1 },
  "no_dhcp",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "range_start",
  { data_type => "inet", is_nullable => 1 },
  "range_end",
  { data_type => "inet", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "dummy",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</net>

=item * L</server>

=back

=cut

__PACKAGE__->set_primary_key("net", "server");

=head1 UNIQUE CONSTRAINTS

=head2 C<nets_id_key>

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->add_unique_constraint("nets_id_key", ["id"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+2I0q6WC2ZQtPmMw7Kl6AQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
