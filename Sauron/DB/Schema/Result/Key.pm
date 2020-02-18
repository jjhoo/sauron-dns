use utf8;
package Sauron::DB::Schema::Result::Key;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Key

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

=head1 TABLE: C<keys>

=cut

__PACKAGE__->table("keys");

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
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'keys_id_seq'

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 ref

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 keytype

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 nametype

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 protocol

  data_type: 'integer'
  is_nullable: 0

=head2 algorithm

  data_type: 'integer'
  is_nullable: 0

=head2 mode

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 keysize

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 strength

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 publickey

  data_type: 'text'
  is_nullable: 1

=head2 secretkey

  data_type: 'text'
  is_nullable: 1

=head2 comment

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
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "keys_id_seq",
  },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "ref",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "keytype",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "nametype",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "protocol",
  { data_type => "integer", is_nullable => 0 },
  "algorithm",
  { data_type => "integer", is_nullable => 0 },
  "mode",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "keysize",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "strength",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "publickey",
  { data_type => "text", is_nullable => 1 },
  "secretkey",
  { data_type => "text", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<keyname_key>

=over 4

=item * L</name>

=item * L</ref>

=item * L</type>

=back

=cut

__PACKAGE__->add_unique_constraint("keyname_key", ["name", "ref", "type"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cLB2/vOf8ZPsO6pEZkLjRw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
