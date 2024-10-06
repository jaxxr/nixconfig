{ inputs, config, lib, pkgs, ... }: {

  imports = [
    ./neovim.nix
  ];

  home.stateVersion = "24.05";
  home.username = "jaxxer";
  home.homeDirectory = "/Users/jaxxer";
  home.packages = with pkgs; [ lf ];
  programs.home-manager.enable = true;

}

