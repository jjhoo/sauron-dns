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
  is_foreign_key: 1
  is_nullable: 1

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
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
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

=head1 RELATIONS

=head2 server

Type: belongs_to

Related object: L<Sauron::DB::Schema::Result::Server>

=cut

__PACKAGE__->belongs_to(
  "server",
  "Sauron::DB::Schema::Result::Server",
  { id => "server" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XPx5hxNoX707jY50lrUu3w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
