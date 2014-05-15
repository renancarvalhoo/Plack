#!/usr/bin/perl

use Plack::Builder;
use Plack::App::Proxy;


builder {
        enable 'Cache', match_url => '.*', cache_dir => '/tmp/plack-cache';
        Plack::App::Proxy->new(remote => 'http://plackperl.org')->to_app;
}
