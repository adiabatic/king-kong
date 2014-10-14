# coding: UTF-8
# license: Public domain.

import re
# Yes, you're thinking “Why is this crazy person using regular expressions to parse an XML file? He should be using xml.dom.minidom.” That was the first thing I tried. Trouble is, it chokes on Ukelele's malformed “<?XML” and on esoteric constructions like “&#xdead;”. Yeah. So that’s why I’m using regular expressions.

letters = set(u'')

r = re.compile(r'\s*<key code="(\d*)" output="(.*)"/>')

lines = []
usedLetters = set()

with open('Godzilla.PUA.keylayout') as f:
	lines = f.readlines()

for line in lines:
	m = r.match(line)
	if m and m.group(2):
		letter = m.group(2)
		print letter
		letter = unicode(letter, "UTF-8")
		usedLetters.add(letter)
	else:
		print ".",

print
unusedLetters = letters - usedLetters
print unusedLetters
print "Missing {} of {} letters".format(len(unusedLetters), len(letters))
