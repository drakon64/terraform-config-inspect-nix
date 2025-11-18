{
  pkgs ? import (import ./lon.nix).nixpkgs { },
}:
pkgs.callPackage ./pkgs/terraform-config-inspect/package.nix { }
