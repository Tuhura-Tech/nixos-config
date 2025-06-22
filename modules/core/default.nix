{ ... }:
{
  imports = [
    ./bootloader.nix
    ./xserver.nix
    ./network.nix
    ./nh.nix
    ./pipewire.nix
    ./system.nix
    ./user.nix
    ./virtualization.nix
    ./gnome.nix
    ./security.nix
  ];
}
