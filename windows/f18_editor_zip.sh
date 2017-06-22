#!/bin/bash

rm f18_editor_windows_386.zip
zip -r f18_editor_windows_386.zip f18_editor

shasum -a 256 f18_editor/f18_editor.cmd
