#!/usr/bin/perl -w
use strict;

my $thread = shift @ARGV;
my $start = shift @ARGV;
my $end = shift @ARGV;
my $link = "http://www.exbii.com/showthread.php";
mkdir $thread if (! -d $thread);
while($start <= $end) {
print "------>>>>>>>>>>>>> Working for $link <<<<<<<----------\n";
my $f = "$thread/temp.$start";
if (-f $f) {
	$start++;
	next;
}
`wget -q -O $f $link --post-data 't=$thread&page=$start'`;
open(FH, "$f") or die "Failed to open temp file...$!";
my $data;
while(my $line = <FH>) {
	chomp $line;
	if ($line =~ m/<img src="(.+\/(.+jpg))"/ ) {
		my $img = $1;
		my $fname = "$thread/$2";
		`wget -O $fname $img`;
	}
}
$start++;
}

