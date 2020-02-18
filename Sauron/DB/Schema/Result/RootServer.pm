use utf8;
package Sauron::DB::Schema::Result::RootServer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::RootServer

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

=head1 TABLE: C<root_servers>

=cut

__PACKAGE__->table("root_servers");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  default_value: nextval(('"root_servers_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 server

  data_type: 'integer'
  is_nullable: 0

=head2 ttl

  data_type: 'integer'
  default_value: 3600000
  is_nullable: 1

=head2 domain

  data_type: 'text'
  is_nullable: 0

=head2 type

  data_type: 'text'
  is_nullable: 0

=head2 value

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"root_servers_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "server",
  { data_type => "integer", is_nullable => 0 },
  "ttl",
  { data_type => "integer", default_value => 3600000, is_nullable => 1 },
  "domain",
  { data_type => "text", is_nullable => 0 },
  "type",
  { data_type => "text", is_nullable => 0 },
  "value",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tGsmXmTZQrV8AqsnJD8r5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
