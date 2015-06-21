/* varlists_and_globals.do */
/* How to declare varlists and access global variables */

#delimit ;

/* Declare as global, set name, and then list variables. The list of variables uses */
/* pattern matching like * (anything), ? (a single character), and others */
global a_named_varlist var1 var2;

/* A global variable is accessed using $.  In this loop, use $a_named_varlist to get the varlist */
/* but then have local variables var that must be accessed with `var' */
foreach var in $a_named_varlist {
     mean `var'
}
