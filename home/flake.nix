{
  description = "home manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = inputs: 
  let
    homelib = import ./lib.nix;
  in {
    homeConfigurations = {
      "jaxxer@Ecstasis-Novae" = homelib.configuration {
        inherit inputs;
        host = "ecstasis-novae";
        system = "x86_64-darwin";
        user = "jaxxer";
      };
    };
  };
}
