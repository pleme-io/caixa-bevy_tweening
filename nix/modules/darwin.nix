# nix/modules/darwin.nix — auto-generated from bevy_tweening.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_tweening; in {
  options.services.bevy_tweening = {
    enable = lib.mkEnableOption "bevy_tweening";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_tweening or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
