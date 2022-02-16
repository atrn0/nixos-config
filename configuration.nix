{ ... }:

{
  nix.extraOptions = "experimental-features = nix-command flakes";
  services.openssh.enable = true;
  services.openssh.passwordAuthentication = true;
  services.openssh.permitRootLogin = "yes";
  users.users.root.initialPassword = "root";
}
