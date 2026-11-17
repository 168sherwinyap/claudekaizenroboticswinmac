; Interface tables: 0/0 (NaN%)
; Virtual methods: 0 / 0
; generated code sizes (bytes): 13060 (incl. 10066 user, 1246 helpers, 12 vtables, 1736 lits); src size 0
; assembly: 8891 lines; density: 33.89 bytes/stmt; (297 stmts)
; total bytes: 229124 (94.4% of 237.0k flash with 13564 free)
; peep hole pass: 227 instructions removed and 414 updated
; peep hole pass: 97 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x34c00
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 2C50F19B0E437906 ; hex template hash
    .hex 873266330af9dbdb ; replaced in binary by program hash
    .short 12   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word _pxt_restore_exception_state@fn
    .word _str76 ; name
    ;
; Function main.ts(1,1): <main>
    ;
    .object _main___P3052 "main.ts(1,1): <main>"
_main___P3052_pre:
    .section code
    .balign 4
_main___P3052_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P3052_args@fn
_main___P3052_args:
    .section code
_main___P3052:
_main___P3052_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_main___P3052_locals:
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #4]
    @stackempty locals
    ldr r0, _ldlit_2 ; _str47      
    ldr r7, [r6, #0]
    str r0, [r7, #44]
    @stackempty locals
    movs r0, #65
    ldr r7, [r6, #0]
    str r0, [r7, #40]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #8]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #77
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #85
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #93
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #101
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #109
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #36]
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
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #32]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #10
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #10
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #10
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #10
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #10
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #28]
    @stackempty locals
    movs r0, #10
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    movs r0, #1
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    movs r0, #21
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::fromCharCode
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, _ldlit_3 ; inline__P3297_Lit      
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl serial::onDataReceived
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, _ldlit_4 ; inline__P3367_Lit      
    push {r0} ; proc-arg
    bl _conv_3
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_5 ; inline__P3378_Lit      
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
_proccall77:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #75
    lsls r0, r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    bl pcaInit__P3042
_proccall78:
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.fortop.3387:
    ldr r0, [sp, locals@0]
    movs r1, #11
    bl _cmp_lt
    beq .brk.3387      
.jmpz79:
    movs r0, #1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl writeChannel__P3043
_proccall80:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.cont.3387:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .fortop.3387      
.brk.3387:
    movs r0, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    ldr r0, _ldlit_6 ; inline__P3398_Lit      
    push {r0} ; proc-arg
    bl _conv_4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::forever
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3052:
    @stackempty locals
    movs r0, #0
.final_0_1:
    add sp, #4*1 ; pop locals 1
_main___P3052_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(192,62): inline
    ;
    .object inline__P3297 "main.ts(192,62): inline"
inline__P3297_pre:
    .section code
    .balign 4
inline__P3297_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3297_args@fn
inline__P3297_args:
    .section code
inline__P3297:
inline__P3297_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
inline__P3297_locals:
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
_proccall81:
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
.jmpz82:
    b .ret.3297      
.else_0_2:
.afterif_1_2:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_7 ; _str69      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl line__P3039
_proccall83:
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
    ldr r0, [sp, locals@0]
    ldr r1, _ldlit_8 ; _str70      
    bl _cmp_eq
    beq .else_2_2      
.jmpz84:
    movs r0, #1
    push {r0} ; proc-arg
    bl setAll__P3047
_proccall85:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_3_2      
.else_2_2:
    ldr r0, [sp, locals@0]
    ldr r1, _ldlit_9 ; _str71      
    bl _cmp_eq
    beq .else_4_2      
.jmpz86:
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .condexprz_5_2      
.jmpz87:
    ldr r0, _ldlit_10 ; _str73      
    b .condexprfin_6_2      
.condexprz_5_2:
    ldr r0, _ldlit_11 ; _str74      
.condexprfin_6_2:
; jmp value (already in r0)
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_12 ; _str72      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl line__P3039
_proccall88:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_7_2      
.else_4_2:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r1, _ldlit_13 ; _str66      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_10_2      
.jmpz89:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_9_2      
.lazySkip_10_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #2
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r1, _ldlit_14 ; _str75      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_9_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    bne .jmpz90
    b .else_8_2      
.object PUSH
.balign 4
_ldlit_2:
 .word _str47
_ldlit_3:
 .word inline__P3297_Lit
_ldlit_4:
 .word inline__P3367_Lit
_ldlit_5:
 .word inline__P3378_Lit
_ldlit_6:
 .word inline__P3398_Lit
_ldlit_7:
 .word _str69
_ldlit_8:
 .word _str70
_ldlit_9:
 .word _str71
_ldlit_10:
 .word _str73
_ldlit_11:
 .word _str74
_ldlit_12:
 .word _str72
_ldlit_13:
 .word _str66
_ldlit_14:
 .word _str75
.object POP
.jmpz90:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*1 ; pop locals 1
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall91:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@2]
    @stackempty locals
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #7
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl helpers_stringSubstr__P2147
_proccall92:
    add sp, #4*3 ; pop locals 3
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall93:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    movs r1, #3
    mov r7, sp
    str r7, [r6, #4]
    bl numops::ge
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_13_2      
.jmpz94:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_12_2      
.lazySkip_13_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::le
    add sp, #4*1 ; pop locals 1
.lazy_12_2:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_15_2      
.jmpz95:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_14_2      
.lazySkip_15_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::ge
    add sp, #4*1 ; pop locals 1
.lazy_14_2:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_17_2      
.jmpz96:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_16_2      
.lazySkip_17_2:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #105
    mov r7, sp
    str r7, [r6, #4]
    bl numops::le
    add sp, #4*1 ; pop locals 1
.lazy_16_2:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_11_2      
.jmpz97:
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    bl setAngle__P3046
_proccall98:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.else_11_2:
.afterif_18_2:
.else_8_2:
.afterif_19_2:
.afterif_7_2:
.afterif_3_2:
.ret.3297:
    @stackempty locals
    movs r0, #0
.final_20_2:
    add sp, #4*4 ; pop locals 4
inline__P3297_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(210,33): inline
    ;
    .object inline__P3367 "main.ts(210,33): inline"
inline__P3367_pre:
    .section code
    .balign 4
inline__P3367_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3367_args@fn
inline__P3367_args:
    .section code
inline__P3367:
inline__P3367_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3367_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    movs r1, #9
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
.ret.3367:
    @stackempty locals
    movs r0, #0
.final_0_3:
inline__P3367_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(215,33): inline
    ;
    .object inline__P3378 "main.ts(215,33): inline"
inline__P3378_pre:
    .section code
    .balign 4
inline__P3378_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3378_args@fn
inline__P3378_args:
    .section code
inline__P3378:
inline__P3378_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3378_locals:
    movs r0, #1
    push {r0} ; proc-arg
    bl setAll__P3047
_proccall99:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3378:
    @stackempty locals
    movs r0, #0
.final_0_4:
inline__P3378_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(226,15): inline
    ;
    .object inline__P3398 "main.ts(226,15): inline"
inline__P3398_pre:
    .section code
    .balign 4
inline__P3398_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3398_args@fn
inline__P3398_args:
    .section code
inline__P3398:
inline__P3398_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
inline__P3398_locals:
    bl applyOneServo__P3045
_proccall100:
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl control::millis
    bl _numops_fromInt
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    ldr r1, [r7, #24]
    bl _numops_subs
    movs r1, #201
    bl _cmp_ge
    beq .else_0_5      
.jmpz101:
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    bl emitTelemetry__P3049
_proccall102:
    @stackempty locals
.else_0_5:
.afterif_1_5:
    bl updateDisplay__P3051
_proccall103:
    @stackempty locals
    movs r0, #15
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
.ret.3398:
    @stackempty locals
    movs r0, #0
.final_2_5:
    add sp, #4*1 ; pop locals 1
inline__P3398_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(154,1): updateDisplay
    ;
    .object updateDisplay__P3051 "main.ts(154,1): updateDisplay"
updateDisplay__P3051_pre:
    .section code
    .balign 4
    .section code
updateDisplay__P3051:
updateDisplay__P3051_nochk:
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
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
updateDisplay__P3051_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    movs r1, #1
    bl _cmp_eq
    beq .else_0_6      
.jmpz104:
    mov r7, sp
    str r7, [r6, #4]
    bl input::soundLevel
    bl _numops_fromInt
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_0
    movs r1, #1
    lsls r1, r1, #8
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_16 ; _str61      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    b .afterif_1_6      
.else_0_6:
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    movs r1, #3
    bl _cmp_eq
    beq .else_2_6      
.jmpz105:
    mov r7, sp
    str r7, [r6, #4]
    bl input::lightLevel
    bl _numops_fromInt
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_0
    movs r1, #1
    lsls r1, r1, #8
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_17 ; _str62      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    b .afterif_3_6      
.else_2_6:
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    movs r1, #5
    bl _cmp_eq
    beq .else_4_6      
.jmpz106:
    bl magLevel__P3050
_proccall107:
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_18 ; _str63      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    b .afterif_5_6      
.else_4_6:
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::rotation
    bl _numops_fromInt
    str r0, [sp, locals@1]
    @stackempty locals
    movs r0, #0
    mov r7, sp
    str r7, [r6, #4]
    bl input::rotation
    bl _numops_fromInt
    str r0, [sp, locals@2]
    @stackempty locals
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    movs r1, #91
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*1 ; pop locals 1
    mov r1, r0
    movs r0, #5
    bl _numops_adds
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::round
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    movs r1, #91
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*1 ; pop locals 1
    mov r1, r0
    movs r0, #5
    bl _numops_subs
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::round
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@4]
    @stackempty locals
    ldr r0, [sp, locals@3]
    movs r1, #1
    bl _cmp_lt
    beq .else_6_6      
.jmpz108:
    movs r0, #1
    str r0, [sp, locals@3]
    @stackempty locals
.else_6_6:
.afterif_7_6:
    ldr r0, [sp, locals@3]
    movs r1, #9
    bl _cmp_gt
    beq .else_8_6      
.jmpz109:
    movs r0, #9
    str r0, [sp, locals@3]
    @stackempty locals
.else_8_6:
.afterif_9_6:
    ldr r0, [sp, locals@4]
    movs r1, #1
    bl _cmp_lt
    beq .else_10_6      
.jmpz110:
    movs r0, #1
    str r0, [sp, locals@4]
    @stackempty locals
.else_10_6:
.afterif_11_6:
    ldr r0, [sp, locals@4]
    movs r1, #9
    bl _cmp_gt
    beq .else_12_6      
.jmpz111:
    movs r0, #9
    str r0, [sp, locals@4]
    @stackempty locals
.else_12_6:
.afterif_13_6:
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_19 ; _str64      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_20 ; _str65      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@0]
    @stackempty locals
.afterif_5_6:
.afterif_3_6:
.afterif_1_6:
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    ldr r1, [r7, #20]
    bl _cmp_eq
    beq .else_14_6      
.jmpz112:
    b .ret.3051      
.else_14_6:
.afterif_15_6:
    ldr r0, [sp, locals@0]
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl basic::clearScreen
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r1, _ldlit_21 ; _str66      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_18_6      
.jmpz113:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_17_6      
.lazySkip_18_6:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r1, _ldlit_22 ; _str67      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_17_6:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_20_6      
.jmpz114:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_19_6      
.lazySkip_20_6:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_5
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r1, _ldlit_23 ; _str68      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_19_6:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_16_6      
.jmpz115:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #7
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl helpers_stringSubstr__P2147
_proccall116:
    add sp, #4*3 ; pop locals 3
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall117:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@5]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@6]
    @stackempty locals
.fortop.3518:
    ldr r0, [sp, locals@6]
    ldr r1, [sp, locals@5]
    bl _cmp_lt
    beq .brk.3518      
.jmpz118:
    movs r0, #9
    ldr r1, [sp, locals@6]
    bl _numops_subs
    push {r0} ; proc-arg
    bl _conv_8
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl led::plot
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.cont.3518:
    ldr r0, [sp, locals@6]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@6]
    @stackempty locals
    b .fortop.3518      
.brk.3518:
    b .ret.3051      
    b .afterif_21_6      
.object PUSH
.balign 4
_ldlit_16:
 .word _str61
_ldlit_17:
 .word _str62
_ldlit_18:
 .word _str63
_ldlit_19:
 .word _str64
_ldlit_20:
 .word _str65
_ldlit_21:
 .word _str66
_ldlit_22:
 .word _str67
_ldlit_23:
 .word _str68
.object POP
.else_16_6:
.afterif_21_6:
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #5
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl helpers_stringSubstr__P2147
_proccall119:
    add sp, #4*3 ; pop locals 3
    str r0, [sp, locals@7]
    @stackempty locals
    ldr r0, [sp, locals@7]
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_25 ; _str65      
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl String_::indexOf
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@8]
    @stackempty locals
    ldr r0, [sp, locals@8]
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@7]
    push {r0} ; proc-arg
    bl helpers_stringSubstr__P2147
_proccall120:
    add sp, #4*3 ; pop locals 3
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall121:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@9]
    @stackempty locals
    ldr r0, [sp, locals@7]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    pop {r1, r2}
    movs r0, #0
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl helpers_stringSubstr__P2147
_proccall122:
    add sp, #4*3 ; pop locals 3
    mov r3, r0
    movs r0, #0
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl parseInt__P2126
_proccall123:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@10]
    @stackempty locals
    ldr r0, [sp, locals@9]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@10]
    push {r0} ; proc-arg
    bl _conv_9
    mov r7, sp
    str r7, [r6, #4]
    bl led::plot
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3051:
    @stackempty locals
    movs r0, #0
.final_22_6:
    add sp, #4*11 ; pop locals 11
updateDisplay__P3051_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(144,1): magLevel
    ;
    .object magLevel__P3050 "main.ts(144,1): magLevel"
magLevel__P3050_pre:
    .section code
    .balign 4
    .section code
magLevel__P3050:
magLevel__P3050_nochk:
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
    @stackmark locals
magLevel__P3050_locals:
    movs r0, #0
    mov r7, sp
    str r7, [r6, #4]
    bl input::magneticForce
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::magneticForce
    str r0, [sp, locals@1]
    @stackempty locals
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl input::magneticForce
    str r0, [sp, locals@2]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::sqrt
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #45
    push {r0} ; proc-arg
    bl Math_min__P2160
_proccall124:
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_0
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::idiv
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    str r0, [sp, locals@4]
    @stackempty locals
    ldr r0, [sp, locals@4]
    movs r1, #3
    bl _cmp_lt
    beq .else_0_7      
.jmpz125:
    movs r0, #3
    str r0, [sp, locals@4]
    @stackempty locals
.else_0_7:
.afterif_1_7:
    ldr r0, [sp, locals@4]
.ret.3050:
    @stackempty locals
.final_2_7:
    add sp, #4*5 ; pop locals 5
magLevel__P3050_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(570,5): Math.min
    ;
    .object Math_min__P2160 "core/pxt-helpers.ts(570,5): Math.min"
Math_min__P2160_pre:
    .section code
    .balign 4
    .section code
Math_min__P2160:
Math_min__P2160_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Math_min__P2160_locals:
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@1]
    bl _cmp_le
    beq .else_0_8      
.jmpz126:
    ldr r0, [sp, args@0]
    b .ret.2160      
.else_0_8:
.afterif_1_8:
    ldr r0, [sp, args@1]
.ret.2160:
    @stackempty locals
.final_2_8:
Math_min__P2160_end:
    pop {pc}
.object PUSH
.balign 4
_ldlit_25:
 .word _str65
.object POP
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(127,1): emitTelemetry
    ;
    .object emitTelemetry__P3049 "main.ts(127,1): emitTelemetry"
emitTelemetry__P3049_pre:
    .section code
    .balign 4
    .section code
emitTelemetry__P3049:
emitTelemetry__P3049_nochk:
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
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
emitTelemetry__P3049_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl input::temperature
    bl _numops_fromInt
    push {r0} ; the one arg
    bl round1__P3048
_proccall127:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl input::lightLevel
    bl _numops_fromInt
    str r0, [sp, locals@1]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl input::soundLevel
    bl _numops_fromInt
    str r0, [sp, locals@2]
    @stackempty locals
    movs r0, #0
    mov r7, sp
    str r7, [r6, #4]
    bl input::acceleration
    bl _numops_fromInt
    str r0, [sp, locals@3]
    @stackempty locals
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::acceleration
    bl _numops_fromInt
    str r0, [sp, locals@4]
    @stackempty locals
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl input::acceleration
    bl _numops_fromInt
    str r0, [sp, locals@5]
    @stackempty locals
    movs r0, #0
    mov r7, sp
    str r7, [r6, #4]
    bl input::magneticForce
    str r0, [sp, locals@6]
    @stackempty locals
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::magneticForce
    str r0, [sp, locals@7]
    @stackempty locals
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl input::magneticForce
    str r0, [sp, locals@8]
    @stackempty locals
    bl readDistanceCm__P3044
_proccall128:
    str r0, [sp, locals@9]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_27 ; _str51      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_28 ; _str52      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_29 ; _str53      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_30 ; _str54      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_31 ; _str55      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_32 ; _str56      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_33 ; _str57      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@6]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_34 ; _str58      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@7]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_35 ; _str59      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_36 ; _str60      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@9]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl line__P3039
_proccall129:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3049:
    @stackempty locals
    movs r0, #0
.final_0_9:
    add sp, #4*10 ; pop locals 10
emitTelemetry__P3049_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(88,1): readDistanceCm
    ;
    .object readDistanceCm__P3044 "main.ts(88,1): readDistanceCm"
readDistanceCm__P3044_pre:
    .section code
    .balign 4
    .section code
readDistanceCm__P3044:
readDistanceCm__P3044_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
readDistanceCm__P3044_locals:
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
    movs r0, #102
    movs r1, #4
    movs r2, #117
    lsls r2, r2, #8
    adds r2, #48
    mov r7, sp
    str r7, [r6, #4]
    bl pins::pulseIn
    bl _numops_fromInt
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
.ret.3044:
    @stackempty locals
.final_0_10:
    add sp, #4*1 ; pop locals 1
readDistanceCm__P3044_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(123,1): round1
    ;
    .object round1__P3048 "main.ts(123,1): round1"
round1__P3048_pre:
    .section code
    .balign 4
    .section code
round1__P3048:
round1__P3048_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
round1__P3048_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    movs r1, #21
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    mov r7, sp
    str r7, [r6, #4]
    bl Math_::round
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #21
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*1 ; pop locals 1
.ret.3048:
    @stackempty locals
.final_0_11:
round1__P3048_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(98,1): applyOneServo
    ;
    .object applyOneServo__P3045 "main.ts(98,1): applyOneServo"
applyOneServo__P3045_pre:
    .section code
    .balign 4
    .section code
applyOneServo__P3045:
applyOneServo__P3045_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
applyOneServo__P3045_locals:
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.fortop.3757:
    ldr r0, [sp, locals@0]
    movs r1, #11
    bl _cmp_lt
    beq .brk.3757      
.jmpz130:
    ldr r7, [r6, #0]
    ldr r0, [r7, #28]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_12      
.jmpz131:
    ldr r7, [r6, #0]
    ldr r0, [r7, #28]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    movs r2, #10
    bl _pxt_array_set
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #32]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    pop {r1, r2}
    push {r1}
    push {r2}
    bl writeChannel__P3043
_proccall132:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    b .ret.3045      
.else_0_12:
.afterif_1_12:
.cont.3757:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .fortop.3757      
.brk.3757:
.ret.3045:
    @stackempty locals
    movs r0, #0
.final_2_12:
    add sp, #4*1 ; pop locals 1
applyOneServo__P3045_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(80,1): writeChannel
    ;
    .object writeChannel__P3043 "main.ts(80,1): writeChannel"
writeChannel__P3043_pre:
    .section code
    .balign 4
    .section code
writeChannel__P3043:
writeChannel__P3043_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
writeChannel__P3043_locals:
    ldr r0, [sp, args@1]
    movs r1, #1
    bl _cmp_lt
    beq .else_0_13      
.jmpz133:
    movs r0, #1
    str r0, [sp, args@1]
    @stackempty locals
.else_0_13:
.afterif_1_13:
    ldr r0, [sp, args@1]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #105
    bl _cmp_gt
    beq .else_2_13      
.jmpz134:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #105
    str r0, [sp, args@1]
    @stackempty locals
    b .afterif_3_13      
.object PUSH
.balign 4
_ldlit_27:
 .word _str51
_ldlit_28:
 .word _str52
_ldlit_29:
 .word _str53
_ldlit_30:
 .word _str54
_ldlit_31:
 .word _str55
_ldlit_32:
 .word _str56
_ldlit_33:
 .word _str57
_ldlit_34:
 .word _str58
_ldlit_35:
 .word _str59
_ldlit_36:
 .word _str60
.object POP
.else_2_13:
.afterif_3_13:
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
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
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
    bl pcaWrite__P3040
_proccall135:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3043:
    @stackempty locals
    movs r0, #0
.final_4_13:
    add sp, #4*2 ; pop locals 2
writeChannel__P3043_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(48,1): pcaWrite
    ;
    .object pcaWrite__P3040 "main.ts(48,1): pcaWrite"
pcaWrite__P3040_pre:
    .section code
    .balign 4
    .section code
pcaWrite__P3040:
pcaWrite__P3040_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
pcaWrite__P3040_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_11
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
.fortop.3810:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_11
    bl _pxt_array_length_tagged
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    beq .brk.3810      
.jmpz136:
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
    bl _conv_12
    bl _pxt_buffer_set
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.cont.3810:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3810      
.brk.3810:
    ldr r0, _ldlit_38 ; _catch_3822      
    bl _pxt_save_exception_state
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r0, #10
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_14
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
    b .catchend_2_14      
_catch_3822:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::getThrownValue
    str r0, [sp, locals@2]
.catchend_2_14:
.ret.3040:
    @stackempty locals
    movs r0, #0
.final_3_14:
    add sp, #4*3 ; pop locals 3
pcaWrite__P3040_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(68,1): pcaInit
    ;
    .object pcaInit__P3042 "main.ts(68,1): pcaInit"
pcaInit__P3042_pre:
    .section code
    .balign 4
    .section code
pcaInit__P3042:
pcaInit__P3042_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
pcaInit__P3042_locals:
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
    bl pcaWrite__P3040
_proccall137:
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
    bl pcaWrite__P3040
_proccall138:
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
    bl pcaWrite__P3040
_proccall139:
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
    bl pcaWrite__P3040
_proccall140:
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
    bl pcaWrite__P3040
_proccall141:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #253
    push {r0} ; proc-arg
    bl pcaRead8__P3041
_proccall142:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #243
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
.ret.3042:
    @stackempty locals
.final_0_15:
pcaInit__P3042_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(59,1): pcaRead8
    ;
    .object pcaRead8__P3041 "main.ts(59,1): pcaRead8"
pcaRead8__P3041_pre:
    .section code
    .balign 4
    .section code
pcaRead8__P3041:
pcaRead8__P3041_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
pcaRead8__P3041_locals:
    ldr r0, _ldlit_39 ; _catch_3859      
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
_proccall143:
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
_proccall144:
    add sp, #4*3 ; pop locals 3
    b .ret.3041      
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::endTry
    b .catchend_2_16      
_catch_3859:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::getThrownValue
    str r0, [sp, locals@0]
    movs r0, #1
    negs r0, r0
    b .ret.3041      
.catchend_2_16:
    movs r0, #0
.ret.3041:
    @stackempty locals
.final_3_16:
    add sp, #4*1 ; pop locals 1
pcaRead8__P3041_end:
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
_proccall145:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_15
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
    bl _conv_16
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl BufferMethods::getNumber
    add sp, #4*2 ; pop locals 2
.ret.2782:
    @stackempty locals
.final_0_17:
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
_proccall146:
    add sp, #4*1 ; pop locals 1
.ret.2807:
    @stackempty locals
.final_0_18:
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
    beq .jmpz147
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_19      
.jmpz147:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz148
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_19      
.jmpz148:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz149
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_19      
.jmpz149:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz150
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_19      
.jmpz150:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz151
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_19      
.jmpz151:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz152
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_19      
.jmpz152:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz153
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_19      
.jmpz153:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz154
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_19      
.jmpz154:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz155
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_19      
.jmpz155:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz156
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_19      
.jmpz156:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz157
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_19      
.jmpz157:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz158
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_19      
.jmpz158:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz159
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_19      
.jmpz159:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz160
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_19      
.jmpz160:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz161
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_19      
.object PUSH
.balign 4
_ldlit_38:
 .word _catch_3822
_ldlit_39:
 .word _catch_3859
.object POP
.jmpz161:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz162
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_19      
.jmpz162:
    pop {r0} ; tmpref @1
    b .brk.3889      
.switch_0_19:
.switch_1_19:
.switch_2_19:
.switch_3_19:
    movs r0, #3
    b .ret.2847      
.switch_4_19:
.switch_5_19:
.switch_6_19:
.switch_7_19:
    movs r0, #5
    b .ret.2847      
.switch_8_19:
.switch_9_19:
.switch_10_19:
.switch_11_19:
.switch_12_19:
.switch_13_19:
    movs r0, #9
    b .ret.2847      
.switch_14_19:
.switch_15_19:
    movs r0, #17
    b .ret.2847      
.brk.3889:
    movs r0, #1
.ret.2847:
    @stackempty locals
.final_16_19:
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
_proccall163:
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
    bl _conv_17
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
    bl _conv_18
    mov r7, sp
    str r7, [r6, #4]
    bl pins::i2cWriteBuffer
    add sp, #4*3 ; pop locals 3
    bl _numops_fromInt
    @stackempty locals
.ret.2783:
    @stackempty locals
    movs r0, #0
.final_0_20:
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
_proccall164:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_20
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl ImageMethods::showImage
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2437:
    @stackempty locals
    movs r0, #0
.final_0_21:
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
    beq .jmpz165
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_22      
.jmpz165:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz166
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_22      
.jmpz166:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz167
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_22      
.jmpz167:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz168
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_22      
.jmpz168:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz169
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_22      
.jmpz169:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz170
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_22      
.jmpz170:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz171
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_22      
.jmpz171:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz172
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_22      
.jmpz172:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz173
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_22      
.jmpz173:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz174
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_22      
.jmpz174:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz175
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_22      
.jmpz175:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz176
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_22      
.jmpz176:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz177
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_22      
.jmpz177:
    movs r0, #67
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz178
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_22      
.jmpz178:
    movs r0, #69
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz179
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_22      
.jmpz179:
    movs r0, #71
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz180
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_22      
.jmpz180:
    movs r0, #73
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz181
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_16_22      
.jmpz181:
    movs r0, #75
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz182
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_17_22      
.jmpz182:
    movs r0, #77
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz183
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_18_22      
.jmpz183:
    movs r0, #79
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz184
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_19_22      
.jmpz184:
    movs r0, #81
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz185
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_20_22      
.jmpz185:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz186
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_21_22      
.jmpz186:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz187
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_22_22      
.jmpz187:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz188
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_23_22      
.jmpz188:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz189
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_24_22      
.jmpz189:
    movs r0, #35
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz190
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_25_22      
.jmpz190:
    movs r0, #37
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz191
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_26_22      
.jmpz191:
    movs r0, #39
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz192
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_27_22      
.jmpz192:
    movs r0, #41
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz193
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_28_22      
.jmpz193:
    movs r0, #43
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz194
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_29_22      
.jmpz194:
    movs r0, #45
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz195
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_30_22      
.jmpz195:
    movs r0, #47
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz196
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_31_22      
.jmpz196:
    movs r0, #49
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz197
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_32_22      
.jmpz197:
    movs r0, #51
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz198
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_33_22      
.jmpz198:
    movs r0, #53
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz199
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_34_22      
.jmpz199:
    movs r0, #55
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz200
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_35_22      
.jmpz200:
    movs r0, #57
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz201
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_36_22      
.jmpz201:
    movs r0, #61
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz202
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_37_22      
.jmpz202:
    movs r0, #59
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz203
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_38_22      
.jmpz203:
    movs r0, #63
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz204
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_39_22      
.jmpz204:
    movs r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz205
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_40_22      
.jmpz205:
    pop {r0} ; tmpref @1
    b .switch_41_22      
.switch_0_22:
    ldr r0, _ldlit_41 ; _img5      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_1_22:
    ldr r0, _ldlit_42 ; _img6      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_2_22:
    ldr r0, _ldlit_43 ; _img7      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_3_22:
    ldr r0, _ldlit_44 ; _img8      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_4_22:
    ldr r0, _ldlit_45 ; _img9      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_5_22:
    ldr r0, _ldlit_46 ; _img10      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_6_22:
    ldr r0, _ldlit_47 ; _img11      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_7_22:
    ldr r0, _ldlit_48 ; _img12      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_8_22:
    ldr r0, _ldlit_49 ; _img13      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_9_22:
    ldr r0, _ldlit_50 ; _img14      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_10_22:
    ldr r0, _ldlit_51 ; _img15      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_11_22:
    ldr r0, _ldlit_52 ; _img16      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_12_22:
    ldr r0, _ldlit_53 ; _img17      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_13_22:
    ldr r0, _ldlit_54 ; _img18      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_14_22:
    ldr r0, _ldlit_55 ; _img19      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_15_22:
    ldr r0, _ldlit_56 ; _img20      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_16_22:
    ldr r0, _ldlit_57 ; _img21      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_17_22:
    ldr r0, _ldlit_58 ; _img22      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_18_22:
    ldr r0, _ldlit_59 ; _img23      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_19_22:
    ldr r0, _ldlit_60 ; _img24      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_20_22:
    ldr r0, _ldlit_61 ; _img25      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_21_22:
    ldr r0, _ldlit_62 ; _img26      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_22_22:
    ldr r0, _ldlit_63 ; _img27      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_23_22:
    ldr r0, _ldlit_64 ; _img28      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_24_22:
    ldr r0, _ldlit_65 ; _img29      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_25_22:
    ldr r0, _ldlit_66 ; _img30      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_26_22:
    ldr r0, _ldlit_67 ; _img31      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_27_22:
    ldr r0, _ldlit_68 ; _img32      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_28_22:
    ldr r0, _ldlit_69 ; _img33      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_29_22:
    ldr r0, _ldlit_70 ; _img34      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_30_22:
    ldr r0, _ldlit_71 ; _img35      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_31_22:
    ldr r0, _ldlit_72 ; _img36      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_32_22:
    ldr r0, _ldlit_73 ; _img37      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_33_22:
    ldr r0, _ldlit_74 ; _img38      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_34_22:
    ldr r0, _ldlit_75 ; _img39      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_35_22:
    ldr r0, _ldlit_76 ; _img40      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_36_22:
    ldr r0, _ldlit_77 ; _img41      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_37_22:
    ldr r0, _ldlit_78 ; _img42      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_38_22:
    ldr r0, _ldlit_79 ; _img43      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_39_22:
    ldr r0, _ldlit_80 ; _img44      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.object PUSH
.balign 4
_ldlit_41:
 .word _img5
_ldlit_42:
 .word _img6
_ldlit_43:
 .word _img7
_ldlit_44:
 .word _img8
_ldlit_45:
 .word _img9
_ldlit_46:
 .word _img10
_ldlit_47:
 .word _img11
_ldlit_48:
 .word _img12
_ldlit_49:
 .word _img13
_ldlit_50:
 .word _img14
_ldlit_51:
 .word _img15
_ldlit_52:
 .word _img16
_ldlit_53:
 .word _img17
_ldlit_54:
 .word _img18
_ldlit_55:
 .word _img19
_ldlit_56:
 .word _img20
_ldlit_57:
 .word _img21
_ldlit_58:
 .word _img22
_ldlit_59:
 .word _img23
_ldlit_60:
 .word _img24
_ldlit_61:
 .word _img25
_ldlit_62:
 .word _img26
_ldlit_63:
 .word _img27
_ldlit_64:
 .word _img28
_ldlit_65:
 .word _img29
_ldlit_66:
 .word _img30
_ldlit_67:
 .word _img31
_ldlit_68:
 .word _img32
_ldlit_69:
 .word _img33
_ldlit_70:
 .word _img34
_ldlit_71:
 .word _img35
_ldlit_72:
 .word _img36
_ldlit_73:
 .word _img37
_ldlit_74:
 .word _img38
_ldlit_75:
 .word _img39
_ldlit_76:
 .word _img40
_ldlit_77:
 .word _img41
_ldlit_78:
 .word _img42
_ldlit_79:
 .word _img43
_ldlit_80:
 .word _img44
.object POP
.switch_40_22:
    ldr r0, _ldlit_82 ; _img45      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_41_22:
    ldr r0, _ldlit_83 ; _img46      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.brk.3942:
    movs r0, #0
.ret.2441:
    @stackempty locals
.final_42_22:
images_iconImage__P2441_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(108,1): setAngle
    ;
    .object setAngle__P3046 "main.ts(108,1): setAngle"
setAngle__P3046_pre:
    .section code
    .balign 4
    .section code
setAngle__P3046:
setAngle__P3046_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
setAngle__P3046_locals:
    ldr r0, [sp, args@1]
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    movs r1, #1
    bl _cmp_lt
    beq .else_0_23      
.jmpz206:
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.else_0_23:
.afterif_1_23:
    ldr r0, [sp, locals@0]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #105
    bl _cmp_gt
    beq .else_2_23      
.jmpz207:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #105
    str r0, [sp, locals@0]
    @stackempty locals
.else_2_23:
.afterif_3_23:
    ldr r7, [r6, #0]
    ldr r0, [r7, #32]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    movs r1, #3
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*2] ; estack
    ldr r1, [sp, #4*1] ; estack
    ldr r2, [sp, #4*0] ; estack
    bl _pxt_array_set
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #28]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    movs r1, #3
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    movs r2, #66
    bl _pxt_array_set
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_6
    ldr r0, _ldlit_84 ; _str49      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_5
    ldr r1, _ldlit_85 ; _str50      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl line__P3039
_proccall208:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3046:
    @stackempty locals
    movs r0, #0
.final_4_23:
    add sp, #4*1 ; pop locals 1
setAngle__P3046_end:
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
    beq .condexprz_0_24      
.jmpz209:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    b .condexprfin_1_24      
.condexprz_0_24:
    ldr r0, [sp, args@2]
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_3_24      
.jmpz210:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_2_24      
.lazySkip_3_24:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    movs r0, #1
.lazy_2_24:
; jmp value (already in r0)
.condexprfin_1_24:
; jmp value (already in r0)
    str r0, [sp, args@2]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::substr
    add sp, #4*3 ; pop locals 3
.ret.2147:
    @stackempty locals
.final_4_24:
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
    beq .lazySkip_2_25      
.jmpz211:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_25      
.lazySkip_2_25:
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
    bne .lazySkip_4_25      
.jmpz212:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_3_25      
.lazySkip_4_25:
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
    beq .lazySkip_6_25      
.jmpz213:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_5_25      
.lazySkip_6_25:
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
.lazy_5_25:
; jmp value (already in r0)
.lazy_3_25:
; jmp value (already in r0)
.lazy_1_25:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_25      
.jmpz214:
    movs r0, #14
    b .ret.2126      
.else_0_25:
.afterif_7_25:
    movs r0, #1
    str r0, [sp, locals@0]
    @stackempty locals
.cont.4142:
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
    bne .lazySkip_9_25      
.jmpz215:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_8_25      
.lazySkip_9_25:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl helpers_isWhitespace__P2153
_proccall216:
    add sp, #4*1 ; pop locals 1
.lazy_8_25:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.4142      
.jmpz217:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .cont.4142      
.brk.4142:
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
    beq .else_10_25      
.jmpz218:
    movs r0, #14
    b .ret.2126      
.else_10_25:
.afterif_11_25:
    movs r0, #3
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0}; tmpstore @1
    mov r1, r0
    ldr r0, _ldlit_86 ; _str0      
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz219
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_25      
.jmpz219:
    ldr r0, _ldlit_87 ; _str1      
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz220
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_25      
.jmpz220:
    pop {r0} ; tmpref @1
    b .brk.4171      
.object PUSH
.balign 4
_ldlit_82:
 .word _img45
_ldlit_83:
 .word _img46
_ldlit_84:
 .word _str49
_ldlit_85:
 .word _str50
_ldlit_86:
 .word _str0
_ldlit_87:
 .word _str1
.object POP
.switch_12_25:
    movs r0, #1
    negs r0, r0
    str r0, [sp, locals@1]
    @stackempty locals
.switch_13_25:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
.brk.4171:
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
    beq .lazySkip_16_25      
.jmpz221:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_15_25      
.lazySkip_16_25:
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
.lazy_15_25:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_18_25      
.jmpz222:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_17_25      
.lazySkip_18_25:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, _ldlit_89 ; _str2      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eqq
    add sp, #4*1 ; pop locals 1
.lazy_17_25:
; jmp value (already in r0)
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    bne .lazySkip_20_25      
.jmpz223:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_19_25      
.lazySkip_20_25:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, _ldlit_90 ; _str3      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eqq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_22_25      
.jmpz224:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_21_25      
.lazySkip_22_25:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, _ldlit_91 ; _str4      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eqq
    add sp, #4*1 ; pop locals 1
.lazy_21_25:
; jmp value (already in r0)
.lazy_19_25:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_14_25      
.jmpz225:
    movs r0, #33
    str r0, [sp, args@1]
    @stackempty locals
    ldr r0, [sp, locals@0]
    movs r1, #5
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .afterif_23_25      
.else_14_25:
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
    beq .else_24_25      
.jmpz226:
    movs r0, #21
    str r0, [sp, args@1]
    @stackempty locals
.else_24_25:
.afterif_25_25:
.afterif_23_25:
    movs r0, #1
    str r0, [sp, locals@2]
    @stackempty locals
    movs r0, #10
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@0]
    str r0, [sp, locals@4]
    @stackempty locals
.fortop.4219:
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
    bne .jmpz227
    b .brk.4219      
.jmpz227:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    bl _conv_22
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
    bne .lazySkip_28_25      
.jmpz228:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_27_25      
.lazySkip_28_25:
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
.lazy_27_25:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_26_25      
.jmpz229:
    ldr r0, [sp, locals@5]
    movs r1, #97
    bl _numops_subs
    str r0, [sp, locals@6]
    @stackempty locals
    b .afterif_29_25      
.else_26_25:
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
    bne .lazySkip_32_25      
.jmpz230:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_31_25      
.lazySkip_32_25:
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
.lazy_31_25:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_30_25      
.jmpz231:
    movs r0, #21
    ldr r1, [sp, locals@5]
    bl _numops_adds
    movs r1, #195
    bl _numops_subs
    str r0, [sp, locals@6]
    @stackempty locals
.else_30_25:
.afterif_33_25:
.afterif_29_25:
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
    beq .lazySkip_36_25      
.jmpz232:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_35_25      
.lazySkip_36_25:
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
.lazy_35_25:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_34_25      
.jmpz233:
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
    beq .else_37_25      
.jmpz234:
    movs r0, #14
    b .ret.2126      
.else_37_25:
.afterif_38_25:
    b .brk.4219      
.else_34_25:
.afterif_39_25:
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
.cont.4219:
    ldr r0, [sp, locals@4]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@4]
    @stackempty locals
    b .fortop.4219      
.brk.4219:
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
.final_40_25:
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
    beq .jmpz235
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_26      
.jmpz235:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz236
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_26      
.jmpz236:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz237
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_26      
.jmpz237:
    movs r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz238
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_26      
.object PUSH
.balign 4
_ldlit_89:
 .word _str2
_ldlit_90:
 .word _str3
_ldlit_91:
 .word _str4
.object POP
.jmpz238:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz239
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_26      
.jmpz239:
    ldr r0, _ldlit_93 ; 130559      
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz240
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_26      
.jmpz240:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz241
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_26      
.jmpz241:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz242
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_26      
.jmpz242:
    movs r0, #64
    lsls r0, r0, #8
    adds r0, #81
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz243
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_26      
.jmpz243:
    movs r0, #64
    lsls r0, r0, #8
    adds r0, #83
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz244
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_26      
.jmpz244:
    pop {r0} ; tmpref @1
    b .switch_10_26      
.switch_0_26:
.switch_1_26:
.switch_2_26:
.switch_3_26:
.switch_4_26:
.switch_5_26:
.switch_6_26:
.switch_7_26:
.switch_8_26:
.switch_9_26:
    movs r0, #66
    b .ret.2153      
.switch_10_26:
    movs r0, #10
    b .ret.2153      
.brk.4284:
    movs r0, #0
.ret.2153:
    @stackempty locals
.final_11_26:
helpers_isWhitespace__P2153_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(117,1): setAll
    ;
    .object setAll__P3047 "main.ts(117,1): setAll"
setAll__P3047_pre:
    .section code
    .balign 4
    .section code
setAll__P3047:
setAll__P3047_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
setAll__P3047_locals:
    movs r0, #3
    str r0, [sp, locals@0]
    @stackempty locals
.fortop.4288:
    ldr r0, [sp, locals@0]
    movs r1, #11
    bl _cmp_le
    beq .brk.4288      
.jmpz245:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl setAngle__P3046
_proccall246:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.cont.4288:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .fortop.4288      
.brk.4288:
.ret.3047:
    @stackempty locals
    movs r0, #0
.final_0_27:
    add sp, #4*1 ; pop locals 1
setAll__P3047_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(44,1): line
    ;
    .object line__P3039 "main.ts(44,1): line"
line__P3039_pre:
    .section code
    .balign 4
    .section code
line__P3039:
line__P3039_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
line__P3039_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall247:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3039:
    @stackempty locals
    movs r0, #0
.final_0_28:
line__P3039_end:
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
    beq .else_0_29      
.jmpz248:
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    str r0, [sp, args@0]
    @stackempty locals
.else_0_29:
.afterif_1_29:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_5
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #40]
    movs r1, #1
    bl _cmp_gt
    beq .else_2_29      
.jmpz249:
    ldr r7, [r6, #0]
    ldr r0, [r7, #40]
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
    ldr r0, [r7, #44]
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
    ldr r0, [r7, #40]
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
    ldr r0, [r7, #40]
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
.fortop.4321:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@0]
    bl _cmp_lt
    beq .brk.4321      
.jmpz250:
    ldr r0, _ldlit_94 ; _str48      
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    @stackempty locals
.cont.4321:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.4321      
.brk.4321:
.else_2_29:
.afterif_3_29:
    ldr r7, [r6, #0]
    ldr r0, [r7, #44]
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
.final_4_29:
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
.cont.4341:
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
    bne .lazySkip_1_30      
.jmpz251:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_0_30      
.lazySkip_1_30:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl helpers_isWhitespace__P2153
_proccall252:
    add sp, #4*1 ; pop locals 1
.lazy_0_30:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.4341      
.jmpz253:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .cont.4341      
.brk.4341:
.cont.4354:
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
    bne .lazySkip_3_30      
.jmpz254:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_2_30      
.lazySkip_3_30:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl _conv_22
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    push {r0} ; the one arg
    bl helpers_isWhitespace__P2153
_proccall255:
    add sp, #4*1 ; pop locals 1
.lazy_2_30:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .brk.4354      
.jmpz256:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_subs
    str r0, [sp, locals@1]
    @stackempty locals
    b .cont.4354      
.brk.4354:
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
_proccall257:
    add sp, #4*3 ; pop locals 3
.ret.2152:
    @stackempty locals
.final_4_30:
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
    bne .jmpz258
    b .else_0_31      
.object PUSH
.balign 4
_ldlit_93:
 .word 130559
_ldlit_94:
 .word _str48
.object POP
.jmpz258:
    ldr r0, [sp, locals@0]
    ldr r1, [sp, args@1]
    bl _numops_adds
    mov r3, r0
    movs r0, #1
    push {r0} ; proc-arg
    push {r3} ; the one arg
    bl Math_max__P2159
_proccall259:
    add sp, #4*2 ; pop locals 2
    str r0, [sp, args@1]
    @stackempty locals
.else_0_31:
.afterif_1_31:
    ldr r0, [sp, args@2]
    movs r1, #0
    bl _cmp_eqq
    beq .else_2_31      
.jmpz260:
    ldr r0, [sp, locals@0]
    str r0, [sp, args@2]
    @stackempty locals
    b .afterif_3_31      
.else_2_31:
    ldr r0, [sp, args@2]
    movs r1, #6
    bl _cmp_eqq
    beq .else_4_31      
.jmpz261:
    movs r0, #1
    str r0, [sp, args@2]
    @stackempty locals
.else_4_31:
.afterif_5_31:
.afterif_3_31:
    ldr r0, [sp, args@2]
    movs r1, #1
    bl _cmp_lt
    beq .else_6_31      
.jmpz262:
    ldr r0, [sp, locals@0]
    ldr r1, [sp, args@2]
    bl _numops_adds
    str r0, [sp, args@2]
    @stackempty locals
.else_6_31:
.afterif_7_31:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    ldr r1, [sp, args@1]
    bl _numops_subs
    push {r0} ; proc-arg
    bl _conv_21
    mov r7, sp
    str r7, [r6, #4]
    bl String_::substr
    add sp, #4*3 ; pop locals 3
.ret.2148:
    @stackempty locals
.final_8_31:
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
    beq .else_0_32      
.jmpz263:
    ldr r0, [sp, args@0]
    b .ret.2159      
.else_0_32:
.afterif_1_32:
    ldr r0, [sp, args@1]
.ret.2159:
    @stackempty locals
.final_2_32:
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
    ldr r1, _ldlit_96 ; _pxt_bind_lit      
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
    ldr r2, _ldlit_97 ; _pxt_copy_list      
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
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_8
_conv_8:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_9
_conv_9:
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
    .object _code_helper__inst_builtin6_validate_10
_inst_builtin6_validate_10:
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
    .object _code_helper__conv_11
_conv_11:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin6_validate_10
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_12
_conv_12:
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
    .object _code_helper__inst_builtin3_validate_13
_inst_builtin3_validate_13:
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
    .object _code_helper__conv_14
_conv_14:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_13
    mov r1, r0      
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
.object PUSH
.balign 4
_ldlit_96:
 .word _pxt_bind_lit
_ldlit_97:
 .word _pxt_copy_list
.object POP
    @stackempty args
    .section code
    .object _code_helper__conv_15
_conv_15:
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
    .object _code_helper__conv_16
_conv_16:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_13
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
    .object _code_helper__conv_17
_conv_17:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*3] ; estack
    bl _inst_builtin3_validate_13
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
    .object _code_helper__conv_18
_conv_18:
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
    bl _inst_builtin3_validate_13
    mov r1, r0      
    pop {r0}
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin9_validate_19
_inst_builtin9_validate_19:
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
    .object _code_helper__conv_20
_conv_20:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin9_validate_19
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
    .object _code_helper__conv_21
_conv_21:
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
    .object _code_helper__conv_22
_conv_22:
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
    .word _str264  ; 0 .
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
            .object _str264
_str264:
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
    .short 6
    .string "SERVO "
            .balign 4
            .object _str50
_str50:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "="
            .balign 4
            .object _str51
_str51:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "S T="
            .balign 4
            .object _str52
_str52:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string " L="
            .balign 4
            .object _str53
_str53:
 .word pxt::string_inline_ascii_vt
    .short 5
    .string " MIC="
            .balign 4
            .object _str54
_str54:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string " AX="
            .balign 4
            .object _str55
_str55:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string " AY="
            .balign 4
            .object _str56
_str56:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string " AZ="
            .balign 4
            .object _str57
_str57:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string " HX="
            .balign 4
            .object _str58
_str58:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string " HY="
            .balign 4
            .object _str59
_str59:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string " HZ="
            .balign 4
            .object _str60
_str60:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string " D="
            .balign 4
            .object _str61
_str61:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "snd"
            .balign 4
            .object _str62
_str62:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "lit"
            .balign 4
            .object _str63
_str63:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "mag"
            .balign 4
            .object _str64
_str64:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "pb"
            .balign 4
            .object _str65
_str65:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string ","
            .balign 4
            .object _str66
_str66:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "s"
            .balign 4
            .object _str67
_str67:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "l"
            .balign 4
            .object _str68
_str68:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "m"
            .balign 4
            .object _str69
_str69:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "ACK:"
            .balign 4
            .object _str70
_str70:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "home"
            .balign 4
            .object _str71
_str71:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "i"
            .balign 4
            .object _str72
_str72:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "PCA="
            .balign 4
            .object _str73
_str73:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "OK"
            .balign 4
            .object _str74
_str74:
 .word pxt::string_inline_ascii_vt
    .short 3
    .string "ERR"
            .balign 4
            .object _str75
_str75:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string ":"
            .balign 4
            .object _str76
_str76:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "handlab"
.balign 4
.section code
.object _perf_counters
_pxt_perf_counters:
    .word 0
_literals_end:
