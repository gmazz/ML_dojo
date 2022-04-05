using Distributions


function post(θ, Y, α=1, β=1)
    if 0 <= θ <= 1
        prior = pdf(Beta(α, β), θ) 
    end
end

post(0.5, 1, 0.1, 0.2)







#=
Python version

def post(θ, Y, α=1, β=1):
    if 0 <= θ <= 1:
        prior = stats.beta(α, β).pdf(θ)
        like  = stats.bernoulli(θ).pmf(Y).prod()
        prob = like * prior
    else:
        prob = -np.inf
    return prob
=#