/* nonlinear_model_fes.do */
/* Drew Vollmer 2020-06-16 */

set more off

capture log close
log using nonlinear_model_fes.log, replace

tabulate manuf_factor, gen(mfd)
ds mfd*
local mfd_dummies `r(varlist)'
tabulate date_quarter_fac, gen(dqf)
ds dqf*
local dqf_dummies `r(varlist)'
nl (manuf_share = {alpha}*(1 - stariff_scaled*{xb: `dqf_dummies' `mfd_dummies'}))
nl (ltariff = ln(1 - manuf_share*{alpha} + .001) + {xb: `dqf_dummies'})
nl (ltariff = ln(1 - manuf_share*{alpha} + .001) + {xb: `dqf_dummies' `mfd_dummies'})



log close
