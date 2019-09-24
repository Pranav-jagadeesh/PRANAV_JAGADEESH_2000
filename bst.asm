;bubble sort in ascending order
.model small
.data
 array dw 5,-2,7,-4
.code
 mov ax,@data
 mov ds,ax
 mov dx,04
 dec dx
outer:mov cx,dx
      mov SI,offset array
again:mov ax,[SI]
      cmp ax,[SI+2]
      JLE l1
      XCHG ax,[SI+2]
      XCHG ax,[SI]
      l1:inc SI
         inc SI
         dec cx
         jnz again
         dec dx
         jnz outer
         mov ah,4ch
         int 21h
         end

