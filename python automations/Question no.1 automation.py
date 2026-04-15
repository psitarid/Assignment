import numpy as np
import math

D = 4 #psec/nm/km
a = 0.8 #dB/km
Pp = 0.01 #W
λ = 1300 #nm
c = 3 * pow(10, 8) #m/s

transmission_rates = [25, 50, 100] #Gbps
pulse_period = [40, 20, 10] #ps 
distances = [0.1, 0.5, 1, 2, 10] #km
T_0 = [] #ps
b_2 = -D * pow(λ, 2) * pow(10, 3) / (2 * math.pi * c) #ps^2/km
L_D = [] #km
    
for i in range(len(transmission_rates)):
    T_0.append(pulse_period[i] / (2 * math.sqrt(math.log(2))))
    L_D.append(T_0[i] ** 2 / abs(b_2)) #km
    print(f"Transmission Rate: {transmission_rates[i]} Gbps | Pulse Period: {pulse_period[i]} ps | T_0: {T_0[i]:.4f} ps | β_2: {b_2:.4f} ps^2/km | L_D: {L_D[i]:.4f} km\n")
    for L in distances:
        widening_rate = math.sqrt(1 + (L / L_D[i]) ** 2)
        P_out = Pp * 10 ** (-a * L / 10) * 1/widening_rate
        print(f"Length: {L} km -> Widening Rate: {widening_rate:.4f}")
        print(f"Output Power: {P_out:.6f} W\n")
        print("---------------------------------------------------------------------------------------------\n")
    print("=============================================================================================\n")