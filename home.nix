{ config, pkgs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/.dotfiles";
in
{
  home.username = "robertlandrum"
  home.homeDirectory = "/Users/robertlandrum";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    ripgrep
    fd
    fzf
    jq
    lazygit
    neovim
    nerd-fonts.hack
  ];
  fonts.fontconfig.enable = true
  home.sessionVariables.EDITOR = "nvim"

  home.file.".config/wezterm".source = config.lib.file.mkOutOfStoreSymLink "${dotfiles}/home/.config/wezterm";
}
