
install-plugin:
ifndef from
	@echo Usage: make install-plugin from=GO-PACKAGE
else
	go get $(from) && cp $(GOPATH)/src/$(from)/_bootstrap.go.txt ./plugins/$(shell basename "$(from)").go
endif
