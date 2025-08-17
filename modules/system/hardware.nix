{ config, pkgs, ... }:

{
  # Kernel parameters for NVIDIA
  boot.kernelParams = [ "nvidia-drm.modeset=1" ];

  # NVIDIA Drivers
  services.xserver.videoDrivers = ["nvidia"];
  hardware.opengl.enable = true;
  hardware.nvidia.modesetting.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
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
