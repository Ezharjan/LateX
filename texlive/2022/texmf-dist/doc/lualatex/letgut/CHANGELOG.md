# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic
Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.9.3] - 2022-09-02

### Changed
- Local conf. file doesn't require anymore to start with \ExplSyntaxOff in some instances.
- Documentation improved.

## [0.9.2] - 2022-06-18

### Added
- Listings for commands in terminals.
- Aliases of frequently used commands.
- New commands for frequently used terms or expressions.
- Command for specifying LaTeX packages that benefit from syntax highlighting.
- Own ~listings~' language driver file for LaTeX packages syntax highlighting.
- Commands for keyboard keys of accentuated characters.
- ~detailedtoc~ option for Lettre's structure checking.
- Mimic the multiple option of the footmisc package.
- Command ~\inputarticle~ (instead of ~\input~) for the input of articles.
- ⅛ as a short equivalent of ~\lstinline~.
- Some tweaks and improvements.

### Changed
- Last names of persons and authors not in small caps anymore.
- \tl isn't an acronym anymore and now typesets “TeX Live”.
- All the acronyms reset at the beginning of each ~\inputarticle~-ed article.
- All options now possibly load-time ones.
- Unlikely to change input files searched:
  1. in the parent directory if not in the current one,
  2. in the TDS.
- Right ISSN in case of “paper” version of la Lettre.

### Fixed
Several bugs.

## [0.9.1] - 2022-03-22

### Changed
File renamed (Karl Berry request).

## [0.9] - 2022-03-18

### Added
First public testing release.
