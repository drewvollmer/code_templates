## xtable.R
##
## Drew Vollmer 2019-06-19

options(stringsAsFactors = FALSE)

print(xtable(wide, caption = "Mean Listing and Transaction Prices"), type = "latex",
      file = "mbb_prices.tex", caption.placement = "top",
      hline.after = c(0, nrow(wide) / 2, nrow(wide)), sanitize.text.function = identity,
      include.rownames = FALSE)

## No table environment (needed to center if too wide)
print(xtable(wide, caption = "Mean Listing and Transaction Prices",
             label = "tbl:xtable"), type = "latex",
      file = "mbb_prices.tex", caption.placement = "top",
      hline.after = c(0, nrow(wide) / 2, nrow(wide)), sanitize.text.function = identity,
      include.rownames = FALSE, floating = FALSE, latex.environments = NULL)
