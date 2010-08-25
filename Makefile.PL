use inc::Module::Install;
name 'Acme-Porn-JP';
all_from 'lib/Acme/Porn/JP.pm';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Encode';

auto_set_repository;
auto_include;
WriteAll;
