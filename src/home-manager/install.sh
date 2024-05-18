#! /usr/bin/env nix
#! nix shell nixpkgs#home-manager --command sh
USER=$_REMOTE_USER home-manager switch --impure --flake $FLAKE
chsh -s $(which $SHELL_PROGRAM) $_REMOTE_USER
