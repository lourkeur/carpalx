{ nixpkgs ? import <nixpkgs> {} }:

with nixpkgs;
mkShell {
  buildInputs = [ (perl.withPackages (p: with p; [
    ConfigGeneral
    DigestMD5
    GD
    MathVecStat
    PodUsage
    SetIntSpan
  ]))];
}
