## read_file_line_by_line.R

options(stringsAsFactors = FALSE)

fileName="up_down.txt"
con=file(fileName,open="r")
line=readLines(con)
long=length(line)
for (i in 1:long){
    linn=readLines(con,1)
    print(linn)
}
close(con)
