#!/usr/bin/python3.5
P_0 = 1000
t = 5
j = 0.015

# iterate over values of m, and print corresponding P_t
for m in range(1,100):
    P_t = P_0*(1+j/m)**(t*m)
    print("{} {}".format(m,P_t))
