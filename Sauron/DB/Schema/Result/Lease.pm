use utf8;
package Sauron::DB::Schema::Result::Lease;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Lease

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

=head1 TABLE: C<leases>

=cut

__PACKAGE__->table("leases");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'leases_id_seq'

=head2 server

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 host

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 ip

  data_type: 'inet'
  is_nullable: 1

=head2 ipv6

  data_type: 'text'
  is_nullable: 1

=head2 lstart

  data_type: 'integer'
  is_nullable: 1

=head2 lend

  data_type: 'integer'
  is_nullable: 1

=head2 mac

  data_type: 'char'
  is_nullable: 1
  size: 12

=head2 state

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 uid

  data_type: 'text'
  is_nullable: 1

=head2 hostname

  data_type: 'text'
  is_nullable: 1

=head2 info

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "leases_id_seq",
  },
  "server",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "host",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "ip",
  { data_type => "inet", is_nullable => 1 },
  "ipv6",
  { data_type => "text", is_nullable => 1 },
  "lstart",
  { data_type => "integer", is_nullable => 1 },
  "lend",
  { data_type => "integer", is_nullable => 1 },
  "mac",
  { data_type => "char", is_nullable => 1, size => 12 },
  "state",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "uid",
  { data_type => "text", is_nullable => 1 },
  "hostname",
  { data_type => "text", is_nullable => 1 },
  "info",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 host

Type: belongs_to

Related object: L<Sauron::DB::Schema::Result::Host>

=cut

__PACKAGE__->belongs_to(
  "host",
  "Sauron::DB::Schema::Result::Host",
  { id => "host" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);

=head2 server

Type: belongs_to

Related object: L<Sauron::DB::Schema::Result::Server>

=cut

__PACKAGE__->belongs_to(
  "server",
  "Sauron::DB::Schema::Result::Server",
  { id => "server" },
  { is_deferrable => 0, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-22 23:22:17
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XdSaav55uaupAfDvaG/MOA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
