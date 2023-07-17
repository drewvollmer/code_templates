/* varlists_match_pattern.do */
/* Make a varlist from pattern matching */
/* Drew Vollmer 2018-08-29 */

ds sy_state*2013 sy_state*2014 sy_state*2015 sy_state*2016
local syfe `r(varlist)'
