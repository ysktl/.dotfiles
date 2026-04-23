# Installation Guide

## First Time Only

1. Get home-manager

```shell
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

2. Install home-manager

```shell
nix-shell '<home-manager>' -A install
```

3. Enable to `experimental-features`

```shell
sudo mkdir -p /etc/nix
sudo vim /etc/nix/nix.conf
```

`/etc/nix/nix.conf`

```plaintext
experimental-features = nix-command flakes
```

```shell
sudo systemctl restart nix-daemon
```

## Attach to nix-flake

```shell
home-manager switch --flake .
```

