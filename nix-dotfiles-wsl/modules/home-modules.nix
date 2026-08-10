{ ... }:

{
  flake.homeModules = {
    /*---- Programs ----*/
    nil = ./features/programs/_nil.nix;
    nixd = ./features/programs/_nixd.nix;
    nixpkgs-fmt = ./features/programs/_nixpkgs-fmt.nix;

    /*---- Wrappers ----*/
    btop = ./features/wrappers/btop/_btop.nix;
    vim = ./features/wrappers/vim/_vim.nix;
    yazi = ./features/wrappers/yazi/_yazi.nix;
  };
}
