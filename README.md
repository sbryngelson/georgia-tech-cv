[![GitHub release](https://img.shields.io/github/v/release/sbryngelson/georgia-tech-cv)](https://github.com/sbryngelson/georgia-tech-cv/releases/latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![LaTeX](https://img.shields.io/badge/Built%20with-LaTeX-008080.svg)](https://www.latex-project.org/)
[![Open in Overleaf](https://img.shields.io/badge/Open%20in-Overleaf-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https://github.com/sbryngelson/georgia-tech-cv/archive/refs/heads/main.zip)

## Georgia Tech CV Template

This is an __unofficial__ LaTeX CV template that closely follows [Georgia Tech's CV template](https://faculty.gatech.edu/node/647) required for reappointment, promotion, and tenure of academic faculty. 
The official template is only available in MS Word, hence this __unofficial__ repository.
It closely matches the official one at the following timestamps:
 * March 2023
 * March 2024: Added newly required PDF table of contents/bookmarks
 * May 2024: Fixed asterisk convention (marks GT-era items, not pre-GT)
 * April 2026: Switched to biber backend, added Makefile/latexmkrc build system, added macros for identity/grants/students, fixed extsym persistence bug, added candidate name underlining, added missing Section V.B4 (postdoc mentorship), cleaned up unused packages, added csquotes, improved README documentation

__Note: This CV template is not useful for Gatech students.__

Submit a PR to improve if needed.

### Building

The simplest way to build the PDF:

```bash
make        # build cv.pdf
make clean  # remove build artifacts
make watch  # auto-rebuild on file changes (requires a PDF viewer)
```

This uses `latexmk`, which handles the `pdflatex` → `biber` → `pdflatex` cycle automatically.
If you don't have `make`, you can run `latexmk` directly (the `.latexmkrc` configures everything).

__Prerequisites:__ A TeX distribution (e.g., [TeX Live](https://www.tug.org/texlive/) or [MacTeX](https://www.tug.org/mactex/)) with `pdflatex`, `biber`, and `latexmk`.

### How to use

Most of this is pretty straightforward.
Start by setting your identity at the top of `cv.tex`:

```latex
\renewcommand{\myname}{Your Name}
\renewcommand{\mytitle}{Assistant Professor}
\renewcommand{\myschool}{School of CSE}
\renewcommand{\mycollege}{College of Computing}
\renewcommand{\mylastname}{YourLastName}
```

There are a few conventions to know:

1. __Gatech wants your student's names in boldface__   
Put your students' last names in the `\makeauthorsbold{}` command at the top of `cv.tex`:
    ```latex
    \makeauthorsbold{Student1, Student2, Student3}
    ```

2. __Gatech wants asterisks in front of items that occurred during your time at Gatech__    
In `ref.bib`, add `options = {extsym={*}}` to entries published _while_ at Georgia Tech:
    ```bibtex
    @incollection{conference_2,
        author = {F. E. Chrit and S. H. Bryngelson},
        title = {Some talk title},
        note = {Conference Name},
        year = {2022},
        options = {extsym={*}},
    }
    ```

3. __Your candidate name is underlined automatically__   
This is controlled by `\makeauthorunderline{\mylastname}` at the top of `cv.tex`.

4. __Maintain one `.bib` file for your entire CV__   
Different `ref.bib` entry types map to different CV sections automatically:
    | Entry type | CV section |
    |---|---|
    | `@article` | B1. Journal Articles |
    | `@inproceedings` | B2. Conference Proceedings |
    | `@report`, `@thesis` | B3. Other Refereed Material |
    | `@unpublished` | B4. Submitted Articles |
    | `@software` | C1. Software |
    | `@incollection` + `keywords = "invited"` | D1. Invited Talks |
    | `@incollection` (no keyword) | D2. Conference Presentations |

    The filters are defined in `preamble.tex` and can be changed as needed.

### Maintain a single `.bib` file for your CV and website

The same `biblatex` + `ref.bib` configuration can be used with Jekyll Scholar for maintaining _one_ `.bib` file for your CV _and_ your website.
I do this for my research group [here](https://github.com/comp-physics/comp-physics.github.io), and the corresponding template is [here](https://github.com/sbryngelson/academic-website-template).

### License

MIT
