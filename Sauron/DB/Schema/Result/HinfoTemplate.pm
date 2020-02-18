use utf8;
package Sauron::DB::Schema::Result::HinfoTemplate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sauron::DB::Schema::Result::HinfoTemplate

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

=head1 TABLE: C<hinfo_templates>

=cut

__PACKAGE__->table("hinfo_templates");

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
  default_value: nextval(('"hinfo_templates_id_seq"'::text)::regclass)
  is_nullable: 0

=head2 hinfo

  data_type: 'text'
  is_nullable: 0

=head2 type

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 pri

  data_type: 'integer'
  default_value: 100
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
    default_value => \"nextval(('\"hinfo_templates_id_seq\"'::text)::regclass)",
    is_nullable   => 0,
  },
  "hinfo",
  { data_type => "text", is_nullable => 0 },
  "type",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "pri",
  { data_type => "integer", default_value => 100, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<hinfo_templates_hinfo_key>

=over 4

=item * L</hinfo>

=back

=cut

__PACKAGE__->add_unique_constraint("hinfo_templates_hinfo_key", ["hinfo"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-02-18 07:38:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BbpfQVIibE+1soO8ZP0S6Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
