use utf8;
package Sauron::DB::Schema::Result::Lastlog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Lastlog

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

=head1 TABLE: C<lastlog>

=cut

__PACKAGE__->table("lastlog");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"lastlog_id_seq"'::text)::regclass)
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

=head2 state

  data_type: 'integer'
  is_nullable: 0

=head2 ldate

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 ip

  data_type: 'inet'
  is_nullable: 1

=head2 host2

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 host

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"lastlog_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "sid",
  { data_type => "integer", is_nullable => 0 },
  "uid",
  { data_type => "integer", is_nullable => 0 },
  "date",
  { data_type => "integer", is_nullable => 0 },
  "state",
  { data_type => "integer", is_nullable => 0 },
  "ldate",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "ip",
  { data_type => "inet", is_nullable => 1 },
  "host2",
  { data_type => "char", is_nullable => 1, size => 40 },
  "host",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:heuh01n1GM2olx7oM+Jlww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
