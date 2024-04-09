import sys
fname = sys.argv[1] # need sanitization
with open(fname,'r') as file:
    for line in file:
        print(line)
        # TO DO:
        #   Identify keywords 'worker' and 'controller'
        #   Extract hostnames
        #   Add each host to inventory