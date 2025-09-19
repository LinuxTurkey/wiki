{ pkgs ? import <nixpkgs> {} }: 
pkgs.mkShell {
  packages = with pkgs; [
    python3
    uv
  ];

  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [
    cairo
  ]);
  
  shellHook = ''
    unset PYTHONPATH
    uv sync
    . .venv/bin/activate
  '';
}