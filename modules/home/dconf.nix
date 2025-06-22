# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      show-battery-percentage = true;
    };

    "org/gnome/desktop/screensaver" = {
      lock-enabled = false;
    };

    "org/gnome/shell" = {
      favorite-apps = [ "org.gnome.Nautilus.desktop" "codium.desktop" "firefox.desktop" "org.gnome.Console.desktop" "org.godotengine.Godot4.4.desktop" ];
    };
  };
}
