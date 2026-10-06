{ pkgs, ... }:

{
  home.packages = with pkgs.unstable;
    [
      nixpkgs-fmt
    ];
}
