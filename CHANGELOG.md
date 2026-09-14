# Changelog

All notable changes are documented here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Hierarchical per-chapter numbering for figures, tables, code listings, and equations (`1.1` in main content, `A.1` in appendix)
- Localized reference supplements and abbreviations (`Abb.`, `Tab.`, `Gl.`, `Prog.`)
- Classic chapter outline shows acknowledgment
- Classic style includes abbreviations inside appendix

### Fixed
- Heading page location numbers in modern style outline
- Classic style heading off-by-one location bug from column break
- Heading with i18n/context hidden in PDF outline (#1 by @MartinHanl)

### Removed
- Dead legacy style code

## [0.2.1] - 2026-08-14

### Added
- Default `titlepage` parameter set to `none`

### Fixed
- Table and figure outlines unable to hide because context not null

### Documentation
- Rebuild user manual

## [0.2.0] - 2026-08-13

### Added
- Classic LaTeX-like thesis base style
- Hagenberg titlepage and declaration page in pure Typst
- Dedicated manual PDF (`easy-hgb-thesis-manual.pdf`)
- Multi-style thesis configuration (`modern`, `classic`)
- Advanced usage documentation for modular sections

### Changed
- Refactor declaration to use i18n strings
- Standardize internal references from `i8n` to `i18n`
- Move contributor guidelines to separate `CONTRIBUTING.md`

### Fixed
- Missing white background in thumbnails
- README Typst snippet syntax error
- Asset bundling rules in `.publishignore`
- Manual typos and formatting issues

## [0.1.0] - 2026-05-13

### Added
- Initial release of `easy-hgb-thesis` template
- Multi-page preview thumbnails for package registry

### Changed
- Switch license to MIT-0

[Unreleased]: https://github.com/TimerErTim/hagenberg-thesis-typst/compare/v0.2.1...HEAD
[0.2.1]: https://github.com/TimerErTim/hagenberg-thesis-typst/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/TimerErTim/hagenberg-thesis-typst/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/TimerErTim/hagenberg-thesis-typst/releases/tag/v0.1.0
