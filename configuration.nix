{ config, pkgs, ... }:

{
 imports =
  [ # Include the results of the hardware scan.
   ./hardware-configuration.nix
   ./hazmat.nix
   ./bootloader.nix
   ./kde.nix
  ];

 # Use the systemd-boot EFI boot loader.


  networking = {
    hostName = "大💦"; # Define your hostname.
    useDHCP = false;
    networkmanager.enable = true;
    useNetworkd = true;
    firewall.enable = true;
    nameservers = [ "8.8.8.8" "1.1.1.1" ];
  };
 
  # Set your time zone.
  time.timeZone = "Australia/Sydney";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    keyMap = "us";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  nix.trustedUsers = [ "@wheel" ];

  # Enable CUPS to print documents.
  services.printing.enable = true;

 # List packages installed in system profile. To search, run:
 # $ nix search wget
 # environment.systemPackages = with pkgs; [
 #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
 #  wget
 #  firefox
 # ];

 # Enable the OpenSSH daemon.
 services.openssh.enable = true;

 # This value determines the NixOS release from which the default
 # settings for stateful data, like file locations and database versions
 # on your system were taken. It‘s perfectly fine and recommended to leave
 # this value at the release version of the first install of this system.
 # Before changing this value read the documentation for this option
 # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
 system.stateVersion = "21.11"; # Did you read the comment?

}

