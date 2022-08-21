{
  description = "Haskell Development Environment";

  #input.nixpkgs.url = github:nixos/nixpkgs;

  #input = {
  #  nixpkgs.url = github:nixos/nixpkgs;
  #};

  outputs = { self, nixpkgs }: {
    devShell.x86_64-linux = let 
      pkgs = nixpkgs.legacyPackages.x86_64-linux; 
      ghc = pkgs.haskellPackages.ghcWithPackages (x : [ x.hakyll ]);
      in pkgs.mkShell {
        buildInputs = [ ghc pkgs.cabal-install pkgs.haskell-language-server pkgs.git pkgs.neovim ];
      };
    
  };
}
