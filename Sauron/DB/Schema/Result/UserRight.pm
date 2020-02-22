use utf8;
package Sauron::DB::Schema::Result::UserRight;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::UserRight

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

=head1 TABLE: C<user_rights>

=cut

__PACKAGE__->table("user_rights");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"user_rights_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 ref

  data_type: 'integer'
  is_nullable: 0

=head2 rtype

  data_type: 'integer'
  is_nullable: 0

=head2 rref

  data_type: 'integer'
  is_nullable: 0

=head2 rule

  data_type: 'char'
  is_nullable: 1
  size: 40

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"user_rights_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "ref",
  { data_type => "integer", is_nullable => 0 },
  "rtype",
  { data_type => "integer", is_nullable => 0 },
  "rref",
  { data_type => "integer", is_nullable => 0 },
  "rule",
  { data_type => "char", is_nullable => 1, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ksR3TQhVsyy7mSjAEh+vBQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
