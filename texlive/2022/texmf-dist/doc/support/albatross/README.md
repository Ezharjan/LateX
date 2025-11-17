# Albatross

![Language: Kotlin](https://img.shields.io/badge/Language-Kotlin-blue.svg?style=flat-square)
![Minimum JRE: 8.0](https://img.shields.io/badge/Minimum_JRE-8.0-blue.svg?style=flat-square)
![Current version](https://img.shields.io/badge/dynamic/json.svg?color=blue&label=Latest%20release&query=%24.0.name&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F22437260%2Frepository%2Ftags&style=flat-square)

Albatross is a command line tool for finding fonts that contain a given
(Unicode) glyph. It relies on [Fontconfig](https://www.fontconfig.org),
a library for configuring and customizing font access.

## Basic use

The tool is a typical command line application, so we need to invoke it by
typing `albatross` in the terminal:

```bash
$ albatross
        __ __           __
.---.-.|  |  |--.---.-.|  |_.----.-----.-----.-----.
|  _  ||  |  _  |  _  ||   _|   _|  _  |__ --|__ --|
|___._||__|_____|___._||____|__| |_____|_____|_____|

Usage: albatross [OPTIONS] glyphs...

Options:
  -s, --show-styles                Show available font styles
  -d, --detailed                   Show a detailed font list
  -a, --ansi-level [n|a16|a256|tc]
                                   Set the default ANSI level
  -b, --border-style [1|2|3|4|5|6]
                                   Set the border style
  -o, --or                         Look for each glyph separately
  -V, --version                    Show the version and exit
  -h, --help                       Show this message and exit
```

Provided that Albatross is properly available in the underlying operating
system, we will get the help message listing all the available options and
the tool usage.

### Glyphs

Albatross takes a list of glyphs as input. Three formats are supported:

- The glyph itself, e.g, `ß` ([Eszett](https://en.wikipedia.org/wiki/%C3%9F)).
  Internally, the tool will convert it to the corresponding Unicode code point.

- The glyph as a Unicode code point in the hexadecimal notation, e.g, `0xDF`.
  The `0x` prefix is mandatory. Note that the tool takes the value as case
  insensitive, e.g, `0xDF` is equal to `0xdf` (or any case combination thereof).

- The glyph as a Unicode code point using the multiset union notation, e.g,
  `U+DF`. The `U+` prefix is mandatory. Be mindful that this notation expects
  an uppercase `U`.

When a list of glyphs is provided, the tool will take a conjunctive approach and
look for fonts that contain all elements in such list (default behaviour). Use
the `-o` flag (or `--or` for the long flag) to look for each glyph separately.
For instance:

- Look for fonts that contain both `a` and `b`:
    ```bash
    $ albatross a b
    ```

- Look for fonts that contain `a` and fonts that contain `b`, separately:
    ```bash
    $ albatross --or a b
    ```

### Output

Albatross prints the results as a table. The default behaviour is to just
display the font names, e.g,

```bash
                      Unicode code point DF mapping to ß                       
┌─────────────────────────────────────────────────────────────────────────────┐
│ Font name                                                                   │
├─────────────────────────────────────────────────────────────────────────────┤
│ 3270Medium Nerd Font                                                        │
├─────────────────────────────────────────────────────────────────────────────┤
│ 3270Medium Nerd Font Mono                                                   │
├─────────────────────────────────────────────────────────────────────────────┤
...
├─────────────────────────────────────────────────────────────────────────────┤
│ Zilla Slab,Zilla Slab Medium                                                │
├─────────────────────────────────────────────────────────────────────────────┤
│ Zilla Slab,Zilla Slab SemiBold                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

There is a `-s` option (or `--show-styles` for the long option) that includes
the styles available for each font, e.g,

```bash
                      Unicode code point DF mapping to ß                       
┌───────────────────────────────┬─────────────────────────────────────────────┐
│ Font name                     │ Available styles                            │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 3270Medium Nerd Font          │ Medium                                      │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ 3270Medium Nerd Font Mono     │ Medium                                      │
├───────────────────────────────┼─────────────────────────────────────────────┤
...
├───────────────────────────────┼─────────────────────────────────────────────┤
│ Zilla Slab,Zilla Slab Medium  │ Medium Italic, Italic, Medium, Regular      │
├───────────────────────────────┼─────────────────────────────────────────────┤
│ Zilla Slab,Zilla Slab         │ SemiBold, Regular, SemiBold Italic, Italic  │
│ SemiBold                      │                                             │
└───────────────────────────────┴─────────────────────────────────────────────┘
```

For even more details, including the font type and paths, there is the `-d`
option (or `--detailed` for the long option), e.g,

```bash
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ 3270Medium Nerd Font                                             │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /home/paulo/.local/share/fonts/NerdFonts/3270-Medium Nerd Font  │
│          │  Complete.otf                                                    │
└──────────┴──────────────────────────────────────────────────────────────────┘
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ 3270Medium Nerd Font Mono                                        │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /home/paulo/.local/share/fonts/NerdFonts/3270-Medium Nerd Font  │
│          │  Complete Mono.otf                                               │
└──────────┴──────────────────────────────────────────────────────────────────┘
...
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ Zilla Slab,Zilla Slab Medium                                     │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-MediumItalic.otf  │
│          │ ──────────────────────────────────────────────────────────────── │
│          │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-Medium.otf        │
└──────────┴──────────────────────────────────────────────────────────────────┘
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ Zilla Slab,Zilla Slab SemiBold                                   │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-SemiBold.otf      │
│          │ ──────────────────────────────────────────────────────────────── │
│          │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-SemiBoldItalic.…  │
└──────────┴──────────────────────────────────────────────────────────────────┘
```

For more verbosity, `--detailed` can be combined with `--show-styles` to
include all font details, e.g,

```bash
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ 3270Medium Nerd Font                                             │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /home/paulo/.local/share/fonts/NerdFonts/3270-Medium Nerd Font  │
│          │  Complete.otf                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Styles   │ Medium                                                           │
└──────────┴──────────────────────────────────────────────────────────────────┘
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ 3270Medium Nerd Font Mono                                        │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /home/paulo/.local/share/fonts/NerdFonts/3270-Medium Nerd Font  │
│          │  Complete Mono.otf                                               │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Styles   │ Medium                                                           │
└──────────┴──────────────────────────────────────────────────────────────────┘
...
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ Zilla Slab,Zilla Slab Medium                                     │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-MediumItalic.otf  │
│          │ ──────────────────────────────────────────────────────────────── │
│          │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-Medium.otf        │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Styles   │ Medium Italic, Italic, Medium, Regular                           │
└──────────┴──────────────────────────────────────────────────────────────────┘
               Unicode code point DF, font details, mapping to ß               
┌──────────┬──────────────────────────────────────────────────────────────────┐
│ Name     │ Zilla Slab,Zilla Slab SemiBold                                   │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Type     │ OpenType Font                                                    │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Files    │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-SemiBold.otf      │
│          │ ──────────────────────────────────────────────────────────────── │
│          │  /usr/share/fonts/mozilla-zilla-slab/ZillaSlab-SemiBoldItalic.…  │
├──────────┼──────────────────────────────────────────────────────────────────┤
│ Styles   │ SemiBold, Regular, SemiBold Italic, Italic                       │
└──────────┴──────────────────────────────────────────────────────────────────┘
```

Since the results can span several rows (the more common the glyph, the more
fonts will contain it), we strongly recommend using a pipeline and pass the
results to a terminal pager, e.g, the `less` utility:

```
$ albatross ß | less
```

### Coloured output

Albatross supports terminal colours by including the `-a` option (or
`--ansi-level` for the long option) followed by the corresponding colour
level. The following levels are available:

| Level  | Description                 |
|--------|-----------------------------|
| `n`    | No colours at all (default) |
| `a16`  | ANSI 16 colours             |
| `a256` | ANSI 256 colours            |
| `tc`   | Support for true colours    |

Note that colours might mess the output when passed to a terminal pager. You
might need to either adjust the terminal pager accordingly (e.g, `less -r`
makes control characters to be displayed) or disable colours altogether
(which is the default behaviour).

### Table styles

Albatross provides 6 table styles. Include the `-b` option (or `--border-style`
for the long option) followed by the corresponding border style. The following
styles are available:

- Style 1:

    ```
    +-------------------------------+-----------------------------------------+
    | Font name                     | Available styles                        |
    +-------------------------------+-----------------------------------------+
    | 3270Medium Nerd Font          | Medium                                  |
    +-------------------------------+-----------------------------------------+
    ...
    ```
    
    
- Style 2:

    ```
    ╭─────────────────────────────────────────────────────────────────────────╮
    │ Font name                                                               │
    ├─────────────────────────────────────────────────────────────────────────┤
    │ 3270Medium Nerd Font                                                    │
    ├─────────────────────────────────────────────────────────────────────────┤
    ...
    ```

- Style 3:

    ```
                                                                               
      Font name                       Available styles                         
                                                                               
      3270Medium Nerd Font            Medium                                   
                                                                               
    ...
    ```

- Style 4:

    ```
    ╔═══════════════════════════════╦═════════════════════════════════════════╗
    ║ Font name                     ║ Available styles                        ║
    ╠═══════════════════════════════╬═════════════════════════════════════════╣
    ║ 3270Medium Nerd Font          ║ Medium                                  ║
    ╠═══════════════════════════════╬═════════════════════════════════════════╣
    ...
    ```


- Style 5:

    ```
    ┌───────────────────────────────┬─────────────────────────────────────────┐
    │ Font name                     │ Available styles                        │
    ├───────────────────────────────┼─────────────────────────────────────────┤
    │ 3270Medium Nerd Font          │ Medium                                  │
    ├───────────────────────────────┼─────────────────────────────────────────┤
    ...
    ```


- Style 6:

    ```
    ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    ┃ Font name                     ┃ Available styles                        ┃
    ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╋━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
    ┃ 3270Medium Nerd Font          ┃ Medium                                  ┃
    ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╋━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
    ...
    ```

These are the keys to be used as option values:

| Key | Description                       |
|-----|-----------------------------------|
| `1` | Style 1 (ASCII)                   |
| `2` | Style 2 (rounded corners)         |
| `3` | Style 3 (blank)                   |
| `4` | Style 4 (double lines)            |
| `5` | Style 5 (square corners, default) |
| `6` | Style 6 (heavy lines)             |

## License

This application is licensed under the
[New BSD License](https://opensource.org/licenses/BSD-3-Clause). Please note
that the New BSD License has been verified as a GPL-compatible free software
license by the [Free Software Foundation](http://www.fsf.org/), and has been
vetted as an open source license by the
[Open Source Initiative](http://www.opensource.org/).

## The team

Albatross is brought to you by the Island of TeX. If you want to support TeX
development by a donation, the best way to do this is donating to the
[TeX Users Group](https://www.tug.org/donate.html).

