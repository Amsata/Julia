function Test(x)
    if(isa(x,String))
        println("$x est une chaîne de charactère")
    elseif isa(x,Int)
        println("$xest un entier")
    else
        println("$x n'est ni une chaîne ni un entier")
    end  
end

