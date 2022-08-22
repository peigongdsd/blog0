{
  description = "Haskell Development Environment";

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = let 
      pkgs = nixpkgs.legacyPackages.x86_64-linux; 
      ghc = pkgs.haskellPackages.ghcWithPackages (x : [ x.hakyll x.pandoc ]);
      in pkgs.mkShell {
        buildInputs = [ ghc pkgs.haskell-language-server pkgs.zlib.dev ];
      };
  };
}
