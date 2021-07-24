libs = $(wildcard lib/*.scad)

scad_files = $(filter-out genius_square_dice.scad, $(wildcard *.scad))
stl_files = $(patsubst %.scad, output/%.stl, $(scad_files))

all: $(stl_files)

$(filter output/%.stl,$(stl_files)): output/%.stl: %.scad $(libs)
	@mkdir -p output
	openscad -o $@ $<

output/genius_square_dice.stl: genius_square_dice.scad lib/dice.scad
	@mkdir -p output
	openscad -o $@ $<

clean:
	rm -f *.stl

.PHONY: all
