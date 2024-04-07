#!/bin/sh

repos=(
   "https://github.com/zdharma-continuum/fast-syntax-highlighting.git"
   "https://github.com/romkatv/powerlevel10k.git"
   "https://github.com/hlissner/zsh-autopair.git"
   "https://github.com/zsh-users/zsh-autosuggestions.git"
   "https://github.com/z-shell/zsh-eza.git"
   "https://github.com/zsh-users/zsh-history-substring-search.git"
   "https://github.com/zap-zsh/sudo.git"
   "https://github.com/zap-zsh/supercharge.git"
   "https://github.com/MichaelAquilina/zsh-you-should-use.git"
)

clone_dir="$HOME/.config/zsh/plugins"

mkdir -p "$clone_dir"

for repo_url in "${repos[@]}"
do
   repo_name=$(basename "$repo_url" .git)

   target_dir="$clone_dir/$repo_name"

   if [ -d "$target_dir" ]; then
      echo "'$repo_name' already exists..."
   else 
      "Cloning $repo_name"
      git clone "$repo_url" "$target_dir"
   fi
done

echo "Installation complete"
