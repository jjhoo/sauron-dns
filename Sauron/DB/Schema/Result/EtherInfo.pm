use utf8;
package Sauron::DB::Schema::Result::EtherInfo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::EtherInfo

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

=head1 TABLE: C<ether_info>

=cut

__PACKAGE__->table("ether_info");

=head1 ACCESSORS

=head2 ea

  data_type: 'char'
  is_nullable: 0
  size: 6

=head2 info

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ea",
  { data_type => "char", is_nullable => 0, size => 6 },
  "info",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ea>

=back

=cut

__PACKAGE__->set_primary_key("ea");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N7GncijeQtvbQoUd2W4e4w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
