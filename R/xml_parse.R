# xml_parse.R
# Documenting my limited knowledge of how to parse an XML file

rm(list = ls())

# XML has to be capitalized in the library name
library("XML")

file = "example_files/xml_file.xml"

# Import using the xmlTreeParse() command
doc = xmlTreeParse("xml_file.xml")

# XML files are organized as trees.  xmlRoot() accesses the root element
root = xmlRoot(doc)

# We can get the name of the node using xmlName()
xmlName(root)
# And we can get the number of additional nodes with:
xmlSize(root)
# Since the root (from xmlRoot()) is a parent node stored as a list, we can get names of deeper nodes
# by accessing later elements of the list:
xmlName(root[[2]])


# We want a way to look at each worksheet and extract all of the data of type "row"
# This can be done using XPath, a query language designed to extract data from XML documents
