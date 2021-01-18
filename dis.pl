#!/usr/bin/perl

$asm = `objdump -d -Mintel @ARGV[0]`;

if (@ARGV >= 2) {
  if ("$asm\n" =~ /(\d+ \<@ARGV[1]\>:(.|\n)*?)\n\n/g) {
    print "$1\n";
  } else {
    print "No match for <@ARGV[1]>\n";
  }
} else {
  print "$asm\n";
}
