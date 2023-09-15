# Make-archive plugin

This plugin defines `mkarch` function that can archive files and directories with the given compression format you pass to it.

## Example 1

Archive 'build' directory and 'README.md' file using tar.gz compression:

```bash
mkarch tar.gz build README.md
```

## Example 2

Archive using the gzip's slowest compression method but best compression ratio:

```bash
mkarch -b tar.gz build README.md
```

## Example 3

Print size and time of archiving 'prj' for each available compression format without outputting any archives

```bash
mkarch -s -t ALL prj
```

## Installation

### Zinit

```zsh
zinit light 0xRZ/mkarch
```

### Without plugin manager

```zsh
source /path/to/mkarch.plugin.zsh
```

## Supported compression formats

| Compression format | Used programs                                                                                                                                                  |
|--------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| tar                | [tar](https://www.gnu.org/software/tar/)                                                                                                                       |
| tar.bz2            | [bzip2](https://sourceware.org/bzip2/) (low priority) OR [pbzip2](http://compression.ca/pbzip2/) (mid priority) OR [lbzip2](http://lbzip2.org) (high priority) |
| tar.gz             | [gzip](https://www.gnu.org/software/gzip/) OR [pigz](https://www.zlib.net/pigz) (takes precedence)                                                             |
| tar.xz             | [xz](https://tukaani.org/xz/) OR [pixz](https://github.com/vasi/pixz) (takes precedence)                                                                       |
| tar.zst            | [zstd](https://facebook.github.io/zstd/)                                                                                                                       |
| tar.lz4            | [lz4](http://www.lz4.org/)                                                                                                                                     |
| tar.lrz            | [lrzip](https://github.com/ckolivas/lrzip)                                                                                                                     |
| tar.lzo            | [lzop](https://www.lzop.org/)                                                                                                                                  |
| 7z                 | [7z](https://github.com/jinfeihan57/p7zip)                                                                                                                     |
| rar                | [rar](https://www.rarlab.com)                                                                                                                                  |
| zip                | [zip](http://www.info-zip.org/Zip.html)                                                                                                                        |
| ALL                | Special extension to create archive using each available compression format                                                                                    |

Available compression formats determined automatically based on existing system binaries. Plugin also supports tab completion for selection of available compression.
