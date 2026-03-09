.PHONY: replace ergodox pngs

KEYLAYOUT         = King\ Kong.PUA.keylayout
KEYLAYOUT_ERGODOX = Ergodox/King\ Kong\ \(Ergodox\).PUA.keylayout
TARGETDIR = ~/Library/Keyboard\ Layouts
ACORN_FILE = King\ Kong.PUA.acorn
ICONSET    = King\ Kong.PUA.iconset

replace:
	-rm $(TARGETDIR)/$(KEYLAYOUT)
	cp $(KEYLAYOUT)  $(TARGETDIR)

ergodox:
	-rm $(TARGETDIR)/$(KEYLAYOUT_ERGODOX)
	cp $(KEYLAYOUT_ERGODOX)  $(TARGETDIR)

pngs:
	@mkdir -p "$(CURDIR)/King Kong.PUA.iconset"; \
	TMPJS=$$(mktemp /tmp/acorn_export.XXXXXX.js); \
	printf '%s\n' \
		'var doc = acorn.open("$(CURDIR)/King Kong.PUA.acorn");' \
		'doc.webExportWithOptions({ uti: "public.png", file: "$(CURDIR)/King Kong.PUA.iconset/icon_16x16@2x.png" });' \
		> "$$TMPJS"; \
	/Applications/Acorn.app/Contents/MacOS/Acorn -js "$$TMPJS"; \
	rm -f "$$TMPJS"; \
	sips -z 16 16 "$(CURDIR)/King Kong.PUA.iconset/icon_16x16@2x.png" --out "$(CURDIR)/King Kong.PUA.iconset/icon_16x16.png"; \
	cp "$(CURDIR)/King Kong.PUA.iconset/icon_16x16@2x.png" "$(CURDIR)/King Kong.PUA.iconset/icon_32x32.png"; \
	sips -z 64 64 "$(CURDIR)/King Kong.PUA.iconset/icon_16x16@2x.png" --out "$(CURDIR)/King Kong.PUA.iconset/icon_32x32@2x.png"; \
	oxipng --preserve --opt max "$(CURDIR)/King Kong.PUA.iconset/"*.png
