{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixd

    python3Full

    nodejs
    corepack
  ];
}