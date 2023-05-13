# Load .zshrc
if [[ -f ~/.zshrc ]]; then
  source ~/.zshrc
fi

# Set wakatime api key in ~/.wakatime.cfg
sed -i "s/api_key =/api_key = $WAKA_IP/g" ~/.wakatime.cfg
