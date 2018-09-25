package App::XTermUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

$SPEC{get_term_bgcolor} = {
    v => 1.1,
    summary => 'Get terminal background color',
    args => {},
};
sub get_term_bgcolor {
    require XTerm::Util;

    my %args = @_;

    [200, "OK", XTerm::Util::get_term_bgcolor()];
}

$SPEC{set_term_bgcolor} = {
    v => 1.1,
    summary => 'Set terminal background color',
    args => {
        rgb => {
            schema => 'color::rgb24*',
            req => 1,
            pos => 0,
        },
    },
};
sub set_term_bgcolor {
    require XTerm::Util;

    my %args = @_;

    XTerm::Util::set_term_bgcolor($args{rgb});
    [200, "OK"];
}

1;
#ABSTRACT: Utilities related to XTerm

=head1 DESCRIPTION

This distribution provides the following command-line utilities:

# INSERT_EXECS_LIST


=head1 SEE ALSO

=cut
