{
  inputs.utils = {
    url = "github:numtide/flake-utils";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  inputs.latex.url = "github:leixb/latex-template";

  outputs = { self, nixpkgs, utils, latex }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        dev-packages = with pkgs; [
          texlab
          zathura
          wmctrl
          which
          python39Packages.pygments
        ];

        texlive = pkgs.texlive.combined.scheme-full;
      in
      rec {
        devShell = pkgs.mkShell {
          name = "texlive";
          buildInputs = [ texlive dev-packages ];
        };

        packages.document = latex.lib.latexmk {
          inherit pkgs texlive;
          src = ./.;
          shellEscape = true;
          minted = true;
          name = "apunts_fisica.pdf";
        };

        defaultPackage = packages.document;
      }
    );
}
