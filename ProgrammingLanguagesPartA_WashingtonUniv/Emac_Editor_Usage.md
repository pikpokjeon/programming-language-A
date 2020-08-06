# Emacs
## The most important commands in Emacs:
- C-x C-c: Quit Emacs
- C-g: Cancel the current action
- C-x C-f: Open a file (whether or not it already exists)
- C-x C-s: Save a file
- C-x C-w: Write a file (probably more familiar to you as Save as...)
- Cut, copy, paste:

### Highlight text with the mouse or by hitting C-Space to set a mark and then moving the cursor to highlight a region.
- C-w: Cut a highlighted region
- M-w: Copy a highlighted region
- C-k: Cut (kill) from the cursor to the end of the line
- C-y: Paste (yank)
- Some other useful commands:

- C-x 2: Split the window into 2 buffers, one above the other (Use the mouse or C-x o to switch between them)
- C-x 0: Undo window-splitting so there is only 1 buffer
- C-x b: Switch to another buffer by entering its name
- C-x C-b: See a list of all current buffers

### Getting help within Emacs:
In addition to the help button/menu on the right...
- C-h: Hitting this will display a short message in the minibuffer: C-h (Type ? for further options).
- C-h b: Key bindings. This lists all key bindings that are valid for the current mode. Note that key bindings change from mode to mode.
- C-h a: Command apropos. After typing C-h a you can type a symbol and a buffer will appear that lists all symbols and functions that match that phrase.


### More advanced Emacs hacks (optional):
If you are curious, try some of these once you have finished the rest of the setup instructions. They are unnecessary for any of the work we will do, but may be convenient.

Change the colors of your syntax highlighting. In version 24 of Emacs, M-x customize-themes is a good place to start.
General customization interface: Open the Options menu and choose the first item under Customize Emacs. This will let you customize Emacs through a sort-of-graphical interface. It saves all your settings in a file in your "home" directory, ~/.emacs.
Much, much, much more: Emacs calls itself an extensible editor for a reason.
