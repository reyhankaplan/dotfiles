##
# `cd` into the last directory upon exit.
##
function lf() {
  command lf -last-dir-path="$HOME/.local/share/lf/lastdir" "$@" \
    && cd "$(<$HOME/.local/share/lf/lastdir)" 2>/dev/null
}

##
# Commit and push ledger journal updates.
##
function lpush() {
  cd ~/Projects/finance && \
    git add . && \
    git commit --message='update journal file' && \
    git push origin master
}

function auth() {
  oathtool --base32 --totp $(<"$HOME/.config/auth/totp-$1.txt")
}

# 
function nvmstart() {
  setopt LOCAL_OPTIONS WARN_CREATE_GLOBAL
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
}
