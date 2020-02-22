#!/usr/bin/perl -w

use strict;
use warnings;

use ExtUtils::MakeMaker;

my %config = (
    "ABSTRACT" => "a free DNS & DHCP management system",
    "AUTHOR" => "Timo Kokkonen <tjko\@iki.fi>",
    "CONFIGURE_REQUIRES" => {
        "ExtUtils::MakeMaker" => 6.64
    },
    "EXE_FILES" => [ qw(addgroup
                        addhosts
                        adduser
                        check-pending
                        delgroup
                        deluser
                        expire-hosts
                        export-by-group
                        export-ip-list
                        export-networks
                        export-vmps
                        import
                        import-dhcp
                        import-ethers
                        import-jyu
                        import-nets
                        import-roots
                        import-zone
                        modgroup
                        modhosts
                        moduser
                        sauron
                        update-dhcp-info
                        update-hosts) ],
    "LICENSE" => "gpl_2",
    "NAME" => "Sauron",
    "MIN_PERL_VERSION" => "5.008001",
    "PREREQ_PM" => {
        "CGI" => 4.35,
        "Crypt::RC5" => 2.00,
        "DBD::Pg" => "3.5.3",
        "DBI" => 1.636,
        "Digest::HMAC" => 1.03,
        "Digest::MD5" => 2.54,
        "Digest::SHA" => 5.96,
        "Exporter" => 0,
        "File::ConfigDir" => 0.017,
        "MIME::Base64" => 3.15,
        "Net::DNS" => 1.07,
        "Net::IP" => 1.26,
        "Net::Netmask" => 1.9022,
        "strict" => 0,
        "warnings" => 0,
        "vars" => 0
    },
    "VERSION_FROM" => "Sauron/Sauron.pm",
);

WriteMakefile(%config);
