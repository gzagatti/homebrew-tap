# Homebrew Tap

Custom Homebrew formulae. Tap the repository: `brew tap gzagatti/tap`.

## Zathura

This tap contains formulae for [Zathura](https://pwmt.org/projects/zathura/),
its dependencies (eg. `girara`, `synctex`) and its plugins (eg. 
`pdf-poppler`). 

`synctex` is sourced directly from [TeX User Group](http://www.tug.org/)
who are the official maintainers.

Zathura depends on plugins to display different extensions. These plugins 
need to be located in the correct path for Zathura to find it. Since 
`brew` does not allow formulae to link each other, I have symlinked 
Zathura's plugin directory to `usr/local/lib/zathura` and each plugin's 
dynamic library is then linked to this directory. This solution allows 
plugins to be installed without interference from users.

Thanks to 
[zegervdv/homebrew-zathura](https://github.com/zegervdv/homebrew-zathura) 
for some of the steps.

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


