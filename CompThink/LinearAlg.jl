### A Pluto.jl notebook ###
# v0.17.3

using Markdown
using InteractiveUtils

# ╔═╡ bd41385e-98d4-4ce3-9506-976c0cc22224
using LinearAlgebra

# ╔═╡ 170d4810-5d29-11ec-0a93-0d186938419b
# Generic multiplication matrix
outer(v, w) = [x * y for x ∈ v, y ∈ w]

# ╔═╡ 22b7e31b-4a3b-4bf5-9193-5e579b90715e
outer(1:10, 1:10)

# ╔═╡ 03da4e78-40ac-4879-a28a-d7efecd60ba9
# This give the factor in case of multiplication tables.
# Usually a matrix isnt a multipliation table 
function factor(M)
	v = M[:,1]
	w = M[1,:]
	if v[1] != 0  w/=v[1] end
	if outer(v,w) ≈ M
		return v,w
	else
		error("M is not a Multiplication Table")
	end	
		
end

# ╔═╡ 193b1de6-e4d5-4026-a14e-e657fd943403
# Giving the factors because is a multiplication table
factor(outer(1:3, 2:5))

# ╔═╡ 7e22d35f-0e9b-4009-beb4-b6a72eb9e2c1
# Not giving factors (isn't a multiplication table)
factor(rand(4,4))

# ╔═╡ 74626a2d-fe60-4686-96e2-9ccda72b869c


# ╔═╡ ed057c87-3fc5-48f6-a66f-483daec0fa6b
U, Σ, V = svd(rand(3,23))

# ╔═╡ b0586147-8254-4f8e-ba1e-5269be415b7d


# ╔═╡ 9f840e71-6a25-4a6d-80a2-31bb4d91dc86


# ╔═╡ d777c829-2186-47d2-948d-1bd93cc75a7c


# ╔═╡ 40518698-4fb5-4c94-ac22-965f4af7f03e


# ╔═╡ b7166828-e105-4e13-b58a-99dceb11c493


# ╔═╡ 392f8c7a-b6f0-4ecd-91dd-4387eae8a3d0


# ╔═╡ da05680f-028e-4f3f-8577-5d14596b0cb1


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.0"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╠═bd41385e-98d4-4ce3-9506-976c0cc22224
# ╠═170d4810-5d29-11ec-0a93-0d186938419b
# ╠═22b7e31b-4a3b-4bf5-9193-5e579b90715e
# ╠═03da4e78-40ac-4879-a28a-d7efecd60ba9
# ╠═193b1de6-e4d5-4026-a14e-e657fd943403
# ╠═7e22d35f-0e9b-4009-beb4-b6a72eb9e2c1
# ╠═74626a2d-fe60-4686-96e2-9ccda72b869c
# ╠═ed057c87-3fc5-48f6-a66f-483daec0fa6b
# ╠═b0586147-8254-4f8e-ba1e-5269be415b7d
# ╠═9f840e71-6a25-4a6d-80a2-31bb4d91dc86
# ╠═d777c829-2186-47d2-948d-1bd93cc75a7c
# ╠═40518698-4fb5-4c94-ac22-965f4af7f03e
# ╠═b7166828-e105-4e13-b58a-99dceb11c493
# ╠═392f8c7a-b6f0-4ecd-91dd-4387eae8a3d0
# ╠═da05680f-028e-4f3f-8577-5d14596b0cb1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
