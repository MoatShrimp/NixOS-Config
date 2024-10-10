{
  programs.git = {
    enable = true;
    userName = "MoatShrimp";
    userEmail = "mathias.viklund@gmail.com";
    extraConfig = {
      push = { autoSetupRemote = true; };
      core = { editor = "code --wait"; };
    };
  };
}