# -*- coding: utf-8 -*-
"""
Created on Sun Oct 12 00:10:29 2025

@author: niave
"""
#   C~A~B + D~AB + CD // D~A + C~B + CD // D~A + C~B + CA //  notb C + notA D+ BD
def Cout(x,y,a,b):
    return ((y and not a) or (y and b) or (x and not b) or (x and a))

#    D~A + DB + CB + CA // DB + CA + CD //   CA4~B + DB + CD // BD+CD+A\not{B}C
def Dout(x,y,a,b):
    return ( (y and not (a) and b) or (x and a and not b) or (x and y))


def compareNbits(C):
    A = [bool(i)for i in C[0]]
    B = [bool(i)for i in C[1]]
    cout = [False]
    dout = [True]
    cin= False #initial c values based on initial supposition
    din= True
    for i in range(0,len(A)):        
        cout.append(Cout(cin, din, A[i], B[i]))
        dout.append(Dout(cin, din, A[i], B[i]) )
        cin = cout[-1]
        din = dout[-1]# final answer
    print(A , B)
    print(cout)
    print(dout)    
    if cout[-1] != dout[-1]:
        print("EGAUX")
    elif cout[-1] and dout[-1]:
        print("A is bigger than B:PG")
    elif (not cout[-1]) and (not dout[-1]):
        print("A is smaller than B:PP")

    
def getNum_C2(A):
    DECnum =int(input('Enter a number for '+ A +':' ))
    print(DECnum)
    bitstring= intToBitString(DECnum)
    try:                #if neg number
        list(bitstring).remove("-")
        c2list = [1 - int(a) for a in intToBitString(abs(DECnum)-1)[1:]]
        c2list.insert(0, 1)
    except ValueError: #if pos number
        c2list = [int(a) for a in bitstring ]
   # print ("".join(map(str,c2list)))
    return c2list
    
def MatchIndex(c1,c2):
    c1, c2 = list(c1), list(c2) 
    while len(c1)>len(c2):
        c2.insert(0, c2[0])
    while len(c2)>len(c1):
        c1.insert(0, c1[0])
            
    print ("".join(map(str,c1)))
    print ("".join(map(str,c2)))
    return [c1, c2]
    
def intToBitString(num):
    bits = "".join(c for c in str(bin(num)) if c not in "b")
    return bits 
    



while True: 
    compareNbits(MatchIndex(getNum_C2('A'),getNum_C2('B')))
        
        
        
