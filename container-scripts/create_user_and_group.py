import sys

connect('weblogic','welcome1','t3://localhost:7001')

print ('connected to weblogic via t3://localhost:7001')

serverConfig()
defaultAuthenticator=cmo.getSecurityConfiguration().getDefaultRealm().lookupAuthenticationProvider('DefaultAuthenticator')
user = sys.argv[1]
password = sys.argv[2]
USER_DESCRIPTION = 'TEST USER' 
defaultAuthenticator.createUser(user,password,USER_DESCRIPTION)

print ('user ' + user + ' created')

group=sys.argv[3] 
defaultAuthenticator.createGroup(group,'test group')

print ('group ' + group + ' created')

defaultAuthenticator.addMemberToGroup(group,user)

print ('user ' + user + ' assigmed to group ' + group) 

disconnect()
exit()



