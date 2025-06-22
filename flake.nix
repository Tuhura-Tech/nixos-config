{
  description = "NixOS configuration";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-25.05";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, self, ... }@inputs:
  let
    username = "tuhura";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        # iso = nixpkgs.lib.nixosSystem {
        #   modules = [
        #     "${nixpkgs}/nixos/modules/installer/cd-dvd/installation-cd-graphical-gnome.nix"
        #     "${nixpkgs}/nixos.modules/installer/cd-dvd/channel.nix"
        #     ./hosts/iso
        #   ];
        #   specialArgs = {inherit inputs;};
        # };
        nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/lenovo-ideapad ];
          specialArgs = {
            host = "nixos";
            inherit self inputs username;
          };
        };
      };
    };
}
