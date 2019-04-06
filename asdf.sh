# asdf
if [[ ! -d ~/.asdf ]]; then
    echo "Install asdf..."
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0
fi

~/.asdf/bin/asdf update

if ! ~/.asdf/bin/asdf plugin-list | grep python &>/dev/null; then
    echo "Add plugin python..."
    ~/.asdf/bin/asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
fi
