use utf8;
package Sauron::DB::Schema::Result::CidrEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::CidrEntry

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

=head1 TABLE: C<cidr_entries>

=cut

__PACKAGE__->table("cidr_entries");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"cidr_entries_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 ref

  data_type: 'integer'
  is_nullable: 0

=head2 ip

  data_type: 'cidr'
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=head2 mode

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 acl

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 tkey

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 op

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 port

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"cidr_entries_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "ref",
  { data_type => "integer", is_nullable => 0 },
  "ip",
  { data_type => "cidr", is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
  "mode",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "acl",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "tkey",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "op",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "port",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9TljMj8SD5AAljjcoW13Mg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
