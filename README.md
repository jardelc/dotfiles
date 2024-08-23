# **DJDL dotfiles**

Update Apt Repo:\
`sudo apt update`

Install Kitty, Vim, Fonts, Curl, Neofetch, Git, Pil, Ranger and Zsh:\
`sudo apt install kitty vim fonts-inconsolata curl neofetch git python3-pil ranger zsh`

Install oh-my-zsh:\
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Install zsh autosuggestions:\
`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

Install zsh syntax highlighting:\
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

Install zsh fast-syntax-highlighting:\
`git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting`

Install zsh autocomplete:\
`git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete`

Install zsh powerlevel10k:\
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

Install zsh kbectl autocomplete:\
`git clone https://github.com/jardelc/zsh-kubectl-autocomplete.git $ZSH_CUSTOM/plugins/kubectl-autocomplete`

Apply dotfiles:\
`git clone https://github.com/jardelc/dotfiles.git ~/djdl-dotfiles && cd ~/djdl-dotfiles && ./install_files.sh`

## All at once
```
sudo apt update;
sudo apt install kitty vim fonts-inconsolata curl neofetch git python3-pil ranger zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting;
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting;
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete;
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k;
git clone https://github.com/jardelc/zsh-kubectl-autocomplete.git $ZSH_CUSTOM/plugins/kubectl-autocomplete;
git clone https://github.com/jardelc/dotfiles.git ~/djdl-dotfiles && cd ~/djdl-dotfiles && ./install_files.sh;
```




