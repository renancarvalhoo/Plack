use Plack::Builder;
use Plack::App::Proxy;

  builder {
    mount '/plack' => builder {
      enable 'Cache', match_url => '.*', cache_dir => '/tmp/plack-cache';
      Plack::App::Proxy->new(remote => 'http://plackperl.org')->to_app;
    };
    mount '/app' => do 'app.psgi';
  }
