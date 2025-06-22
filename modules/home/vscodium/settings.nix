{ ... }:
{
  programs.vscode.profiles.default = {
    userSettings = {
      "update.mode" = "none";
      "extensions.autoUpdate" = false;
      "windows.titleBarStyle" = "custom";

      "files.autoSave" = "onWindowChange";

      "nix.serverPath" = "nixd";
      "nix.enableLanguageServer" = true;
    };
  };
}