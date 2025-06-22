{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd

    python3

    nodejs
    corepack
  ];
}