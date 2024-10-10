{
  programs.git = {
    enable = true;
    userName = "MoatShrimp";
    userEmail = "mathias.viklund@gmail.com";
    delta.enable = true;
    ignores = [
      "**/.env"
    ];
    signing = {
      signByDefault = true;
      key = "~/.ssh/id_ed25519.pub";
    };
    extraConfig = {
      init.defaultBranch = "main";
      gpg.format = "ssh";
      push.autoSetupRemote = true;
      core.editor = "code --wait";
      merge.conflictstyle = "zdiff3";
      rerere.enabled = true;
      diff.algorithm = "histogram";
      log.abbrevCommit = true;
      help.autocorrect = "prompt";
      fetch.prune = true;
      pull.rebase = true;
      url."git@github.com:".insteadOf = "https://github.com/";
    };
  };
}