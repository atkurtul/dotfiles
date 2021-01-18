#!/usr/bin/perl

$asm = `objdump -d -Mintel @ARGV[0]`;

if (@ARGV >= 2) {
  foreach $arg (@ARGV[1..@ARGV-1]) {
    if ("$asm\n" =~ /(\d+ \<$arg\>:(.|\n)*?)\n\n/g) {
      print "$1\n";
    } else {
      print "No match for <$arg>\n";
    }
  }
} else {
  print "$asm\n";
}
