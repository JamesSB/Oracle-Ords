import sys

connect('weblogic','welcome1','t3://localhost:7001')

print ('connected to weblogic via t3://localhost:7001')

edit()
startEdit()

cd('/Servers/AdminServer/Log/AdminServer')
log_file_severity = sys.argv[1]
cmo.setLogFileSeverity(log_file_severity)
print ('LogFileSeverity set to ' + log_file_severity) 
props = java.util.Properties()
package = sys.argv[2]
log_level = sys.argv[3]
props.put(package,log_level)
cmo.setPlatformLoggerLevels(props)
print ('package ' + package + ' log level set to ' + log_level) 
save()
activate()



disconnect()
exit()



