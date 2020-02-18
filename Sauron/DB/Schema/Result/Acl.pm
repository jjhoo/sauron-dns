use utf8;
package Sauron::DB::Schema::Result::Acl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Acl

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

=head1 TABLE: C<acls>

=cut

__PACKAGE__->table("acls");

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
  sequence: 'acls_id_seq'

=head2 server

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 type

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

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
    sequence          => "acls_id_seq",
  },
  "server",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
  "type",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
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

=head2 C<acls_key>

=over 4

=item * L</name>

=item * L</server>

=back

=cut

__PACKAGE__->add_unique_constraint("acls_key", ["name", "server"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fjhq/I9ni9DIsfPLNhRZOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
