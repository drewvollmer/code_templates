(TeX-add-style-hook
 "grid_of_figures"
 (lambda ()
   (TeX-run-style-hooks
    "subfig")
   (LaTeX-add-labels
    "fig:sprice-effect-2018-simple"))
 :latex)

