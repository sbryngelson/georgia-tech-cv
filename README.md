## Georgia Tech CV Template

This is an __unofficial__ LaTeX CV template that closely follows Georgia Tech's [RPT template](https://faculty.gatech.edu/current-faculty/promotion-tenure), which is only available in MS Word.
It closely matches the official one at time of writing (March 2023).

Submit a PR to improve if needed.

### How to use

Most of this is pretty straightforward.
There are only a few hacks that you have to deal with.

1. Put your students' last names in the `\makeauthorsbold{}` command at the top of `cv.tex`.
This makes them bold everywhere in the document, which is required per the existing RPT template.
Here is an example:
https://github.com/sbryngelson/georgia-tech-cv/blob/e34f48d7b35bd5f5b3c493c16ff83ae72245d158/cv.tex#L7

2. In `ref.bib` use `options = {extsym={*}}` for all items that occured _before_ you joined Georgia Tech.
Here is an example:
https://github.com/sbryngelson/georgia-tech-cv/blob/e34f48d7b35bd5f5b3c493c16ff83ae72245d158/ref.bib#L72-L78

3. I used some keywords in `ref.bib` to make sorting between different types of presentations and publications easier:
  * Add `keywords = "invited"` to an `@incollection{}` type to indicate an invited talk. 
  * `@report{}` and `@thesis{}` types will go into section "B3. Other Refereed Material," which can be seen in this code snippet in `preamble.tex`
https://github.com/sbryngelson/georgia-tech-cv/blob/e34f48d7b35bd5f5b3c493c16ff83ae72245d158/preamble.tex#L32-L36
You can change this as appropriate.

### License

MIT
