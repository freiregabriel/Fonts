Base.eval(:(have_color=true))
module Windows

export Utils, Types, Libraries, gethostname

# low-level libraries
include("Types.jl")
include("utilities/Utils.jl")
include("Libraries.jl")

# high-level API
include("api/processes.jl")
include("api/fonts.jl")
gethostname() = Libraries.Ws2_32.gethostname()

end # module