# qbe.vim

File detection and syntax highlighting for the
[QBE](https://c9x.me/compile/) compiler backend *IL*.

## Installation

### Using Vim 8 or never

  * `mkdir -p ~/.vim/pack/plugins/start/`
  * `cd ~/.vim/pack/plugins/start/`
  * `git clone https://github.com/perillo/qbe.vim`

## TODO

  - [ ] Support for indentation (`indent/qbe.vim`).
  - [ ] Decide between 4-space or 8-space indentation.
        The `doc/il.txt` document seems to suggest 8-space indentation.
  - [ ] Decide if `env` is a keyword.
  - [ ] Verify that the supported string escape sequences are correct.
