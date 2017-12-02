connect('weblogic','welcome1','t3://localhost:7001')

print ('connected to weblogic via t3://localhost:7001')

serverConfig()
defaultAuthenticator=cmo.getSecurityConfiguration().getDefaultRealm().lookupAuthenticationProvider('DefaultAuthenticator')
user = sys.argv[1]
password = sys.argv[2]
description = 'test user member of a large number of groups'
defaultAuthenticator.createUser(user,password,description)

print ('user ' + user + ' created')

# To test the sign-in form issue pass one of the existing group names (e.g. first_line_support) 
# as an argument and make the user member of it
group=sys.argv[3]
defaultAuthenticator.addMemberToGroup(group,user)

# Create a lot of groups, taking the previous one as seed, and add the user to them
number_of_groups=sys.argv[4]
for i in range(int(number_of_groups)):
  group += str(i) 
  defaultAuthenticator.createGroup(group,'Tech17demo group')
  defaultAuthenticator.addMemberToGroup(group,user)

disconnect()
exit()



