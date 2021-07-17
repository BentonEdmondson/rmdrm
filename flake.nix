{
  inputs.nixpkgs.url = github:NixOS/nixpkgs/master;

  outputs = { self, nixpkgs }: let pkgs = import nixpkgs { system = "x86_64-linux"; }; in {

    defaultPackage.x86_64-linux =
      pkgs.stdenv.mkDerivation {
        pname = "inept-epub";
        version = "7.0";
        src = self;
        buildInputs = [ pkgs.python3 ];
        installPhase = ''
            mkdir -p $out/bin
            chmod +x inept-epub
            cp inept-epub $out/bin
        '';
      };

  };
}