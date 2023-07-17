## parallel.R
## Set up and use a parallel cluster
## Drew Vollmer 2019-01-08

options(stringsAsFactors = FALSE)

library("parallel")

## Leave one core available for other tasks
num.cores = detectCores() - 1
print(paste("Number of cores:", num.cores))

## Cluster setup depends on the operating system.  On Windows, we can't fork the entire environment
## to the new processes, so objects have to be passed with clusterExport and functions passed with
## clusterEvalQ
if( Sys.info()["sysname"] == "Windows" ){

    ## On Windows, we can't fork the contents of the global environment to the new processes.  We
    ## have to export functions, packages, and variables.
    cluster = makeCluster(num.cores)

    clusterExport(cluster, setdiff(ls(), "genSobolPoints"))
    clusterEvalQ(cluster, library(copula))
    clusterEvalQ(cluster, library(Rcpp))
    clusterEvalQ(cluster, sourceCpp("../gen_data/buyer_decisions.cpp"))
    clusterEvalQ(cluster, sourceCpp("../gen_data/resale_price_search.cpp"))
    clusterEvalQ(cluster, sourceCpp("../sobol_points/sobol_rcpp.cpp"))

    ## Further, CPP functions can't be passed using clusterExport.  They have to be compiled in
    ## each process or passed in as a package.

} else {
    ## Compile CPP files
    sourceCpp("buyer_decisions.cpp")
    sourceCpp("resale_price_search.cpp")

    cluster = makeCluster(num.cores, type = "FORK")
}

## Use parXapply for a parallel apply
obj.vals = parSapply(cluster, 1:7, function(i)
    calc.obj.val(in.conf.corr = est.points[i, 1], other.corr = est.points[i, 2],
                 income.corr = est.points[i, 3], l.g1 = est.points[i, 4],
                 l.g2 = est.points[i, 5], l.g3 = est.points[i, 6],
                 l.g4 = est.points[i, 7], l.g5 = est.points[i, 8],
                 l.g6 = est.points[i, 9], alpha = est.points[i, 10],
                 q.mult1 = est.points[i, 11], q.mult2 = est.points[i, 12],
                 q.mult3 = est.points[i, 13], q.exp = est.points[i, 14]))


## Stop parallel
stopCluster(cluster)
