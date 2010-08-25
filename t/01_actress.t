use strict;
use warnings;
use Test::More;
use Encode;
BEGIN{
use_ok('Acme::Porn::JP');
use_ok('Acme::Porn::JP::Actress');
}
my $porn = Acme::Porn::JP->new;
ok($porn);
{
    my $list = $porn->actress;
    ok($list->[0]);
    diag encode_utf8($list->[0]);
}
{
    my $list = $porn->actress;
    ok($list->[1]);
    diag encode_utf8($list->[1]);
}
done_testing();
