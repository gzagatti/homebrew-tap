# Homebrew Tap

Custom Homebrew formulae. Tap the repository: `brew tap gzagatti/tap`.

Available formulas:

- [Julia](#julia)
- [Zathura](#zathura) 
- Zathura PDF Poppler
- Girara
- Synctex
- [Potion](#potion)


## Julia

[Julia](https://julialang.org/) is a programming language geared for scientific
computing that is fast, dynamic, optionally typed, general, easy to use and
open source. This tap provides a "cask"-type of formula for Julia. 

Since `linuxbrew` does not yet have support for Homebrew cask, this tap
provides a very installation that simply copies the pre-compiled Julia binaries
in the right place. This formula is only meant to be used with `linuxbrew`.

## Zathura

This tap contains formulae for [Zathura](https://pwmt.org/projects/zathura/),
its dependencies (eg. `girara`, `synctex`) and its plugins (eg.
`pdf-poppler`).

Zathura depends on plugins to display different extensions. These plugins
need to be located in the correct path for Zathura to find it. Since
`brew` does not allow formulae to link each other, I have symlinked
Zathura's plugin directory to `usr/local/lib/zathura` and each plugin's
dynamic library is then linked to this directory. This solution allows
plugins to be installed without input from the user.

`synctex` is sourced directly from [TeX User Group](http://www.tug.org/)
who are the official maintainers.

Thanks to
[zegervdv/homebrew-zathura](https://github.com/zegervdv/homebrew-zathura)
for some of the steps.

### Synctex support

At the moment only backward synchronization from Zathura to Neovim is
possible. [`neovim-remote`](https://github.com/mhinz/neovim-remote)
provides remote functionality to Neovim allowing the backward sync operation to
work.

In order to allow for backward sync start neovim with

```
nvim -list /tmp/nvimserver
```

then open the target pdf with Zathura as following

```
zathura -x "nvr --servername /tmp/nvimserver \
	--remote +%{line} \"%{input}\"" <file_name>
```

To navigate from the pdf to the corresponding line in the tex file, `ctrl + click`
on the target line in the pdf file. Neovim will magically move to
the selected line.

Unfortunately, forward sync is not possible at the moment as Zathura
communicates via a DBUS interface with the system. This interface does not seem
to be available in MacOS.

### Copying to clipboard

Add the following to your `~/.config/zathura/zathurarc`:

```
set selection-clipboard clipboard
```

Thanks to [geigi](https://github.com/geigi) (see [#5](https://github.com/zegervdv/homebrew-zathura/issues/5))

## Potion

This formula installs a compiler for [`potion`](http://perl11.org/potion).
Although this is not currently maintained, it was created to
(1) to teach myself how to create a basic Homebrew formula; and (2) for
practicing the exercises in [Learn Vimscript the Hard
Way](https://learnvimscriptthehardway.stevelosh.com/).

## References

[Homebrew formula cookbook](https://docs.brew.sh/Formula-Cookbook)

