.PHONY: normal ergodox normal-bundle ergodox-bundle freshen-keylayouts open-keyboard-layouts-folder pngs

KEYLAYOUT         = "King Kong.keylayout"
KEYLAYOUT_ERGODOX = "Ergodox/King Kong (Ergodox).keylayout"
BUNDLE            = "King Kong.bundle"
BUNDLE_ERGODOX    = "Ergodox/King Kong (Ergodox).bundle"
TARGETDIR         = "$(HOME)/Library/Keyboard Layouts"

normal:
	-rm $(TARGETDIR)/$(KEYLAYOUT)
	cp $(KEYLAYOUT) $(TARGETDIR)

ergodox:
	-rm $(TARGETDIR)/$(KEYLAYOUT_ERGODOX)
	cp $(KEYLAYOUT_ERGODOX) $(TARGETDIR)

normal-bundle: freshen-layouts
	-rm -r $(TARGETDIR)/$(BUNDLE)
	cp -r $(BUNDLE) $(TARGETDIR)

ergodox-bundle: freshen-layouts
	-rm -r $(TARGETDIR)/$(BUNDLE_ERGODOX)
	cp -r $(BUNDLE_ERGODOX) $(TARGETDIR)

freshen-keylayouts:
	cp $(KEYLAYOUT) $(BUNDLE)/Contents/Resources/
	cp $(KEYLAYOUT_ERGODOX) $(BUNDLE_ERGODOX)/Contents/Resources/

open-keyboard-layouts-folder:
	open "$(HOME)/Library/Keyboard Layouts/"

pngs:
	mkdir -p "$(CURDIR)/King Kong.iconset"
	@TMPJS=$$(mktemp /tmp/acorn_export.XXXXXX.js); \
	printf '%s\n' \
		'var doc = acorn.open("$(CURDIR)/King Kong.acorn");' \
		'doc.webExportWithOptions({ uti: "public.png", file: "$(CURDIR)/King Kong.iconset/icon_32x32@2x.png" });' \
		> "$$TMPJS"; \
	/Applications/Acorn.app/Contents/MacOS/Acorn -js "$$TMPJS"; \
	rm -f "$$TMPJS"
	sips -z 32 32 "$(CURDIR)/King Kong.iconset/icon_32x32@2x.png" --out "$(CURDIR)/King Kong.iconset/icon_32x32.png"
	cp "$(CURDIR)/King Kong.iconset/icon_32x32.png" "$(CURDIR)/King Kong.iconset/icon_16x16@2x.png"
	sips -z 16 16 "$(CURDIR)/King Kong.iconset/icon_32x32@2x.png" --out "$(CURDIR)/King Kong.iconset/icon_16x16.png"
	oxipng --preserve --opt max "$(CURDIR)/King Kong.iconset/"*.png
	iconutil -c icns "$(CURDIR)/King Kong.iconset"
