{
  pkgs,
  config,
  ...
}: {

  home.file.".config/hypr" = {
    source = ./config;
    recursive = true;
  };

}