{
  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs = { self, nixpkgs }: let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      hsPackages = (x : [ x.hakyll x.pandoc x.uri-encode ]);
    in
    {
      devShell = forAllSystems (system: let
        pkgs = import nixpkgs { inherit system; }; 
        ghc = pkgs.haskellPackages.ghcWithPackages hsPackages;
      in pkgs.mkShell {
          buildInputs = [ ghc pkgs.haskell-language-server pkgs.zlib.dev pkgs.rubber pkgs.poppler_utils pkgs.texliveFull.out ];
      });
      defaultPackage = forAllSystems (system: let
        pkgs = import nixpkgs { inherit system; }; 
        ghc = pkgs.haskellPackages.ghcWithPackages hsPackages;

      in pkgs.stdenv.mkDerivation { name = "site"; builder = "${pkgs.bash}/bin/bash"; args = [ "-c" ''  
          ${ghc}/bin/ghc -O1 -threaded -o $out ${./site.hs}
        '' ]; inherit system; });
    };
}
