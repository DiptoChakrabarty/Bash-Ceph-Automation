import subprocess as sp
process=input(" Enter process name ")
pid = sp.getoutput("ps -aux | grep {}".format(process))
pod= sp.getoutput("pidof {}".format(process))
print(pid)
print("*******")
print(pod)
x= sp.getoutput("ls -1 /prod/{} | wc -l  ".format(pod))
print(x)
