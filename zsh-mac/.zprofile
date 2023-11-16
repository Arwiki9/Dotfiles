# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.8
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

  export HOMEBREW_PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple #ckbrew
  export HOMEBREW_API_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api  #ckbrew
  export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles #ckbrew
  eval $(/usr/local/Homebrew/bin/brew shellenv) #ckbrew


eval "$(/usr/local/bin/brew shellenv)"

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

function proxy_on() {
    export proxy_url="http://127.0.0.1:7890"
    export http_proxy=$proxy_url
    export https_proxy=$proxy_url
    export ftp_proxy=$proxy_url
    export no_proxy="localhost, 127.0.0.1, ::1"
    echo -e "终端代理已开启。"
}

function proxy_off(){
    unset http_proxy https_proxy ftp_proxy no_proxy
    echo -e "终端代理已关闭。"
}
export EDITOR="nvim"
export VISUAL="nvim"
export RANGER_LOAD_DEFAULT_RC=false
