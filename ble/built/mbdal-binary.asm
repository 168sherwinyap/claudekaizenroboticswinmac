; Interface tables: 0/0 (NaN%)
; Virtual methods: 0 / 0
; generated code sizes (bytes): 8120 (incl. 5304 user, 1038 helpers, 14 vtables, 1764 lits); src size 0
; assembly: 5175 lines; density: 39.88 bytes/stmt; (133 stmts)
; total bytes: 234424 (96.6% of 237.0k flash with 8264 free)
; peep hole pass: 99 instructions removed and 191 updated
; peep hole pass: 30 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x37400
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 4CC31A5B0AC4ADB3 ; hex template hash
    .hex 873266330af9dbdb ; replaced in binary by program hash
    .short 6   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word _pxt_restore_exception_state@fn
    .word _str68 ; name
    ;
; Function main.ts(1,1): <main>
    ;
    .object _main___P3059 "main.ts(1,1): <main>"
_main___P3059_pre:
    .section code
    .balign 4
_main___P3059_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P3059_args@fn
_main___P3059_args:
    .section code
_main___P3059:
_main___P3059_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
_main___P3059_locals:
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #4]
    @stackempty locals
    ldr r0, _ldlit_2 ; _str42      
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    movs r0, #65
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #8]
    @stackempty locals
    ldr r0, _ldlit_3 ; bluetooth_inline__P3254_Lit      
    push {r0} ; proc-arg
    bl console_addListener__P2543
_proccall69:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::startUartService
    @stackempty locals
    ldr r0, _ldlit_4 ; _str61      
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall70:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_5 ; _str62      
    movs r1, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    @stackempty locals
    ldr r0, _ldlit_6 ; inline__P3278_Lit      
    push {r0} ; proc-arg
    bl _conv_1
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::onBluetoothConnected
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_7 ; inline__P3284_Lit      
    push {r0} ; proc-arg
    bl _conv_1
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::onBluetoothDisconnected
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #21
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl String_::fromCharCode
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, _ldlit_8 ; inline__P3291_Lit      
    push {r0} ; proc-arg
    bl _conv_3
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::onUartDataReceived
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, _ldlit_9 ; inline__P3313_Lit      
    push {r0} ; proc-arg
    bl _conv_4
    movs r0, #1
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_10 ; inline__P3319_Lit      
    push {r0} ; proc-arg
    bl _conv_4
    movs r0, #2
    mov r7, sp
    str r7, [r6, #4]
    bl input::onButtonPressed
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3059:
    @stackempty locals
    movs r0, #0
.final_0_1:
_main___P3059_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function bluetooth/bluetooth.ts(16,25): bluetooth.inline
    ;
    .object bluetooth_inline__P3254 "bluetooth/bluetooth.ts(16,25): bluetooth.inline"
bluetooth_inline__P3254_pre:
    .section code
    .balign 4
bluetooth_inline__P3254_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word bluetooth_inline__P3254_args@fn
bluetooth_inline__P3254_args:
    cmp r4, #2
    bge bluetooth_inline__P3254_nochk
    push {lr}
    bl _expand_args_2_5
    bl bluetooth_inline__P3254_nochk
    @dummystack 2
    add sp, #4*2
    pop {pc}
    .section code
bluetooth_inline__P3254:
bluetooth_inline__P3254_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
bluetooth_inline__P3254_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_6
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::__log
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3254:
    @stackempty locals
    movs r0, #0
.final_0_2:
bluetooth_inline__P3254_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(104,32): inline
    ;
    .object inline__P3278 "main.ts(104,32): inline"
inline__P3278_pre:
    .section code
    .balign 4
inline__P3278_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3278_args@fn
inline__P3278_args:
    .section code
inline__P3278:
inline__P3278_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3278_locals:
    ldr r0, _ldlit_11 ; _str63      
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall71:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #177
    push {r0} ; proc-arg
    movs r0, #5
    push {r0} ; proc-arg
    bl basic_showIcon__P2437
_proccall72:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3278:
    @stackempty locals
    movs r0, #0
.final_0_3:
inline__P3278_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(109,35): inline
    ;
    .object inline__P3284 "main.ts(109,35): inline"
inline__P3284_pre:
    .section code
    .balign 4
inline__P3284_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3284_args@fn
inline__P3284_args:
    .section code
inline__P3284:
inline__P3284_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3284_locals:
    ldr r0, _ldlit_12 ; _str64      
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall73:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #177
    push {r0} ; proc-arg
    movs r0, #7
    push {r0} ; proc-arg
    bl basic_showIcon__P2437
_proccall74:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3284:
    @stackempty locals
    movs r0, #0
.final_0_4:
inline__P3284_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(114,69): inline
    ;
    .object inline__P3291 "main.ts(114,69): inline"
inline__P3291_pre:
    .section code
    .balign 4
inline__P3291_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3291_args@fn
inline__P3291_args:
    .section code
inline__P3291:
inline__P3291_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
inline__P3291_locals:
    movs r0, #21
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl String_::fromCharCode
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::uartReadUntil
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    movs r1, #1
    bl _cmp_gt
    beq .else_0_5      
.jmpz75:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_8
    ldr r0, _ldlit_13 ; _str65      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl serial_writeLine__P2799
_proccall76:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl handle__P3058
_proccall77:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.else_0_5:
.afterif_1_5:
.ret.3291:
    @stackempty locals
    movs r0, #0
.final_2_5:
    add sp, #4*1 ; pop locals 1
inline__P3291_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(124,33): inline
    ;
    .object inline__P3313 "main.ts(124,33): inline"
inline__P3313_pre:
    .section code
    .balign 4
inline__P3313_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3313_args@fn
inline__P3313_args:
    .section code
inline__P3313:
inline__P3313_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3313_locals:
    ldr r0, _ldlit_14 ; _str66      
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall78:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_15 ; _str47      
    push {r0} ; proc-arg
    bl handle__P3058
_proccall79:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3313:
    @stackempty locals
    movs r0, #0
.final_0_6:
inline__P3313_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(129,33): inline
    ;
    .object inline__P3319 "main.ts(129,33): inline"
inline__P3319_pre:
    .section code
    .balign 4
inline__P3319_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P3319_args@fn
inline__P3319_args:
    .section code
inline__P3319:
inline__P3319_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
inline__P3319_locals:
    ldr r0, _ldlit_16 ; _str67      
    push {r0} ; proc-arg
    bl serial_writeLine__P2799
_proccall80:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, _ldlit_17 ; _str56      
    push {r0} ; proc-arg
    bl handle__P3058
_proccall81:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3319:
    @stackempty locals
    movs r0, #0
.final_0_7:
inline__P3319_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(77,1): handle
    ;
    .object handle__P3058 "main.ts(77,1): handle"
handle__P3058_pre:
    .section code
    .balign 4
    .section code
handle__P3058:
handle__P3058_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
handle__P3058_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_15 ; _str47      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_2_8      
.jmpz82:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_1_8      
.lazySkip_2_8:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_18 ; _str48      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_1_8:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_0_8      
.jmpz83:
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #177
    push {r0} ; proc-arg
    movs r0, #9
    push {r0} ; proc-arg
    bl basic_showIcon__P2437
_proccall84:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, _ldlit_19 ; _str49      
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::uartWriteString
    @stackempty locals
    movs r0, #181
    push {r0} ; proc-arg
    bl moveServo__P3055
_proccall85:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_3_8      
.else_0_8:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_20 ; _str50      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_6_8      
.jmpz86:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_5_8      
.lazySkip_6_8:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_21 ; _str51      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_5_8:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_4_8      
.jmpz87:
    movs r0, #4
    lsls r0, r0, #8
    adds r0, #177
    push {r0} ; proc-arg
    movs r0, #11
    push {r0} ; proc-arg
    bl basic_showIcon__P2437
_proccall88:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    ldr r0, _ldlit_22 ; _str52      
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::uartWriteString
    @stackempty locals
    movs r0, #1
    push {r0} ; proc-arg
    bl moveServo__P3055
_proccall89:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_7_8      
.else_4_8:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_23 ; _str53      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_10_8      
.jmpz90:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_9_8      
.object PUSH
.balign 4
_ldlit_2:
 .word _str42
_ldlit_3:
 .word bluetooth_inline__P3254_Lit
_ldlit_4:
 .word _str61
_ldlit_5:
 .word _str62
_ldlit_6:
 .word inline__P3278_Lit
_ldlit_7:
 .word inline__P3284_Lit
_ldlit_8:
 .word inline__P3291_Lit
_ldlit_9:
 .word inline__P3313_Lit
_ldlit_10:
 .word inline__P3319_Lit
_ldlit_11:
 .word _str63
_ldlit_12:
 .word _str64
_ldlit_13:
 .word _str65
_ldlit_14:
 .word _str66
_ldlit_15:
 .word _str47
_ldlit_16:
 .word _str67
_ldlit_17:
 .word _str56
_ldlit_18:
 .word _str48
_ldlit_19:
 .word _str49
_ldlit_20:
 .word _str50
_ldlit_21:
 .word _str51
_ldlit_22:
 .word _str52
_ldlit_23:
 .word _str53
.object POP
.lazySkip_10_8:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_25 ; _str54      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_9_8:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_8_8      
.jmpz91:
    bl showCircle__P3056
_proccall92:
    @stackempty locals
    ldr r0, _ldlit_26 ; _str55      
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::uartWriteString
    @stackempty locals
    movs r0, #1
    push {r0} ; proc-arg
    bl moveServo__P3055
_proccall93:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_11_8      
.else_8_8:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_27 ; _str56      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
    push {r0}; tmpstore @1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBool
    cmp r0, #0
    beq .lazySkip_14_8      
.jmpz94:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_13_8      
.lazySkip_14_8:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, _ldlit_28 ; _str57      
    mov r7, sp
    str r7, [r6, #4]
    bl numops::eq
    add sp, #4*1 ; pop locals 1
.lazy_13_8:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_12_8      
.jmpz95:
    bl showCross__P3057
_proccall96:
    @stackempty locals
    ldr r0, _ldlit_29 ; _str58      
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::uartWriteString
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #105
    push {r0} ; proc-arg
    bl moveServo__P3055
_proccall97:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    b .afterif_15_8      
.else_12_8:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_7
    movs r1, #60
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_8
    ldr r0, _ldlit_30 ; _str59      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_7
    ldr r1, _ldlit_31 ; _str60      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl bluetooth::uartWriteString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.afterif_15_8:
.afterif_11_8:
.afterif_7_8:
.afterif_3_8:
.ret.3058:
    @stackempty locals
    movs r0, #0
.final_16_8:
handle__P3058_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(65,1): showCross
    ;
    .object showCross__P3057 "main.ts(65,1): showCross"
showCross__P3057_pre:
    .section code
    .balign 4
    .section code
showCross__P3057:
showCross__P3057_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
showCross__P3057_locals:
    ldr r0, _ldlit_32 ; _img46      
    movs r1, #25
    lsls r1, r1, #4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showLeds
    @stackempty locals
.ret.3057:
    @stackempty locals
    movs r0, #0
.final_0_9:
showCross__P3057_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(55,1): showCircle
    ;
    .object showCircle__P3056 "main.ts(55,1): showCircle"
showCircle__P3056_pre:
    .section code
    .balign 4
    .section code
showCircle__P3056:
showCircle__P3056_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
showCircle__P3056_locals:
    ldr r0, _ldlit_33 ; _img45      
    movs r1, #25
    lsls r1, r1, #4
    mov r7, sp
    str r7, [r6, #4]
    bl basic::showLeds
    @stackempty locals
.ret.3056:
    @stackempty locals
    movs r0, #0
.final_0_10:
showCircle__P3056_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(48,1): moveServo
    ;
    .object moveServo__P3055 "main.ts(48,1): moveServo"
moveServo__P3055_pre:
    .section code
    .balign 4
    .section code
moveServo__P3055:
moveServo__P3055_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
moveServo__P3055_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_8
    ldr r0, _ldlit_34 ; _str44      
    mov r7, sp
    str r7, [r6, #4]
    bl String_::concat
    add sp, #4*1 ; pop locals 1
    push {r0} ; the one arg
    bl serial_writeLine__P2799
_proccall98:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    movs r0, #1
    ldr r1, _ldlit_35 ; moveServo_inline__P3398_Lit      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkAction
    push {r0}; tmpstore @1
    movs r1, #0
    ldr r2, [sp, args@0]
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::stclo
    ldr r0, [sp, #0]      
    bl _conv_1
    mov r7, sp
    str r7, [r6, #4]
    bl control::inBackground
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3055:
    @stackempty locals
    movs r0, #0
.final_0_11:
moveServo__P3055_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(50,26): moveServo.inline
    ;
    .object moveServo_inline__P3398 "main.ts(50,26): moveServo.inline"
moveServo_inline__P3398_pre:
    .section code
    .balign 4
moveServo_inline__P3398_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word moveServo_inline__P3398_args@fn
moveServo_inline__P3398_args:
    .section code
moveServo_inline__P3398:
moveServo_inline__P3398_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
moveServo_inline__P3398_locals:
    ldr r0, [r5, #4*3]
    push {r0} ; proc-arg
    bl servo__P3054
_proccall99:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3398:
    @stackempty locals
    movs r0, #0
.final_0_12:
moveServo_inline__P3398_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(31,1): servo
    ;
    .object servo__P3054 "main.ts(31,1): servo"
servo__P3054_pre:
    .section code
    .balign 4
    .section code
servo__P3054:
servo__P3054_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
servo__P3054_locals:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _cmp_lt
    beq .else_0_13      
.jmpz100:
    movs r0, #1
    str r0, [sp, args@0]
    @stackempty locals
.else_0_13:
.afterif_1_13:
    ldr r0, [sp, args@0]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #105
    bl _cmp_gt
    beq .else_2_13      
.jmpz101:
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #105
    str r0, [sp, args@0]
    @stackempty locals
    b .afterif_3_13      
.object PUSH
.balign 4
_ldlit_25:
 .word _str54
_ldlit_26:
 .word _str55
_ldlit_27:
 .word _str56
_ldlit_28:
 .word _str57
_ldlit_29:
 .word _str58
_ldlit_30:
 .word _str59
_ldlit_31:
 .word _str60
_ldlit_32:
 .word _img46
_ldlit_33:
 .word _img45
_ldlit_34:
 .word _str44
_ldlit_35:
 .word moveServo_inline__P3398_Lit
.object POP
.else_2_13:
.afterif_3_13:
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
    bl pcaWrite__P3053
_proccall102:
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
    bl pcaWrite__P3053
_proccall103:
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
    bl pcaWrite__P3053
_proccall104:
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
    bl pcaWrite__P3053
_proccall105:
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
    bl pcaWrite__P3053
_proccall106:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r0, [sp, args@0]
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
    bl _conv_2
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
    movs r1, #77
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
    bl pcaWrite__P3053
_proccall107:
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.3054:
    @stackempty locals
    movs r0, #0
.final_4_13:
    add sp, #4*2 ; pop locals 2
servo__P3054_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function main.ts(19,1): pcaWrite
    ;
    .object pcaWrite__P3053 "main.ts(19,1): pcaWrite"
pcaWrite__P3053_pre:
    .section code
    .balign 4
    .section code
pcaWrite__P3053:
pcaWrite__P3053_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
pcaWrite__P3053_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_10
    bl _pxt_array_length_tagged
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl control::createBuffer
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.3456:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_10
    bl _pxt_array_length_tagged
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    beq .brk.3456      
.jmpz108:
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
    bl _conv_11
    bl _pxt_buffer_set
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.cont.3456:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3456      
.brk.3456:
    ldr r0, _ldlit_37 ; _catch_3468      
    bl _pxt_save_exception_state
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    movs r0, #10
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    push {r0} ; proc-arg
    bl _conv_13
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
_catch_3468:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::getThrownValue
    str r0, [sp, locals@2]
.catchend_2_14:
.ret.3053:
    @stackempty locals
    movs r0, #0
.final_3_14:
    add sp, #4*3 ; pop locals 3
pcaWrite__P3053_end:
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
_proccall109:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    bl _conv_15
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl ImageMethods::showImage
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2437:
    @stackempty locals
    movs r0, #0
.final_0_16:
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
    beq .jmpz110
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_0_17      
.jmpz110:
    movs r0, #3
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz111
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_1_17      
.jmpz111:
    movs r0, #9
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz112
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_2_17      
.jmpz112:
    movs r0, #11
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz113
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_3_17      
.jmpz113:
    movs r0, #13
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz114
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_4_17      
.jmpz114:
    movs r0, #15
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz115
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_5_17      
.jmpz115:
    movs r0, #17
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz116
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_6_17      
.jmpz116:
    movs r0, #19
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz117
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_7_17      
.jmpz117:
    movs r0, #21
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz118
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_8_17      
.jmpz118:
    movs r0, #23
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz119
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_9_17      
.jmpz119:
    movs r0, #25
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz120
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_10_17      
.jmpz120:
    movs r0, #5
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz121
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_11_17      
.jmpz121:
    movs r0, #7
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz122
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_12_17      
.jmpz122:
    movs r0, #67
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz123
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_13_17      
.jmpz123:
    movs r0, #69
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz124
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_14_17      
.jmpz124:
    movs r0, #71
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz125
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_15_17      
.jmpz125:
    movs r0, #73
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz126
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_16_17      
.jmpz126:
    movs r0, #75
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz127
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_17_17      
.jmpz127:
    movs r0, #77
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz128
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_18_17      
.jmpz128:
    movs r0, #79
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz129
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_19_17      
.jmpz129:
    movs r0, #81
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz130
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_20_17      
.jmpz130:
    movs r0, #27
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz131
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_21_17      
.jmpz131:
    movs r0, #29
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz132
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_22_17      
.jmpz132:
    movs r0, #31
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz133
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_23_17      
.jmpz133:
    movs r0, #33
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz134
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_24_17      
.jmpz134:
    movs r0, #35
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz135
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_25_17      
.jmpz135:
    movs r0, #37
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz136
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_26_17      
.jmpz136:
    movs r0, #39
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz137
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_27_17      
.jmpz137:
    movs r0, #41
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz138
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_28_17      
.jmpz138:
    movs r0, #43
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz139
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_29_17      
.jmpz139:
    movs r0, #45
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz140
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_30_17      
.jmpz140:
    movs r0, #47
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz141
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_31_17      
.jmpz141:
    movs r0, #49
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz142
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_32_17      
.jmpz142:
    movs r0, #51
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz143
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_33_17      
.jmpz143:
    movs r0, #53
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz144
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_34_17      
.jmpz144:
    movs r0, #55
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz145
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_35_17      
.jmpz145:
    movs r0, #57
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz146
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_36_17      
.jmpz146:
    movs r0, #61
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz147
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_37_17      
.jmpz147:
    movs r0, #59
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz148
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_38_17      
.jmpz148:
    movs r0, #63
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz149
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_39_17      
.jmpz149:
    movs r0, #65
    ldr r1, [sp, #4*0] ; tmpref @1
    bl _pxt_switch_eq
    cmp r0, #0
    beq .jmpz150
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .switch_40_17      
.jmpz150:
    pop {r0} ; tmpref @1
    b .switch_41_17      
.switch_0_17:
    ldr r0, _ldlit_38 ; _img0      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_1_17:
    ldr r0, _ldlit_39 ; _img1      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.object PUSH
.balign 4
_ldlit_37:
 .word _catch_3468
_ldlit_38:
 .word _img0
_ldlit_39:
 .word _img1
.object POP
.switch_2_17:
    ldr r0, _ldlit_41 ; _img2      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_3_17:
    ldr r0, _ldlit_42 ; _img3      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_4_17:
    ldr r0, _ldlit_43 ; _img4      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_5_17:
    ldr r0, _ldlit_44 ; _img5      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_6_17:
    ldr r0, _ldlit_45 ; _img6      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_7_17:
    ldr r0, _ldlit_46 ; _img7      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_8_17:
    ldr r0, _ldlit_47 ; _img8      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_9_17:
    ldr r0, _ldlit_48 ; _img9      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_10_17:
    ldr r0, _ldlit_49 ; _img10      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_11_17:
    ldr r0, _ldlit_50 ; _img11      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_12_17:
    ldr r0, _ldlit_51 ; _img12      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_13_17:
    ldr r0, _ldlit_52 ; _img13      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_14_17:
    ldr r0, _ldlit_53 ; _img14      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_15_17:
    ldr r0, _ldlit_54 ; _img15      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_16_17:
    ldr r0, _ldlit_55 ; _img16      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_17_17:
    ldr r0, _ldlit_56 ; _img17      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_18_17:
    ldr r0, _ldlit_57 ; _img18      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_19_17:
    ldr r0, _ldlit_58 ; _img19      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_20_17:
    ldr r0, _ldlit_59 ; _img20      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_21_17:
    ldr r0, _ldlit_60 ; _img21      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_22_17:
    ldr r0, _ldlit_61 ; _img22      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_23_17:
    ldr r0, _ldlit_62 ; _img23      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_24_17:
    ldr r0, _ldlit_63 ; _img24      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_25_17:
    ldr r0, _ldlit_64 ; _img25      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_26_17:
    ldr r0, _ldlit_65 ; _img26      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_27_17:
    ldr r0, _ldlit_66 ; _img27      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_28_17:
    ldr r0, _ldlit_67 ; _img28      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_29_17:
    ldr r0, _ldlit_68 ; _img29      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_30_17:
    ldr r0, _ldlit_69 ; _img30      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_31_17:
    ldr r0, _ldlit_70 ; _img31      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_32_17:
    ldr r0, _ldlit_71 ; _img32      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_33_17:
    ldr r0, _ldlit_72 ; _img33      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_34_17:
    ldr r0, _ldlit_73 ; _img34      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_35_17:
    ldr r0, _ldlit_74 ; _img35      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_36_17:
    ldr r0, _ldlit_75 ; _img36      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_37_17:
    ldr r0, _ldlit_76 ; _img37      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_38_17:
    ldr r0, _ldlit_77 ; _img38      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_39_17:
    ldr r0, _ldlit_78 ; _img39      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_40_17:
    ldr r0, _ldlit_79 ; _img40      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.switch_41_17:
    ldr r0, _ldlit_80 ; _img41      
    mov r7, sp
    str r7, [r6, #4]
    bl images::createImage
    b .ret.2441      
.brk.3501:
    movs r0, #0
.ret.2441:
    @stackempty locals
.final_42_17:
images_iconImage__P2441_end:
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
    beq .else_0_18      
.jmpz151:
    mov r7, sp
    str r7, [r6, #4]
    bl String_::mkEmpty
    str r0, [sp, args@0]
    @stackempty locals
.else_0_18:
.afterif_1_18:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    movs r1, #1
    bl _cmp_gt
    bne .jmpz152
    b .else_2_18      
.jmpz152:
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    push {r0} ; proc-arg
    bl _conv_7
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
    ldr r0, [r7, #12]
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
    ldr r0, [r7, #12]
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
.fortop.3655:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@0]
    bl _cmp_lt
    bne .jmpz153
    b .brk.3655      
.object PUSH
.balign 4
_ldlit_41:
 .word _img2
_ldlit_42:
 .word _img3
_ldlit_43:
 .word _img4
_ldlit_44:
 .word _img5
_ldlit_45:
 .word _img6
_ldlit_46:
 .word _img7
_ldlit_47:
 .word _img8
_ldlit_48:
 .word _img9
_ldlit_49:
 .word _img10
_ldlit_50:
 .word _img11
_ldlit_51:
 .word _img12
_ldlit_52:
 .word _img13
_ldlit_53:
 .word _img14
_ldlit_54:
 .word _img15
_ldlit_55:
 .word _img16
_ldlit_56:
 .word _img17
_ldlit_57:
 .word _img18
_ldlit_58:
 .word _img19
_ldlit_59:
 .word _img20
_ldlit_60:
 .word _img21
_ldlit_61:
 .word _img22
_ldlit_62:
 .word _img23
_ldlit_63:
 .word _img24
_ldlit_64:
 .word _img25
_ldlit_65:
 .word _img26
_ldlit_66:
 .word _img27
_ldlit_67:
 .word _img28
_ldlit_68:
 .word _img29
_ldlit_69:
 .word _img30
_ldlit_70:
 .word _img31
_ldlit_71:
 .word _img32
_ldlit_72:
 .word _img33
_ldlit_73:
 .word _img34
_ldlit_74:
 .word _img35
_ldlit_75:
 .word _img36
_ldlit_76:
 .word _img37
_ldlit_77:
 .word _img38
_ldlit_78:
 .word _img39
_ldlit_79:
 .word _img40
_ldlit_80:
 .word _img41
.object POP
.jmpz153:
    ldr r0, _ldlit_82 ; _str43      
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    @stackempty locals
.cont.3655:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3655      
.brk.3655:
.else_2_18:
.afterif_3_18:
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    push {r0} ; proc-arg
    bl _conv_7
    mov r7, sp
    str r7, [r6, #4]
    bl serial::writeString
    add sp, #4*1 ; pop locals 1
    @stackempty locals
.ret.2799:
    @stackempty locals
    movs r0, #0
.final_4_18:
    add sp, #4*2 ; pop locals 2
serial_writeLine__P2799_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/console.ts(115,5): console.addListener
    ;
    .object console_addListener__P2543 "core/console.ts(115,5): console.addListener"
console_addListener__P2543_pre:
    .section code
    .balign 4
    .section code
console_addListener__P2543:
console_addListener__P2543_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
console_addListener__P2543_locals:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
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
    beq .else_0_19      
.jmpz154:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
.else_0_19:
.afterif_1_19:
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
    beq .lazySkip_4_19      
.jmpz155:
    ldr r0, [sp, #4*0] ; tmpref @1
    @dummystack 1
    add sp, #4*1 ; pop locals 1
    b .lazy_3_19      
.lazySkip_4_19:
    ldr r0, [sp, #0]      
    ldr r0, [sp, #4*0] ; estack
    add sp, #4*1 ; pop locals 1
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_16
    movs r2, #0
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::indexOf
    add sp, #4*2 ; pop locals 2
    bl _numops_fromInt
    push {r0} ; proc-arg
    movs r1, #1
    negs r1, r1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::gt
    add sp, #4*1 ; pop locals 1
.lazy_3_19:
; jmp value (already in r0)
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_2_19      
.jmpz156:
    b .ret.2543      
.else_2_19:
.afterif_5_19:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_16
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2543:
    @stackempty locals
    movs r0, #0
.final_6_19:
console_addListener__P2543_end:
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
    bl _inst_builtin4_validate_0
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
.object PUSH
.balign 4
_ldlit_82:
 .word _str43
.object POP
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
    ldr r1, _ldlit_84 ; _pxt_bind_lit      
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
    ldr r2, _ldlit_85 ; _pxt_copy_list      
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
    .object _code_helper__inst_builtin4_validate_0
_inst_builtin4_validate_0:
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
    .object _code_helper__conv_1
_conv_1:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin4_validate_0
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_2
_conv_2:
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
    .object _code_helper__conv_3
_conv_3:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin4_validate_0
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_4
_conv_4:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin4_validate_0
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__expand_args_2_5
_expand_args_2_5:
    movs r0, #0
    movs r1, #0
    push {r0}
    cmp r4, #1
    blt .zero1
    ldr r0, [sp, #2*4]
    str r1, [sp, #2*4] ; clear existing
.zero1:
    push {r0}
    bx lr
    .section code
    .object _code_helper__conv_6
_conv_6:
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
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__conv_7
_conv_7:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_8
_conv_8:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    mov r1, r0      
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__inst_builtin6_validate_9
_inst_builtin6_validate_9:
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
    .object _code_helper__conv_10
_conv_10:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _inst_builtin6_validate_9
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_11
_conv_11:
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
    .object _code_helper__inst_builtin3_validate_12
_inst_builtin3_validate_12:
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
    .object _code_helper__conv_13
_conv_13:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin3_validate_12
    mov r1, r0      
    ldr r2, [sp, #4*1] ; estack
    pop {pc}
.object PUSH
.balign 4
_ldlit_84:
 .word _pxt_bind_lit
_ldlit_85:
 .word _pxt_copy_list
.object POP
    @stackempty args
    .section code
    .object _code_helper__inst_builtin9_validate_14
_inst_builtin9_validate_14:
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
    .object _code_helper__conv_15
_conv_15:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin9_validate_14
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
    .object _code_helper__conv_16
_conv_16:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _inst_builtin6_validate_9
    ldr r1, [sp, #4*1] ; estack
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
    .word _str157  ; 0 .
    .word 0
_vtables_end:
.balign 4
.object _pxt_config_data
_pxt_config_data:
    .word 0
.balign 4
_img0:
 .short 0xffff
        .short 5, 5
        .byte 0,255,0,255,0,255,255,255,255,255,255,255,255,255,255,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img1:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,255,255,255,0,0,0,255,0,0,0,0,0,0,0,0
.balign 4
_img2:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,0,0,0,0,255,0,0,0,255,0,255,255,255,0,0
.balign 4
_img3:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,0,0,0,0,0,255,255,255,0,255,0,0,0,255,0
.balign 4
_img4:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,0,255,0,0,0,0,0,0,0,255,0,255,0,255,0,255,0,255,0
.balign 4
_img5:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,255,0,255,0,0,0,0,0,0,255,255,255,255,255,255,0,255,0,255,0
.balign 4
_img6:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,255,255,0,255,255,0,0,0,0,0,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img7:
 .short 0xffff
        .short 5, 5
        .byte 0,255,0,255,0,0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,0,0,255,0,0,0
.balign 4
_img8:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,0,0,0,0,255,255,255,255,255,0,0,0,255,255,0,0,0,255,255,0
.balign 4
_img9:
 .short 0xffff
        .short 5, 5
        .byte 255,255,255,255,255,255,255,0,255,255,0,0,0,0,0,0,255,0,255,0,0,255,255,255,0,0
.balign 4
_img10:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,255,255,0,0,0,0,0,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,0
.balign 4
_img11:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0,0
.balign 4
_img12:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0
.balign 4
_img13:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,255,255,255,255,255,0,0,0,0,0,0
.balign 4
_img14:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,0,255,255,0,0,0,255,0,255,0,0,255,0,0,255,0,255,255,255,255,255,0
.balign 4
_img15:
 .short 0xffff
        .short 5, 5
        .byte 0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,255,0,0
.balign 4
_img16:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0
.balign 4
_img17:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,255,0,0,0,255,0,255,0,0,0,255,0,0,0,0,0,0,0,0
.balign 4
_img18:
 .short 0xffff
        .short 5, 5
        .byte 255,255,255,255,255,255,0,0,0,255,255,0,0,0,255,255,0,0,0,255,255,255,255,255,255,0
.balign 4
_img19:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,255,255,0,0,255,0,255,0,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img20:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,0,255,255,255,0,255,0,0,0,255,0,0,255,255,0,255,0,255,255,0,0,255,0
.balign 4
_img21:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,255,255,255,255,255,255,255,0,255,255,255,0,0,255,255,255,0,0,255,255,255,0,0
.balign 4
_img22:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,255,255,0,0,0,255,255,255,255,255,255,255,255,255,255,255,255,0,255,0,255,0,0
.balign 4
_img23:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,0,0,255,255,255,0,0,0,255,255,255,255,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img24:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,255,255,255,0,255,255,255,255,255,0,255,255,255,0,0,255,0,255,0,0
.balign 4
_img25:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,255,255,255,0,255,255,255,255,255,0,255,0,255,0,0,0,0,0,0,0
.balign 4
_img26:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,255,255,255,255,255,255,255,0,0,255,0,0,255,255,255,255,255,255,255,0,255,255,0
.balign 4
_img27:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,255,255,255,255,255,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0
.balign 4
_img28:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,0,255,0,255,255,255,255,255,255,255,255,255,255,255,255,0,255,0,255,0
.balign 4
_img29:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,0,0,0,0,255,0,0,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img30:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,0,0,0,255,0,0,0,0,255,0,0,0,0,255,255,255,0,0,255,0,255,0,0
.balign 4
_img31:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,0,255,0,255,255,255,255,255,255,0,255,255,255,0,0,255,255,255,0,0
.balign 4
_img32:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,255,255,255,255,0,0,255,0,0,255,0,255,0,0,255,255,255,0,0,0
.balign 4
_img33:
 .short 0xffff
        .short 5, 5
        .byte 255,255,0,0,0,255,255,0,255,255,0,255,0,255,0,0,255,255,255,0,0,0,0,0,0,0
.balign 4
_img34:
 .short 0xffff
        .short 5, 5
        .byte 255,0,255,0,0,255,0,255,0,0,255,255,255,255,0,255,255,0,255,0,255,255,255,255,0,0
.balign 4
_img35:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,255,0,0,0,255,255,255,255,255,255,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img36:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,0,0,0,0,255,0,0,255,255,255,0,0,255,255,255,0,0,0
.balign 4
_img37:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,255,0,0,0,255,0,255,255,255,255,0,0,255,255,255,0,0,0
.balign 4
_img38:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,0,255,255,0,0,0,255,0,255,255,255,255,0,0,255,255,255,0,0,0
.balign 4
_img39:
 .short 0xffff
        .short 5, 5
        .byte 255,0,255,0,255,255,0,255,0,255,255,255,255,255,255,0,0,255,0,0,0,0,255,0,0,0
.balign 4
_img40:
 .short 0xffff
        .short 5, 5
        .byte 0,0,255,0,0,0,255,255,255,0,255,255,0,255,255,0,255,255,255,0,0,0,255,0,0,0
.balign 4
_img41:
 .short 0xffff
        .short 5, 5
        .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.balign 4
_img45:
 .short 0xffff
        .short 5, 5
        .byte 0,255,255,255,0,255,0,0,0,255,255,0,0,0,255,255,0,0,0,255,0,255,255,255,0,0
.balign 4
_img46:
 .short 0xffff
        .short 5, 5
        .byte 255,0,0,0,255,0,255,0,255,0,0,0,255,0,0,0,255,0,255,0,255,0,0,0,255,0
            .balign 4
            .object _str157
_str157:
 .word pxt::string_inline_ascii_vt
    .short 0
    .string ""
            .balign 4
            .object _str42
_str42:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "\x0d\n"
            .balign 4
            .object _str43
_str43:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string " "
            .balign 4
            .object _str44
_str44:
 .word pxt::string_inline_ascii_vt
    .short 6
    .string "SERVO:"
            .balign 4
            .object _str47
_str47:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!k"
            .balign 4
            .object _str48
_str48:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!K"
            .balign 4
            .object _str49
_str49:
 .word pxt::string_inline_ascii_vt
    .short 6
    .string "smile\n"
            .balign 4
            .object _str50
_str50:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!j"
            .balign 4
            .object _str51
_str51:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!J"
            .balign 4
            .object _str52
_str52:
 .word pxt::string_inline_ascii_vt
    .short 6
    .string "frown\n"
            .balign 4
            .object _str53
_str53:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!r"
            .balign 4
            .object _str54
_str54:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!R"
            .balign 4
            .object _str55
_str55:
 .word pxt::string_inline_ascii_vt
    .short 7
    .string "circle\n"
            .balign 4
            .object _str56
_str56:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!x"
            .balign 4
            .object _str57
_str57:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "!X"
            .balign 4
            .object _str58
_str58:
 .word pxt::string_inline_ascii_vt
    .short 6
    .string "cross\n"
            .balign 4
            .object _str59
_str59:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "ACK:"
            .balign 4
            .object _str60
_str60:
 .word pxt::string_inline_ascii_vt
    .short 1
    .string "\n"
            .balign 4
            .object _str61
_str61:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "BOOT"
            .balign 4
            .object _str62
_str62:
 .word pxt::string_inline_ascii_vt
    .short 2
    .string "BT"
            .balign 4
            .object _str63
_str63:
 .word pxt::string_inline_ascii_vt
    .short 9
    .string "CONNECTED"
            .balign 4
            .object _str64
_str64:
 .word pxt::string_inline_ascii_vt
    .short 12
    .string "DISCONNECTED"
            .balign 4
            .object _str65
_str65:
 .word pxt::string_inline_ascii_vt
    .short 4
    .string "GOT:"
            .balign 4
            .object _str66
_str66:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "BUTTON:A"
            .balign 4
            .object _str67
_str67:
 .word pxt::string_inline_ascii_vt
    .short 8
    .string "BUTTON:B"
            .balign 4
            .object _str68
_str68:
 .word pxt::string_inline_ascii_vt
    .short 10
    .string "my-project"
.balign 4
.section code
.object _perf_counters
_pxt_perf_counters:
    .word 0
_literals_end:
