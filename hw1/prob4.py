#!/usr/bin/python3.5
P_0 = 1000
t = 5

# iterate over values of m, and print corresponding P_t
for j in [.015,.025,.05,.075,.1]:
    for m in [2,4,6,12]:
        P_t = P_0*(1+j/m)**(t*m)
        print("j={}, m={} => P_t={}".format(j,m,P_t))
