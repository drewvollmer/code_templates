(TeX-add-style-hook
 "landscape_table"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "c:/Users/drewv/Documents/code/utilities/tex_preamble"
    "../regressions/factory_gate_output"
    "article"
    "art11"
    "pdflscape")
   (LaTeX-add-labels
    "fig:fg-results"))
 :latex)

