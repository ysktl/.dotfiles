#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="${HOME}/.dotfiles"
TARGET_DIR="${HOME}"

cd "$DOTFILES_DIR"

# find で対象を列挙
find . -mindepth 1 \
  ! -path "./deploy.sh" \
  ! -path "./README.md" \
  ! -path "./nix" \
  ! -path "./nix/*" \
  | while read -r path; do

    src="${DOTFILES_DIR}/${path#./}"
    dest="${TARGET_DIR}/${path#./}"

    # ディレクトリの場合は mkdir だけして次へ
    if [ -d "$src" ]; then
        if [ ! -e "$dest" ]; then
            mkdir -p "$dest"
            echo "mkdir: $dest"
        fi
        continue
    fi

    # 親ディレクトリを作成
    mkdir -p "$(dirname "$dest")"

    # 既に存在する場合の処理
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
            echo "skip (already linked): $dest"
        else
            echo "skip (exists): $dest"
        fi
        continue
    fi

    ln -s "$src" "$dest"
    echo "link: $dest -> $src"

done
