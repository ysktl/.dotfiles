{ config, pkgs, ...}:

{
  
  home.username = "ysktl";
  home.homeDirectory = "/home/ysktl";

  home.packages = with pkgs; [
    wget
    gawk
    fzf
    ripgrep
    neovim
    lazygit
    yazi
    zellij
    rustup
    go
    uv
    mise
    opencode
    openssh
    ansible
    opentofu
    podman
    go-task
    nerd-fonts.go-mono
    nerd-fonts.hack
  ];
  
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
} 
