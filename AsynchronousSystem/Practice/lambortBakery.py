# choosing[i]:=1
 # num[i]:= 1+max{num[j]: j=1..n}
 # choosing[i]:=0 
 # for j:=1..n: 
   # await choosing[j]=0
   # await num[j]=0 or (num[j],j) >= (num[i],i)
 # CS 
 # num[i]:=0
 
def lambortBackery(n,m):
    print("Runnng Lambort's bakery algorithm")
    choosing[i] = 1
    number[i] = 1 + max(zip(*number))
    choosing[i] = 0
	for(j = 1;j<= n;j++):
	    print("P requesting CS")
	    while choosing[j] = 1:
		    pass
		while number[j]!=0 && (number[j],j) < (number[i],i):
		    pass
		print("P entering CS")
	print("P existing CS")
	    