import os
from socket import gethostname

#################
# Instructions
################
#
# 1:
# Copy this file to ~/.shortPrompt.py
#
# 2:
# Add this line to .bashrc:
# export PROMPT_COMMAND='PS1="$(python ~/.shortPrompt.py)"'
#

hostname = gethostname()
username = os.environ['USER']
pwd = os.getcwd()
homedir = os.path.expanduser('~')
pwd = pwd.replace(homedir, '~', 1)
if len(pwd) > 33:
    pwd = pwd[:10]+'...'+pwd[-45:] # first 10 chars+last 20 chars

#print '[%s@%s:%s] ' % (username, hostname, pwd)
print '@:%s > ' % (pwd)

