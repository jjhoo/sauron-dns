use utf8;
package Sauron::DB::Schema::Result::History;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::History

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

=head1 TABLE: C<history>

=cut

__PACKAGE__->table("history");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"history_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 sid

  data_type: 'integer'
  is_nullable: 0

=head2 uid

  data_type: 'integer'
  is_nullable: 0

=head2 date

  data_type: 'integer'
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 ref

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 action

  data_type: 'char'
  is_nullable: 1
  size: 25

=head2 info

  data_type: 'char'
  is_nullable: 1
  size: 80

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"history_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "sid",
  { data_type => "integer", is_nullable => 0 },
  "uid",
  { data_type => "integer", is_nullable => 0 },
  "date",
  { data_type => "integer", is_nullable => 0 },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "ref",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "action",
  { data_type => "char", is_nullable => 1, size => 25 },
  "info",
  { data_type => "char", is_nullable => 1, size => 80 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 ref

Type: belongs_to

Related object: L<Sauron::DB::Schema::Result::Host>

=cut

__PACKAGE__->belongs_to(
  "ref",
  "Sauron::DB::Schema::Result::Host",
  { id => "ref" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8VuTtAzsCeCrzUeiGYD99w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
