package Prime;
use strict;
use base qw(Exporter);
use vars qw(@EXPORT_OK);

BEGIN {
    @EXPORT_OK = qw(is_prime);
}

sub is_prime {
    my $num = shift;
    return 0 if $num < 2;
    for (my $d = 2; $d <= int(sqrt($num)); $d++) {
        return 0 if ($num % $d == 0);
    }
    return 1;
}

1;
