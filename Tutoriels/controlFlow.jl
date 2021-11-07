#=
Utilisation du control if

    if condition
        instruction
    end
=#

#On crée une fonction et utiliser la boucle if pour tester si 
#un argument donné en entré est un entier
function testPaire(x)
    if(isa(x,Int)==true)
        println(x," est un entier")
    end
end

testPaire(2)
testPaire("2") 
#rien n'est renvoyé car la condition n'est pa vérifier

#=
UTILISATION DE ELSE
=#

function testPaire(x)
    if(isa(x,Int)==true)
        println(x," est un entier")
    else
        println(x, " n'est pas un entier")
    end
end

testPaire("2")
# la fonction renvoie "2 n'est pas un entier


#=################################
            IF IMBRIQUE
=#################################

function testPaire(x)
    if(isa(x,Int)==true)
        println(x," est un entier")
    elseif (isa(x,Float64)==true)
        println(x, " n'est pas un entier")
    else
        println(x," n'est ni entier, ni réel")
    end
end

testPaire(2)
testPaire(2.0)
testPaire("2")

#=##############################################
DES TIPS TRES UTILE
=###############################################

# a || b singifie si non(a) alors b

function testPaire(x)
    isa(x,Int) || println(x, " is not an interger")
end
testPaire(2.0)
testPaire(2)
# a && b signifie si a alors b
function testPaire(x)
    isa(x,Int) && println(x, " is an interger")
end
testPaire(2.0)
testPaire(2)
#=
a?b:c signifie si a alors b sinon c
=#
function  testPaire(x)
    isa(x,Int) ? println(x," est un entier") : println(x," n'est pas un entier")
end
testPaire(2)
testPaire(2.0)

# @assert condition message signifie 
# si non(condition) alors message (il s'agit d'un message
# d'erreur AssertionError:)

@assert (isa(2.0,Int)==true) " is not an interger"

#=
if (condition)
 throw("message")
end

si la condition est verifier ca renvoie un message d'erreur
=#

function testPaire(x)
    if  (isa(x,Int))
        println(x," est un entier")
    else
        throw("$x n' est pas un entier")
    end
end

testPaire(2.0)