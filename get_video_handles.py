
#download songs from youtube. input txt file. #freetom

import os
import sys
import urllib

if len(sys.argv)!=2:
	print sys.argv[0]+' input_file'
	sys.exit(-1)

sys.stderr.write('recovering your links..\n')
with open(sys.argv[1]) as f:
   for line in f:
	if len(line)<3:
		break
	x=(line).replace(' ','+')
	y=os.popen('wget -qO- https://youtube.com/results?'+urllib.urlencode({'search_query':x})).read()
	#sys.stderr.write(y+"\n")
	z=y.split('"videoId":"')[1].split('"')[0]
	print 'https://youtube.com/watch?v='+z
	sys.stderr.write(line.strip('\n')+' -> '+z+'\n')
sys.stderr.write('done\n')
