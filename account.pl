use strict;
use warnings;
use Getopt::Long;

sub get_args(){
    my $user;
    my $db_location;
    GetOptions(
        'user|u=s' => \$user,
        'db|d=s' => \$db_location,
    ) or die "the proper method \"account.pl -u <username> -db <dblocation>\"\n";
    print "db name = $db_location\n";
    print "user = $user\n";
}

get_args();
