# Homebrew Tap

Custom Homebrew formulae. Tap the repository: `brew tap gzagatti/tap`.

Available formulas:

- [Julia](./Formula/julia.rb) : Since `brew` does not yet support Homebrew Cask in Linux, this tap provides a
installation that simply copies the pre-compiled Julia binaries in the right
place. This formula is only meant to be used on generic Linux x86.

- [Emacs](./Formula/emacs.rb) : A custom installation.

- [TexLive](./Formula/texlive.rb): A custom TexLive installation. The official Homebrew recipe is too bloated and takes longer to update. I prefer to maintain my own Formula.

- [NNN](./Formula/nnn.rb) : It is possible to build NNN with different flags to customize its behaviour. This a custom installation.

- [Unicodeit](./Formula/unicodeit.rb) : A useful utility for converting latex expression to unicode output. I did not have the time to make a PR to Homebrew.

## References

[Homebrew formula cookbook](https://docs.brew.sh/Formula-Cookbook)

