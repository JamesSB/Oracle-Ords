import sys

connect('weblogic','welcome1','t3://localhost:7001')

print ('connected to weblogic via t3://localhost:7001')

edit()
startEdit()

cd('/Servers/AdminServer/SSL/AdminServer')
cmo.setEnabled(true)
cmo.setListenPort(7002)
save()
activate()

print ('SSL enabled on AdminServer. Listen port 7002') 

disconnect()
exit()



