use strict;
use warnings;
use Test::More;

use FindBin;
use lib "$FindBin::Bin/lib";

use_ok('Catalyst::Test', 'TestApp');

my $response;
ok( ($response = request("/email_smtp_utf8"))->is_success, 'request ok');

done_testing();
