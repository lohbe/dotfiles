# .bashrc
export PS1="\$([ \$? -eq 0 ] && echo ✓ || echo ⨯) \u@\h \W\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* //') $ "
