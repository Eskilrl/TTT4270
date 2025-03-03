from models import *

coardinate = [2,4,6]

L1 = np.sqrt((coardinate[0]-a1)**2 + (coardinate[1]-b1)**2 + coardinate[2]**2)
L2 = np.sqrt((coardinate[0]-a2)**2 + (coardinate[1]-b2)**2 + coardinate[2]**2)

print("Real coordinate: ", coardinate)
print("Estimated coordinate 3D: ", findEstimate3D(L1,L2))


print("Real coordinate: ", coardinate)
print("Estimated coordinate 2D: ", findEstimate2D(L1,L2))
