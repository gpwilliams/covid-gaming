# explore priors

# Compare different priors a priori
plot(density(distribution_student(1000, df = 2, ncp = 2.5)), col = "steelblue")
lines(density(distribution_student(1000, df = 3, ncp = 2.5)), col = "blue")
lines(density(distribution_normal(1000, mean = 0, sd = 1)), col = "red")
lines(density(distribution_cauchy(1000, location = 0, scale = .77)), col = "orange")


plot(density(rexp(1000, rate = 1)), col = "red")
lines(density(rexp(1000, rate = 0.5)))

# get priors from a fitted model

my_priors <- unupdate(models$depression) # get a model
check_prior(my_priors, simulate_priors = FALSE)
pp_check(my_priors) # prior predictive check
