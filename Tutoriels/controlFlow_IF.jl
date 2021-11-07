
#=############################################
############# UTILISATION DE if #############
#############################################
syntaxe de base:

-------------------------
if condition
    <codes julia>
end
-----------------------=#

#=---------------------------------------------------------
On crée une fonction et utiliser la boucle if pour tester si 
un argument donné en entré est un entier
---------------------------------------------------------=#
function MyFunction(x)
    if(isa(x,Int)==true)
        println(x," est un entier")
    end
end

MaFonction(2)
MaFonction("2") 
#rien n'est renvoyé car la condition n'est pa vérifier


#=###########################################
############# UTILISATION DE else ###########
#############################################

syntaxe de base:
--------------------------
if condition
    <codes julia>
else
    <codes julia>
end
--------------------------=#

# on modifie notre fonction de départ en ajoutant else
function MaFonction(x)
    if (isa(x,Int)==true)
        println(x," est un entier")
    else
        println(x, " n'est pas un entier")
    end
end
MaFonction(2)
MaFonction("2") # la fonction renvoie "2 n'est pas un entier



#=###################################
###### Utilisation de elseif ########
#####################################

syntaxe de base:
------------------------
if condition1
    <code julia>
elseif condition2
    <code julia>
else
    <code julia>
end
-----------------------=#

# On modifie notre fonction de départ en ajoutant elseif

function MaFonction(x)
    if(isa(x,Int)==true)
        println(x," est un entier")
    elseif (isa(x,Float64)==true)
        println(x, " n'est pas un entier")
    else
        println(x," n'est ni entier, ni réel")
    end
end

MaFonction(2)
MaFonction(2.0)
MaFonction("2")

#=##############################################
##############DES TIPS TRES UTILE ##############
###############################################
=#

#= TIPS N°1:

 code: a || b 
 
 signification:
si la condition a n'est pas vérifiée, alors renvoie b 
-----------------------------------------------=#
function MaFonction(x)
    isa(x,Int) || println(x, " is not an interger")
end
MaFonction(2.0)
MaFonction(2) # la fonction renvoie true

#= TIPS N°2:
 code: a && b 
 signification:
si la condition a est vérifiée, alors renvoie b 
---------------------------------------------------=#

function MaFonction(x)
    isa(x,Int) && println(x, " is an interger")
end
MaFonction(2.0)
MaFonction(2)

#= TIPS N°4:
 code: a?b:c 
 signification:
si la condition a est vérifiée, alors renvoie b,
sinon renvoie c 
---------------------------------------------------=#

function  MaFonction(x)
    isa(x,Int) ? 
    println(x," est un entier") :
     println(x," n'est pas un entier")
end

MaFonction(2)
MaFonction(2.0)

#=#########################################################
###### DES TIPS POUR CONTROL AVEC MESSAGE D'ERREUR ########
###########################################################
=#

#=----------------------------------------------------------
TIPS N°1

code: @assert a message 

singification:
Si a n'est pas vérifié alors renvoie (il s'agit d'un message
d'erreur AssertionError)
----------------------------------------------------------=#

@assert (isa(2.0,Int)==true) " is not an interger"

#=----------------------------------------------------------
TIPS N°2

code: throw(message)

singification:
renvoie un message message d'erreur et est souvent
inclue dans un control if ou les TIPS de if déjà abordé
----------------------------------------------------------=#

function MaFonction(x)
    if  (isa(x,Int))
        println(x," est un entier")
    else
        throw("$x n' est pas un entier")
    end
end

MaFonction(2.0)

# throw avec les TIPS
(isa(2.0,Int)==true) || throw("Un message d'erreur")
(isa(2.0,Int)==true) ? println("un entier") : throw("Un autre message d'erreur")
(isa(2.0,Int)==false) && throw("Un message d'erreur")