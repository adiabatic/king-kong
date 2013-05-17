KEYLAYOUT = King\ Kong.PUA.keylayout
TARGETDIR = ~/Library/Keyboard\ Layouts

replace:
	-rm $(TARGETDIR)/$(KEYLAYOUT)
	cp $(KEYLAYOUT)  $(TARGETDIR)
	 
