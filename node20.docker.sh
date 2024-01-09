# 版本 arm64v8/node:20.10.0-bullseye-slim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

sed -i '/^ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc

wget https://raw.githubusercontent.com/thankforcat/newlinux/main/.p10k.zsh -O $HOME/.p10k.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i '/^plugins=/ s/)/ zsh-autosuggestions)/' ~/.zshrc

# 输出一些信息
echo "Zsh configuration completed. Reloading shell..."
source ~/.zshrc
echo "Shell reloaded."

npm i -g pm2

npm i -g pnpm
