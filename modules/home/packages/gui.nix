{ pkgs, ... }:
{
  home.packages = with pkgs; [
    audacity
    gimp
    godot_4
    blender
  ];
}