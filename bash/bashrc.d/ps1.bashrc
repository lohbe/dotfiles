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

export PS1="┌ \$([ \$? -eq 0 ] && echo ✓ || echo ⨯) \u@\h ⎈ \$(__kube_ps1) \n└ \$(__venv_info)\W\$(__git_branch) $ "
