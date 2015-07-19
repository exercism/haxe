EXAMPLES = hello-world

all: test

test: $(EXAMPLES:%=%-test)

%-test:
	@cd $(@:%-test=%) && make internal-test
