{
  pkgs,
  git_username,
  git_email,
  ...
}: {
  home.packages = with pkgs; [
    # Automatically trims your branches whose tracking remote refs are merged or gone
    # It's really useful when you work on a project for a long time.
    git-trim
  ];

  programs.git = {
    enable = true;

    userName = git_username;
    userEmail = git_email;

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;

      url = {
        "ssh://git@github.com/" = {
          insteadOf = "https://github.com/";
        };
        "ssh://git@gitlab.com/" = {
          insteadOf = "https://gitlab.com/";
        };
      };
    };

    delta = {
      enable = true;
      options = {
        diff-so-fancy = true;
        line-numbers = true;
        true-color = "always";
      };
    };

    aliases = {
      br = "brach";
      sw = "switch";
      st = "status";
      ca = "commit -am";
      am = "commit -a --ammend";
    };
  };
}
