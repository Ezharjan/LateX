# [Unreleased]

# [1.1.3] - 2022-06-13

## Added
New options for special special (!) editions

# [1.1.2] - 2022-03-18

## Changed
Feminization added in a string.

# [1.1.1] - 2021-12-16

## Fixed
All bibliographic numeric labels equal 0

# [1.1.0] - 2021-11-30

## Added
- (Far to perfect) Documentation of the code available as a PDF file.

## Changed
- New Gazette's "logo".
- Allow acknowledgments despite empty minibios.
- `easyscsl` option of `kpfonts` removed as now useless.
- Table of contents and president message forced to start on an odd page.
- Complete reworked of the `.dtx` source file in order to provide the documented
  code as a PDF file.

## Fixed
- Backcover not properly printed.

# [1.0.1] - 2021-02-14

## Added
- Option to create moral reports (`gzt` class only).
- Local (to a given article) table of contents

## Changed
- The class now relies on the new LaTeX core hooks.
- Documentation revised.
- Various improvements.

## Fixed
- Superflous uppercases removed (cont.).
- `gztcode` environments partially gobble their content under certain
  conditions.
- Various other small bugs.

# [1.0.0] - 2020-03-17

## Added
- CHANGELOG file (following https://keepachangelog.com/en/1.0.0/).
- Semantic versionning (following https://semver.org/).

## Changed
- Compilation date displayed only if the issue number is not specified
  (`gztarticle` class only).
- Prevent column breaks within items of "Comité de rédaction" (at the price of
  unbalanced columns).

## Fixed
- Track changes in `expl3`.
- Superflous uppercases removed.
- Index directive in `latexmk` config file modernized.

# [0.98] - 2018-04-09

## Changed
- Support for `biblatex` 3.8 changes.
- Track changes in `expl3`.
- Special editions implemented.

## Fixed
- Several bug fixes.

# [0.96] - 2017-04-07

## Changed
- Figures and tables:
  - with recurrent label and number but without any caption,
  - with caption but without any recurrent label nor numbered,
  implemented.
- Frames without any label, number nor caption implemented.
- Track changes in `expl3`.

# [0.9] - 2015-05-02

- Initial CTAN release of the `gzt` bundle.
