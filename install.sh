#! /usr/bin/env bash

function __install_rfc() {

printf "Looking for curl... "
which curl > /dev/null
if [ "$?" = "0" ]; then
    echo "found."
else
    printf "not found. I'll try with wget... "
    which wget > /dev/null
    if [ "$?" -eq 0 ]; then
        echo "found."
    else
        echo 'not found!'
        return 1
    fi
fi

printf "Looking for less... "
which less > /dev/null
if [ "$?" = "0" ]; then
    echo "found"
else
    if [ -n "$PAGER" ]; then
        echo "not found. I'll use '$PAGER' instead."
    else
        echo 'not found!'
        return 1
    fi
fi

printf "Does \$HOME/bin exists?... "
if [ ! -d "$HOME/bin" ]; then
    echo "no."
    
    printf "Creating \$HOME/bin... "
    mkdir $HOME/bin 2>/dev/null && echo "done." || echo 'fail!'
else
    echo "yes."
fi

echo ":$PATH:" | grep -q ":$HOME/bin:"
if [ "$?" != "0" ]; then
    printf "Adding it to the \$PATH... "
    echo "\n# Added by 'rfc' installer\nexport PATH=\$PATH:\$HOME/bin" \
        >> $HOME/.bash_profile \
            && echo "done." || echo 'fail!'
fi

printf "Downloading rfc... "
curl -fs https://raw.github.com/bfontaine/rfc/master/rfc > "$HOME/bin/rfc" \
    && echo "done." || echo 'fail!'

printf "Making it executable... "
chmod u+x "$HOME/bin/rfc" && echo "done." || echo 'fail!'

}
__install_rfc;
