# grep_matched_section.R
# When using a regular expression, you can extract the matched portion if it is in parentheses in
# the regex.

string = "prefix_10Y10YF_BPS_ATM_M100"

first.num = gsub(paste("^prefix_(\\d{1,2})M?Y?(\\d{1,2})M?Y?F.*", "_", postfix, "$", sep = ""), "\\1", string)
second.num = gsub(paste("^prefix_(\\d{1,2})M?Y?(\\d{1,2})M?Y?F.*", "_", postfix, "$", sep = ""), "\\2", string)
