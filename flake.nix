{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixvim.url = "github:nix-community/nixvim";
    hyprland.url = "github:hyprwm/Hyprland";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, nixvim, home-manager, hyprland, ... }: {
    homeConfigurations."oldworldboa@nixos" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;

      modules = [
        {
          wayland.windowManager.hyprland = {
 	    enable = true;
            #package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
            #portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
          };
        }
      ];
    };

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
	./configuration.nix
        home-manager.nixosModules.home-manager
        {
	  home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.oldworldboa = import ./home.nix;
        }
      ];
    };
  };
}
