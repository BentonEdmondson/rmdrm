{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, ... }@flakes: let
    nixpkgs = flakes.nixpkgs.legacyPackages.x86_64-linux;
  in {
    defaultPackage.x86_64-linux = nixpkgs.stdenv.mkDerivation {
        pname = "inept-epub";
        version = "7.0";
        src = self;
        buildInputs = [ (nixpkgs.python3.withPackages(python3Packages: [ python3Packages.pycrypto python3Packages.pyopenssl ])) ];
        installPhase = ''
            mkdir -p $out/bin
            chmod +x inept-epub
            cp inept-epub $out/bin
        '';
      };
  };
}