{
  description = "Sao Kanneh's NixOS Configuration";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs; }; # You can pass special arguments here
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.saokan = import ./home.nix;
          home-manager.backupFileExtension = ".bak";
          home-manager.extraSpecialArgs = { 
              inherit inputs;
              keyboard = {
                layout = inputs.nixpkgs.lib.mkDefault "au"; # Set the keyboard layout
                variant = inputs.nixpkgs.lib.mkDefault ""; # Set the keyboard variant
              };
              } 
            };
        }
      ];
    };
  };
}
