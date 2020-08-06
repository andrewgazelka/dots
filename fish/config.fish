# Fix fish emojis
set -g fish_emoji_width 2
set START (pwd) 

set -Ux APPS Discord
# Path
set -ax PATH "$HOME/.cargo/bin" "/usr/local/opt/coreutils/libexec/gnubin" ~/.jetbrains ~/.sdk/flutter/bin "$HOME/.pub-cache/bin"
set -Ux ANDROID_HOME /Users/andrewgazelka/Library/Android/sdk

# Editor options
set -Ux PAGER less
set -Ux VISUAL nvim
set -Ux EDITOR nvim
set -Ux NODE_PATH "$HOME/.config/yarn/global/node_modules"

# Autojump
 [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish 

# iTerm 2 integration
 test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# IntelliJ
set VIRTUAL_ENV_DISABLE_PROMPT 1
if set -q JEDITERM_SOURCE
	. $JEDITERM_SOURCE
end

set -x JAVA11_HOME "/Library/Java/JavaVirtualMachines/jdk-11.0.4.jdk/Contents/Home"
set -x JAVA12_HOME "/Library/Java/JavaVirtualMachines/jdk-12.0.2.jdk/Contents/Home"
set -x JAVA8_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home"
set -x JAVA7_HOME "/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home"
set -x JAVA_HOME $JAVA8_HOME
#
# URLs
set -g mc "https://api.mojang.com/users/profiles/minecraft"

# Regex
set -g d "[0-9]" 
set -g w "[0-9A-Za-z]"

# bobthefish
set -g theme_display_date no 
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no 
set -g theme_color_scheme terminal-dark

# Projects 
set -x PROJECTS "$HOME/Projects" 
set -x UHG "$PROJECTS/UHG"

source $HOME/.config/fish/aliases.fish

