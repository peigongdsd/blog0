{
  description = "Haskell Development Environment";

  inputs.nixpkgs.url = github:nixos/nixpkgs;

  outputs = { self, nixpkgs }: 
    let
      supportedSystems = [ "x86_64-linux" "x86_64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
    in
    {
      devShell = forAllSystems (system: let 
        pkgs = import nixpkgs { inherit system; }; 
        ghc = pkgs.haskellPackages.ghcWithPackages (x : [ x.hakyll x.pandoc ]);
        in pkgs.mkShell {
          buildInputs = [ ghc pkgs.haskell-language-server pkgs.zlib.dev ];
      });
      defaultPackage = forAllSystems (system: let
        pkgs = import nixpkgs { inherit system; };
        ghc = pkgs.haskellPackages.ghcWithPackages (x : [ x.hakyll x.pandoc ]);
        in derivation { name = "site"; builder = "${pkgs.bash}/bin/bash"; args = [ "-c" ''  
          ${ghc}/bin/ghc -O1 -threaded -o $out ${./site.hs}
        '' ]; inherit system; });
    };
}
