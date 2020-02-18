use utf8;
package Sauron::DB::Schema::Result::Utmp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::Utmp

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

=head1 TABLE: C<utmp>

=cut

__PACKAGE__->table("utmp");

=head1 ACCESSORS

=head2 cookie

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 uid

  data_type: 'integer'
  is_nullable: 1

=head2 gid

  data_type: 'integer'
  is_nullable: 1

=head2 sid

  data_type: 'integer'
  is_nullable: 1

=head2 uname

  data_type: 'text'
  is_nullable: 1

=head2 addr

  data_type: 'cidr'
  is_nullable: 1

=head2 superuser

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 auth

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 mode

  data_type: 'integer'
  is_nullable: 1

=head2 w

  data_type: 'text'
  is_nullable: 1

=head2 serverid

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 server

  data_type: 'text'
  is_nullable: 1

=head2 zoneid

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 zone

  data_type: 'text'
  is_nullable: 1

=head2 login

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 last

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 searchopts

  data_type: 'text'
  is_nullable: 1

=head2 searchdomain

  data_type: 'text'
  is_nullable: 1

=head2 searchpattern

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cookie",
  { data_type => "char", is_nullable => 0, size => 32 },
  "uid",
  { data_type => "integer", is_nullable => 1 },
  "gid",
  { data_type => "integer", is_nullable => 1 },
  "sid",
  { data_type => "integer", is_nullable => 1 },
  "uname",
  { data_type => "text", is_nullable => 1 },
  "addr",
  { data_type => "cidr", is_nullable => 1 },
  "superuser",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "auth",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "mode",
  { data_type => "integer", is_nullable => 1 },
  "w",
  { data_type => "text", is_nullable => 1 },
  "serverid",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "server",
  { data_type => "text", is_nullable => 1 },
  "zoneid",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "zone",
  { data_type => "text", is_nullable => 1 },
  "login",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "last",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "searchopts",
  { data_type => "text", is_nullable => 1 },
  "searchdomain",
  { data_type => "text", is_nullable => 1 },
  "searchpattern",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</cookie>

=back

=cut

__PACKAGE__->set_primary_key("cookie");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JvVDnDeEInm9rkSQPUQhsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
