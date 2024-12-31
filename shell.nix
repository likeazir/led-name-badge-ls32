let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pyusb
      python-pkgs.hidapi
      python-pkgs.pillow
    ]))
  ];
}
