# .bashrc

# https://pracucci.com/display-the-current-kubelet-context-in-the-bash-prompt.html
__kube_ps1()
{
    # Get current context
    CONTEXT=$(cat ~/.kube/config | grep -oP "current-context: \K.+")

    # note: override CONTEXT if KUBECONFIG is configured - https://stackoverflow.com/a/39296572
    CONTEXT=${KUBECONFIG:-$CONTEXT}

    if [ -n "$CONTEXT" ]; then
        echo ${CONTEXT}
    fi
}

__git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //'
}


# https://stackoverflow.com/questions/10406926/how-do-i-change-the-default-virtualenv-prompt
__venv_info()
{
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "(venv:$venv) "
}

# disable the default virtualenv prompt change
export VIRTUAL_ENV_DISABLE_PROMPT=1

# https://unix.stackexchange.com/questions/656045/how-to-modify-the-anaconda-environment-prompt-in-zsh
# needs changeps1: False in .condarc
__conda_info()
{
  [[ -n "$CONDA_DEFAULT_ENV" ]] && echo "(conda:$CONDA_DEFAULT_ENV) "
}

export PS1="┌ \$([ \$? -eq 0 ] && echo ✓ || echo ⨯) \u@\h ⎈ \$(__kube_ps1) \n└ \$(__venv_info)\$(__conda_info)\W\$(__git_branch) $ "
