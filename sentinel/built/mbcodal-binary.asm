; Interface tables: 0/0 (NaN%)
; Virtual methods: 0 / 0
; generated code sizes (bytes): 13236 (incl. 10142 user, 1248 helpers, 14 vtables, 1832 lits); src size 0
; assembly: 9408 lines; density: 28.65 bytes/stmt; (354 stmts)
; total bytes: 304052 (64.5% of 460.0k flash with 166988 free)
; peep hole pass: 294 instructions removed and 499 updated
; peep hole pass: 120 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x47000
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 24E1B5FB51BE0862 ; hex template hash
    .hex 873266330af9dbdb ; replaced in binary by program hash
    .short 18   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word _pxt_restore_exception_state@fn
    .word _str83 ; name
    ;
; Function main.ts(1,1): <main>
    ;
    .object _main___P3078 "main.ts(1,1): <main>"
_main___P3078_pre:
    .section code
    .balign 4
_main___P3078_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P3078_args@fn
_main___P3078_args:
    .section code
_main___P3078:
_main___P3078_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
_main___P3078_locals:
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #4]
    @stackempty locals
    ldr r0, _ldlit_2 ; _str47      
    ldr r7, [r6, #0]
    str r0, [r7, #68]
    @stackempty locals
    movs r0, #65
    ldr r7, [r6, #0]
    str r0, [r7, #64]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #8]
    @stackempty locals
    movs r0, #3
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    movs r0, #1
    negs r0, r0
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    movs r0, #41
    ldr r7, [r6, #0]
    str r0, [r7, #48]
    @stackempty locals
    movs r0, #3
    ldr r7, [r6, #0]
    str r0, [r7, #52]
    @stackempty locals
    movs r0, #66
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    movs r0, #61
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    movs r0, #10
    ldr r7, [r6, #0]
    str r0, [r7, #36]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #44]
    @stackempty locals
    movs r0, #10
    ldr r7, [r6, #0]
    str r0, [r7, #60]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    ldr r7, [r6, #0]
    str r0, [r7, #40]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #32]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #28]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #56]
    @stackempty locals
    movs r0, #21
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::fromCharCode
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, _ldlit_3 ; inline__P3321_Lit      
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl serial::onDataReceived
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, _ldlit_4 ; inline__P3419_Lit      
    push {r0} ; proc-arg
    bl _conv_3
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_5 ; inline__P3429_Lit      
    push {r0} ; proc-arg
    bl _conv_3
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #177
    push {r0} ; proc-arg
    movs r0, #65
    push {r0} ; proc-arg
    bl basic_showIcon__P2437
_proccall84:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #75
    lsls r0, r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    bl pcaInit__P3064
_proccall85:
    @stackempty locals
    movs r0, #41
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall86:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    bl readyLine__P3061
_proccall87:
    push {r0} ; the one arg
    bl line__P3060
_proccall88:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    push {r0} ; proc-arg
    bl setMode__P3071
_proccall89:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #66
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    ldr r0, _ldlit_6 ; inline__P3448_Lit      
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::forever
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3078:
    @stackempty locals
    movs r0, #0
.final_0_1:
_main___P3078_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(277,62): inline
    ;
    .object inline__P3321 "main.ts(277,62): inline"
inline__P3321_pre:
    .section code
    .balign 4
inline__P3321_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3321_args@fn
inline__P3321_args:
    .section code
inline__P3321:
inline__P3321_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
inline__P3321_locals:
    movs r0, #21
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::fromCharCode
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl serial::readUntil
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl helpers_stringTrim__P2152
_proccall90:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    movs r1, #1
    bl _cmp_eq
    beq .else_0_2      
.jmpz91:
    b .ret.3321      
.else_0_2:
.afterif_1_2:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_7 ; _str66      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl line__P3060
_proccall92:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_8 ; _str67      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_4_2      
.jmpz93:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_3_2      
.lazySkip_4_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_9 ; _str68      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_3_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_2_2      
.jmpz94:
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    b .afterif_5_2      
.else_2_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_10 ; _str69      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_8_2      
.jmpz95:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_7_2      
.lazySkip_8_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_11 ; _str70      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_7_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_6_2      
.jmpz96:
    movs r0, #3
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    b .afterif_9_2      
.else_6_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_12 ; _str71      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_12_2      
.jmpz97:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_11_2      
.lazySkip_12_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_13 ; _str72      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_11_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_10_2      
.jmpz98:
    movs r0, #5
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    b .afterif_13_2      
.else_10_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_14 ; _str73      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_16_2      
.jmpz99:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_15_2      
.lazySkip_16_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_15 ; _str74      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_15_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_14_2      
.jmpz100:
    movs r0, #7
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    b .afterif_17_2      
.else_14_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_16 ; _str75      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .jmpz101
    b .lazySkip_20_2      
.object PUSH
.balign 4
_ldlit_2:
 .word _str47
_ldlit_3:
 .word inline__P3321_Lit
_ldlit_4:
 .word inline__P3419_Lit
_ldlit_5:
 .word inline__P3429_Lit
_ldlit_6:
 .word inline__P3448_Lit
_ldlit_7:
 .word _str66
_ldlit_8:
 .word _str67
_ldlit_9:
 .word _str68
_ldlit_10:
 .word _str69
_ldlit_11:
 .word _str70
_ldlit_12:
 .word _str71
_ldlit_13:
 .word _str72
_ldlit_14:
 .word _str73
_ldlit_15:
 .word _str74
_ldlit_16:
 .word _str75
.object POP
.jmpz101:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_19_2      
.lazySkip_20_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_18 ; _str76      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_19_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_18_2      
.jmpz102:
    bl readyLine__P3061
_proccall103:
    push {r0} ; the one arg
    bl line__P3060
_proccall104:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_21_2      
.else_18_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_19 ; _str77      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_24_2      
.jmpz105:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_23_2      
.lazySkip_24_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_20 ; _str78      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_23_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_22_2      
.jmpz106:
    ldr r0, _ldlit_21 ; 200001      
    push {r0} ; proc-arg
    bl readEchoUs__P3068
_proccall107:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_22 ; _str79      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl line__P3060
_proccall108:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_25_2      
.else_22_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_23 ; _str80      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_28_2      
.jmpz109:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_27_2      
.lazySkip_28_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_24 ; _str81      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_27_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_26_2      
.jmpz110:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #5
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl helpers_stringSubstr__P2147
_proccall111:
    add sp, #4*3 ; pop locals 3
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall112:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@2]
    @stackempty locals
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    movs r1, #17
    mov r7, sp
    str r7, [r6, #4]
    bl numops::ge
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_31_2      
.jmpz113:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_30_2      
.lazySkip_31_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    movs r1, #161
    mov r7, sp
    str r7, [r6, #4]
    bl numops::le
    add sp, #4*1 ; pop locals 1
.lazy_30_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_29_2      
.jmpz114:
    ldr r0, [sp, locals@2]
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_25 ; _str82      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl line__P3060
_proccall115:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_29_2:
.afterif_32_2:
.else_26_2:
.afterif_33_2:
.afterif_25_2:
.afterif_21_2:
.afterif_17_2:
.afterif_13_2:
.afterif_9_2:
.afterif_5_2:
.ret.3321:
    @stackempty locals
    movs r0, #0
.final_34_2:
    add sp, #4*3 ; pop locals 3
inline__P3321_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(305,33): inline
    ;
    .object inline__P3419 "main.ts(305,33): inline"
inline__P3419_pre:
    .section code
    .balign 4
inline__P3419_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3419_args@fn
inline__P3419_args:
    .section code
inline__P3419:
inline__P3419_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3419_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_0_3      
.jmpz116:
    movs r0, #3
    b .condexprfin_1_3      
.condexprz_0_3:
    movs r0, #1
.condexprfin_1_3:
; jmp value (already in r0)
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
.ret.3419:
    @stackempty locals
    movs r0, #0
.final_2_3:
inline__P3419_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(309,33): inline
    ;
    .object inline__P3429 "main.ts(309,33): inline"
inline__P3429_pre:
    .section code
    .balign 4
inline__P3429_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3429_args@fn
inline__P3429_args:
    .section code
inline__P3429:
inline__P3429_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3429_locals:
    movs r0, #7
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
.ret.3429:
    @stackempty locals
    movs r0, #0
.final_0_4:
inline__P3429_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(323,15): inline
    ;
    .object inline__P3448 "main.ts(323,15): inline"
inline__P3448_pre:
    .section code
    .balign 4
inline__P3448_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3448_args@fn
inline__P3448_args:
    .section code
inline__P3448:
inline__P3448_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
inline__P3448_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    movs r1, #1
    bl _cmp_ge
    beq .else_0_5      
.jmpz117:
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    negs r0, r0
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl setMode__P3071
_proccall118:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_5:
.afterif_1_5:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    movs r1, #1
    bl _cmp_eq
    beq .else_2_5      
.jmpz119:
    bl sweepStep__P3074
_proccall120:
    @stackempty locals
    b .afterif_3_5      
.else_2_5:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    movs r1, #7
    bl _cmp_eq
    beq .else_4_5      
.jmpz121:
    bl runWiggle__P3075
_proccall122:
    @stackempty locals
    b .afterif_5_5      
.else_4_5:
    movs r0, #25
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
.afterif_5_5:
.afterif_3_5:
    bl tickGuard__P3077
_proccall123:
    @stackempty locals
    bl updateDisplay__P3076
_proccall124:
    @stackempty locals
.ret.3448:
    @stackempty locals
    movs r0, #0
.final_6_5:
    add sp, #4*1 ; pop locals 1
inline__P3448_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(237,1): updateDisplay
    ;
    .object updateDisplay__P3076 "main.ts(237,1): updateDisplay"
updateDisplay__P3076_pre:
    .section code
    .balign 4
    .section code
updateDisplay__P3076:
updateDisplay__P3076_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
updateDisplay__P3076_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl control::millis
    bl _numops_fromInt
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #28]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_2_6      
.jmpz125:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_6      
.lazySkip_2_6:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    ldr r1, [r7, #28]
    bl _numops_subs
    push {r0} ; proc-arg
    movs r1, #11
    lsls r1, r1, #8
    adds r1, #185
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_1_6:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_6      
.jmpz126:
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #32]
    @stackempty locals
.else_0_6:
.afterif_3_6:
    ldr r0, _ldlit_26 ; _str63      
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_4_6      
.jmpz127:
    ldr r0, _ldlit_27 ; _str64      
    str r0, [sp, locals@1]
    @stackempty locals
    b .afterif_5_6      
.object PUSH
.balign 4
_ldlit_18:
 .word _str76
_ldlit_19:
 .word _str77
_ldlit_20:
 .word _str78
_ldlit_21:
 .word 200001
_ldlit_22:
 .word _str79
_ldlit_23:
 .word _str80
_ldlit_24:
 .word _str81
_ldlit_25:
 .word _str82
_ldlit_26:
 .word _str63
_ldlit_27:
 .word _str64
.object POP
.else_4_6:
    ldr r7, [r6, #0]
    ldr r0, [r7, #32]
    movs r1, #1
    bl _cmp_gt
    beq .else_6_6      
.jmpz128:
    movs r0, #201
    ldr r7, [r6, #0]
    ldr r1, [r7, #32]
    bl _numops_subs
    str r0, [sp, locals@2]
    @stackempty locals
    ldr r0, [sp, locals@2]
    movs r1, #1
    bl _cmp_lt
    beq .else_7_6      
.jmpz129:
    movs r0, #1
    str r0, [sp, locals@2]
    @stackempty locals
.else_7_6:
.afterif_8_6:
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_0
    movs r1, #96
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@3]
    movs r1, #3
    bl _cmp_lt
    beq .else_9_6      
.jmpz130:
    movs r0, #3
    str r0, [sp, locals@3]
    @stackempty locals
.else_9_6:
.afterif_10_6:
    ldr r0, [sp, locals@3]
    movs r1, #11
    bl _cmp_gt
    beq .else_11_6      
.jmpz131:
    movs r0, #11
    str r0, [sp, locals@3]
    @stackempty locals
.else_11_6:
.afterif_12_6:
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_29 ; _str65      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@1]
    @stackempty locals
.else_6_6:
.afterif_13_6:
.afterif_5_6:
    ldr r0, [sp, locals@1]
    ldr r7, [r6, #0]
    ldr r1, [r7, #40]
    bl _cmp_eq
    beq .else_14_6      
.jmpz132:
    b .ret.3076      
.else_14_6:
.afterif_15_6:
    ldr r0, [sp, locals@1]
    ldr r7, [r6, #0]
    str r0, [r7, #40]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl basic::clearScreen
    @stackempty locals
    ldr r0, [sp, locals@1]
    ldr r1, _ldlit_30 ; _str64      
    bl _cmp_eq
    beq .else_16_6      
.jmpz133:
    movs r0, #1
    str r0, [sp, locals@4]
    @stackempty locals
.fortop.3511:
    ldr r0, [sp, locals@4]
    movs r1, #11
    bl _cmp_lt
    beq .brk.3511      
.jmpz134:
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl led::plot
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #9
    ldr r1, [sp, locals@4]
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl led::plot
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.cont.3511:
    ldr r0, [sp, locals@4]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@4]
    @stackempty locals
    b .fortop.3511      
.brk.3511:
    b .afterif_17_6      
.else_16_6:
    ldr r0, [sp, locals@1]
    ldr r1, _ldlit_31 ; _str63      
    bl _cmp_eq
    beq .else_18_6      
.jmpz135:
    movs r0, #2
    movs r1, #2
    mov r7, sp
    str r7, [r6, #4]
    bl led::plot
    @stackempty locals
    b .afterif_19_6      
.else_18_6:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #7
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl helpers_stringSubstr__P2147
_proccall136:
    add sp, #4*3 ; pop locals 3
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall137:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@5]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@6]
    @stackempty locals
.fortop.3535:
    ldr r0, [sp, locals@6]
    ldr r1, [sp, locals@5]
    bl _cmp_lt
    beq .brk.3535      
.jmpz138:
    movs r0, #1
    str r0, [sp, locals@7]
    @stackempty locals
.fortop.3539:
    ldr r0, [sp, locals@7]
    movs r1, #11
    bl _cmp_lt
    beq .brk.3539      
.jmpz139:
    ldr r0, [sp, locals@6]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@7]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl led::plot
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.cont.3539:
    ldr r0, [sp, locals@7]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@7]
    @stackempty locals
    b .fortop.3539      
.brk.3539:
.cont.3535:
    ldr r0, [sp, locals@6]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@6]
    @stackempty locals
    b .fortop.3535      
.brk.3535:
.afterif_19_6:
.afterif_17_6:
.ret.3076:
    @stackempty locals
    movs r0, #0
.final_20_6:
    add sp, #4*8 ; pop locals 8
updateDisplay__P3076_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(271,1): tickGuard
    ;
    .object tickGuard__P3077 "main.ts(271,1): tickGuard"
tickGuard__P3077_pre:
    .section code
    .balign 4
    .section code
tickGuard__P3077:
tickGuard__P3077_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
tickGuard__P3077_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_2_7      
.jmpz140:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_7      
.lazySkip_2_7:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    mov r7, sp
    str r7, [r6, #4]
    bl control::millis
    bl _numops_fromInt
    ldr r7, [r6, #0]
    ldr r1, [r7, #44]
    bl _numops_subs
    push {r0} ; proc-arg
    movs r1, #20
    lsls r1, r1, #8
    adds r1, #81
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_1_7:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_7      
.jmpz141:
    movs r0, #10
    push {r0} ; proc-arg
    bl setAlarm__P3070
_proccall142:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_7:
.afterif_3_7:
.ret.3077:
    @stackempty locals
    movs r0, #0
.final_4_7:
tickGuard__P3077_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(144,1): setAlarm
    ;
    .object setAlarm__P3070 "main.ts(144,1): setAlarm"
setAlarm__P3070_pre:
    .section code
    .balign 4
    .section code
setAlarm__P3070:
setAlarm__P3070_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
setAlarm__P3070_locals:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    ldr r1, [r7, #36]
    bl _cmp_eq
    beq .else_0_8      
.jmpz143:
    b .ret.3070      
.else_0_8:
.afterif_1_8:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    str r0, [r7, #36]
    @stackempty locals
    ldr r0, [sp, args@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_2_8      
.jmpz144:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #65
    b .condexprfin_3_8      
.condexprz_2_8:
    movs r0, #41
.condexprfin_3_8:
; jmp value (already in r0)
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall145:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    ldr r7, [r6, #0]
    str r0, [r7, #40]
    @stackempty locals
    ldr r0, [sp, args@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_4_8      
.jmpz146:
    ldr r0, _ldlit_32 ; _str54      
    b .condexprfin_5_8      
.condexprz_4_8:
    ldr r0, _ldlit_33 ; _str55      
.condexprfin_5_8:
; jmp value (already in r0)
    push {r0} ; proc-arg
    bl line__P3060
_proccall147:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3070:
    @stackempty locals
    movs r0, #0
.final_6_8:
setAlarm__P3070_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(216,1): runWiggle
    ;
    .object runWiggle__P3075 "main.ts(216,1): runWiggle"
runWiggle__P3075_pre:
    .section code
    .balign 4
    .section code
runWiggle__P3075:
runWiggle__P3075_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
runWiggle__P3075_locals:
    movs r0, #7
    push {r0} ; proc-arg
    bl setMode__P3071
_proccall148:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.fortop.3577:
    ldr r0, [sp, locals@0]
    movs r1, #5
    bl _cmp_lt
    beq .brk.3577      
.jmpz149:
    movs r0, #81
    push {r0} ; proc-arg
    bl movePan__P3066
_proccall150:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #220
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #25
    push {r0} ; proc-arg
    bl movePan__P3066
_proccall151:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #220
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #41
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall152:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #200
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #65
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall153:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #200
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
.cont.3577:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .fortop.3577      
.brk.3577:
    movs r0, #181
    push {r0} ; proc-arg
    bl movePan__P3066
_proccall154:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_0_9      
.jmpz155:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #65
    b .condexprfin_1_9      
.condexprz_0_9:
    movs r0, #41
.condexprfin_1_9:
; jmp value (already in r0)
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall156:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #1
    push {r0} ; proc-arg
    bl setMode__P3071
_proccall157:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #41
    ldr r7, [r6, #0]
    str r0, [r7, #48]
    @stackempty locals
    movs r0, #3
    ldr r7, [r6, #0]
    str r0, [r7, #52]
    @stackempty locals
    movs r0, #66
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
.ret.3075:
    @stackempty locals
    movs r0, #0
.final_2_9:
    add sp, #4*1 ; pop locals 1
runWiggle__P3075_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(122,1): movePan
    ;
    .object movePan__P3066 "main.ts(122,1): movePan"
movePan__P3066_pre:
    .section code
    .balign 4
    .section code
movePan__P3066:
movePan__P3066_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
movePan__P3066_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #77
    push {r0} ; proc-arg
    bl writeChannel__P3065
_proccall158:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3066:
    @stackempty locals
    movs r0, #0
.final_0_10:
movePan__P3066_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(114,1): writeChannel
    ;
    .object writeChannel__P3065 "main.ts(114,1): writeChannel"
writeChannel__P3065_pre:
    .section code
    .balign 4
    .section code
writeChannel__P3065:
writeChannel__P3065_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
writeChannel__P3065_locals:
    ldr r0, [sp, args@1]
    movs r1, #1
    bl _cmp_lt
    beq .else_0_11      
.jmpz159:
    movs r0, #1
    str r0, [sp, args@1]
    @stackempty locals
.else_0_11:
.afterif_1_11:
    ldr r0, [sp, args@1]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #105
    bl _cmp_gt
    bne .jmpz160
    b .else_2_11      
.object PUSH
.balign 4
_ldlit_29:
 .word _str65
_ldlit_30:
 .word _str64
_ldlit_31:
 .word _str63
_ldlit_32:
 .word _str54
_ldlit_33:
 .word _str55
.object POP
.jmpz160:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #105
    str r0, [sp, args@1]
    @stackempty locals
.else_2_11:
.afterif_3_11:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #21
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    mov r1, r0
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #177
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r1, #32
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    movs r1, #78
    lsls r1, r1, #8
    adds r1, #33
    bl _numops_adds
    push {r0} ; proc-arg
    bl _conv_0
    movs r1, #78
    lsls r1, r1, #8
    adds r1, #32
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*2 ; pop locals 2
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, locals@1]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #255
    bl _numops_ands
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    movs r1, #17
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #255
    bl _numops_ands
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl pcaWrite__P3062
_proccall161:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3065:
    @stackempty locals
    movs r0, #0
.final_4_11:
    add sp, #4*2 ; pop locals 2
writeChannel__P3065_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(78,1): pcaWrite
    ;
    .object pcaWrite__P3062 "main.ts(78,1): pcaWrite"
pcaWrite__P3062_pre:
    .section code
    .balign 4
    .section code
pcaWrite__P3062:
pcaWrite__P3062_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
pcaWrite__P3062_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_9
    bl _pxt_array_length_tagged
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl control::createBuffer
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.3647:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_9
    bl _pxt_array_length_tagged
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    beq .brk.3647      
.jmpz162:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_10
    bl _pxt_buffer_set
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.cont.3647:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3647      
.brk.3647:
    ldr r0, _ldlit_35 ; _catch_3659      
    bl _pxt_save_exception_state
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r0, #10
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_12
    movs r0, #64
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cWriteBuffer
    add sp, #4*2 ; pop locals 2
    bl _numops_fromInt
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::endTry
    b .catchend_2_12      
_catch_3659:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::getThrownValue
    str r0, [sp, locals@2]
.catchend_2_12:
.ret.3062:
    @stackempty locals
    movs r0, #0
.final_3_12:
    add sp, #4*3 ; pop locals 3
pcaWrite__P3062_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(191,1): sweepStep
    ;
    .object sweepStep__P3074 "main.ts(191,1): sweepStep"
sweepStep__P3074_pre:
    .section code
    .balign 4
    .section code
sweepStep__P3074:
sweepStep__P3074_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
sweepStep__P3074_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #24]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_13      
.jmpz163:
    movs r0, #10
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    bl pcaInit__P3064
_proccall164:
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_1_13      
.jmpz165:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #65
    b .condexprfin_2_13      
.condexprz_1_13:
    movs r0, #41
.condexprfin_2_13:
; jmp value (already in r0)
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall166:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_13:
.afterif_3_13:
    ldr r7, [r6, #0]
    ldr r0, [r7, #48]
    push {r0} ; proc-arg
    bl movePan__P3066
_proccall167:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #45
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    movs r1, #1
    bl _cmp_neq
    beq .else_4_13      
.jmpz168:
    b .ret.3074      
.else_4_13:
.afterif_5_13:
    bl readDistanceCm__P3069
_proccall169:
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #48]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_36 ; _str61      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_37 ; _str62      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_13
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl line__P3060
_proccall170:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl ingest__P3072
_proccall171:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #48]
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #52]
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, locals@1]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #65
    bl _cmp_gt
    beq .else_6_13      
.jmpz172:
    bl endSweep__P3073
_proccall173:
    @stackempty locals
    movs r0, #1
    negs r0, r0
    ldr r7, [r6, #0]
    str r0, [r7, #52]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #48]
    movs r1, #11
    bl _numops_subs
    str r0, [sp, locals@1]
    @stackempty locals
    b .afterif_7_13      
.else_6_13:
    ldr r0, [sp, locals@1]
    movs r1, #41
    bl _cmp_lt
    beq .else_8_13      
.jmpz174:
    bl endSweep__P3073
_proccall175:
    @stackempty locals
    movs r0, #3
    ldr r7, [r6, #0]
    str r0, [r7, #52]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #48]
    movs r1, #11
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
.else_8_13:
.afterif_9_13:
.afterif_7_13:
    ldr r0, [sp, locals@1]
    ldr r7, [r6, #0]
    str r0, [r7, #48]
    @stackempty locals
.ret.3074:
    @stackempty locals
    movs r0, #0
.final_10_13:
    add sp, #4*2 ; pop locals 2
sweepStep__P3074_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(185,1): endSweep
    ;
    .object endSweep__P3073 "main.ts(185,1): endSweep"
endSweep__P3073_pre:
    .section code
    .balign 4
    .section code
endSweep__P3073:
endSweep__P3073_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
endSweep__P3073_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #56]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_38 ; _str60      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl line__P3060
_proccall176:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #56]
    @stackempty locals
    movs r0, #66
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
.ret.3073:
    @stackempty locals
    movs r0, #0
.final_0_14:
endSweep__P3073_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(171,1): ingest
    ;
    .object ingest__P3072 "main.ts(171,1): ingest"
ingest__P3072_pre:
    .section code
    .balign 4
    .section code
ingest__P3072:
ingest__P3072_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
ingest__P3072_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r1, #9
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_2_15      
.jmpz177:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_15      
.lazySkip_2_15:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #145
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_1_15:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_15      
.jmpz178:
    b .ret.3072      
.else_0_15:
.afterif_3_15:
    mov r7, sp
    str r7, [r6, #4]
    bl control::millis
    bl _numops_fromInt
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #32]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_6_15      
.jmpz179:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_5_15      
.lazySkip_6_15:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #32]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*2 ; pop locals 2
.lazy_5_15:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_8_15      
.jmpz180:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_7_15      
.lazySkip_8_15:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    ldr r1, [r7, #28]
    bl _numops_subs
    push {r0} ; proc-arg
    movs r1, #9
    lsls r1, r1, #8
    adds r1, #97
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_7_15:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_4_15      
.jmpz181:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    str r0, [r7, #32]
    @stackempty locals
.else_4_15:
.afterif_9_15:
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    str r0, [r7, #28]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #56]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_12_15      
.jmpz182:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_11_15      
.lazySkip_12_15:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #56]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*2 ; pop locals 2
    b .lazy_11_15      
.object PUSH
.balign 4
_ldlit_35:
 .word _catch_3659
_ldlit_36:
 .word _str61
_ldlit_37:
 .word _str62
_ldlit_38:
 .word _str60
.object POP
.lazy_11_15:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_10_15      
.jmpz183:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    str r0, [r7, #56]
    @stackempty locals
.else_10_15:
.afterif_13_15:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    ldr r1, [r7, #16]
    bl _cmp_lt
    beq .else_14_15      
.jmpz184:
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    str r0, [r7, #44]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_15_15      
.jmpz185:
    movs r0, #66
    push {r0} ; proc-arg
    bl setAlarm__P3070
_proccall186:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_15_15:
.afterif_16_15:
.else_14_15:
.afterif_17_15:
.ret.3072:
    @stackempty locals
    movs r0, #0
.final_18_15:
    add sp, #4*1 ; pop locals 1
ingest__P3072_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(139,1): readDistanceCm
    ;
    .object readDistanceCm__P3069 "main.ts(139,1): readDistanceCm"
readDistanceCm__P3069_pre:
    .section code
    .balign 4
    .section code
readDistanceCm__P3069:
readDistanceCm__P3069_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
readDistanceCm__P3069_locals:
    movs r0, #234
    lsls r0, r0, #8
    adds r0, #97
    push {r0} ; proc-arg
    bl readEchoUs__P3068
_proccall187:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_0
    movs r1, #58
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
.ret.3069:
    @stackempty locals
.final_0_16:
    add sp, #4*1 ; pop locals 1
readDistanceCm__P3069_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(152,1): setMode
    ;
    .object setMode__P3071 "main.ts(152,1): setMode"
setMode__P3071_pre:
    .section code
    .balign 4
    .section code
setMode__P3071:
setMode__P3071_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
setMode__P3071_locals:
    ldr r0, [sp, args@0]
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _cmp_eq
    beq .else_0_17      
.jmpz188:
    ldr r0, _ldlit_40 ; _str56      
    push {r0} ; proc-arg
    bl line__P3060
_proccall189:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_1_17      
.else_0_17:
    ldr r0, [sp, args@0]
    movs r1, #3
    bl _cmp_eq
    beq .else_2_17      
.jmpz190:
    ldr r0, _ldlit_41 ; _str57      
    push {r0} ; proc-arg
    bl line__P3060
_proccall191:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_3_17      
.else_2_17:
    ldr r0, [sp, args@0]
    movs r1, #5
    bl _cmp_eq
    beq .else_4_17      
.jmpz192:
    ldr r0, _ldlit_42 ; _str58      
    push {r0} ; proc-arg
    bl line__P3060
_proccall193:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #10
    push {r0} ; proc-arg
    bl setAlarm__P3070
_proccall194:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #181
    push {r0} ; proc-arg
    bl movePan__P3066
_proccall195:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #41
    push {r0} ; proc-arg
    bl moveArm__P3067
_proccall196:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #41
    ldr r7, [r6, #0]
    str r0, [r7, #48]
    @stackempty locals
    movs r0, #3
    ldr r7, [r6, #0]
    str r0, [r7, #52]
    @stackempty locals
    movs r0, #66
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    b .afterif_5_17      
.else_4_17:
    ldr r0, [sp, args@0]
    movs r1, #7
    bl _cmp_eq
    beq .else_6_17      
.jmpz197:
    ldr r0, _ldlit_43 ; _str59      
    push {r0} ; proc-arg
    bl line__P3060
_proccall198:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_6_17:
.afterif_7_17:
.afterif_5_17:
.afterif_3_17:
.afterif_1_17:
.ret.3071:
    @stackempty locals
    movs r0, #0
.final_8_17:
setMode__P3071_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(126,1): moveArm
    ;
    .object moveArm__P3067 "main.ts(126,1): moveArm"
moveArm__P3067_pre:
    .section code
    .balign 4
    .section code
moveArm__P3067:
moveArm__P3067_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
moveArm__P3067_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #85
    push {r0} ; proc-arg
    bl writeChannel__P3065
_proccall199:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3067:
    @stackempty locals
    movs r0, #0
.final_0_18:
moveArm__P3067_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(102,1): pcaInit
    ;
    .object pcaInit__P3064 "main.ts(102,1): pcaInit"
pcaInit__P3064_pre:
    .section code
    .balign 4
    .section code
pcaInit__P3064:
pcaInit__P3064_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
pcaInit__P3064_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl pcaWrite__P3062
_proccall200:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #33
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl pcaWrite__P3062
_proccall201:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #253
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #243
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl pcaWrite__P3062
_proccall202:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl pcaWrite__P3062
_proccall203:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #67
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    bl pcaWrite__P3062
_proccall204:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #253
    push {r0} ; proc-arg
    bl pcaRead8__P3063
_proccall205:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #243
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #60]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #60]
.ret.3064:
    @stackempty locals
.final_0_19:
pcaInit__P3064_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(90,1): pcaRead8
    ;
    .object pcaRead8__P3063 "main.ts(90,1): pcaRead8"
pcaRead8__P3063_pre:
    .section code
    .balign 4
    .section code
pcaRead8__P3063:
pcaRead8__P3063_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pcaRead8__P3063_locals:
    ldr r0, _ldlit_44 ; _catch_3838      
    bl _pxt_save_exception_state
    @stackempty locals
    movs r0, #66
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r0, #129
    push {r0} ; proc-arg
    bl pins_i2cWriteNumber__P2783
_proccall206:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::endTry
    movs r0, #10
    push {r0} ; proc-arg
    movs r0, #15
    push {r0} ; proc-arg
    movs r0, #129
    push {r0} ; proc-arg
    bl pins_i2cReadNumber__P2782
_proccall207:
    add sp, #4*3 ; pop locals 3
    b .ret.3063      
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::endTry
    b .catchend_2_20      
_catch_3838:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::getThrownValue
    str r0, [sp, locals@0]
    movs r0, #1
    negs r0, r0
    b .ret.3063      
.catchend_2_20:
    movs r0, #0
.ret.3063:
    @stackempty locals
.final_3_20:
    add sp, #4*1 ; pop locals 1
pcaRead8__P3063_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pins.ts(114,5): pins.i2cReadNumber
    ;
    .object pins_i2cReadNumber__P2782 "core/pins.ts(114,5): pins.i2cReadNumber"
pins_i2cReadNumber__P2782_pre:
    .section code
    .balign 4
    .section code
pins_i2cReadNumber__P2782:
pins_i2cReadNumber__P2782_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pins_i2cReadNumber__P2782_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl pins_sizeOf__P2807
_proccall208:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_14
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cReadBuffer
    add sp, #4*3 ; pop locals 3
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_15
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::getNumber
    add sp, #4*2 ; pop locals 2
.ret.2782:
    @stackempty locals
.final_0_21:
    add sp, #4*1 ; pop locals 1
pins_i2cReadNumber__P2782_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/buffer.ts(3,5): pins.sizeOf
    ;
    .object pins_sizeOf__P2807 "core/buffer.ts(3,5): pins.sizeOf"
pins_sizeOf__P2807_pre:
    .section code
    .balign 4
    .section code
pins_sizeOf__P2807:
pins_sizeOf__P2807_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
pins_sizeOf__P2807_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl Buffer_sizeOfNumberFormat__P2847
_proccall209:
    add sp, #4*1 ; pop locals 1
.ret.2807:
    @stackempty locals
.final_0_22:
pins_sizeOf__P2807_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/buffer.ts(509,5): Buffer.sizeOfNumberFormat
    ;
    .object Buffer_sizeOfNumberFormat__P2847 "core/buffer.ts(509,5): Buffer.sizeOfNumberFormat"
Buffer_sizeOfNumberFormat__P2847_pre:
    .section code
    .balign 4
    .section code
Buffer_sizeOfNumberFormat__P2847:
Buffer_sizeOfNumberFormat__P2847_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Buffer_sizeOfNumberFormat__P2847_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #3
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz210
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_23      
.jmpz210:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz211
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_23      
.jmpz211:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz212
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_23      
.jmpz212:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz213
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_23      
.jmpz213:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz214
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_23      
.jmpz214:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz215
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_23      
.jmpz215:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz216
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_23      
.jmpz216:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz217
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_23      
.jmpz217:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz218
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_23      
.object PUSH
.balign 4
_ldlit_40:
 .word _str56
_ldlit_41:
 .word _str57
_ldlit_42:
 .word _str58
_ldlit_43:
 .word _str59
_ldlit_44:
 .word _catch_3838
.object POP
.jmpz218:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz219
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_23      
.jmpz219:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz220
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_23      
.jmpz220:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz221
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_23      
.jmpz221:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz222
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_23      
.jmpz222:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz223
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_23      
.jmpz223:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz224
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_23      
.jmpz224:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz225
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_23      
.jmpz225:
    pop {r0} ; tmpref @1
    b .brk.3868      
.switch_0_23:
.switch_1_23:
.switch_2_23:
.switch_3_23:
    movs r0, #3
    b .ret.2847      
.switch_4_23:
.switch_5_23:
.switch_6_23:
.switch_7_23:
    movs r0, #5
    b .ret.2847      
.switch_8_23:
.switch_9_23:
.switch_10_23:
.switch_11_23:
.switch_12_23:
.switch_13_23:
    movs r0, #9
    b .ret.2847      
.switch_14_23:
.switch_15_23:
    movs r0, #17
    b .ret.2847      
.brk.3868:
    movs r0, #1
.ret.2847:
    @stackempty locals
.final_16_23:
Buffer_sizeOfNumberFormat__P2847_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pins.ts(127,5): pins.i2cWriteNumber
    ;
    .object pins_i2cWriteNumber__P2783 "core/pins.ts(127,5): pins.i2cWriteNumber"
pins_i2cWriteNumber__P2783_pre:
    .section code
    .balign 4
    .section code
pins_i2cWriteNumber__P2783:
pins_i2cWriteNumber__P2783_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pins_i2cWriteNumber__P2783_locals:
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    bl pins_sizeOf__P2807
_proccall226:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::createBuffer
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_16
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::setNumber
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@3]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_17
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cWriteBuffer
    add sp, #4*3 ; pop locals 3
    bl _numops_fromInt
    @stackempty locals
.ret.2783:
    @stackempty locals
    movs r0, #0
.final_0_24:
    add sp, #4*1 ; pop locals 1
pins_i2cWriteNumber__P2783_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/icons.ts(190,5): basic.showIcon
    ;
    .object basic_showIcon__P2437 "core/icons.ts(190,5): basic.showIcon"
basic_showIcon__P2437_pre:
    .section code
    .balign 4
    .section code
basic_showIcon__P2437:
basic_showIcon__P2437_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
basic_showIcon__P2437_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl images_iconImage__P2441
_proccall227:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_19
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl ImageMethods::showImage
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2437:
    @stackempty locals
    movs r0, #0
.final_0_25:
    add sp, #4*1 ; pop locals 1
basic_showIcon__P2437_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/icons.ts(286,5): images.iconImage
    ;
    .object images_iconImage__P2441 "core/icons.ts(286,5): images.iconImage"
images_iconImage__P2441_pre:
    .section code
    .balign 4
    .section code
images_iconImage__P2441:
images_iconImage__P2441_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
images_iconImage__P2441_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz228
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_26      
.jmpz228:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz229
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_26      
.jmpz229:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz230
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_26      
.jmpz230:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz231
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_26      
.jmpz231:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz232
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_26      
.jmpz232:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz233
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_26      
.jmpz233:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz234
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_26      
.jmpz234:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz235
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_26      
.jmpz235:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz236
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_26      
.jmpz236:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz237
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_26      
.jmpz237:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz238
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_26      
.jmpz238:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz239
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_26      
.jmpz239:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz240
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_26      
.jmpz240:
    movs r0, #67
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz241
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_26      
.jmpz241:
    movs r0, #69
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz242
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_26      
.jmpz242:
    movs r0, #71
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz243
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_26      
.jmpz243:
    movs r0, #73
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz244
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_16_26      
.jmpz244:
    movs r0, #75
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz245
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_17_26      
.jmpz245:
    movs r0, #77
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz246
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_18_26      
.jmpz246:
    movs r0, #79
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz247
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_19_26      
.jmpz247:
    movs r0, #81
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz248
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_20_26      
.jmpz248:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz249
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_21_26      
.jmpz249:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz250
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_22_26      
.jmpz250:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz251
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_23_26      
.jmpz251:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz252
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_24_26      
.jmpz252:
    movs r0, #35
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz253
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_25_26      
.jmpz253:
    movs r0, #37
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz254
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_26_26      
.jmpz254:
    movs r0, #39
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz255
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_27_26      
.jmpz255:
    movs r0, #41
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz256
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_28_26      
.jmpz256:
    movs r0, #43
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz257
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_29_26      
.jmpz257:
    movs r0, #45
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz258
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_30_26      
.jmpz258:
    movs r0, #47
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz259
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_31_26      
.jmpz259:
    movs r0, #49
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz260
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_32_26      
.jmpz260:
    movs r0, #51
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz261
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_33_26      
.jmpz261:
    movs r0, #53
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz262
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_34_26      
.jmpz262:
    movs r0, #55
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz263
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_35_26      
.jmpz263:
    movs r0, #57
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz264
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_36_26      
.jmpz264:
    movs r0, #61
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz265
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_37_26      
.jmpz265:
    movs r0, #59
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz266
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_38_26      
.jmpz266:
    movs r0, #63
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz267
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_39_26      
.jmpz267:
    movs r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz268
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_40_26      
.jmpz268:
    pop {r0} ; tmpref @1
    b .switch_41_26      
.switch_0_26:
    ldr r0, _ldlit_46 ; _img5      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_1_26:
    ldr r0, _ldlit_47 ; _img6      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_2_26:
    ldr r0, _ldlit_48 ; _img7      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_3_26:
    ldr r0, _ldlit_49 ; _img8      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_4_26:
    ldr r0, _ldlit_50 ; _img9      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_5_26:
    ldr r0, _ldlit_51 ; _img10      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_6_26:
    ldr r0, _ldlit_52 ; _img11      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_7_26:
    ldr r0, _ldlit_53 ; _img12      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_8_26:
    ldr r0, _ldlit_54 ; _img13      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_9_26:
    ldr r0, _ldlit_55 ; _img14      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_10_26:
    ldr r0, _ldlit_56 ; _img15      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_11_26:
    ldr r0, _ldlit_57 ; _img16      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_12_26:
    ldr r0, _ldlit_58 ; _img17      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_13_26:
    ldr r0, _ldlit_59 ; _img18      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_14_26:
    ldr r0, _ldlit_60 ; _img19      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_15_26:
    ldr r0, _ldlit_61 ; _img20      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_16_26:
    ldr r0, _ldlit_62 ; _img21      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_17_26:
    ldr r0, _ldlit_63 ; _img22      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_18_26:
    ldr r0, _ldlit_64 ; _img23      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_19_26:
    ldr r0, _ldlit_65 ; _img24      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_20_26:
    ldr r0, _ldlit_66 ; _img25      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_21_26:
    ldr r0, _ldlit_67 ; _img26      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_22_26:
    ldr r0, _ldlit_68 ; _img27      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_23_26:
    ldr r0, _ldlit_69 ; _img28      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_24_26:
    ldr r0, _ldlit_70 ; _img29      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_25_26:
    ldr r0, _ldlit_71 ; _img30      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_26_26:
    ldr r0, _ldlit_72 ; _img31      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_27_26:
    ldr r0, _ldlit_73 ; _img32      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_28_26:
    ldr r0, _ldlit_74 ; _img33      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_29_26:
    ldr r0, _ldlit_75 ; _img34      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_30_26:
    ldr r0, _ldlit_76 ; _img35      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_31_26:
    ldr r0, _ldlit_77 ; _img36      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_32_26:
    ldr r0, _ldlit_78 ; _img37      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_33_26:
    ldr r0, _ldlit_79 ; _img38      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_34_26:
    ldr r0, _ldlit_80 ; _img39      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_35_26:
    ldr r0, _ldlit_81 ; _img40      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_36_26:
    ldr r0, _ldlit_82 ; _img41      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_37_26:
    ldr r0, _ldlit_83 ; _img42      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_38_26:
    ldr r0, _ldlit_84 ; _img43      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_39_26:
    ldr r0, _ldlit_85 ; _img44      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.object PUSH
.balign 4
_ldlit_46:
 .word _img5
_ldlit_47:
 .word _img6
_ldlit_48:
 .word _img7
_ldlit_49:
 .word _img8
_ldlit_50:
 .word _img9
_ldlit_51:
 .word _img10
_ldlit_52:
 .word _img11
_ldlit_53:
 .word _img12
_ldlit_54:
 .word _img13
_ldlit_55:
 .word _img14
_ldlit_56:
 .word _img15
_ldlit_57:
 .word _img16
_ldlit_58:
 .word _img17
_ldlit_59:
 .word _img18
_ldlit_60:
 .word _img19
_ldlit_61:
 .word _img20
_ldlit_62:
 .word _img21
_ldlit_63:
 .word _img22
_ldlit_64:
 .word _img23
_ldlit_65:
 .word _img24
_ldlit_66:
 .word _img25
_ldlit_67:
 .word _img26
_ldlit_68:
 .word _img27
_ldlit_69:
 .word _img28
_ldlit_70:
 .word _img29
_ldlit_71:
 .word _img30
_ldlit_72:
 .word _img31
_ldlit_73:
 .word _img32
_ldlit_74:
 .word _img33
_ldlit_75:
 .word _img34
_ldlit_76:
 .word _img35
_ldlit_77:
 .word _img36
_ldlit_78:
 .word _img37
_ldlit_79:
 .word _img38
_ldlit_80:
 .word _img39
_ldlit_81:
 .word _img40
_ldlit_82:
 .word _img41
_ldlit_83:
 .word _img42
_ldlit_84:
 .word _img43
_ldlit_85:
 .word _img44
.object POP
.switch_40_26:
    ldr r0, _ldlit_87 ; _img45      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_41_26:
    ldr r0, _ldlit_88 ; _img46      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.brk.3921:
    movs r0, #0
.ret.2441:
    @stackempty locals
.final_42_26:
images_iconImage__P2441_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(381,5): helpers.stringSubstr
    ;
    .object helpers_stringSubstr__P2147 "core/pxt-helpers.ts(381,5): helpers.stringSubstr"
helpers_stringSubstr__P2147_pre:
    .section code
    .balign 4
    .section code
helpers_stringSubstr__P2147:
helpers_stringSubstr__P2147_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
helpers_stringSubstr__P2147_locals:
    ldr r0, [sp, args@2]
    movs r1, #0
    bl _cmp_eqq
    beq .condexprz_0_27      
.jmpz269:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    b .condexprfin_1_27      
.condexprz_0_27:
    ldr r0, [sp, args@2]
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_3_27      
.jmpz270:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_2_27      
.lazySkip_3_27:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    movs r0, #1
.lazy_2_27:
; jmp value (already in r0)
.condexprfin_1_27:
; jmp value (already in r0)
    str r0, [sp, args@2]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    bl _conv_20
    mov r7, sp
    str r7, [r6, #4]
    bl String_::substr
    add sp, #4*3 ; pop locals 3
.ret.2147:
    @stackempty locals
.final_4_27:
helpers_stringSubstr__P2147_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(46,1): parseInt
    ;
    .object parseInt__P2126 "core/pxt-helpers.ts(46,1): parseInt"
parseInt__P2126_pre:
    .section code
    .balign 4
    .section code
parseInt__P2126:
parseInt__P2126_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
parseInt__P2126_locals:
    ldr r0, [sp, args@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_2_28      
.jmpz271:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_28      
.lazySkip_2_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #6
    mov r7, sp
    str r7, [r6, #4]
    bl numops::neq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_4_28      
.jmpz272:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_3_28      
.lazySkip_4_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #5
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_6_28      
.jmpz273:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_5_28      
.lazySkip_6_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #73
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_5_28:
; jmp value (already in r0)
.lazy_3_28:
; jmp value (already in r0)
.lazy_1_28:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_28      
.jmpz274:
    movs r0, #14
    b .ret.2126      
.else_0_28:
.afterif_7_28:
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.cont.4085:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*2 ; pop locals 2
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_9_28      
.jmpz275:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_8_28      
.lazySkip_9_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl helpers_isWhitespace__P2153
_proccall276:
    add sp, #4*1 ; pop locals 1
.lazy_8_28:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.4085      
.jmpz277:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .cont.4085      
.brk.4085:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_eqq
    add sp, #4*2 ; pop locals 2
    beq .else_10_28      
.jmpz278:
    movs r0, #14
    b .ret.2126      
.else_10_28:
.afterif_11_28:
    movs r0, #3
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0}; tmpstore @1
    mov r1, r0
    ldr r0, _ldlit_89 ; _str0      
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz279
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_28      
.jmpz279:
    ldr r0, _ldlit_90 ; _str1      
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz280
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_28      
.jmpz280:
    pop {r0} ; tmpref @1
    b .brk.4114      
.switch_12_28:
    movs r0, #1
    negs r0, r0
    str r0, [sp, locals@1]
    @stackempty locals
.switch_13_28:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
.brk.4114:
    ldr r0, [sp, args@1]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_16_28      
.jmpz281:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_15_28      
.lazySkip_16_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    movs r1, #33
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_15_28:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_18_28      
.jmpz282:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_17_28      
.lazySkip_18_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, _ldlit_91 ; _str2      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eqq
    add sp, #4*1 ; pop locals 1
.lazy_17_28:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_20_28      
.jmpz283:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_19_28      
.object PUSH
.balign 4
_ldlit_87:
 .word _img45
_ldlit_88:
 .word _img46
_ldlit_89:
 .word _str0
_ldlit_90:
 .word _str1
_ldlit_91:
 .word _str2
.object POP
.lazySkip_20_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, _ldlit_93 ; _str3      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eqq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_22_28      
.jmpz284:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_21_28      
.lazySkip_22_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, _ldlit_94 ; _str4      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eqq
    add sp, #4*1 ; pop locals 1
.lazy_21_28:
; jmp value (already in r0)
.lazy_19_28:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_14_28      
.jmpz285:
    movs r0, #33
    str r0, [sp, args@1]
    @stackempty locals
    ldr r0, [sp, locals@0]
    movs r1, #5
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .afterif_23_28      
.else_14_28:
    ldr r0, [sp, args@1]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_24_28      
.jmpz286:
    movs r0, #21
    str r0, [sp, args@1]
    @stackempty locals
.else_24_28:
.afterif_25_28:
.afterif_23_28:
    movs r0, #1
    str r0, [sp, locals@2]
    @stackempty locals
    movs r0, #10
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@0]
    str r0, [sp, locals@4]
    @stackempty locals
.fortop.4162:
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    bne .jmpz287
    b .brk.4162      
.jmpz287:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    movs r1, #65
    bl _numops_orrs
    str r0, [sp, locals@5]
    @stackempty locals
    movs r0, #0
    str r0, [sp, locals@6]
    @stackempty locals
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    movs r1, #97
    mov r7, sp
    str r7, [r6, #4]
    bl numops::ge
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_28_28      
.jmpz288:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_27_28      
.lazySkip_28_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    movs r1, #117
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
.lazy_27_28:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_26_28      
.jmpz289:
    ldr r0, [sp, locals@5]
    movs r1, #97
    bl _numops_subs
    str r0, [sp, locals@6]
    @stackempty locals
    b .afterif_29_28      
.else_26_28:
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    movs r1, #195
    mov r7, sp
    str r7, [r6, #4]
    bl numops::ge
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_32_28      
.jmpz290:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_31_28      
.lazySkip_32_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    movs r1, #247
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt
    add sp, #4*1 ; pop locals 1
.lazy_31_28:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_30_28      
.jmpz291:
    movs r0, #21
    ldr r1, [sp, locals@5]
    bl _numops_adds
    movs r1, #195
    bl _numops_subs
    str r0, [sp, locals@6]
    @stackempty locals
.else_30_28:
.afterif_33_28:
.afterif_29_28:
    ldr r0, [sp, locals@6]
    push {r0} ; proc-arg
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_36_28      
.jmpz292:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_35_28      
.lazySkip_36_28:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@6]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::ge
    add sp, #4*2 ; pop locals 2
.lazy_35_28:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_34_28      
.jmpz293:
    ldr r0, [sp, locals@3]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_37_28      
.jmpz294:
    movs r0, #14
    b .ret.2126      
.else_37_28:
.afterif_38_28:
    b .brk.4162      
.else_34_28:
.afterif_39_28:
    movs r0, #66
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    ldr r1, [sp, locals@6]
    bl _numops_adds
    str r0, [sp, locals@2]
    @stackempty locals
.cont.4162:
    ldr r0, [sp, locals@4]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@4]
    @stackempty locals
    b .fortop.4162      
.brk.4162:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
.ret.2126:
    @stackempty locals
.final_40_28:
    add sp, #4*7 ; pop locals 7
parseInt__P2126_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(505,5): helpers.isWhitespace
    ;
    .object helpers_isWhitespace__P2153 "core/pxt-helpers.ts(505,5): helpers.isWhitespace"
helpers_isWhitespace__P2153_pre:
    .section code
    .balign 4
    .section code
helpers_isWhitespace__P2153:
helpers_isWhitespace__P2153_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
helpers_isWhitespace__P2153_locals:
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @1
    mov r1, r0
    movs r0, #19
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz295
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_29      
.jmpz295:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz296
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_29      
.jmpz296:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz297
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_29      
.jmpz297:
    movs r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz298
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_29      
.jmpz298:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz299
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_29      
.jmpz299:
    ldr r0, _ldlit_95 ; 130559      
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz300
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_29      
.jmpz300:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz301
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_29      
.jmpz301:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz302
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_29      
.object PUSH
.balign 4
_ldlit_93:
 .word _str3
_ldlit_94:
 .word _str4
_ldlit_95:
 .word 130559
.object POP
.jmpz302:
    movs r0, #64
    lsls r0, r0, #8
    adds r0, #81
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz303
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_29      
.jmpz303:
    movs r0, #64
    lsls r0, r0, #8
    adds r0, #83
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz304
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_29      
.jmpz304:
    pop {r0} ; tmpref @1
    b .switch_10_29      
.switch_0_29:
.switch_1_29:
.switch_2_29:
.switch_3_29:
.switch_4_29:
.switch_5_29:
.switch_6_29:
.switch_7_29:
.switch_8_29:
.switch_9_29:
    movs r0, #66
    b .ret.2153      
.switch_10_29:
    movs r0, #10
    b .ret.2153      
.brk.4227:
    movs r0, #0
.ret.2153:
    @stackempty locals
.final_11_29:
helpers_isWhitespace__P2153_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(130,1): readEchoUs
    ;
    .object readEchoUs__P3068 "main.ts(130,1): readEchoUs"
readEchoUs__P3068_pre:
    .section code
    .balign 4
    .section code
readEchoUs__P3068:
readEchoUs__P3068_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
readEchoUs__P3068_locals:
    movs r0, #101
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl control::waitMicros
    @stackempty locals
    movs r0, #101
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    movs r0, #10
    mov r7, sp
    str r7, [r6, #4]
    bl control::waitMicros
    @stackempty locals
    movs r0, #101
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_22
    movs r0, #102
    movs r1, #4
    mov r7, sp
    str r7, [r6, #4]
    bl pins::pulseIn
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
.ret.3068:
    @stackempty locals
.final_0_30:
readEchoUs__P3068_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(74,1): readyLine
    ;
    .object readyLine__P3061 "main.ts(74,1): readyLine"
readyLine__P3061_pre:
    .section code
    .balign 4
    .section code
readyLine__P3061:
readyLine__P3061_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
readyLine__P3061_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #60]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_0_31      
.jmpz305:
    ldr r0, _ldlit_97 ; _str50      
    b .condexprfin_1_31      
.condexprz_0_31:
    ldr r0, _ldlit_98 ; _str51      
.condexprfin_1_31:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_2_31      
.jmpz306:
    ldr r0, _ldlit_99 ; _str53      
    b .condexprfin_3_31      
.condexprz_2_31:
    ldr r0, _ldlit_100 ; _str2      
.condexprfin_3_31:
; jmp value (already in r0)
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_101 ; _str49      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    movs r7, #0
    str r7, [sp, #4*1] ; estack
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_102 ; _str52      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; tmpref @2
    push {r0} ; proc-arg
    bl _conv_13
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*4 ; pop locals 4
.ret.3061:
    @stackempty locals
.final_4_31:
readyLine__P3061_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(69,1): line
    ;
    .object line__P3060 "main.ts(69,1): line"
line__P3060_pre:
    .section code
    .balign 4
    .section code
line__P3060:
line__P3060_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
line__P3060_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall307:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3060:
    @stackempty locals
    movs r0, #0
.final_0_32:
line__P3060_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/serial.ts(48,5): serial.writeLine
    ;
    .object serial_writeLine__P2799 "core/serial.ts(48,5): serial.writeLine"
serial_writeLine__P2799_pre:
    .section code
    .balign 4
    .section code
serial_writeLine__P2799:
serial_writeLine__P2799_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
serial_writeLine__P2799_locals:
    ldr r0, [sp, args@0]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    mov r7, sp
    str r7, [r6, #4]
    bl Boolean_::bang
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::fromBool
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_33      
.jmpz308:
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    str r0, [sp, args@0]
    @stackempty locals
.else_0_33:
.afterif_1_33:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #64]
    movs r1, #1
    bl _cmp_gt
    beq .else_2_33      
.jmpz309:
    ldr r7, [r6, #0]
    ldr r0, [r7, #64]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #68]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #64]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_subs
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #64]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.4295:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@0]
    bl _cmp_lt
    beq .brk.4295      
.jmpz310:
    ldr r0, _ldlit_103 ; _str48      
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    @stackempty locals
.cont.4295:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.4295      
.brk.4295:
.else_2_33:
.afterif_3_33:
    ldr r7, [r6, #0]
    ldr r0, [r7, #68]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.2799:
    @stackempty locals
    movs r0, #0
.final_4_33:
    add sp, #4*2 ; pop locals 2
serial_writeLine__P2799_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(493,5): helpers.stringTrim
    ;
    .object helpers_stringTrim__P2152 "core/pxt-helpers.ts(493,5): helpers.stringTrim"
helpers_stringTrim__P2152_pre:
    .section code
    .balign 4
    .section code
helpers_stringTrim__P2152:
helpers_stringTrim__P2152_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
helpers_stringTrim__P2152_locals:
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    movs r1, #3
    bl _numops_subs
    str r0, [sp, locals@1]
    @stackempty locals
.cont.4315:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::le
    add sp, #4*2 ; pop locals 2
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_1_34      
.jmpz311:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_0_34      
.lazySkip_1_34:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl helpers_isWhitespace__P2153
_proccall312:
    add sp, #4*1 ; pop locals 1
.lazy_0_34:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.4315      
.jmpz313:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .cont.4315      
.brk.4315:
.cont.4328:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*2 ; pop locals 2
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_3_34      
.jmpz314:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_2_34      
.lazySkip_3_34:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl helpers_isWhitespace__P2153
_proccall315:
    add sp, #4*1 ; pop locals 1
.lazy_2_34:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.4328      
.jmpz316:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_subs
    str r0, [sp, locals@1]
    @stackempty locals
    b .cont.4328      
.brk.4328:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    pop {r1, r2, r3}
    push {r1}
    push {r2}
    push {r3}
    bl helpers_stringSlice__P2148
_proccall317:
    add sp, #4*3 ; pop locals 3
.ret.2152:
    @stackempty locals
.final_4_34:
    add sp, #4*2 ; pop locals 2
helpers_stringTrim__P2152_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(386,5): helpers.stringSlice
    ;
    .object helpers_stringSlice__P2148 "core/pxt-helpers.ts(386,5): helpers.stringSlice"
helpers_stringSlice__P2148_pre:
    .section code
    .balign 4
    .section code
helpers_stringSlice__P2148:
helpers_stringSlice__P2148_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
helpers_stringSlice__P2148_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@1]
    movs r1, #1
    bl _cmp_lt
    beq .else_0_35      
.jmpz318:
    ldr r0, [sp, locals@0]
    ldr r1, [sp, args@1]
    bl _numops_adds
    mov r3, r0
    movs r0, #1
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl Math_max__P2159
_proccall319:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, args@1]
    @stackempty locals
.else_0_35:
.afterif_1_35:
    ldr r0, [sp, args@2]
    movs r1, #0
    bl _cmp_eqq
    beq .else_2_35      
.jmpz320:
    ldr r0, [sp, locals@0]
    str r0, [sp, args@2]
    @stackempty locals
    b .afterif_3_35      
.else_2_35:
    ldr r0, [sp, args@2]
    movs r1, #6
    bl _cmp_eqq
    beq .else_4_35      
.jmpz321:
    movs r0, #1
    str r0, [sp, args@2]
    @stackempty locals
    b .afterif_5_35      
.object PUSH
.balign 4
_ldlit_97:
 .word _str50
_ldlit_98:
 .word _str51
_ldlit_99:
 .word _str53
_ldlit_100:
 .word _str2
_ldlit_101:
 .word _str49
_ldlit_102:
 .word _str52
_ldlit_103:
 .word _str48
.object POP
.else_4_35:
.afterif_5_35:
.afterif_3_35:
    ldr r0, [sp, args@2]
    movs r1, #1
    bl _cmp_lt
    beq .else_6_35      
.jmpz322:
    ldr r0, [sp, locals@0]
    ldr r1, [sp, args@2]
    bl _numops_adds
    str r0, [sp, args@2]
    @stackempty locals
.else_6_35:
.afterif_7_35:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    ldr r1, [sp, args@1]
    bl _numops_subs
    push {r0} ; proc-arg
    bl _conv_20
    mov r7, sp
    str r7, [r6, #4]
    bl String_::substr
    add sp, #4*3 ; pop locals 3
.ret.2148:
    @stackempty locals
.final_8_35:
    add sp, #4*1 ; pop locals 1
helpers_stringSlice__P2148_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(560,5): Math.max
    ;
    .object Math_max__P2159 "core/pxt-helpers.ts(560,5): Math.max"
Math_max__P2159_pre:
    .section code
    .balign 4
    .section code
Math_max__P2159:
Math_max__P2159_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Math_max__P2159_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    bl _cmp_ge
    beq .else_0_36      
.jmpz323:
    ldr r0, [sp, args@0]
    b .ret.2159      
.else_0_36:
.afterif_1_36:
    ldr r0, [sp, args@1]
.ret.2159:
    @stackempty locals
.final_2_36:
Math_max__P2159_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    .object _pxt_helper_trampoline "helper: trampoline"
    .section code
_pxt_lambda_trampoline:
    push { r4, r5, r6, r7, lr}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4, r5, r6, r7} ; save high registers
    mov r4, r1
    mov r5, r2
    mov r6, r3
    mov r7, r0
    bl _inst_builtin4_validate_1
    mov r0, sp
    push {r4, r5, r6, r7} ; push args and the lambda
    mov r1, sp
    bl pxt::pushThreadContext
    mov r6, r0          ; save ctx or globals
    mov r5, r7          ; save lambda for closure
    mov r0, r5          ; also save lambda pointer in r0 - needed by pxt::bindMethod
    ldr r1, [r5, #8]    ; ld fnptr
    movs r4, #3         ; 3 args
    blx r1              ; execute the actual lambda
    mov r7, r0          ; save result
    @dummystack 4
    add sp, #4*4        ; remove arguments and lambda
    mov r0, r6   ; or pop the thread context
    bl pxt::popThreadContext
    mov r0, r7 ; restore result
    pop {r4, r5, r6, r7} ; restore high registers
    mov r8, r4
    mov r9, r5
    mov r10, r6
    mov r11, r7
    pop { r4, r5, r6, r7, pc}
    .object _pxt_helper_exn "helper: exn"
    .section code
; r0 - try frame
; r1 - handler PC
_pxt_save_exception_state:
    push {r0, lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::beginTry
    pop {r1, r4}
    str r1, [r0, #1*4] ; PC
    mov r1, sp
    str r1, [r0, #2*4] ; SP
    str r5, [r0, #3*4] ; lambda ptr
    bx r4
    .section code
; r0 - try frame
; r1 - thread context
_pxt_restore_exception_state:
    mov r6, r1
    ldr r1, [r0, #2*4] ; SP
    mov sp, r1
    ldr r5, [r0, #3*4] ; lambda ptr
    ldr r1, [r0, #1*4] ; PC
    movs r0, #1
    orrs r1, r0
    bx r1
    .object _pxt_helper_stringconv "helper: stringconv"
    .section code
_pxt_stringConv:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #1
    bne .notstring
    bx lr
.notstring:
    ldr r7, [r3, #4*8]
    cmp r7, #0
    beq .fail
    push {r0, lr}
    movs r4, #1
    blx r7
    str r0, [sp, #0]
    b .numops
.fail:
    push {r0, lr}
.numops:
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toString
    pop {r1, pc}      
    .object _pxt_helper_get_buffer "helper: get buffer"
    .section code
_pxt_buffer_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    ldrb r0, [r4, #8]
    lsls r0, r0, #1
    adds r0, #1
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    lsls r0, r0, #1
    adds r0, #1
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #1 ; 0 or undefined
    bx lr
    .object _pxt_helper_get_array "helper: get array"
    .section code
_pxt_array_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    ldr r0, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #0 ; 0 or undefined
    bx lr
    .object _pxt_helper_set_buffer "helper: set buffer"
    .section code
_pxt_buffer_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    strb r2, [r4, #8]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_set_array "helper: set array"
    .section code
_pxt_array_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    str r2, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_get "helper: get"
    .section code
_pxt_map_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapGetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*1 ; pop locals 1
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    movs r0, #0 ; undefined
    bx lr
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check if it's getter
    ldrh r7, [r3, #2]
    cmp r7, #1
    bne .bind
    movs r4, #1
    bx r2
.bind:
    mov r4, lr
    bl _pxt_bind_helper
.field:
    ldr r0, [r0, r2] ; load field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_set "helper: set"
    .section code
_pxt_map_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapSetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, r2, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*2 ; pop locals 2
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    bne .fail2      
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check for next descriptor
    ldrh r7, [r3, #8]
    cmp r7, r1
    bne .fail2 ; no setter!
    ldr r2, [r3, #12]
    movs r4, #2
    bx r2
.field:
    ldr r3, [sp, #4] ; ld-val
    str r3, [r0, r2] ; store field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_bind "helper: bind"
    .section code
_pxt_bind_helper:
    push {r0, r2}
    movs r0, #2
    ldr r1, _ldlit_105 ; _pxt_bind_lit      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkAction
    pop {r1, r2}
    str r1, [r0, #12]
    str r2, [r0, #16]
    bx r4 ; return
_pxt_bind_lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word .bindCode@fn
.bindCode:
; r0-bind object, r4-#args
    cmp r4, #12
    bge .fail
    lsls r3, r4, #2
    ldr r2, _ldlit_106 ; _pxt_copy_list      
    ldr r1, [r2, r3]
    ldr r3, [r0, #12]
    ldr r2, [r0, #16]
    adds r4, r4, #1
    bx r1
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
_pxt_copy_list:
    .word _pxt_bind_0@fn
    .word _pxt_bind_1@fn
    .word _pxt_bind_2@fn
    .word _pxt_bind_3@fn
    .word _pxt_bind_4@fn
    .word _pxt_bind_5@fn
    .word _pxt_bind_6@fn
    .word _pxt_bind_7@fn
    .word _pxt_bind_8@fn
    .word _pxt_bind_9@fn
    .word _pxt_bind_10@fn
    .word _pxt_bind_11@fn
_pxt_bind_0:
    sub sp, #4
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*1] ; store LR
    blx r2
    ldr r1, [sp, #4*1]
    add sp, #8
    bx r1
_pxt_bind_1:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*2] ; store LR
    blx r2
    ldr r1, [sp, #4*2]
    add sp, #8
    bx r1
_pxt_bind_2:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*3] ; store LR
    blx r2
    ldr r1, [sp, #4*3]
    add sp, #8
    bx r1
_pxt_bind_3:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*4] ; store LR
    blx r2
    ldr r1, [sp, #4*4]
    add sp, #8
    bx r1
_pxt_bind_4:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*5] ; store LR
    blx r2
    ldr r1, [sp, #4*5]
    add sp, #8
    bx r1
_pxt_bind_5:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*6] ; store LR
    blx r2
    ldr r1, [sp, #4*6]
    add sp, #8
    bx r1
_pxt_bind_6:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*7] ; store LR
    blx r2
    ldr r1, [sp, #4*7]
    add sp, #8
    bx r1
_pxt_bind_7:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*8] ; store LR
    blx r2
    ldr r1, [sp, #4*8]
    add sp, #8
    bx r1
_pxt_bind_8:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*9] ; store LR
    blx r2
    ldr r1, [sp, #4*9]
    add sp, #8
    bx r1
_pxt_bind_9:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*10] ; store LR
    blx r2
    ldr r1, [sp, #4*10]
    add sp, #8
    bx r1
_pxt_bind_10:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*11] ; store LR
    blx r2
    ldr r1, [sp, #4*11]
    add sp, #8
    bx r1
_pxt_bind_11:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    ldr r1, [sp, #4*11]
    str r1, [sp, #4*10]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*12] ; store LR
    blx r2
    ldr r1, [sp, #4*12]
    add sp, #8
    bx r1
_code_end:
    .section code
    .object _code_helper__conv_0
_conv_0:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin4_validate_1
_inst_builtin4_validate_1:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_2
_conv_2:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin4_validate_1
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_3
_conv_3:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin4_validate_1
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_4
_conv_4:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin4_validate_1
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_5
_conv_5:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_6
_conv_6:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_7
_conv_7:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__inst_builtin6_validate_8
_inst_builtin6_validate_8:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #6
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_9
_conv_9:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin6_validate_8
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_10
_conv_10:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    mov r2, r0      
    ldr r0, [sp, #4*3] ; estack
    ldr r1, [sp, #4*2] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin3_validate_11
_inst_builtin3_validate_11:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #3
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_12
_conv_12:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_11
    mov r1, r0      
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_13
_conv_13:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    mov r1, r0      
    pop {r0, pc}      
.object PUSH
.balign 4
_ldlit_105:
 .word _pxt_bind_lit
_ldlit_106:
 .word _pxt_copy_list
.object POP
    @stackempty args
    .section code
    .object _code_helper__conv_14
_conv_14:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0}
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_15
_conv_15:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_11
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_16
_conv_16:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_11
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0}
    ldr r3, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_17
_conv_17:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_11
    mov r1, r0      
    pop {r0}
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin9_validate_18
_inst_builtin9_validate_18:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #9
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
    .section code
    .object _code_helper__conv_19
_conv_19:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin9_validate_18
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r2, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_20
_conv_20:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*3] ; estack
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    push {r0}
    ldr r0, [sp, #4*3] ; estack
    asrs r0, r0, #1
    bcs .isint3
    lsls r0, r0, #1
    bl _numops_toInt
.isint3:
    mov r2, r0      
    pop {r1}
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_21
_conv_21:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_22
_conv_22:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    mov r2, r0      
    pop {pc}
    @stackempty args
_numops_adds:
    @scope _numops_adds
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    adds r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::adds
                    add sp, #8
                    pop {pc}
_numops_subs:
    @scope _numops_subs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    subs r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::subs
                    add sp, #8
                    pop {pc}
_numops_ands:
    @scope _numops_ands
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ands r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::ands
                    add sp, #8
                    pop {pc}
_numops_orrs:
    @scope _numops_orrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    orrs r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::orrs
                    add sp, #8
                    pop {pc}
_numops_eors:
    @scope _numops_eors
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    eors r0, r1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::eors
                    add sp, #8
                    pop {pc}
_numops_lsls:
    @scope _numops_lsls
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsls r2, r3
    lsrs r3, r2, #30
    beq .ok
    cmp r3, #3
    bne .boxed
.ok:
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsls
                    add sp, #8
                    pop {pc}
_numops_lsrs:
    @scope _numops_lsrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsrs r2, r3
    lsrs r3, r2, #30
    bne .boxed
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsrs
                    add sp, #8
                    pop {pc}
_numops_asrs:
    @scope _numops_asrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r0, r3
    movs r2, #1
    orrs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::asrs
                    add sp, #8
                    pop {pc}
@scope _numops_toInt
_numops_toInt:
    asrs r0, r0, #1
    bcc .over
    blx lr
.over:
    lsls r0, r0, #1
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::toInt
pop {pc}
_numops_fromInt:
    lsls r2, r0, #1
    asrs r1, r2, #1
    cmp r0, r1
    bne .over2
    adds r0, r2, #1
    blx lr
.over2:
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::fromInt
pop {pc}
.section code
.object _pxt_helper_cmp_lt
_cmp_lt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    blt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::lt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_gt
_cmp_gt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bgt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::gt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_le
_cmp_le:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    ble .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::le
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_ge
_cmp_ge:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bge .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::ge
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eq
_cmp_eq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eqq
_cmp_eqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neq
_cmp_neq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neqq
_cmp_neqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_switch_eq
_pxt_switch_eq:
    @scope _pxt_switch_eq
    lsls r2, r0, #31    ; arg0 a tagged int? (low bit set)
    beq .boxed
    lsls r2, r1, #31    ; arg1 a tagged int?
    beq .boxed
    cmp r0, r1          ; tagged ints compare equal iff identical
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl pxt::switch_eq
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_array_length_tagged
_pxt_array_length_tagged:
    @scope _pxt_array_length_tagged
    lsls r1, r0, #30    ; pointer? (low 2 bits 00)
    bne .boxed
    cmp r0, #0          ; non-null?
    beq .boxed
    ldr r2, [r0, #0]    ; load vtable
    ldrh r2, [r2, #8]   ; vtable class id
    cmp r2, #6
    bne .boxed
    ldrh r0, [r0, #8]   ; length field
    lsls r0, r0, #1     ; tag as int: (n<<1)|1
    adds r0, r0, #1
    bx lr
.boxed:
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
bl Array_::length
    bl _numops_fromInt
    pop {pc}
_helpers_end:
.balign 4
.object _pxt_iface_member_names
_pxt_iface_member_names:
    .word 1
    .word _str324  ; 0 .
    .word 0
_vtables_end:
.balign 4
.object _pxt_config_data
_pxt_config_data:
    .word 0
.balign 4
_img5:
 .short 0xffff
        .short 5, 5
        .byte 0,255,0,255,0,255,255,255,255,255,255,255,255,255,255,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img6:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,255,255,255,0,0,0,255,0,0,0,0,0,0,0,0
.balign 4
_img7:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,0,0,0,0,255,0,0,0,255,0,255,255,255,0,0
.balign 4
_img8:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,0,0,0,0,0,255,255,255,0,255,0,0,0,255,0
.balign 4
_img9:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,0,0,0,0,0,255,0,255,0,255,0,255,0,255,0
.balign 4
_img10:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,255,0,255,0,0,0,0,0,0,255,255,255,255,255,255,0,255,0,255,0
.balign 4
_img11:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,255,255,0,255,255,0,0,0,0,0,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img12:
 .short 0xffff
        .short 5, 5
        .byte 0,255,0,255,0,0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,0,0,255,0,0,0
.balign 4
_img13:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,0,0,0,0,255,255,255,255,255,0,0,0,255,255,0,0,0,255,255,0
.balign 4
_img14:
 .short 0xffff
        .short 5, 5
        .byte 255,255,255,255,255,255,255,0,255,255,0,0,0,0,0,0,255,0,255,0,0,255,255,255,0,0
.balign 4
_img15:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,255,255,0,0,0,0,0,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,0
.balign 4
_img16:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0,0
.balign 4
_img17:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0
.balign 4
_img18:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,255,255,255,255,255,0,0,0,0,0,0
.balign 4
_img19:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,0,255,255,0,0,0,255,0,255,0,0,255,0,0,255,0,255,255,255,255,255,0
.balign 4
_img20:
 .short 0xffff
        .short 5, 5
        .byte 0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,0
.balign 4
_img21:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0
.balign 4
_img22:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,0,0,255,0,0,0,0,0,0,0,0
.balign 4
_img23:
 .short 0xffff
        .short 5, 5
        .byte 255,255,255,255,255,255,0,0,0,255,255,0,0,0,255,255,0,0,0,255,255,255,255,255,255,0
.balign 4
_img24:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,255,255,0,0,255,0,255,0,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img25:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,0,255,255,255,0,255,0,0,0,255,0,0,255,255,0,255,0,255,255,0,0,255,0
.balign 4
_img26:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,255,255,255,255,255,255,255,0,255,255,255,0,0,255,255,255,0,0,255,255,255,0,0
.balign 4
_img27:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,255,255,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,0,255,0,255,0,0
.balign 4
_img28:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,0,0,255,255,255,0,0,0,255,255,255,255,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img29:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,255,255,255,0,255,255,255,255,255,0,255,255,255,0,0,255,0,255,0,0
.balign 4
_img30:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,255,255,0,255,255,255,255,255,0,255,0,255,0,0,0,0,0,0,0
.balign 4
_img31:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,255,255,255,255,255,255,255,0,0,255,0,0,255,255,255,255,255,255,255,0,255,255,0
.balign 4
_img32:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,255,255,255,255,255,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0
.balign 4
_img33:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,0,255,0,255,255,255,255,255,255,255,255,255,255,255,255,0,255,0,255,0
.balign 4
_img34:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,0,0,0,0,255,0,0,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img35:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,0,0,0,255,0,0,0,0,255,0,0,0,0,255,255,255,0,0,255,0,255,0,0
.balign 4
_img36:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,0,255,0,255,255,255,255,255,255,0,255,255,255,0,0,255,255,255,0,0
.balign 4
_img37:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,255,255,255,255,0,0,255,0,0,255,0,255,0,0,255,255,255,0,0,0
.balign 4
_img38:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,0,0,255,255,0,255,255,0,255,0,255,0,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img39:
 .short 0xffff
        .short 5, 5
        .byte 255,0,255,0,0,255,0,255,0,0,255,255,255,255,0,255,255,0,255,0,255,255,255,255,0,0
.balign 4
_img40:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,255,0,0,0,255,255,255,255,255,255,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img41:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,0,0,0,0,255,0,0,255,255,255,0,0,255,255,255,0,0,0
.balign 4
_img42:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,255,0,0,0,255,0,255,255,255,255,0,0,255,255,255,0,0,0
.balign 4
_img43:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,255,0,0,0,255,0,255,255,255,255,0,0,255,255,255,0,0,0
.balign 4
_img44:
 .short 0xffff
        .short 5, 5
        .byte 255,0,255,0,255,255,0,255,0,255,255,255,255,255,255,0,0,255,0,0,0,0,255,0,0,0
.balign 4
_img45:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,255,255,255,0,255,255,0,255,255,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img46:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            .balign 4
            .object _str324
_str324:
 .word pxt::string_inline_ascii_vt
    .short 0
    .string ""
            .balign 4
            .object _str2
_str2:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "0"
            .balign 4
            .object _str53
_str53:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "1"
            .balign 4
            .object _str0
_str0:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "-"
            .balign 4
            .object _str1
_str1:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "+"
            .balign 4
            .object _str3
_str3:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "x"
            .balign 4
            .object _str4
_str4:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "X"
            .balign 4
            .object _str47
_str47:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "\x0d\n"
            .balign 4
            .object _str48
_str48:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string " "
            .balign 4
            .object _str49
_str49:
 .word pxt::string_inline_ascii_vt
    .short 14
    .string "SYS:READY,PCA="
            .balign 4
            .object _str50
_str50:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "OK"
            .balign 4
            .object _str51
_str51:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "ERR"
            .balign 4
            .object _str52
_str52:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string ",ALARM="
            .balign 4
            .object _str54
_str54:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "ALARM:1"
            .balign 4
            .object _str55
_str55:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "ALARM:0"
            .balign 4
            .object _str56
_str56:
 .word pxt::string_inline_ascii_vt
    .short 9
    .string "SYS:SWEEP"
            .balign 4
            .object _str57
_str57:
 .word pxt::string_inline_ascii_vt
    .short 10
    .string "SYS:PAUSED"
            .balign 4
            .object _str58
_str58:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "SYS:PARK"
            .balign 4
            .object _str59
_str59:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "SYS:TEST"
            .balign 4
            .object _str60
_str60:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "N:"
            .balign 4
            .object _str61
_str61:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "A:"
            .balign 4
            .object _str62
_str62:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string ",D:"
            .balign 4
            .object _str63
_str63:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "bar0"
            .balign 4
            .object _str64
_str64:
 .word pxt::string_inline_ascii_vt
    .short 5
    .string "alarm"
            .balign 4
            .object _str65
_str65:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "bar"
            .balign 4
            .object _str66
_str66:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "ACK:"
            .balign 4
            .object _str67
_str67:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "s"
            .balign 4
            .object _str68
_str68:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "S"
            .balign 4
            .object _str69
_str69:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "p"
            .balign 4
            .object _str70
_str70:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "P"
            .balign 4
            .object _str71
_str71:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "c"
            .balign 4
            .object _str72
_str72:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "C"
            .balign 4
            .object _str73
_str73:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "w"
            .balign 4
            .object _str74
_str74:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "W"
            .balign 4
            .object _str75
_str75:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "i"
            .balign 4
            .object _str76
_str76:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "I"
            .balign 4
            .object _str77
_str77:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "d"
            .balign 4
            .object _str78
_str78:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "D"
            .balign 4
            .object _str79
_str79:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "DIAG:US="
            .balign 4
            .object _str80
_str80:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "t"
            .balign 4
            .object _str81
_str81:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "T"
            .balign 4
            .object _str82
_str82:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "K:"
            .balign 4
            .object _str83
_str83:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "sentinel"
.balign 4
.section code
.object _perf_counters
_pxt_perf_counters:
    .word 0
_literals_end:
