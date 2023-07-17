(TeX-add-style-hook
 "apxproof_and_appendix"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "c:/Users/drewv/Documents/code/utilities/tex_preamble"
    "appendix_estimation"
    "article"
    "art11"))
 :latex)

