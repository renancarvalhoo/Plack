#!/usr/bin/perl    

use strict;
use warnings;

use Plack::Builder;

builder {
        enable 'HTMLify';
        enable 'SimpleContentFilter', filter => sub { s/World/Universe/ };
        do 'app.psgi';
};
