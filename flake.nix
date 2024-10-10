{
  inputs = { 
    nixpkgs.url = "nixpkgs";
    nixos-hardware.url = "nixos-hardware";
    home-manager.url = "home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {

    nixosConfigurations = {
      work-laptop = let username = "moat"; in nixpkgs.lib.nixosSystem rec {
        system = "x86_64-linux";
        specialArgs = { inherit username inputs; };
        
        modules = [
          ./hosts/thinkpad-t14
          ./configuration
          
          home-manager.nixosModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit username; };
              users.${username} = import ./home;
            };
          }
        ];
      };
    };
  };
}