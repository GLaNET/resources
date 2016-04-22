DOT=dot
FILES= $(addsuffix .png, $(basename $(wildcard *.dot)))

%.png: %.dot
	@$(DOT) -T png -o $@ $<

all: $(FILES)

clean:
	@rm -f $(FILES)
