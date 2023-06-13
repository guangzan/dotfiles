zmodload zsh/zprof

# ZSH_THEME="spaceship"
# SPACESHIP_PROMPT_ORDER=(user host dir node git exec_time line_sep jobs exit_code char)

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# NPM BINARY CHINA
# https://github.com/cnpm/binary-mirror-config/blob/master/package.json#L53
export NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
export NVM_NODEJS_ORG_MIRROR="https://cdn.npmmirror.com/binaries/node"
export PHANTOMJS_CDNURL="https://cdn.npmmirror.com/binaries/phantomjs"
export CHROMEDRIVER_CDNURL="https://cdn.npmmirror.com/binaries/chromedriver"
export OPERADRIVER_CDNURL="https://cdn.npmmirror.com/binaries/operadriver"
export ELECTRON_MIRROR="https://cdn.npmmirror.com/binaries/electron/"
export ELECTRON_BUILDER_BINARIES_MIRROR="https://cdn.npmmirror.com/binaries/electron-builder-binaries/"
export SASS_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-sass"
export SWC_BINARY_SITE="https://cdn.npmmirror.com/binaries/node-swc"
export NWJS_URLBASE="https://cdn.npmmirror.com/binaries/nwjs/v"
export PUPPETEER_DOWNLOAD_HOST="https://cdn.npmmirror.com/binaries"
export SENTRYCLI_CDNURL="https://cdn.npmmirror.com/binaries/sentry-cli"
export SAUCECTL_INSTALL_BINARY_MIRROR="https://cdn.npmmirror.com/binaries/saucectl"
export npm_config_sharp_binary_host="https://cdn.npmmirror.com/binaries/sharp"
export npm_config_sharp_libvips_binary_host="https://cdn.npmmirror.com/binaries/sharp-libvips"
export npm_config_robotjs_binary_host="https://cdn.npmmirror.com/binaries/robotj"
export CYPRESS_DOWNLOAD_PATH_TEMPLATE="https://cdn.npmmirror.com/binaries/cypress/${version}/${platform}-${arch}/cypress.zip"
export FSE_BINARY_HOST_MIRROR="https://npm.taobao.org/mirrors/fsevents/"

export ZSH="$HOME/.oh-my-zsh"
export HOMEBREW_NO_AUTO_UPDATE=false

# -- NVM Start --
# This script load slow
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Add default node to path
export PATH=$HOME/.nvm/versions/node/v16.18.0/bin:$PATH

# load nvm
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use
# -- NVM End --

export PATH="$PATH:$HOME/development/flutter/bin"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"
export RUBY_BUILD_MIRROR_URL=https://cache.ruby-china.com

# vite-plugin-vue-inspector
export VUE_EDITOR=code

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
export ANDROID_HOME=/Users/guangzan/Library/Android/sdk


source $ZSH/oh-my-zsh.sh
source ~/.bashrc
source ~/.bash_profile

# pnpm
export PNPM_HOME="/Users/guangzan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# alias start
alias openhost="code /etc/hosts"
alias freshhost="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias host-status="sudo launchctl list | grep hoststool"
alias hoststool-file="code /usr/local/bin/hoststool"
alias clearhost="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias bashconfig="code ~/.bashrc"
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias ngconfig="code /opt/homebrew/etc/nginx/nginx.conf"
alias c="code"
alias cn="code -n"
alias ll="ls -l"
alias cl="cd $1;ls"
alias rmnm="rm -rf ./node_modules"
alias cdd="cd ~/Desktop;ls"
alias cdc="cd ~/code;ls"
alias cdci="cd ~/code/iwhalecloud;ls"
alias cdco="cd ~/code/opensource;ls"
alias cdaw="cd ~/code/opensource/awescnb-workspace;ls"
alias cdcs="cd ~/code/sourcecode;ls"
alias cdcp="cd ~/code/playground;ls"
alias cdcg="cd ~/code/games;ls"
alias s="npm start"
alias d="npm run dev"
alias b="npm run build"
alias lint="npm run lint"
alias dt="npm run dev:test"
alias dg="npm run dev:gray"
alias dp="npm run dev:prod"
alias bt="npm run build:test"
alias bg="npm run build:gray"
alias bp="npm run build:prod"
alias ba="npm run build:analyze"
alias upnm="taze -wIr"
alias gs="git status"
alias gt="git add . && git commit -m 'auto deploy' && git push"
alias fishd="fish serve -w"
alias ngw="open /opt/homebrew/var/www"
alias ngs="brew services start nginx"
alias ngrs="brew services restart nginx"
alias javaversionls="/usr/libexec/java_home -V"
alias openproxy='export all_proxy=socks5://127.0.0.1:1080'
alias closeproxy='unset all_proxy'
alias cls="clear"
alias kinput="pgrep -f "/System/Library/Input Methods/SCIM.app/Contents/PlugIn" | xargs kill -HUP"

# mc alias set ci https://cos.iwhalecloud.com/  akpj1  jri4NddY
# alias end
