/* export_regressions.do */
/* */
/* Drew Vollmer 2018-02-01 */


eststo: xtreg `var' uspanel chinesepanel_mod, fe

esttab est4 est5 est6 est8 est9 using "panel_brand_effects.tex", label compress replace
