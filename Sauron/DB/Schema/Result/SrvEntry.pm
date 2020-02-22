use utf8;
package Sauron::DB::Schema::Result::SrvEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::SrvEntry

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

=head1 TABLE: C<srv_entries>

=cut

__PACKAGE__->table("srv_entries");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"srv_entries_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 ref

  data_type: 'integer'
  is_nullable: 0

=head2 pri

  data_type: 'integer'
  is_nullable: 0

=head2 weight

  data_type: 'integer'
  is_nullable: 0

=head2 port

  data_type: 'integer'
  is_nullable: 0

=head2 target

  data_type: 'text'
  default_value: '.'
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"srv_entries_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "ref",
  { data_type => "integer", is_nullable => 0 },
  "pri",
  { data_type => "integer", is_nullable => 0 },
  "weight",
  { data_type => "integer", is_nullable => 0 },
  "port",
  { data_type => "integer", is_nullable => 0 },
  "target",
  { data_type => "text", default_value => ".", is_nullable => 0 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ee1pX2nT1txpoSyoZUdcEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;