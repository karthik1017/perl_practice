use strict;
use warnings;
use Getopt::Long;
use File::Find;

get_arguments();

sub get_arguments {
    my $help;
    my $count;
    my $files_with_matches;
    my $line_number;
    my $recursive;
    my $include;
    my $exclude;
    my $version;
    my $test;
    my $benchmark;

    GetOptions(
        'help' => \$help,
        'count|d' => \$count,
        'files-with-matches|l' => \$files_with_matches,
        'line-number|n' => \$line_number,
        'recursive|R' => \$recursive,
        'include=s' => \$include,
        'exclude=s' => \$exclude,
        'version|V' => \$version,
        'test' => \$test,
        'benchmark' => \$benchmark,
    ) or die "this is not proper option\n";
    
    if($help){
        help();
    }
}

sub help {
    print "this is help description\n";
}
