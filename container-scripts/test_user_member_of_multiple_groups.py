connect('weblogic','welcome1','t3://localhost:7001')

print ('connected to weblogic via t3://localhost:7001')

serverConfig()
defaultAuthenticator=cmo.getSecurityConfiguration().getDefaultRealm().lookupAuthenticationProvider('DefaultAuthenticator')
user = sys.argv[1]
password = sys.argv[2]

description = 'user member of one valid group'
valid_user = user+str(1)
defaultAuthenticator.createUser(valid_user,password,description)
print ('user ' + user+str(1) + ' created')
group=sys.argv[3]
defaultAuthenticator.addMemberToGroup(group,valid_user)

print ('user ' + valid_user + ' assigned to group ' + group) 

# Make the wrong_user member of one valid group
wrong_user = user+str(2)
description = 'user member of one valid group and multiple non-valid groups'
defaultAuthenticator.createUser(wrong_user,password,description)
defaultAuthenticator.addMemberToGroup(group,wrong_user)
print ('user ' + wrong_user + ' assigned to group ' + group)

# Create a lot of groups, taking the previous one as seed, and add the user to them 
number_of_groups = int(sys.argv[4])
print ('user ' + wrong_user + ' will be assigned to ' + str(number_of_groups) + ' groups') 
for i in range(number_of_groups): 
  defaultAuthenticator.createGroup(group+str(i),'Tech17demo group')
  defaultAuthenticator.addMemberToGroup(group+str(i),wrong_user)

disconnect()
exit()



