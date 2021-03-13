# bash config directory

Setting up these aliases in two steps. First, clone the repository to `~/.config/bash.d`:

```bash
git clone https://github.com/jbouter/bash.d.git ~/.config/bash.d
```

Then, add the following to the bottom of `~/.bashrc`:

```bash
# Load custom bash config
for config in ~/.config/bash.d/*.sh; do
  source "$config"
done
```