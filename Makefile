.PHONY: replace ergodox

KEYLAYOUT         = King\ Kong.PUA.keylayout
KEYLAYOUT_ERGODOX = Ergodox/King\ Kong\ \(Ergodox\).PUA.keylayout
TARGETDIR = ~/Library/Keyboard\ Layouts

replace:
	-rm $(TARGETDIR)/$(KEYLAYOUT)
	cp $(KEYLAYOUT)  $(TARGETDIR)
	 
ergodox:
	-rm $(TARGETDIR)/$(KEYLAYOUT_ERGODOX)
	cp $(KEYLAYOUT_ERGODOX)  $(TARGETDIR)
