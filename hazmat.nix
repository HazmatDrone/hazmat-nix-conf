{ config, pkgs, ... }:

{
  users.users.hazmat={
    packages=[
      pkgs.discord
      pkgs.tdesktop
      #barrier
      #polymc
      pkgs.element-desktop
      pkgs.firefox
    ];
    isNormalUser=true;
    extraGroups=["wheel"];
    openssh.authorizedKeys.keys=[
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEb+6hxSYGon/9luPlbazxkJhyFHHav+eDGV/t97UQ3LL0A0Nf2fpSyDC2lE5S2kAlADZjDWa7LPpiS4fvlXEjFnpH1PG/P0pmEwP9dARKtblX0FznUkhi6UUfXKhF7HECysnY4nilo2RkM/YocRXz7axDe4BUojIcY2G9ee5ExdIfQWiOyaZ+l/a3DJMJLEUH0G3fbZm9rJnNcZLosSdbwMfKZT4YI9EInVFXDWpQ3R1Z1BvFnH1gbmMjJBvkwV/pV/VbCUUeP1ljMm8X041mW9XC+Z9RzmifKJObUZErmFle/7EmpxjKqQv3HHibwCu1MJNDlUmzVoU+Z/CEU9Eb resin@termius"
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRfHz6SyTWysJIfR2MUskQQq40683HIYnCQiv3cKnxeqJFz+TNWrm6yp9/z4dMo945G6afS/9MQlhTePoy3uP5r6a/QTlRMiHD9wUdoCweHMX8uIiABsy+8peekAE0BNUhkVE0jKYRnVKivJckHiAk3t2UNrAzNKElOtg+m3uFyD/Dapu3WEYVh/XqNZI8mfMZ4p8lfvUQsKue6k5AVB+Nw41rzQ2ePLEqQPMNsHNJr+iJQ28K3jTBpLp52xbk7FllJlxrxUnfA3ulHUGUHM+j2ypPvmCS4FC9Ua1FvI3DRw9A7O2lutTeGFYTOLzZZJwa/sVkzsX3Jskghgob9HrvFS6h7fhULLdzc8ON2Jp8zs+je/Fg+Bb3azZOz9JRS+oxEbV4QFEJs0QPpAPgH2jA+Pbi0WhRiOUAoNfGUHphMqIzPjUaA3zR6BFDnB7IYA0uUcXtrCn0HMZzE4mGE6RAfr1pW1VhwvLodF0RD5oEQkxC1KWNSDA2azTnQFOW8fE= resin@resindrakenet"
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/FxeDiuIC2SCLmo8eSc+aMU+d8o35qSgkHWja7BckJKRHCqpEHhh23favbJDhX/7svs/jMbJsuSBrBX3P/IIAfotT6KEhnkBVDYB29PxDDr99wjuZXiVMPESAE1rE3AYLJ6gVCYvLD2KK5+FvXmS4LCM2hvFocXhfbCtn7ftJG74dWvzwrzJxtqrjxwLtMjodfx1ZiC7aNe4I5hBexYEeTTDD09Z3vsfNHaBNYsWrVkom/Q7KHVIR5LYuPJkxyk2SMcLXCZL+YyJfMJKJKUCLDzRMydPH8Tfyep+k7/3py0R71QQrHsFOd81Mes7PkifWuhFb1t9twsTid6Zced49 resin@resindrake"
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+32dlWpZIb3W/0VzukErOmpglgsi37mek4iVeZkI/PaPcLXkNbqq6gmp0supW72trqOFtxOskapOsw/uiejACXHOJAYN8Qk4BzTJNhmi6f3Vr6TQK7ZQY74TN7HVTXIgO/msHXXI4CAHVjgUHDBBmaRIwmFtX+za3Cb3gNnsTq6yzo9nYHxIfPiz3qR75TLMQ/V+xlPRfsMzNgkB+INSYyW32sjOdHDR1Pp9OzfIybu1jyuUefvMCL295x2UIHC02z8AQ5s/E6mP5wKRL11bcm20prM8BmMVBca7JQXFbClcoD37+O4H3MJhKqhFVNkxu5tidtiP83vhcSYaOZUBnyjkRWvvT63ClTTvdnV1q1m0EzCb4Q9h9GugK/iUAHUndBRoABf7VDe9CEjNUzJe9TqCmOE3U15Bx8vVUp1/84JLmJyVwedDa1e32K04RKFY1HMYYtNXNl/J/fVasvFo98sr3X/GnJUcqsr8pbpE5ROthyIvWxV6FxyNtxbxPj/k= resin@lastpass"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOnWnu3d90ge9vZkcBVWO+DwFp8vfjaF37QzZh8uop9O Shortcuts on ResinPhone"
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCaec8IjqDhEKjOSewLvK0rVP6n+od+e6vDdeA0pY5N5JJ7QA+DbVoSIDVbjfNA3gXTbw/qUXn82N5MVI6zk2TXWTOoRbJuhVjUUbJlO3+oxjwQS7A+0zI8bppOXqPh5lZs9Y3V6F1qVFNDhGVwEq9LvknqPIRL/9jSznGfs1llQ9e8gDDKgiH0I2kk341z7zyyfkbO0f2W2IVed0TVPUP2rfQR7fGb6o/TgIq60I6kD7SwLN6jmfHR88Lle07IDTBcodp4sFHdCHrhx3N21gVMdGCoBTdbyNlLIs0LMEw6/D/FFU5Z+jvI0qgmTkSOpDkFXcyrhg0C1wdB7G4c6YISHJKVYQ/tTkYgyA8kqE2LJLjGvd2AZWWEXIBQl6k2CQMmNrV8hVfh7qi+7S2DpvLRgLS9S5lrAhrhEiO9VD4P7bgMLp8lOlwy7zQyZzJmRY/fOXCzyy4ieDD6YsRjtCxg68lUnaPOQH3xdpZWl4YsLkzU2Uq3f6Eec7g+NMYI+zk= resin@hazlaptop"
    ];
  }
  programs.steam.enable=true;
  programs.steam.dedicatedServer.openFirewall=true;
}
