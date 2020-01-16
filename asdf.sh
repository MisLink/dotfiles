# asdf
if [[ ! -d ~/.asdf ]]; then
  echo "Install asdf..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0
fi

~/.asdf/bin/asdf update

~/.asdf/bin/asdf plugin-add python
~/.asdf/bin/asdf plugin-add golang
~/.asdf/bin/asdf plugin-add nodejs
~/.asdf/bin/asdf plugin-add rust
~/.asdf/bin/asdf plugin-add java
~/.asdf/bin/asdf plugin-add yarn
