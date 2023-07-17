(TeX-add-style-hook
 "bib"
 (lambda ()
   (LaTeX-add-bibitems
    "example")
   (LaTeX-add-environments
    '("proof" LaTeX-env-args ["argument"] 0)))
 :bibtex)

