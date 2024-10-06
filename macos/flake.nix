{

  description = "macos darwin config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs:
  let
    self = inputs.self;
    nixpkgs = inputs.nixpkgs;
    nix-darwin = inputs.nix-darwin;
  in {
    registry = {
      nixpkgs.flake = nixpkgs;
    };
    
    darwinConfigurations = {
      "Ecstasis-Novae" = nix-darwin.lib.darwinSystem { 
        specialArgs = { inherit nixpkgs; inherit self; };
        modules = [ ./hosts/common ./hosts/ecstasis-novae ]; 
      };
    };

  };
}
