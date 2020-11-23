using Pkg
Pkg.add("Blink")
using Blink

#change directory
cd("C:\\Users\\AMSATA NIANG\\Documents\\Julia")

Blink.AtomShell.install()
w=Window()

f=open("html\\test.html") do file
    read(file,String)
end

body!(w,f)# browse HTML page
