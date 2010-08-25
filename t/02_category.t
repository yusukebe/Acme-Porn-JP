use strict;
use warnings;
use Test::More;
use Encode;
BEGIN{
use_ok('Acme::Porn::JP');
use_ok('Acme::Porn::JP::Category');
}
my $porn = Acme::Porn::JP->new;
ok($porn);
{
    my $list = $porn->category;
    ok($list->[0]);
    diag encode_utf8($list->[0]);
}
{
    my $list = $porn->category;
    ok($list->[10]);
    diag encode_utf8($list->[10]);
}
done_testing();
