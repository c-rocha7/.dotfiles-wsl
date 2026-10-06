{ pkgs, ... }:

{
  home.packages = with pkgs.unstable;
    [
      nil
    ];
}
