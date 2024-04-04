## Georgia Tech CV Template

This is an __unofficial__ LaTeX CV template that closely follows [Georgia Tech's CV template]((https://faculty.gatech.edu/current-faculty/promotion-tenure)) required for reappointment, promotion, and tenure of academic faculty. 
The official template is only available in MS Word, hence this __unofficial__ repository.
It closely matches the official one at time of writing (March 2023 -- Update: March 2024 still up to date).
__Note: This CV template is not useful for Gatech students.__

Submit a PR to improve if needed.

### How to use

Most of this is pretty straightforward.
There are only a few hacks that you have to deal with.

1. __Gatech wants your students names in bold face__.   
Accomplish this by putting your students' last names in the `\makeauthorsbold{}` command at the top of `cv.tex`.
This makes them bold everywhere in the document, which is required per the existing RPT template.
Here is an example:
https://github.com/sbryngelson/georgia-tech-cv/blob/e34f48d7b35bd5f5b3c493c16ff83ae72245d158/cv.tex#L7

2. __Gatech wants asterisks in front of items that occured before your jointed Gatech__.    
Accomplished this by, in `ref.bib`, use `options = {extsym={*}}` for all items that occured _before_ you joined Georgia Tech.
Here is an example:
https://github.com/sbryngelson/georgia-tech-cv/blob/e34f48d7b35bd5f5b3c493c16ff83ae72245d158/ref.bib#L72-L78

3. __You'll proabably want a clean way to maintain one `.bib` file for your entire CV (I do).__  
To do this, while maintaining separation of different types of talks and publications maintain autosorting via `biblatex`.
I used some keywords in `ref.bib` to this sorting:
  * Add `keywords = "invited"` to an `@incollection{}` type to indicate an invited talk. 
  * `@report{}` and `@thesis{}` types will go into section "B3. Other Refereed Material," which can be seen in this code snippet in `preamble.tex`
https://github.com/sbryngelson/georgia-tech-cv/blob/e34f48d7b35bd5f5b3c493c16ff83ae72245d158/preamble.tex#L32-L36
You can change this as appropriate for your case.

### Maintain a single `.bib` file for your CV and website

The same `biblatex` + `ref.bib` configuration can be used with Jekyll Scholar for maintaining _one_ `.bib` file for your CV _and_ your website.
I do this for my research group [here](https://github.com/comp-physics/comp-physics.github.io) and the corresponding template is [here](https://github.com/sbryngelson/academic-website-template).

### License

MIT
