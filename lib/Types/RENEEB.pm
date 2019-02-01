package Types::RENEEB;

# ABSTRACT: Several predefined Type::Tiny types

use v5.10;

use strict;
use warnings;

use Type::Library -base;
use Type::Utils ();

our $VERSION = 0.04;

Type::Utils::extends(qw/Types::OTRS Types::Dist/);

1;

=head1 SYNOPSIS

    package TypesTest;

    use strict;
    use warnings;

    use Moo;
    use Types::RENEEB qw(
        DistName DistVersion
        OTRSVersion OTRSVersionWildcard
    );

    has distname     => ( is => 'ro', isa => DistName );
    has distversion  => ( is => 'ro', isa => DistVersion );
    has otrs_version => ( is => 'ro', isa => OTRSVersion );

    sub check_otrs_version {
        OTRSVersion->('2.0.0');
    }

    sub check_otrs_version {
        OTRSVersion->('2.0.x');
    }

    1;

=head1 DESCRIPTION

C<Types::RENEEB> is a collection of types I need very often

=head1 MODULES

These C<Types::> modules are shipped in this distribution:

=over 4

=item * L<Types::Dist>

=item * L<Types::OTRS>

=back

C<Types::RENEEB> inherits the types of the mentioned modules.

=cut
