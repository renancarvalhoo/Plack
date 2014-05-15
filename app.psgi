#!/usr/bin/perl

use strict;
use warnings;

my $app = sub {
        die "test";
        return [
                '200',
                [ 'Content-Type' => 'text/plain' ],
                [ "Hello World" ],
        ];
};
