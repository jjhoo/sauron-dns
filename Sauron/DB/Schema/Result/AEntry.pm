use utf8;
package Sauron::DB::Schema::Result::AEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::AEntry

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

=head1 TABLE: C<a_entries>

=cut

__PACKAGE__->table("a_entries");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"a_entries_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 host

  data_type: 'integer'
  is_nullable: 0

=head2 ip

  data_type: 'inet'
  is_nullable: 1

=head2 ipv6

  data_type: 'text'
  is_nullable: 1

=head2 type

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 reverse

  data_type: 'boolean'
  default_value: true
  is_nullable: 1

=head2 forward

  data_type: 'boolean'
  default_value: true
  is_nullable: 1

=head2 comment

  data_type: 'char'
  is_nullable: 1
  size: 20

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"a_entries_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "host",
  { data_type => "integer", is_nullable => 0 },
  "ip",
  { data_type => "inet", is_nullable => 1 },
  "ipv6",
  { data_type => "text", is_nullable => 1 },
  "type",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "reverse",
  { data_type => "boolean", default_value => \"true", is_nullable => 1 },
  "forward",
  { data_type => "boolean", default_value => \"true", is_nullable => 1 },
  "comment",
  { data_type => "char", is_nullable => 1, size => 20 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RAJHCKxsR3w6tDqql+LyuQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
