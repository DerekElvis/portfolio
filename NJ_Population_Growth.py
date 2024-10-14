import numpy as np
import matplotlib.pyplot as plt

# Calculates population at time(t) as exponential growth
def exp_growth(P0, r, t):
    return P0 * np.exp(r * t)

#Calculates population at time (t) using logistic growth  
def log_growth(P0, K, r, t):
    return K / (1 + ((K - P0) / P0) * np.exp(-r * t))

#P0 = initial population, r = growth rate, t = time(years), e = Euler's #
#K = maximum population the area can hold

P0 = 9_262_000 #Population of NJ (2024)
est_growth_rate = 0.0032 #Estimated growth rate of 0.32%
years = np.linspace(0,50, 500) #To fifty years ahead
max_pop = 15_000_000 #Hypothetical max population set

#Calculation
pop_exp = exp_growth(P0, est_growth_rate, years)

#Log calc
pop_log = log_growth(P0, max_pop, est_growth_rate, years)


#Plot results
plt.figure(figsize=(10,6))
plt.plot(years, pop_exp, label="Exponential Growth of NJ", color= "green")
plt.plot(years, pop_log, label="Log growth of NJ", color= "red")

plt.axhline(y=max_pop, linestyle='--')
plt.title("Exp Population Growth of New Jersey in 50 years")
plt.xlabel("Years from 2024")
plt.ylabel("Population (Millions)")
plt.grid(True)
plt.show()