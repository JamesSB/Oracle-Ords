connect('weblogic','welcome1','t3://localhost:7001')

print ('connected to weblogic via t3://localhost:7001')

serverConfig()
defaultAuthenticator=cmo.getSecurityConfiguration().getDefaultRealm().lookupAuthenticationProvider('DefaultAuthenticator')

group='group'
for i in range(300):
  group += str(i) 
  defaultAuthenticator.removeMemberFromGroup(group,'test')

disconnect()
exit()



