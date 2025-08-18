{ config, pkgs, lib, ... }:

{
  # Kernel parameters for NVIDIA
   boot.kernelParams = [ "nvidia-drm.modeset=1" ];

  # NVIDIA Drivers
  services.xserver.videoDrivers = ["nvidia"];
  hardware.graphics = {
    enable = true;
    enable32Bit = true;	
  };


   hardware.nvidia = {
       modesetting.enable = true;
       powerManagement.enable = false;
       powerManagement.finegrained = false;
       open = true;
       nvidiaSettings = true;
       package = config.boot.kernelPackages.nvidiaPackages.stable;
   };

  # Enable sound with pipewire.

  hardware.alsa.enable = true;
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = lib.mkForce true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  #Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
