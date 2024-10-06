rec {

  configuration = { inputs, host, system, user }:
  inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { 
      system = "${system}"; 
    };
    
    extraSpecialArgs = {
      inputs = inputs;
    };

    modules = [
      ./hosts/common
      ./hosts/${host}/users/${user}
    ];
  };

}
