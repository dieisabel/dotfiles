# For prompt I use Pure theme
# https://github.com/sindresorhus/pure

fpath+=$ZDOTDIR/themes/pure

# Load promptinit function and call it
autoload -U promptinit; promptinit

# Change the max execution time of a process before its run time is shown when it exits
PURE_CMD_MAX_EXEC_TIME=60

# Prevent Pure from checking whether the current Git remote has been updated.
PURE_GIT_PULL=0

# Change color of current path
zstyle :prompt:pure:path color '#FA8D3E'

# Change color of prompt symbol
zstyle :prompt:pure:prompt:success color '#73B8FF'

# Change color of git branch name
zstyle :prompt:pure:git:branch color '#D2A6FF'

# Set Pure prompt
prompt pure
