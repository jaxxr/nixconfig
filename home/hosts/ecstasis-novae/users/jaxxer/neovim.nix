{ lib, pkgs, ... }: {
  home = {
    packages = with pkgs; [
      lua-language-server
      luarocks
      stylua
    ];
  };

  programs = {
    neovim = {
      enable = true;
      extraWrapperArgs = [ "--prefix" "PATH" ":" "${lib.makeBinPath [ pkgs.gcc ]}" ];
    };
  };
}
