# tex Changelog

## 1.1.0

### Changes

- Added new LaTeX Workshop Tools and Recipes supporting XeLaTeX jobs that involve BibTeX and/or shell script (`xelatex -shell-escape`)
- Added `resources/` directory containing:
  - `config/` directory containing -- no doubt -- user-defined configuration-related resources. You can now:
    - Specify Python packages to be installed during container building stage with `requirements.txt`
  - `fonts/` directory containing user-added font files
- Deprecated `tests/Makefile` in favor of LaTeX Workshop command
- Renamed `tests/` to `test/` for naming consistency
- Reorganized template internal resources -- binaries, scripts, deprecated files, etc. -- all are now resided in `_tex/` directory for ease of management and navigation

### Container preparation

- Replaced all `*tex*` packages with the all-in-one `texlive-full`


## 1.0.0

The first version of this containerized LaTeX Git template is released.
