{
  pkgs,
  config,
  inputs,
  ...
}:
let
  nixos-hardware = inputs.nixos-hardware.nixosModules;
in
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  boot.blacklistedKernelModules = [ "elan_i2c" ];
}