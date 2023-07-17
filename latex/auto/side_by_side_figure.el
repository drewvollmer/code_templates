(TeX-add-style-hook
 "side_by_side_figure"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "c:/Users/drewv/Documents/code/utilities/tex_preamble"
    "article"
    "art11"
    "subfig")
   (LaTeX-add-labels
    "fig:pm-sale-types"))
 :latex)

