MAKEFLAGS+=--ignore-errors
MAKEFLAGS+=--no-print-directory
SHELL:=/bin/bash

.PHONY: mediator
.PHONY: bridge
.PHONY: admin
.PHONY: kb
.PHONY: run
.PHONY: run_admin
.PHONY: run_kb

run_admin:
	$(MAKE) --jobs 3 mediator bridge admin

run_kb:
	$(MAKE) --jobs 3 mediator bridge kb

mediator:
	./visual -=mediator.im

bridge:
	./visual -=bridge.im

admin:
	./visual -=admin.im

kb:
	./visual -=kb.im
