(TeX-add-style-hook
 "too_wide_reg_table"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "c:/Users/drewv/Documents/code/utilities/tex_preamble"
    "../regressions/factory_gate_output2"
    "article"
    "art11")
   (LaTeX-add-labels
    "fig:fg-results-2"))
 :latex)

