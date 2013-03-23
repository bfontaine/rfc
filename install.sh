#! /usr/bin/env bash

echo -n "Looking for curl... "
which curl > /dev/null || echo "not "
echo "found."

echo -n "Looking for less... "
which less > /dev/null || echo -n "not "
echo "found."

echo -n "Does \$HOME/bin exists?... "
ls $HOME/bin > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "no."
    
    echo -n "Creating \$HOME/bin... "
    mkdir $HOME/bin && echo "done" || echo "fail!"

    echo -n "Adding it to the \$PATH... "
    echo "export PATH=\$PATH:\$HOME/bin" >> $HOME/.bashrc
    echo "done."

else
    echo "yes."
fi

echo -n "Downloading rfc... "
curl -fs https://raw.github.com/bfontaine/rfc/master/rfc > "$HOME/bin/rfc" \
    && echo "done." || echo "fail!"

echo -n "Making it executable... "
chmod u+x "$HOME/bin/rfc" && echo "done." || echo "fail!"
