{ ... }:

{
  nix = {
    gc = {
      automatic = true;
      dates = "09:00";
      options = "--delete-older-than 5d";
      persistent = true;
      randomizedDelaySec = "0";
    };
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    dates = "09:00";
    operation = "switch";
    persistent = true;
    randomizedDelaySec = "0";
  };
}
