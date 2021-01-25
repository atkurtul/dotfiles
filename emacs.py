# Emacs Nautilus Extension
#
# Place me in ~/.local/share/nautilus-python/extensions/,
# ensure you have python-nautilus package, restrart Nautilus, and enjoy :)
#
# Original vscode script was written by cra0zy and is released to the public domain

from gi import require_version
require_version('Gtk', '3.0')
require_version('Nautilus', '3.0')
from gi.repository import Nautilus, GObject
from subprocess import call
import os

# what name do you want to see in the context menu?
NAME = 'Emacs'

# always create new window?
NEWWINDOW = False


class EmacsExtension(GObject.GObject, Nautilus.MenuProvider):

    def launch_emacs(self, menu, files):
        safepaths = ''
        args = ''

        for file in files:
            filepath = file.get_location().get_path()
            safepaths += '"' + filepath + '" '

        call("emacs " + filepath , shell=True)

    def get_file_items(self, window, files):
        item = Nautilus.MenuItem(
            name='EmacsOpen',
            label='Open In ' + NAME,
            tip='Opens the selected files with ' + NAME
        )
        item.connect('activate', self.launch_emacs, files)

        return [item]

    def get_background_items(self, window, file_):
        item = Nautilus.MenuItem(
            name='EmacsOpenBackground',
            label='Open ' + NAME + ' Here',
            tip='Opens ' + NAME + ' in the current directory'
        )
        item.connect('activate', self.launch_emacs, [file_])

        return [item]
