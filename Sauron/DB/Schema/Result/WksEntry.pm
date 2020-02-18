use utf8;
package Sauron::DB::Schema::Result::WksEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::WksEntry

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

=head1 TABLE: C<wks_entries>

=cut

__PACKAGE__->table("wks_entries");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"wks_entries_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 ref

  data_type: 'integer'
  is_nullable: 0

=head2 proto

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 services

  data_type: 'text'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"wks_entries_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "ref",
  { data_type => "integer", is_nullable => 0 },
  "proto",
  { data_type => "char", is_nullable => 1, size => 10 },
  "services",
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


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WJPfeiJK7+p2KVfN9Jja1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
