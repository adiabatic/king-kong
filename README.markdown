<hgroup>
    <h1>King Kong</h1>
    <h2>A Quikscript Keyboard Layout for OS X</h2>
</hgroup>

This is a repository for an OS X keyboard layout for [Quikscript][qs], created with [Ukelele][uke].  King Kong is a *highly* experimental keyboard layout that incorporates some of the design decisions of [Sebeolsik 390 and Final](kokbd) into a keyboard designed for Anglophones. It generates code points in the Private Use Area — from U+E650 to U+E67E or thereabouts.


## Notable Features

- The more common letters (.It, .No, .Utter, etc.) are placed in easier-to-type positions. Infrequently-used letters like .J’ai and .Jay are only available via digital acrobatics.
- Vowels in the middle, consonants on the edges. This may be a bad idea for English.
- Numbers are in a 3×3 grid on the right side of the keyboard; hold Shift to type them.
- there are keys for the following:
  - “ and ”
  - ‘ and  ’
  - – (en dash)
  - — (em dash)
- The punctuation from shift-1 (!) to shift-7 (&) has been moved down and to the right, and are on the shifted Z through M keys.
- Llan and Loch are opt-l and opt-q, respectively.


## Installation Instructions

1. Copy the .keyboardlayout file to ~/Library/Keyboard Layouts/ or /Library/Keyboard Layouts/. If the folder you’re supposed to copy it to doesn’t exist, create it.
1. Log out and back in.


## Reinstallation Instructions

In order for OS X to rescan your .keyboardlayout files, the timestamp on that Keyboard Layouts directory must change. The easiest way to do this is:

1. Delete the .keyboardlayout file in your Keyboard Layouts directory of choice.
1. Copy your new .keyboardlayout file to either ~/Library/Keyboard Layouts/ or /Library/Keyboard Layouts/. (Simply overwriting the file won’t update the directory.)


## Known Limitations

- Ax and Exam are not included.
- This keyboard layout isn’t designed to create ligatures.
- [ZWJ][] and [ZWNJ][] are not included.


## Bugs

- Ctrl-shortcuts (C-a, C-e, C-k) don’t work reliably, either in BBEdit or when you’re using Caps Lock as a Ctrl key.
- The included PDF layout is somewhat misleading; QWER generate code points for single and double curly quotes, not single and double angle quotation marks. (Kingsley, the font used to make this layout, uses guillemets instead of curly quotation marks for some reason.)


[qs]: http://en.wikipedia.org/wiki/Quikscript
[uke]: http://scripts.sil.org/ukelele
[kokbd]: http://en.wikipedia.org/wiki/Keyboard_layout#Sebeolsik_390

[zwj]: http://en.wikipedia.org/wiki/Zero-width_joiner "ligature here, please"
[zwnj]: http://en.wikipedia.org/wiki/Zero-width_non-joiner "no ligature here, please"
