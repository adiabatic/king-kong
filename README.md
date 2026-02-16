# King Kong: A Quikscript keyboard layout

King Kong is a keyboard layout for [Quikscript][qs] that incorporates some of the design decisions of [Sebeolsik 390 and Final][kokbd] into a keyboard designed for Anglophones. It generates code points in the Private Use Area — from U+E650 to U+E67E.

## Notable features

- The more common letters (·It, ·No, ·Utter, etc.) are placed in easier-to-type positions. Infrequently-used letters like ·J’ai and ·Jay require reaching.
- Vowels are in the middle, consonants are on the edges.
- Numbers are in a 3×3 grid on the right side of the keyboard; hold Shift to type them.
- there are dedicated keys for the following:
  - “ and ”
  - ‘ and ’
  - …
  - – (en dash)
  - — (em dash)
- The punctuation from ⇧1 (!) to ⇧7 (&) has been moved down and to the right, and are on the shifted Z through M keys.
- .Llan and .Loch are ⌥L and ⌥X, respectively. .Ax and .Exam are on ⌥Q and ⌥1.
- a [zero-width non-joiner][zwnj] key

## Installation instructions (macOS)

1. [Download a zipfile][zip] of the repository and double-click on it to extract it.
1. Open another Finder window.
1. from the Go menu, select `Go to Folder… (⇧⌘G)`
1. Type `~/Library` and press Enter.
1. Create a new folder called `Keyboard Layouts` if one doesn’t exist already.
1. Copy King Kong.PUA.keylayout to the `Keyboard Layouts` folder in `~/Library`.

(if you’d like, you can also install King Kong in /Library/Keyboard Layouts, where it’ll be available to all users.)

## Enabling instructions (macOS 26)

1. Open System Settings.
1. Scroll down on the left until you get to `Keyboard`. Click on it.
1. Scroll down to the `Text Input` section. In the `Input Sources` list item, you’ll see something like `Input Sources: U.S. [Edit…]`. Click on the `Edit` button.
1. Click on the plus sign on the bottom left of the modal window.
1. In the search box on the bottom left, type “King”. “King Kong” should appear in the menu on the right. Or you can scroll down to the bottom of the list and choose `Others`. King Kong should be in that list.
1. Click on `King Kong` and then click on `Add`.

## Usage instructions (macOS)

Toggle between your usual layout and King Kong by clicking on the menu bar entry. If your setup is like mine, you’ll have an `A` on a solid background for the U.S. layout and a keyboard icon for King Kong.

You should, by default, be able to cycle forward through all your keyboard layouts with ⌃␣ (Control-space).

## Reinstallation instructions (macOS)

In order for OS X to rescan your .keylayout files, the timestamp on the Keyboard Layouts directory must change. The easiest way to do this is:

1. Delete the `.keylayout` file in your `Keyboard Layouts` directory of choice.
1. Copy your new `.keylayout` file to either `~/Library/Keyboard Layouts/` or `/Library/Keyboard Layouts/`.

Simply overwriting the file won’t update the directory.

The included `Makefile` does this for `~/Library/`.

## Installation instructions (Windows)

1. Download [the installer .zip][windl] and extract it somewhere. Your Downloads folder works fine for this.
1. Run setup.exe.

Some people have reported that [MSKLC][]-generated setup files don’t work in some versions of Windows 8. It works fine on my machine (64-bit on x64).

## Usage instructions (Windows)

To toggle between your normal layout and King Kong, press Ctrl-Shift. In Windows 8.1 on my machine, “ENG US” will be displayed on the Taskbar when QWERTY is being used, and just “ENG” will be displayed when King Kong is enabled.

.Ax, .Exam, .Llan, and .Loch are on AltGr (hold ctrl and alt simultaneously).

## Reinstallation instructions (Windows)

I recommend uninstalling old versions of King Kong before updating. You can uninstall it in Programs and Features; it’s listed as “King Kong (PUA)”.

## Known limitations

- This keyboard layout isn’t designed to create pre-ligated code points. Use a font that does that.

## Bugs

- Ctrl-shortcuts (C-a, C-e, C-k) don’t work reliably in macOS, either in BBEdit or when you’re using Caps Lock as a Ctrl key.

## Hacking

This layout is maintained in [Ukelele][uke] for the macOS layout, and the [Microsoft Keyboard Layout Creator 1.4][msklc] for the Windows version.

## History

### January 2017

- Moved .Low (and .Llan) to L, swapping with .Tea on ;. I kept pressing L when I wanted .Low.
- Moved .Pea to P, swapping with .Vie on [. I kept pressing P when I wanted .Pea.
- Moved .Ax, .Exam, .Llan, and .Loch to sensible places on the option key.
- Added Ergodox variant.

## Shameless plugs

Prefer to type in [Shavian][] instead? Have a look at [King Shaw][ks].

[qs]: http://en.wikipedia.org/wiki/Quikscript
[uke]: http://scripts.sil.org/ukelele
[msklc]: http://msdn.microsoft.com/en-us/goglobal/bb964665.aspx
[kokbd]: http://en.wikipedia.org/wiki/Keyboard_layout#Sebeolsik_390
[windl]: https://github.com/adiabatic/king-kong/raw/master/King%20Kong.PUA.zip
[zip]: https://github.com/adiabatic/king-kong/archive/master.zip

[zwj]: http://en.wikipedia.org/wiki/Zero-width_joiner "ligature here, please"
[zwnj]: http://en.wikipedia.org/wiki/Zero-width_non-joiner "no ligature here, please"

[shavian]: https://en.wikipedia.org/wiki/Shavian_alphabet
[ks]: https://github.com/adiabatic/king-shaw
