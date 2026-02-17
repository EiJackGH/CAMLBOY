all:
	ocamlc -c camlboy_core/mmu.ml
	ocamlc -I camlboy_core -c camlboy_core/cpu.ml
	ocamlc -I camlboy_core -c main.ml
	ocamlc -I camlboy_core -o camlboy.exe mmu.cmo cpu.cmo main.cmo

clean:
	rm -f *.cmo *.cmi camlboy_core/*.cmo camlboy_core/*.cmi camlboy.exe
