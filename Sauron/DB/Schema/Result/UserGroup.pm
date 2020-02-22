use utf8;
package Sauron::DB::Schema::Result::UserGroup;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::UserGroup

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

=head1 TABLE: C<user_groups>

=cut

__PACKAGE__->table("user_groups");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"user_groups_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"user_groups_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "name",
  { data_type => "text", is_nullable => 0 },
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

=head2 C<user_groups_name_key>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("user_groups_name_key", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qbYj/PQMnwDjazWfrLIQYg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
