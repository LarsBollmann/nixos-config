{ config, pkgs, zsh-autosuggestions, ... }:

{

  imports = [
    ./hypr
    ./waybar
    ./kitty
    ./zsh
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "lars";
    homeDirectory = "/home/lars";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "23.11";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName  = "Lars Bollmann";
    userEmail = "55883538+LarsBollmann@users.noreply.github.com";
    includes = [
      {
        contents = {
          user = {
            signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHjoBTCT6rrhabyroZpRrYVkiJuwieJOn9WRKfQshLcB";
          };
          gpg = {
            format = "ssh";
            "ssh" = {
              program = "${pkgs._1password-gui}/share/1password/op-ssh-sign";
            };
          };
          commit = {
            gpgsign = true;
          };
          safe = {
            directory = "/etc/nixos";
          };
        };
      }
    ];
  };

}
