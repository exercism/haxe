CLASSNAME = Bob

all: test

test:
	@haxelib run munit test
.PHONY: test

clean:
	@rm -rf build
	@rm -rf report
.PHONY: clean

internal-test: src/$(CLASSNAME).hx test internal-clean
.PHONY: internal-test

internal-clean:
	@rm -f src/$(CLASSNAME).hx
.PHONY: internal-clean

src/$(CLASSNAME).hx: src/example.hx
	@cp $< $@

src/example.hx:
	@echo "This target is for development only." >&2