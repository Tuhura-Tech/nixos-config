{ pkgs, ... }:
{
  services = {
    xserver.displayManager.gdm.enable = true;
  xserver.desktopManager.gnome.enable = true;
  
  
  # Enable automatic login for the user.
  displayManager.autoLogin.enable = true;
  displayManager.autoLogin.user = "tuhura";
  };

systemd = {
  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  services."getty@tty1".enable = false;
  services."autovt@tty1".enable = false;
};

environment.gnome.excludePackages = with pkgs; [
  gnome-music
  epiphany
  gnome-contacts
  gnome-tour
  geary
];
}