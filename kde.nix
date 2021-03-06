{ config, pkgs, ... }:
{
  services.xserver.enable = true;
  programs.xwayland.enable = true;
  services.xserver.displayManager.sddm.wayland = true;
  hardware.opengl.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}