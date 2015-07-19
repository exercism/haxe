EXAMPLES = hello-world \
           bob

all: test

test: test-config $(EXAMPLES:%=%-test)
.PHONY: test

clean: $(EXAMPLES:%=%-clean)
.PHONY: clean

retest: clean test
.PHONY: retest

%-test:
	@cd $(@:%-test=%) && make internal-test

%-clean:
	@cd $(@:%-clean=%) && make clean internal-clean

test-config: bin/configlet
	@bin/configlet .

bin/configlet: bin/fetch-configlet
	@bin/fetch-configlet