#!/usr/bin/env sh
#
# Configure golang layer for doom emacs!
# Source: https://docs.doomemacs.org/latest/modules/lang/go/
# minimum needed for go module to work
go install github.com/motemen/gore/cmd/gore@latest
go install github.com/stamblerre/gocode@latest
go install golang.org/x/tools/cmd/godoc@latest
go install golang.org/x/tools/cmd/goimports@latest
go install golang.org/x/tools/cmd/gorename@latest
go install golang.org/x/tools/cmd/guru@latest
go install github.com/cweill/gotests/...@latest
go install github.com/fatih/gomodifytags@latest

# gopls for (+lsp)
go install golang.org/x/tools/gopls@latest
# if you do not have already (you must have already!)
# you need to install https://golangci-lint.run/usage/install/
