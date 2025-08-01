  .text
  .globl main
main:
main.entry:
  addi sp, sp, -48
  sd ra, 40(sp)
  sd s0, 32(sp)
  addi s0, sp, 48
  li t0, 23333
  addi t1, s0, -32
  sw t0, 0(t1)
  addi t0, s0, -32
  lw t0, 0(t0)
  li t1, 19980130
  mulw t0, t0, t1
  li t1, 23333
  addw t0, t0, t1
  li t1, 100000007
  remw t0, t0, t1
  addi t1, s0, -32
  sw t0, 0(t1)
  addi t0, s0, -32
  lw a0, 0(t0)
  call putint
  li a0, 0
  ld ra, 40(sp)
  ld s0, 32(sp)
  addi sp, sp, 48
  ret


