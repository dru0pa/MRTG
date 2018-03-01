#!/usr/bin/perl
#
# apache-stats 
use LWP::Simple;

my $stats=get("http://192.168.1.16/server-status?auto");
$stats =~ s/.*BusyWorkers: (d+)//;
my $b = $1;
print "$bn";
$stats =~ s/.*IdleWorkers: (d+)//;
print $b + $1 . "n";
print "nn";
