use utf8;
package Sauron::DB::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::User

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

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 cdate

  data_type: 'integer'
  is_nullable: 1

=head2 cuser

  data_type: 'char'
  default_value: 'unknown'
  is_nullable: 1
  size: 8

=head2 mdate

  data_type: 'integer'
  is_nullable: 1

=head2 muser

  data_type: 'char'
  default_value: 'unknown'
  is_nullable: 1
  size: 8

=head2 expiration

  data_type: 'integer'
  is_nullable: 1

=head2 id

  data_type: 'integer'
  default_value: nextval(('"users_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 gid

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 username

  data_type: 'text'
  is_nullable: 0

=head2 password

  data_type: 'text'
  is_nullable: 1

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 email

  data_type: 'text'
  is_nullable: 1

=head2 superuser

  data_type: 'boolean'
  default_value: false
  is_nullable: 1

=head2 server

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 zone

  data_type: 'integer'
  default_value: -1
  is_nullable: 1

=head2 last

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 last_pwd

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 last_from

  data_type: 'text'
  is_nullable: 1

=head2 search_opts

  data_type: 'text'
  is_nullable: 1

=head2 flags

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cdate",
  { data_type => "integer", is_nullable => 1 },
  "cuser",
  {
    data_type => "char",
    default_value => "unknown",
    is_nullable => 1,
    size => 8,
  },
  "mdate",
  { data_type => "integer", is_nullable => 1 },
  "muser",
  {
    data_type => "char",
    default_value => "unknown",
    is_nullable => 1,
    size => 8,
  },
  "expiration",
  { data_type => "integer", is_nullable => 1 },
  "id",
  {
    data_type     => "integer",
    default_value => \"nextval(('\"users_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "gid",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "username",
  { data_type => "text", is_nullable => 0 },
  "password",
  { data_type => "text", is_nullable => 1 },
  "name",
  { data_type => "text", is_nullable => 1 },
  "email",
  { data_type => "text", is_nullable => 1 },
  "superuser",
  { data_type => "boolean", default_value => \"false", is_nullable => 1 },
  "server",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "zone",
  { data_type => "integer", default_value => -1, is_nullable => 1 },
  "last",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "last_pwd",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "last_from",
  { data_type => "text", is_nullable => 1 },
  "search_opts",
  { data_type => "text", is_nullable => 1 },
  "flags",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<username_key>

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("username_key", ["username"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:H0HQHqGhefCBrBoSbObEAQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
