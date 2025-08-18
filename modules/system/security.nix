{config, pkgs, ...}:
{
  # PCSC Daemon for smart card support, used by some security keys.

  # Provides udev rules for Yubikeys and related tools.
  services.udev.packages = [ pkgs.yubikey-personalization ];

  # Critical: Add udev rule to grant user access to FIDO security keys for WebAuthn.
  # Without this, browsers cannot access the key.
  services.udev.extraRules = ''
    # This rule adds the "uaccess" tag, allowing the logged-in user to access the device.
    # Replace the idVendor and idProduct with the values for your specific key.
    KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="311f", ATTRS{idProduct}=="a6e9", TAG+="uaccess"
    ACTION=="remove",\
      ENV{ID_BUS}=="usb",\
      ENV{ID_MODEL_ID}=="a6e9",\
      ENV{ID_VENDOR_ID}=="311f",\
      ENV{ID_VENDOR}=="TrustKey",\
      RUN+="${pkgs.systemd}/bin/loginctl lock-sessions"
  '';

  # Your other security settings
  programs.mtr.enable = true;
  security.pam.u2f = {
    enable = true;
    control = "sufficient"; # Use "required" if you want it to be mandatory
  };
  security.pam.services = {
    login.u2fAuth = true;
    sudo.u2fAuth = true;
    sddm.u2fAuth = true;
  };
}