(TeX-add-style-hook
 "beamer_button"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "c:/Users/drewv/Documents/code/utilities/tex_preamble"
    "article"
    "art11")
   (LaTeX-add-labels
    "back-to-first-slide"
    "button-to-this-slide"))
 :latex)

