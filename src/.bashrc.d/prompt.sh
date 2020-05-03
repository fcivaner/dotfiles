#!/usr/bin/env bash

if [ "$BASH" ];then
    # if vte prompt command does not exist, set it to noop
    if ! [ -x "$(command -v __vte_prompt_command)" ]; then
        function __vte_prompt_command()
        {
            :
        }
    fi
    export PS1="\u: \W\$(__git_ps1)\$ "
    export PROMPT_COMMAND="history -a;history -n;${PROMPT_COMMAND}"
fi