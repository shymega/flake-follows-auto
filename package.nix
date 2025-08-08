{
  lib,
  python3Packages,
  python3,
  self,
}: let
  inherit (python3Packages) buildPythonApplication;
in
  buildPythonApplication {
    pname = "flake-follows-auto";
    version = "0.1.0";
    pyproject = true;
    src = self;

    build-system = with python3Packages; [
      pdm-backend
    ];

    meta = {
      maintainer = with lib.maintainers; [shymega];
      mainProgram = "flake-follows-auto";
      platforms = lib.platforms.unix;
    };
  }
