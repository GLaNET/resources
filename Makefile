%.png: %.dot
	@dot -T png -o $@ $<

all: $(addsuffix .png, $(basename $(wildcard *.dot)))

clean:
	@rm -f $(addsuffix .png, $(basename $(wildcard *.dot)))
