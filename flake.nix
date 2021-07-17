{
  inputs.nixpkgs.url = github:NixOS/nixpkgs/master;

  outputs = { self, nixpkgs }: let pkgs = import nixpkgs { system = "x86_64-linux"; }; in {

    defaultPackage.x86_64-linux =
      pkgs.pythonPackages.buildPythonApplication {
        pname = "inept-epub";
        version = "7.0";

        src = ./.;
        phases = [ "installPhase" ];
        buildInputs = [ /*pythonPackages.pyopenssl*/ ];

        installPhase = ''
            mkdir -p $out/bin
            cp inept-epub $out/bin
        '';
    };
  };
}