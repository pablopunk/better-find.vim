# Better find

Vim comes with a `:find` command that you can use to find and edit files in your folder. The problem is that to make it work like a fuzzy finder (without the fuzzy part) you need a few tweaks. With this plugin you can do this:

```vim
:find *.js     " press <tab> here
:find index.js " you get autocompletion
```

- Wildcard searches (`*.css`, `*Component*`)
- Supports Subdirectories

## Install

I use [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'pablopunk/better-find'
```

## Related

* [My dotfiles](https://github.com/pablopunk/dotfiles)
