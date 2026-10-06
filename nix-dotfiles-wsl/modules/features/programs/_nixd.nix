{ pkgs, ... }:

{
  home.packages = with pkgs.unstable;
    [
      nixd
    ];
}
