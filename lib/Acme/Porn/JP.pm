package Acme::Porn::JP;
use strict;
use warnings;
our $VERSION = '0.02';

sub new {
    my ($class, %args) = @_;
    my $self = {};
    return bless $self, $class;
}

sub _data {
    my ( $self, $class ) = @_;
    $class .= '::DATA';
    my @list;
    my $pos   = tell $class;
    map { chomp $_; push @list, $_; } (<$class>);
    seek $class, $pos, 0;
    return wantarray ? @list : \@list;
}

sub actress {
    my $self = shift;
    require Acme::Porn::JP::Actress;
    return $self->_data('Acme::Porn::JP::Actress');
}

sub category {
    my $self = shift;
    require Acme::Porn::JP::Category;
    return $self->_data('Acme::Porn::JP::Category');
}

1;
__END__

=head1 NAME

Acme::Porn::JP - Porn terms in Japan.

=head1 SYNOPSIS

  use Acme::Porn::JP;

  my $porn_jp = Acme::Porn::JP->new();

  my $actress_list = $porn_jp->actress();
  print $actress_list->[0] . "\n";

  my $category_list = $porn_jp->category();
  print $category_list->[10] . "\n";

=head1 DESCRIPTION

Acme::Porn::JP is term list about japanese porn a.k.a Adult Video .

Available method are 'actress' and 'category'.

=head1 AUTHOR

Yusuke Wada E<lt>yusuke at kamawada.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
