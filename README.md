# NAME

Acme::Porn::JP - Porn terms in Japan.

# SYNOPSIS

    use Acme::Porn::JP;

    my $porn_jp = Acme::Porn::JP->new();

    my $actress_list = $porn_jp->actress();
    print $actress_list->[0] . "\n";

    my $category_list = $porn_jp->category();
    print $category_list->[10] . "\n";

# DESCRIPTION

Acme::Porn::JP is term list about japanese porn a.k.a Adult Video .

Available method are 'actress' and 'category'.

# AUTHOR

Yusuke Wada &lt;yusuke at kamawada.com>

# SEE ALSO

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
