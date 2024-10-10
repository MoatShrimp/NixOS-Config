{ pkgs, username, ... }: 

{  
  imports = [ ./programs ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  time.timeZone = "Europe/Stockholm";

  services = {
    libinput.enable = true;
    printing.enable = true;
    desktopManager.plasma6.enable = true;
    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
      autoLogin.enable = true;
      autoLogin.user = "moat";
    };
    xserver = {
      enable = true;
      xkb = {
        layout = "se";
        options = "caps:backspace";
      };
    };
  };

  console.keyMap = "sv-latin1";

  security.rtkit.enable = true;
  security.sudo.wheelNeedsPassword = false;

  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [
      "docker"
      "networkmanager"
      "wheel"
    ];
  };

  environment.systemPackages = with pkgs; [
    slack
    discord
    gh
    pinta
  ];

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  system.stateVersion = "23.11";
}