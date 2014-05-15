  use Plack::Builder;

  builder {
    enable 'HTMLify';
    do 'app.psgi';
  }
