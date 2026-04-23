# My dotfiles

## Installation

> [!CAUTION]
> This is Debian-base installation

1. `sudo apt install curl wget git gh vim zsh xz-utils libatomic1 make cmake keychain uidmap`
2. `git clone https://github.com/ysktl/.dotfiles.git`
3. Running `./deploy.sh`
4. (Option) Install Nix Package Manager: [./nix/README.md](./nix/README.md)
5. `bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"`
6. `curl -sS https://starship.rs/install.sh | sh`
7. `chsh -s $(which zsh)`
8. reboot
9. `rustup default nightly`
10. `git clone https://github.com/ysktl/nvim-env.git ~/.config/nvim/`
11. `mise use -g node npm yarn pnpm bun deno python`
12. `curl -LsSf https://astral.sh/uv/install.sh | sh`
13. JDK and Scala Install
  - [temurin-25-jdk](https://adoptium.net/installation/linux#_deb_installation_on_debian_or_ubuntu)
  - [Scala3](https://docs.scala-lang.org/getting-started/install-scala.html#)

DONE

