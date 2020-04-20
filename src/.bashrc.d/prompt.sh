#!/bin/bash

export PS1="\u: \W\$(__git_ps1)\$ "
export PROMPT_COMMAND="history -a;history -n;${PROMPT_COMMAND}"