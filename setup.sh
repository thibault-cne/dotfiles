#!/bin/sh

### This is a scripts to install brew and some usefull tools on a new computer

if brew --version > /dev/null 2>&1
then
    echo "Skipping brew installation..."
else
    echo "todo install brew";
fi

# List of pckgs to install
PKGS=(
    fzf
    zoxide
    eza
    jenv
    gpg
    fastfetch
)

echo "Installing all required packages"

for pckg in ${PKGS[*]};
    do
        if $pckg --version > /dev/null 2>&1
        then
            echo "Skipping $pckg installation..."
        elif brew install $pckg > /dev/null 2>&1
        then
            brew link $pckg
            echo "$pckg has been installed!"
        else
            echo "$pckg installation failed please retry"
        fi
    done


# The go pckg is a bit different since "go --version" doesn't work
if go version > /dev/null 2>&1
then
    echo "Skipping go installation..."
elif brew install go > /dev/null 2>&1
then
    echo "go has been installed!"
else
    echo "go installation failed please retry"
fi
