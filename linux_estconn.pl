#!/usr/bin/perl
open(COMD,"ss -an | grep ESTABLISHED | wc -l|");
$num = <COMD>;
close(COMD);
	
	print int($num);
