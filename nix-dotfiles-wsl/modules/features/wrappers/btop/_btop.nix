{ self, pkgs, ... }:

{
  programs.btop = {
    enable = true;
    package = self.packages.${pkgs.stdenv.hostPlatform.system}.myBtop;
  };
}
