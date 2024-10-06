{ self, config, pkgs, nixpkgs, ... }:
{
  system = {
    stateVersion = 4;
    configurationRevision = self.rev or self.dirtyRev or null;
  };

  nix = {
    settings.experimental-features = "nix-command flakes";
    nixPath = [ "/etc/nix/path" ];
  };
  
  environment = { 
    etc = { "nix/path/nixpkgs".source = nixpkgs; };
    systemPackages = with pkgs; [ ];
    shellAliases = {
        ndw-up = "darwin-rebuild switch --flake ~/.nixconfig/macos";
        nhm-up = "home-manager switch --flake ~/.nixconfig/home";
    };
  };
  
  services = {
    nix-daemon.enable = true;
  };

  programs.zsh.enable = true;

  system.defaults = {
    finder = {
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      FXPreferredViewStyle = "Nlsv";
      ShowPathbar = true;
    };

    NSGlobalDomain = {
      "com.apple.swipescrolldirection" = true;
      "com.apple.trackpad.enableSecondaryClick" = true;
      _HIHideMenuBar = true;
      AppleInterfaceStyle = "Dark";
      AppleKeyboardUIMode = 3;
      AppleScrollerPagingBehavior = true;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      AppleShowScrollBars = "Always";
      InitialKeyRepeat = 15;
      KeyRepeat = 2;
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticWindowAnimationsEnabled = false;
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;
    };
  };
}
