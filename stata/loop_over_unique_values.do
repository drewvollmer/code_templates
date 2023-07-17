/* loop_over_unique_values.do */
/* */
/* Drew Vollmer 2018-08-29 */

levelsof year
foreach yearval in `r(levels)' {
    gen year`yearval' = (year == `yearval')
}
