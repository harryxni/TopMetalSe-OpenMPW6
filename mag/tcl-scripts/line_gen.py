import matplotlib.pyplot as plt
import numpy as np

def calc_hex(l, w, origin):
    x=[]
    y=[]

    x.append(origin[0])
    y.append(origin[1])

    x.append(l*np.cos(np.pi/3))
    y.append(l*np.sin(np.pi/3))

    x.append(x[-1])
    y.append(-y[-1])

    x.append(x[-2]+l/2)
    y.append(y[-2])
    
    x.append(x[-1])
    y.append(-y[-1])
    return x,y

if __name__=='__main__':
    l=10.
    w=2.
    p0_l = (w/2*np.cos(np.pi/6), w/2*np.sin(-np.pi/6))
    p0_u = (w/2*-np.cos(np.pi/6), w/2*np.sin(np.pi/6))
    
    vals=calc_hex(l, w, (0,0))
    print(vals)
    plt.scatter(vals[0], vals[1])
plt.show()

