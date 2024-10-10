{ username, ... }:

{
  imports = [
    ./programs
  ];
  
  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}