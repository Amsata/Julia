#=
Dans ce script nous allons implementer l'analyse en composante 
principale sur Julia avec le package MultivariateStats
=#

#charger les packages
using MultivariateStats
using Gadfly
using Plots
using RDatasets


#=#####################################################
ACP sur le jeux de données InsertionSort
=####################################################

iris=dataset("datasets","iris");

X=Matrix(iris[:,1:end-1])'

ACP=fit(PCA,X,pratio=1,maxoutdim=4)