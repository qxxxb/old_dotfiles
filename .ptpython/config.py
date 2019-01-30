"""
Configuration example for ``ptpython``.

Copy this file to ~/.ptpython/config.py
"""
from __future__ import unicode_literals
from prompt_toolkit.filters import ViInsertMode
from prompt_toolkit.key_binding.key_processor import KeyPress
from prompt_toolkit.keys import Keys

__all__ = (
    'configure',
)


def configure(repl):
    """
    Configuration method. This is called during the start-up of ptpython.

    :param repl: `PythonRepl` instance.
    """
    repl.enable_mouse_support = True

    repl.vi_mode = True

    # Enable open-in-editor. Pressing C-X C-E in emacs mode or 'v' in
    # Vi navigation mode will open the input in the current editor.
    repl.enable_open_in_editor = True

    repl.confirm_exit = False

    repl.use_code_colorscheme('paraiso-dark')

    # Typing 'jk' in Vi Insert mode, should send escape. (Go back to navigation
    # mode.)
    @repl.add_key_binding('j', 'k', filter=ViInsertMode())
    def _(event):
        " Map 'jk' to Escape. "
        event.cli.key_processor.feed(KeyPress(Keys.Escape))
