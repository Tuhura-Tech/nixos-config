{ pkgs, inputs, ... }:
{
  programs.firefox = {
    enable = true;
    package = pkgs.firefox;
    profiles={
      default = {
        settings = {
"extensions.autoDisableScopes" = 0;
"browser.startup.homepage" = "https://wiki.tuhuratech.org.nz";
    };
      id = 0;
      name = "default";
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        ublock-origin
        clearurls
        privacy-badger
        duckduckgo-privacy-essentials
      ];
      search= {
        default = "ddg";
        force = true;
      };
    };};
  };
}