#!/usr/bin/perl

use Plack::Builder;
use Plack::App::Proxy;

builder {
        Plack::App::Proxy->new(remote => 'http://plackperl.org')->to_app;
}
