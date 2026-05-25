# nix/modules/home-manager.nix — auto-generated from bevy_tweening.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_tweening; in {
  options.programs.bevy_tweening = {
    enable = lib.mkEnableOption "bevy_tweening";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_tweening or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
