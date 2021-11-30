{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = flakes: let
    nixpkgs = flakes.nixpkgs.legacyPackages.x86_64-linux;
  in {
    defaultPackage.x86_64-linux = nixpkgs.python3Packages.buildPythonApplication {
      pname = "rmdrm";
      version = "0.0.0";
      src = ./.;

      propagatedBuildInputs = [
        nixpkgs.python3Packages.pycrypto
        nixpkgs.python3Packages.pyopenssl
      ];

      format = "others";

      installPhase = ''
          mkdir -p $out/bin
          cp {rmdrm-epub,rmdrm-pdf} $out/bin
          chmod +x $out/bin/*
      '';

      meta = {
        description = "Python scripts to remove DRM from Adobe ADEPT-encrypted files";
        homepage = "https://github.com/BentonEdmondson/inept-epub";
        license = [ nixpkgs.lib.licenses.gpl3Only ];
        maintainers = [{
          name = "Benton Edmondson";
          email = "bentonedmondson@gmail.com";
        }];
        # potentially others, but I'm only listed those tested
        platforms = [ "x86_64-linux" ];
      };
    };
  };
}