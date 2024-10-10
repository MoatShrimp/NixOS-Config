{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      dracula-theme.theme-dracula
      yzhang.markdown-all-in-one
      johnpapa.vscode-peacock
      bierner.github-markdown-preview
      formulahendry.code-runner
      humao.rest-client
      donjayamanne.githistory
      streetsidesoftware.code-spell-checker
      eamodio.gitlens
      ms-vscode.live-server
      ritwickdey.liveserver
      seatonjiang.gitmoji-vscode
      ms-dotnettools.csdevkit
      bradlc.vscode-tailwindcss
      oderwat.indent-rainbow
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "ts-worksheet";
        publisher = "chwoerz";
        version = "0.8.26";
        sha256 = "6jSeTZ5edrmdNAKKtOQtLRXcmLQt0JgthCEW5G7QjsY=";
      }
      {
        name = "polacode";
        publisher = "pnp";
        version = "0.3.4";
        sha256 = "u06gIe86W2dX4a1dBK4m07/VQeQKWMCwzi9LmSWpLFE=";
      }
      {
        name = "reload";
        publisher = "natqe";
        version = "0.0.7";
        sha256 = "j0Dj7YiawhPAMHe8wk8Ph4vo26IneidoGJ4C9O7Z/64=";
      }
      {
        name = "vscode-css-peek";
        publisher = "pranaygp";
        version = "4.4.1";
        sha256 = "GX6J9DfIW9CLarSCfWhJQ9vvfUxy8QU0kh3cfRUZIaE=";
      }
    ];
  };
}