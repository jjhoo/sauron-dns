use utf8;
package Sauron::DB::Schema::Result::Zone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Zone

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

=head1 TABLE: C<zones>

=cut

__PACKAGE__->table("zones");

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
  default_value: nextval(('"zones_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 server

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 active

  data_type: 'boolean'
  default_value: true
  is_nullable: 1

=head2 dummy

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 type

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 reverse

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 noreverse

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 flags

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 forward

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 nnotify

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 chknames

  data_type: 'char'
  default_value: 'D'
  is_nullable: 1
  size: 1

=head2 class

  data_type: 'char'
  default_value: 'in'
  is_nullable: 1
  size: 2

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 hostmaster

  data_type: 'text'
  is_nullable: 1

=head2 serial

  data_type: 'char'
  default_value: 1999123001
  is_nullable: 1
  size: 10

=head2 serial_date

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 refresh

  data_type: 'integer'
  is_nullable: 1

=head2 retry

  data_type: 'integer'
  is_nullable: 1

=head2 expire

  data_type: 'integer'
  is_nullable: 1

=head2 minimum

  data_type: 'integer'
  is_nullable: 1

=head2 ttl

  data_type: 'integer'
  is_nullable: 1

=head2 zone_ttl

  data_type: 'integer'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 reversenet

  data_type: 'cidr'
  is_nullable: 1

=head2 parent

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 rdate

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 transfer_source

  data_type: 'inet'
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
    default_value => \"nextval(('\"zones_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "server",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "active",
  { data_type => "boolean", default_value => \"true", is_nullable => 1 },
  "dummy",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "type",
  { data_type => "char", is_nullable => 0, size => 1 },
  "reverse",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "noreverse",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "flags",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "forward",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "nnotify",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "chknames",
  { data_type => "char", default_value => "D", is_nullable => 1, size => 1 },
  "class",
  { data_type => "char", default_value => "in", is_nullable => 1, size => 2 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "hostmaster",
  { data_type => "text", is_nullable => 1 },
  "serial",
  {
    data_type => "char",
    default_value => 1999123001,
    is_nullable => 1,
    size => 10,
  },
  "serial_date",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "refresh",
  { data_type => "integer", is_nullable => 1 },
  "retry",
  { data_type => "integer", is_nullable => 1 },
  "expire",
  { data_type => "integer", is_nullable => 1 },
  "minimum",
  { data_type => "integer", is_nullable => 1 },
  "ttl",
  { data_type => "integer", is_nullable => 1 },
  "zone_ttl",
  { data_type => "integer", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "reversenet",
  { data_type => "cidr", is_nullable => 1 },
  "parent",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "rdate",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "transfer_source",
  { data_type => "inet", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</server>

=item * L</name>

=back

=cut

__PACKAGE__->set_primary_key("server", "name");

=head1 UNIQUE CONSTRAINTS

=head2 C<zones_id_key>

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->add_unique_constraint("zones_id_key", ["id"]);

=head1 RELATIONS

=head2 hosts

Type: has_many

Related object: L<Sauron::DB::Schema::Result::Host>

=cut

__PACKAGE__->has_many(
  "hosts",
  "Sauron::DB::Schema::Result::Host",
  { "foreign.zone" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 server

Type: belongs_to

Related object: L<Sauron::DB::Schema::Result::Server>

=cut

__PACKAGE__->belongs_to(
  "server",
  "Sauron::DB::Schema::Result::Server",
  { id => "server" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);

=head2 users

Type: has_many

Related object: L<Sauron::DB::Schema::Result::User>

=cut

__PACKAGE__->has_many(
  "users",
  "Sauron::DB::Schema::Result::User",
  { "foreign.zone" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Iuu/g57nUkA0i3MsMKHIpA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
