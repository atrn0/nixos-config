{ ... }:

{
  users.users.atrn0 = {
    isNormalUser = true;
    home = "/home/atrn0";
    description = "Arata Sato";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCt4lX5Q+p0DCFJFU8mSbnsds2UnxWhm1oWjBuu3WgSrmsVTvBiJKVTAqRNE1LQ7lzzDH9SNASFEsQRah5a94Tpt8OCqyd79GFqXciYCIvLV41Hq4Rl+EukWM8gROBCJbD4aQc6taXmGmiaSb56kpqSINnaPM7g25U3OObY28UCAL1q7gtW7Er3aKV8oPNi1h9zv+I2j9T94af7gOCIbe4lkGzccm7Jlb8OgmqTW+ckQE6xR6EzrIqA9bzqQhtpRsLsxMSWmwBnaSwN/85NN79adGQmKNNThgcPOFb9xF2LFYs0is3f0CtjsuaR84VBvsRvF7FuSI/TUgMKaTjQWyYwI/3j11CJb1FPra3FkL1OnULyGLWW5Azckjwui51+Kaq0Mq/ENWS1hGtNIf/nkjtdM3lM+Nr33NfqQ5LnT9rpx3l7TtOt1IVyZOFRx8KIGEJwVj9Sm8rGypqTcrsuBxn1jn5Th+sgsdLNF867LGKBd/R62KCGwuA1Y6aescSON4k= atrn0"
    ];
  };
}
