(* LR35902 CPU *)
type regs = { mutable pc : int; mutable sp : int }

let step cpu mmu =
  let opcode = Mmu.read mmu cpu.pc in
  (* Basic fetch/decode logic *)
  match opcode with
  | '\000' -> cpu.pc <- cpu.pc + 1 (* NOP *)
  | _ -> failwith "Opcode not implemented"
