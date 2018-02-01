## deja vu from yesterday!

## create a data frame of your installed packages

pkgs <- installed.packages()

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

pkgs <- pkgs[,colnames(pkgs) %in% c("Package",
                                    "LibPath",
                                    "Version",
                                    "Priority",
                                    "Built")]

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

write.csv(pkgs,
          here::here('data', "installed-packages.csv"),
          row.names = F,
          quote = F)

## when this script works, stage & commit it and the csv file
## PUSH!
