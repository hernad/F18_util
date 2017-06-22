#!/bin/bash

rm f18_editor_darwin_amd64.zip
zip -r f18_editor_darwin_amd64.zip f18_editor

shasum -a 256 f18_editor/f18_editor
