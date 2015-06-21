/* loop_over_varlists.do */
/* Demonstrating how to access a varlist within a loop */

#delimit ;

global list1 var1 var2;
global list2 var3 var4;
global list3 var5 var6;

foreach varlist in list1 list2 list3 {;
     mean $`varlist';
};
/* The variable varlist is local, but then we refer to it globally to get the actual varlist that it */
/* represents. */
