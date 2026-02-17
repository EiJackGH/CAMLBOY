(* Memory Management Unit *)
type t = { rom : bytes; ram : bytes }

let create rom_data = {
  rom = rom_data;
  ram = Bytes.create 0x2000;
}

let read mmu addr =
  if addr < 0x8000 then Bytes.get mmu.rom addr
  else Bytes.get mmu.ram (addr - 0x8000)
