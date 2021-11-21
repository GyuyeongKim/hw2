.var mutex
.var count

.main
.acquire
mov  $1, %ax     
xchg %ax, mutex
test $0, %ax
jne  .acquire
mov  count, %ax   
add  $1, %ax      
mov  %ax, count     
mov  $0, mutex
halt
