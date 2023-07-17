(TeX-add-style-hook
 "jindec_template"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt" "leqno")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("setspace" "doublespacing") ("natbib" "square") ("ntheorem" "amsmath" "thmmarks") ("titlesec" "md" "explicit")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "amsfonts"
    "amsmath"
    "amssymb"
    "setspace"
    "geometry"
    "natbib"
    "ntheorem"
    "titlesec"
    "titlecaps")
   (TeX-add-symbols
    "openbox"
    "proofname")
   (LaTeX-add-environments
    '("proof" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-bibliographies
    "bib")
   (LaTeX-add-counters
    "proof"
    "currproofctr"
    "endproofctr")
   (LaTeX-add-ntheorem-newtheorems
    "definition"
    "example"
    "assumption"
    "theorem"
    "proposition"
    "corollary"
    "lemma"))
 :latex)

