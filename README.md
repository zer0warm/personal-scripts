# personal-scripts
A handful of scripts I've written for myself, resolving my own problems.

|# |Script|Summary|Shell|
|--|------|-------|-----|
|1|[fuck](fuck)|Fake responses for cursing on CLI|bash|
|2|[j4cc](j4cc)|Compile C source files (single at once) with zero effort|bash|
|3|[readme](readme)|Report executables found in $HOME/bin, and their summary|bash|
|4|[udef.ps1](udef.ps1)|Look up words on [UrbanDictionary](https://www.urbandictionary.com)|powershell|
|5|[malnews.ps1](malnews.ps1)|Fetch latest anime news from [MAL](https://myanimelist.net)|powershell|
|6|[just_write](just_write)|Quick thought capture|zsh|
|7|[binstall](binstall)|Symlink binaries to `~/.local/bin`|bash|
|8|[config](config)|Quick edit config files of various programs|zsh|

## Setup

- binstall:
```sh
./binstall binstall
```

- just_write:
```sh
alias jw="just_write"
```

- config:
```sh
# Bootstrap
config

# Configure
cat >"${XDG_CONFIG_HOME:-$HOME/.config}/config/config" <<EOF
typeset -A config_map=(
  # [name]="config_path"
)
EOF
```

## Deprecated

|# |Script|Reason|Shell|
|--|------|-------|-----|
|1|[sysrep](sysrep)|Wrong result|sh|
|2|[diary](diary)|[just_write](just_write) does this better|bash|
|3|[kitty-switch-theme](kitty-switch-theme)|[kitty 0.38.0](https://sw.kovidgoyal.net/kitty/kittens/themes/#change-color-themes-automatically-when-the-os-switches-between-light-and-dark) now does this perfectly|zsh|
|4|[pnews](pnews)|Hyrum's law triggered: the website owner hire someone else to redecorate the place|sh|
