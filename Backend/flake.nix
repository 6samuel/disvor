{
  description = "Disvor backend flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        packages.backend = pkgs.stdenv.mkDerivation {
          name = "disvor-backend";
          src = ./.;

          buildInputs = with pkgs; [
            haskellPackages.ghc
            haskellPackages.cabal-install
            haskellPackages.stack
          ];

          buildPhase = ''
            stack build
          '';

          installPhase = ''
            mkdir -p $out/bin
            cp $(stack path --local-install-root)/bin/* $out/bin/
          '';
        };
      });
}
