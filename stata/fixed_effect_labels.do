/* fixed_effect_labels.do */
/* Drew Vollmer 2020-04-09 */

reghdfe lmodulecostpw_real lcompprice lstrategictariff lfxindex limports, absorb(installer_factor manuf_factor date_quarter_fac manuf_factor##leadIn14) vce(cluster installer_factor manuf_factor date_quarter_fac)
estadd local installer "Y"
estadd local manuf "Y"
estadd local quarter "Y"
estadd local manufx14 "Y"
estadd local importiv "N"
estimates store levModule14

esttab levModule14 using "module_14.tex", ///
        noconstant order(lcompprice lstrategictariff lfxindex limports Dlcompprice Dlstrategictariff Dlfxindex Dlimports) ///
        label compress replace s(N installer manuf quarter manufx14 importiv, label("N" "Installer FE" "Manuf. FE" "Quarter FE" "Lead-In FE" "Import IV"))
