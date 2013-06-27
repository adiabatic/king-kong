# King Kong: A Quikscript Keyboard Layout

King Kong is a keyboard layout for [Quikscript][qs] that incorporates some of the design decisions of [Sebeolsik 390 and Final][kokbd] into a keyboard designed for Anglophones. It generates code points in the Private Use Area — from U+E650 to U+E67E. 


## Notable Features

- The more common letters (.It, .No, .Utter, etc.) are placed in easier-to-type positions. Infrequently-used letters like .J’ai and .Jay require reaching.
- Vowels are in the middle, consonants are on the edges.
- Numbers are in a 3×3 grid on the right side of the keyboard; hold Shift to type them.
- there are dedicated keys for the following:
  - “ and ”
  - ‘ and  ’
  - …
  - – (en dash)
  - — (em dash)
- The punctuation from shift-1 (!) to shift-7 (&) has been moved down and to the right, and are on the shifted Z through M keys.
- .Llan and .Loch are opt-l and opt-q, respectively.


## Installation Instructions (OS X)

1. Copy the .keyboardlayout file to ~/Library/Keyboard Layouts/ or /Library/Keyboard Layouts/. If the folder you’re supposed to copy it to doesn’t exist, create it.
1. Log out and back in.


## Reinstallation Instructions (OS X)

In order for OS X to rescan your .keyboardlayout files, the timestamp on that Keyboard Layouts directory must change. The easiest way to do this is:

1. Delete the .keyboardlayout file in your Keyboard Layouts directory of choice.
1. Copy your new .keyboardlayout file to either ~/Library/Keyboard Layouts/ or /Library/Keyboard Layouts/. (Simply overwriting the file won’t update the directory.)

The included Makefile does this for ~/Library/.


## Installation Instructions (Windows)

1. Download [the installer .zip][windl] and extract it somewhere. Your Downloads folder works fine for this.
1. Run setup.exe.

Some people have reported that [MSKLC][]-generated setup files don’t work in some versions of Windows 8. It works fine on my machine (64-bit on x64).


## Reinstallation Instructions (Windows)

I recommend uninstalling old versions of King Kong before updating. You can uninstall it in Programs and Features; it’s listed as “King Kong (PUA)”.


## Known Limitations

- Ax and Exam are not included.
- This keyboard layout isn’t designed to create ligatures. Use, make, or wait for a font that does that all by itself.
- [ZWJ][] and [ZWNJ][] are not included.
- .Llan and .Loch are missing from the Windows version.


## Bugs

- Ctrl-shortcuts (C-a, C-e, C-k) don’t work reliably in OS X, either in BBEdit or when you’re using Caps Lock as a Ctrl key.


## Hacking

This layout is maintained in [Ukelele][uke] for the OS X layout, and the [Microsoft Keyboard Layout Creator 1.4][msklc] for the Windows version.



[qs]: http://en.wikipedia.org/wiki/Quikscript
[uke]: http://scripts.sil.org/ukelele
[msklc]: http://msdn.microsoft.com/en-us/goglobal/bb964665.aspx
[kokbd]: http://en.wikipedia.org/wiki/Keyboard_layout#Sebeolsik_390
[windl]: https://github.com/adiabatic/king-kong/raw/master/KingKong.PUA.zip

[zwj]: http://en.wikipedia.org/wiki/Zero-width_joiner "ligature here, please"
[zwnj]: http://en.wikipedia.org/wiki/Zero-width_non-joiner "no ligature here, please"
