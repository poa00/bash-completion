# Check for interactive bash and that we haven't already been sourced.
[ -z "$BASH_VERSION" -o -z "$PS1" -o -n "$BASH_COMPLETION" ] && return

# Check for recent enough version of bash.
bash=${BASH_VERSION%.*}; bmajor=${bash%.*}
if [ $bmajor -ge 3 -a -r /etc/bash_completion ]; then
    # Source completion code.
    . /etc/bash_completion
fi
unset bash bmajor
