# tex Changelog

## 1.2.0

### Changes

- Switched to `alpine` image
- Improved build times: newer containers are now built from the base [pre-built images](https://hub.docker.com/r/naiithink/latex-th)
- Renamed directories
  - Renamed `resources/` to `_resources/` to distinguish the template resources from user working resources
  - Renamed `test/` to `_test/`, freeing the template from bloating working directories
- Due to package management limitations, temporarily freezing the use of `_resources/config/requirements.txt` until a workaround is found

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
