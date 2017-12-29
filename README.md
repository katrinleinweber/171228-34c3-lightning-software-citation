% Closing The Gaps In The Software Citation Workflow. One `@software{...}` Citekey At A Time.
% Katrin Leinweber
% 34c3

<!--
abstract: |
    Academics credit each other's work by citing and referring. Thus is well established for journal articles, books, etc. Increasingly so even for data sets, because funders currently push for publishing data sets as well.
    
    Given the importance of software programs, scripts, packages, etc. in scientific work, it is clear that these will become more important  publishable units as well. Therefore, providing citation information is helpful for both developers and users.
    
    This lightning talk briefly explains a few options that everyone can quickly add to their source code.
    
- [ ] make screenshots
- [ ] minimise links to site + keyword
-->

## Me: kind of a ["software librarian" at TIB(.eu)](https://www.tib.eu/en/research-development/non-textual-materials/)

- German National Library of Science and Technology, Hannover
- working on R&D around scientific software projects, FAIR data principles, etc.
- Disclaimer: Here just as an interested user, not on behalf of any org or project.

![](img/TIB.jpg)


## State of the... Citation.

- academics credit each other's work by citing & referencing 
    + *D*igital *O*bject *I*dentifiers (`doi: 10.something/something`)
    + mostly journal articles, books, etc.
    + even data, because of reproducibility crisis, funders, etc.
- programs, scripts, software (packges, source code), etc. not (yet) equally publishable and citable
- community infrastructure exists ([CTAN](https://ctan.org/), [CRAN](https://cran.r-project.org/), [Debian Science](https://wiki.debian.org/DebianScience), [SoftwareHeritage.org](https://www.softwareheritage.org/), etc.)
    + #tuwat: support these projects
- this talk: for others, outside these academia



# Solution examples (#tuwat at the source)


## Mint DOIs for Git release tags via GitHub repo to Zenodo(.org)

![](img/zenodo-toggle-on.png)

[guides.github.com/activities/citable-code](https://guides.github.com/activities/citable-code/)


## 2. `CITATION` files [^CITATION]

- express your citation wish (in BibTeX)
- `@software{...}` support is growing ([BibLaTeX](https://ctan.org/tex-archive/macros/latex/contrib/biblatex), [biber](https://github.com/plk/biber), [Zotero](http://zotero.org/), etc.)
- like `LICENSE`, `COPYING`, `INSTALL` & Co.

```BibLaTeX
@book{wickham_ggplot2_2009,
    author = {Hadley Wickham},
    title = {ggplot2: elegant graphics for data analysis},
    publisher = {Springer New York},
    year = {2009},
    isbn = {978-0-387-98140-6},
    url = {http://had.co.nz/ggplot2/book},
}
```

[^CITATION]: [Robin Wilson (2013) Encouraging citation of software – introducing CITATION files. blog.RTWilson.com/2013/08](http://blog.rtwilson.com/encouraging-citation-of- software-introducing-citation-files/).

## `codemeta.json`[^cmp] to cover user / researcher / machine stories:

- extract "citation metadata to give credit"
- find "versions & dependencies for exact replication"
- "discover useful software through keywords"

[^cmp]: [codemeta.github.io](https://codemeta.github.io/)


## `codemeta.json` example of codemetaR[^cmr] generator 

```json
{"@context": ["http://purl.org/codemeta/2.0", "http://schema.org"],
  "@id": "https://doi.org10.5281/zenodo.1048320",
  "@type": "SoftwareSourceCode",
  "identifier": "codemetar",
  "description": "The 'Codemeta' Project defines a 'JSON-LD' format for ...",
  "issueTracker": "https://github.com/ropensci/codemetar/issues",
  "license": "https://spdx.org/licenses/MIT",
  "version": "0.1.2",
  "programmingLanguage": {
    "@type": "ComputerLanguage",
    "name": "R",
    "version": "3.4.2",
    "url": "https://r-project.org"}, ...}
```


# #tuwat: define [`CITATION`](https://www.software.ac.uk/blog/2013-09-02-encouraging-citation-software-introducing-citation-files) or [`codemeta`](https://codemeta.github.io/)`.json` files for your projects as 1^st^ step in the software citation workflow


## #tuwat++ (further downstream)
[^cmr]: [ROpenSci.GitHub.io/codemetar](https://ropensci.github.io/codemetar/)

- build [codemetaR](https://github.com/ropensci/codemetar)-like packages / plug-ins for other languages, IDEs, etc.
- contribute [github.com/zotero/translators](http://github.com/zotero/translators) (.js to extract bibliographic info)
    + also for `CITATION` files or `codemeta.json`
    + or for media.ccc.de ;-)


## Thanks for your attention! Questions, comments, hints? [\@gittaca](https://twitter.com/gittaca) or [katrin.leinweber@tib.eu](mailto:katrin.leinweber@tib.eu?subject=34c3%20lightning%20talk), please! Thanks :-)

### Further reading / watching

> - [Smith AM, Katz DS, Niemeyer KE, FORCE11 Software Citation Working Group. (2016) Software citation principles. PeerJ Computer Science 2:e86 doi.org/10.7717/peerj-cs.86](https://peerj.com/articles/cs-86/) 
> - [github.com/FORCE11/FORCE11-sciwg](https://github.com/force11/force11-sciwg) (Software Citation Implementation Working Group of the Future of Research Communication and E-Scholarship)
> - [WikiData `Katherine Thornton & Finn Årup Nielsen: Describing Software So We Can Cite Software.` media.ccc.de/v/wikidatacon2017-10013](https://media.ccc.de/v/wikidatacon2017-10013-describing_software_so_we_can_cite_software)




<!-- scratch pad


## Lots of initiatives...


![](https://memegenerator.net/img/instances/500x/80935528/publish-all-the-research-data.jpg)


 -->
