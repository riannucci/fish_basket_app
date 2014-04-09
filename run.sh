#!/bin/bash
coffee --compile --watch . &
goapp serve ./dispatch.yaml ./backend/backend.yaml ui/ui.yaml ./app.yaml
