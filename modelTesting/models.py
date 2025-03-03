#models.py
import numpy as np

a1 = 5
a2 = -5
b1 = 0
b2 = 0

alpha = (2*a1 - 2*a2)
beta = (2*b1-2*b2)
gamma = ((a2**2-a1**2)+(b2**2-b1**2))
sigma = beta/alpha
Lambda = (2*sigma**2)/(2*sigma**2+2)
mu = (sigma*b1-2*sigma**2 *a1)/(2*sigma**2+2)

def findEstimate3D(L1,L2):
    Gamma = ((L1**2-L2**2-gamma)/alpha)
    x = Gamma*Lambda-mu
    y = (2*sigma*Gamma + b1 + 2*sigma*a1)/(2*sigma**2+2)
    z = np.sqrt(L1**2 - y)
    coardinate = np.array([x,y,z])
    return coardinate


def findEstimate2D(L1,L2):
    x = (L2**2 - L1**2 + a1**2 - a2**2)/(2*a1-2*a2)
    z = np.sqrt(L1**2-(x-a1)**2)
    y = 0
    coardinate = np.array([x,y,z])
    return coardinate

