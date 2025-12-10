
build_sf32lb52-lchspi-ulp_hcpu\lcpu\lcpu.elf:     file format elf32-littlearm


Disassembly of section .text:

00400000 <__Vectors>:
  400000:	20401a20 	.word	0x20401a20
  400004:	0040027d 	.word	0x0040027d
  400008:	0040035d 	.word	0x0040035d
  40000c:	000008a9 	.word	0x000008a9
  400010:	000008e5 	.word	0x000008e5
  400014:	004002c7 	.word	0x004002c7
  400018:	004002c7 	.word	0x004002c7
  40001c:	004002c7 	.word	0x004002c7
	...
  40002c:	004002c7 	.word	0x004002c7
  400030:	004002c7 	.word	0x004002c7
  400034:	00000000 	.word	0x00000000
  400038:	0000080d 	.word	0x0000080d
  40003c:	00400e99 	.word	0x00400e99
  400040:	00400dc5 	.word	0x00400dc5
  400044:	00004fa1 	.word	0x00004fa1
  400048:	004002c7 	.word	0x004002c7
  40004c:	004002c7 	.word	0x004002c7
  400050:	004002c7 	.word	0x004002c7
  400054:	004002c7 	.word	0x004002c7
  400058:	004002c7 	.word	0x004002c7
  40005c:	004002c7 	.word	0x004002c7
  400060:	004002c7 	.word	0x004002c7
  400064:	004002c7 	.word	0x004002c7
  400068:	004002c7 	.word	0x004002c7
  40006c:	00007361 	.word	0x00007361
  400070:	004002c7 	.word	0x004002c7
  400074:	004002c7 	.word	0x004002c7
  400078:	004002c7 	.word	0x004002c7
  40007c:	00005901 	.word	0x00005901
  400080:	004002c7 	.word	0x004002c7
  400084:	004002c7 	.word	0x004002c7
  400088:	00400a65 	.word	0x00400a65
  40008c:	004002c7 	.word	0x004002c7
  400090:	004002c7 	.word	0x004002c7
  400094:	004002c7 	.word	0x004002c7
  400098:	004002c7 	.word	0x004002c7
  40009c:	00400b5d 	.word	0x00400b5d
  4000a0:	004002c7 	.word	0x004002c7
  4000a4:	004002c7 	.word	0x004002c7
  4000a8:	004002c7 	.word	0x004002c7
  4000ac:	004002c7 	.word	0x004002c7
  4000b0:	004002c7 	.word	0x004002c7
  4000b4:	004002c7 	.word	0x004002c7
  4000b8:	004002c7 	.word	0x004002c7
  4000bc:	004002c7 	.word	0x004002c7
	...

00400100 <deregister_tm_clones>:
  400100:	4803      	ldr	r0, [pc, #12]	@ (400110 <deregister_tm_clones+0x10>)
  400102:	4b04      	ldr	r3, [pc, #16]	@ (400114 <deregister_tm_clones+0x14>)
  400104:	4283      	cmp	r3, r0
  400106:	d002      	beq.n	40010e <deregister_tm_clones+0xe>
  400108:	4b03      	ldr	r3, [pc, #12]	@ (400118 <deregister_tm_clones+0x18>)
  40010a:	b103      	cbz	r3, 40010e <deregister_tm_clones+0xe>
  40010c:	4718      	bx	r3
  40010e:	4770      	bx	lr
  400110:	20401620 	.word	0x20401620
  400114:	20401620 	.word	0x20401620
  400118:	00000000 	.word	0x00000000

0040011c <register_tm_clones>:
  40011c:	4b06      	ldr	r3, [pc, #24]	@ (400138 <register_tm_clones+0x1c>)
  40011e:	4907      	ldr	r1, [pc, #28]	@ (40013c <register_tm_clones+0x20>)
  400120:	1ac9      	subs	r1, r1, r3
  400122:	1089      	asrs	r1, r1, #2
  400124:	bf48      	it	mi
  400126:	3101      	addmi	r1, #1
  400128:	1049      	asrs	r1, r1, #1
  40012a:	d003      	beq.n	400134 <register_tm_clones+0x18>
  40012c:	4b04      	ldr	r3, [pc, #16]	@ (400140 <register_tm_clones+0x24>)
  40012e:	b10b      	cbz	r3, 400134 <register_tm_clones+0x18>
  400130:	4801      	ldr	r0, [pc, #4]	@ (400138 <register_tm_clones+0x1c>)
  400132:	4718      	bx	r3
  400134:	4770      	bx	lr
  400136:	bf00      	nop
  400138:	20401620 	.word	0x20401620
  40013c:	20401620 	.word	0x20401620
  400140:	00000000 	.word	0x00000000

00400144 <__do_global_dtors_aux>:
  400144:	b510      	push	{r4, lr}
  400146:	4c06      	ldr	r4, [pc, #24]	@ (400160 <__do_global_dtors_aux+0x1c>)
  400148:	7823      	ldrb	r3, [r4, #0]
  40014a:	b943      	cbnz	r3, 40015e <__do_global_dtors_aux+0x1a>
  40014c:	f7ff ffd8 	bl	400100 <deregister_tm_clones>
  400150:	4b04      	ldr	r3, [pc, #16]	@ (400164 <__do_global_dtors_aux+0x20>)
  400152:	b113      	cbz	r3, 40015a <__do_global_dtors_aux+0x16>
  400154:	4804      	ldr	r0, [pc, #16]	@ (400168 <__do_global_dtors_aux+0x24>)
  400156:	f3af 8000 	nop.w
  40015a:	2301      	movs	r3, #1
  40015c:	7023      	strb	r3, [r4, #0]
  40015e:	bd10      	pop	{r4, pc}
  400160:	20401a20 	.word	0x20401a20
  400164:	00000000 	.word	0x00000000
  400168:	004015c8 	.word	0x004015c8

0040016c <frame_dummy>:
  40016c:	b508      	push	{r3, lr}
  40016e:	4b05      	ldr	r3, [pc, #20]	@ (400184 <frame_dummy+0x18>)
  400170:	b11b      	cbz	r3, 40017a <frame_dummy+0xe>
  400172:	4905      	ldr	r1, [pc, #20]	@ (400188 <frame_dummy+0x1c>)
  400174:	4805      	ldr	r0, [pc, #20]	@ (40018c <frame_dummy+0x20>)
  400176:	f3af 8000 	nop.w
  40017a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  40017e:	f7ff bfcd 	b.w	40011c <register_tm_clones>
  400182:	bf00      	nop
  400184:	00000000 	.word	0x00000000
  400188:	20401a24 	.word	0x20401a24
  40018c:	004015c8 	.word	0x004015c8

00400190 <HAL_MspInit>:
  400190:	4770      	bx	lr

00400192 <SystemClock_Config>:
  400192:	4770      	bx	lr

00400194 <rc10k_cal_hook_func>:
  400194:	b537      	push	{r0, r1, r2, r4, r5, lr}
  400196:	f640 32b8 	movw	r2, #3000	@ 0xbb8
  40019a:	4b08      	ldr	r3, [pc, #32]	@ (4001bc <rc10k_cal_hook_func+0x28>)
  40019c:	4c08      	ldr	r4, [pc, #32]	@ (4001c0 <rc10k_cal_hook_func+0x2c>)
  40019e:	6c9d      	ldr	r5, [r3, #72]	@ 0x48
  4001a0:	6823      	ldr	r3, [r4, #0]
  4001a2:	1aeb      	subs	r3, r5, r3
  4001a4:	4293      	cmp	r3, r2
  4001a6:	d906      	bls.n	4001b6 <rc10k_cal_hook_func+0x22>
  4001a8:	f000 f92a 	bl	400400 <HAL_RC_CAL_GetLPCycle_ex>
  4001ac:	a901      	add	r1, sp, #4
  4001ae:	f000 f937 	bl	400420 <HAL_RC_CALget_curr_cycle_on_48M>
  4001b2:	b900      	cbnz	r0, 4001b6 <rc10k_cal_hook_func+0x22>
  4001b4:	6025      	str	r5, [r4, #0]
  4001b6:	b003      	add	sp, #12
  4001b8:	bd30      	pop	{r4, r5, pc}
  4001ba:	bf00      	nop
  4001bc:	40040000 	.word	0x40040000
  4001c0:	20401a3c 	.word	0x20401a3c

004001c4 <rc10k_cal_init>:
  4001c4:	b507      	push	{r0, r1, r2, lr}
  4001c6:	4b0b      	ldr	r3, [pc, #44]	@ (4001f4 <rc10k_cal_init+0x30>)
  4001c8:	f893 30db 	ldrb.w	r3, [r3, #219]	@ 0xdb
  4001cc:	b173      	cbz	r3, 4001ec <rc10k_cal_init+0x28>
  4001ce:	4b0a      	ldr	r3, [pc, #40]	@ (4001f8 <rc10k_cal_init+0x34>)
  4001d0:	480a      	ldr	r0, [pc, #40]	@ (4001fc <rc10k_cal_init+0x38>)
  4001d2:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
  4001d4:	4b0a      	ldr	r3, [pc, #40]	@ (400200 <rc10k_cal_init+0x3c>)
  4001d6:	601a      	str	r2, [r3, #0]
  4001d8:	f455 fd92 	bl	55d00 <rt_thread_idle_sethook>
  4001dc:	2014      	movs	r0, #20
  4001de:	f000 f915 	bl	40040c <HAL_RC_CAL_SetLPCycle_ex>
  4001e2:	f000 f90d 	bl	400400 <HAL_RC_CAL_GetLPCycle_ex>
  4001e6:	a901      	add	r1, sp, #4
  4001e8:	f000 f91a 	bl	400420 <HAL_RC_CALget_curr_cycle_on_48M>
  4001ec:	2000      	movs	r0, #0
  4001ee:	b003      	add	sp, #12
  4001f0:	f85d fb04 	ldr.w	pc, [sp], #4
  4001f4:	2040fd00 	.word	0x2040fd00
  4001f8:	40040000 	.word	0x40040000
  4001fc:	00400195 	.word	0x00400195
  400200:	20401a3c 	.word	0x20401a3c

00400204 <main>:
  400204:	2000      	movs	r0, #0
  400206:	4770      	bx	lr

00400208 <HAL_PreInit>:
  400208:	b508      	push	{r3, lr}
  40020a:	f401 fed1 	bl	1fb0 <HAL_LPAON_EnableXT48>
  40020e:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
  400212:	6913      	ldr	r3, [r2, #16]
  400214:	2101      	movs	r1, #1
  400216:	f023 0303 	bic.w	r3, r3, #3
  40021a:	f043 0301 	orr.w	r3, r3, #1
  40021e:	6113      	str	r3, [r2, #16]
  400220:	6913      	ldr	r3, [r2, #16]
  400222:	2002      	movs	r0, #2
  400224:	f043 0310 	orr.w	r3, r3, #16
  400228:	6113      	str	r3, [r2, #16]
  40022a:	2203      	movs	r2, #3
  40022c:	f402 f88c 	bl	2348 <HAL_RCC_LCPU_SetDiv>
  400230:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400234:	f7ff bfac 	b.w	400190 <HAL_MspInit>

00400238 <hw_preinit0>:
  400238:	4770      	bx	lr
	...

0040023c <SystemInit>:
  40023c:	b508      	push	{r3, lr}
  40023e:	4a0b      	ldr	r2, [pc, #44]	@ (40026c <SystemInit+0x30>)
  400240:	4b0b      	ldr	r3, [pc, #44]	@ (400270 <SystemInit+0x34>)
  400242:	609a      	str	r2, [r3, #8]
  400244:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
  400248:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
  40024c:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
  400250:	f7ff fff2 	bl	400238 <hw_preinit0>
  400254:	f450 f9ba 	bl	505cc <mpu_config>
  400258:	f405 fe76 	bl	5f48 <cache_enable>
  40025c:	f000 fced 	bl	400c3a <SystemPowerOnModeInit>
  400260:	f451 f836 	bl	512d0 <rom_scatterload>
  400264:	4b03      	ldr	r3, [pc, #12]	@ (400274 <SystemInit+0x38>)
  400266:	4a04      	ldr	r2, [pc, #16]	@ (400278 <SystemInit+0x3c>)
  400268:	601a      	str	r2, [r3, #0]
  40026a:	bd08      	pop	{r3, pc}
  40026c:	00400000 	.word	0x00400000
  400270:	e000ed00 	.word	0xe000ed00
  400274:	204015e4 	.word	0x204015e4
  400278:	017d7840 	.word	0x017d7840

0040027c <Reset_Handler>:
  40027c:	f8df d048 	ldr.w	sp, [pc, #72]	@ 4002c8 <BTIM3_IRQHandler+0x2>
  400280:	4812      	ldr	r0, [pc, #72]	@ (4002cc <BTIM3_IRQHandler+0x6>)
  400282:	f380 880a 	msr	MSPLIM, r0
  400286:	f7ff ffd9 	bl	40023c <SystemInit>
  40028a:	4c11      	ldr	r4, [pc, #68]	@ (4002d0 <BTIM3_IRQHandler+0xa>)
  40028c:	4d11      	ldr	r5, [pc, #68]	@ (4002d4 <BTIM3_IRQHandler+0xe>)
  40028e:	42ac      	cmp	r4, r5
  400290:	da09      	bge.n	4002a6 <Reset_Handler+0x2a>
  400292:	6821      	ldr	r1, [r4, #0]
  400294:	6862      	ldr	r2, [r4, #4]
  400296:	68a3      	ldr	r3, [r4, #8]
  400298:	3b04      	subs	r3, #4
  40029a:	bfa2      	ittt	ge
  40029c:	58c8      	ldrge	r0, [r1, r3]
  40029e:	50d0      	strge	r0, [r2, r3]
  4002a0:	e7fa      	bge.n	400298 <Reset_Handler+0x1c>
  4002a2:	340c      	adds	r4, #12
  4002a4:	e7f3      	b.n	40028e <Reset_Handler+0x12>
  4002a6:	4b0c      	ldr	r3, [pc, #48]	@ (4002d8 <BTIM3_IRQHandler+0x12>)
  4002a8:	4c0c      	ldr	r4, [pc, #48]	@ (4002dc <BTIM3_IRQHandler+0x16>)
  4002aa:	42a3      	cmp	r3, r4
  4002ac:	da08      	bge.n	4002c0 <Reset_Handler+0x44>
  4002ae:	6819      	ldr	r1, [r3, #0]
  4002b0:	685a      	ldr	r2, [r3, #4]
  4002b2:	2000      	movs	r0, #0
  4002b4:	3a04      	subs	r2, #4
  4002b6:	bfa4      	itt	ge
  4002b8:	5088      	strge	r0, [r1, r2]
  4002ba:	e7fb      	bge.n	4002b4 <Reset_Handler+0x38>
  4002bc:	3308      	adds	r3, #8
  4002be:	e7f4      	b.n	4002aa <Reset_Handler+0x2e>
  4002c0:	f000 feca 	bl	401058 <entry>
  4002c4:	e7fe      	b.n	4002c4 <Reset_Handler+0x48>

004002c6 <BTIM3_IRQHandler>:
  4002c6:	e7fe      	b.n	4002c6 <BTIM3_IRQHandler>
  4002c8:	20401a20 	.word	0x20401a20
  4002cc:	20401620 	.word	0x20401620
  4002d0:	004015dc 	.word	0x004015dc
  4002d4:	004015dc 	.word	0x004015dc
  4002d8:	004015dc 	.word	0x004015dc
  4002dc:	004015e4 	.word	0x004015e4

004002e0 <__aeabi_unwind_cpp_pr0>:
  4002e0:	2000      	movs	r0, #0
  4002e2:	4770      	bx	lr

004002e4 <HAL_PostMspInit>:
  4002e4:	4770      	bx	lr

004002e6 <HAL_Init>:
  4002e6:	b508      	push	{r3, lr}
  4002e8:	f7ff ff8e 	bl	400208 <HAL_PreInit>
  4002ec:	f7ff fffa 	bl	4002e4 <HAL_PostMspInit>
  4002f0:	f000 fa67 	bl	4007c2 <HAL_RCC_Init>
  4002f4:	2003      	movs	r0, #3
  4002f6:	f401 fefb 	bl	20f0 <HAL_NVIC_SetPriorityGrouping>
  4002fa:	2000      	movs	r0, #0
  4002fc:	f000 fdc9 	bl	400e92 <HAL_InitTick>
  400300:	3800      	subs	r0, #0
  400302:	bf18      	it	ne
  400304:	2001      	movne	r0, #1
  400306:	bd08      	pop	{r3, pc}

00400308 <HAL_IncTick>:
  400308:	4a02      	ldr	r2, [pc, #8]	@ (400314 <HAL_IncTick+0xc>)
  40030a:	6813      	ldr	r3, [r2, #0]
  40030c:	3301      	adds	r3, #1
  40030e:	6013      	str	r3, [r2, #0]
  400310:	4770      	bx	lr
  400312:	bf00      	nop
  400314:	20401a40 	.word	0x20401a40

00400318 <HAL_Delay_us>:
  400318:	4603      	mov	r3, r0
  40031a:	b570      	push	{r4, r5, r6, lr}
  40031c:	b1b8      	cbz	r0, 40034e <HAL_Delay_us+0x36>
  40031e:	f242 7510 	movw	r5, #10000	@ 0x2710
  400322:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
  400326:	42ab      	cmp	r3, r5
  400328:	bf84      	itt	hi
  40032a:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
  40032e:	f242 7310 	movwhi	r3, #10000	@ 0x2710
  400332:	6932      	ldr	r2, [r6, #16]
  400334:	bf98      	it	ls
  400336:	2400      	movls	r4, #0
  400338:	4618      	mov	r0, r3
  40033a:	bf88      	it	hi
  40033c:	3c10      	subhi	r4, #16
  40033e:	07d3      	lsls	r3, r2, #31
  400340:	d408      	bmi.n	400354 <HAL_Delay_us+0x3c>
  400342:	f401 fcc3 	bl	1ccc <HAL_Delay_us_>
  400346:	4623      	mov	r3, r4
  400348:	2c00      	cmp	r4, #0
  40034a:	d1ec      	bne.n	400326 <HAL_Delay_us+0xe>
  40034c:	e001      	b.n	400352 <HAL_Delay_us+0x3a>
  40034e:	f401 fcbd 	bl	1ccc <HAL_Delay_us_>
  400352:	bd70      	pop	{r4, r5, r6, pc}
  400354:	f401 fc9c 	bl	1c90 <HAL_Delay_us2_>
  400358:	e7f5      	b.n	400346 <HAL_Delay_us+0x2e>
	...

0040035c <NMI_Handler>:
  40035c:	b508      	push	{r3, lr}
  40035e:	4b05      	ldr	r3, [pc, #20]	@ (400374 <NMI_Handler+0x18>)
  400360:	691b      	ldr	r3, [r3, #16]
  400362:	005b      	lsls	r3, r3, #1
  400364:	d502      	bpl.n	40036c <NMI_Handler+0x10>
  400366:	f000 fc3d 	bl	400be4 <DBG_Trigger_IRQHandler>
  40036a:	bd08      	pop	{r3, pc}
  40036c:	f000 fd34 	bl	400dd8 <WDT_IRQHandler>
  400370:	e7fb      	b.n	40036a <NMI_Handler+0xe>
  400372:	bf00      	nop
  400374:	4000f000 	.word	0x4000f000

00400378 <HAL_GPIO_Restore>:
  400378:	4b11      	ldr	r3, [pc, #68]	@ (4003c0 <HAL_GPIO_Restore+0x48>)
  40037a:	b5f0      	push	{r4, r5, r6, r7, lr}
  40037c:	4298      	cmp	r0, r3
  40037e:	d11b      	bne.n	4003b8 <HAL_GPIO_Restore+0x40>
  400380:	2a03      	cmp	r2, #3
  400382:	d11b      	bne.n	4003bc <HAL_GPIO_Restore+0x44>
  400384:	2400      	movs	r4, #0
  400386:	271c      	movs	r7, #28
  400388:	fb07 f604 	mul.w	r6, r7, r4
  40038c:	198d      	adds	r5, r1, r6
  40038e:	598e      	ldr	r6, [r1, r6]
  400390:	eb00 13c4 	add.w	r3, r0, r4, lsl #7
  400394:	605e      	str	r6, [r3, #4]
  400396:	686e      	ldr	r6, [r5, #4]
  400398:	3401      	adds	r4, #1
  40039a:	611e      	str	r6, [r3, #16]
  40039c:	68ee      	ldr	r6, [r5, #12]
  40039e:	42a2      	cmp	r2, r4
  4003a0:	629e      	str	r6, [r3, #40]	@ 0x28
  4003a2:	692e      	ldr	r6, [r5, #16]
  4003a4:	639e      	str	r6, [r3, #56]	@ 0x38
  4003a6:	696e      	ldr	r6, [r5, #20]
  4003a8:	645e      	str	r6, [r3, #68]	@ 0x44
  4003aa:	69ae      	ldr	r6, [r5, #24]
  4003ac:	651e      	str	r6, [r3, #80]	@ 0x50
  4003ae:	68ad      	ldr	r5, [r5, #8]
  4003b0:	61dd      	str	r5, [r3, #28]
  4003b2:	d8e9      	bhi.n	400388 <HAL_GPIO_Restore+0x10>
  4003b4:	2000      	movs	r0, #0
  4003b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
  4003b8:	2a02      	cmp	r2, #2
  4003ba:	e7e2      	b.n	400382 <HAL_GPIO_Restore+0xa>
  4003bc:	2001      	movs	r0, #1
  4003be:	e7fa      	b.n	4003b6 <HAL_GPIO_Restore+0x3e>
  4003c0:	500a0000 	.word	0x500a0000

004003c4 <HAL_RC_locked>:
  4003c4:	b507      	push	{r0, r1, r2, lr}
  4003c6:	2100      	movs	r1, #0
  4003c8:	2002      	movs	r0, #2
  4003ca:	f000 f8ab 	bl	400524 <HAL_MAILBOX_GetMutex>
  4003ce:	2100      	movs	r1, #0
  4003d0:	9001      	str	r0, [sp, #4]
  4003d2:	a801      	add	r0, sp, #4
  4003d4:	f000 f8c2 	bl	40055c <HAL_MAILBOX_Lock>
  4003d8:	3800      	subs	r0, #0
  4003da:	bf18      	it	ne
  4003dc:	2001      	movne	r0, #1
  4003de:	4240      	negs	r0, r0
  4003e0:	b003      	add	sp, #12
  4003e2:	f85d fb04 	ldr.w	pc, [sp], #4

004003e6 <HAL_RC_unlocked>:
  4003e6:	b507      	push	{r0, r1, r2, lr}
  4003e8:	2100      	movs	r1, #0
  4003ea:	2002      	movs	r0, #2
  4003ec:	f000 f89a 	bl	400524 <HAL_MAILBOX_GetMutex>
  4003f0:	2100      	movs	r1, #0
  4003f2:	9001      	str	r0, [sp, #4]
  4003f4:	a801      	add	r0, sp, #4
  4003f6:	f000 f8c3 	bl	400580 <HAL_MAILBOX_UnLock>
  4003fa:	b003      	add	sp, #12
  4003fc:	f85d fb04 	ldr.w	pc, [sp], #4

00400400 <HAL_RC_CAL_GetLPCycle_ex>:
  400400:	4b01      	ldr	r3, [pc, #4]	@ (400408 <HAL_RC_CAL_GetLPCycle_ex+0x8>)
  400402:	7818      	ldrb	r0, [r3, #0]
  400404:	4770      	bx	lr
  400406:	bf00      	nop
  400408:	204015e8 	.word	0x204015e8

0040040c <HAL_RC_CAL_SetLPCycle_ex>:
  40040c:	b118      	cbz	r0, 400416 <HAL_RC_CAL_SetLPCycle_ex+0xa>
  40040e:	4b03      	ldr	r3, [pc, #12]	@ (40041c <HAL_RC_CAL_SetLPCycle_ex+0x10>)
  400410:	7018      	strb	r0, [r3, #0]
  400412:	2000      	movs	r0, #0
  400414:	4770      	bx	lr
  400416:	f04f 30ff 	mov.w	r0, #4294967295
  40041a:	4770      	bx	lr
  40041c:	204015e8 	.word	0x204015e8

00400420 <HAL_RC_CALget_curr_cycle_on_48M>:
  400420:	b573      	push	{r0, r1, r4, r5, r6, lr}
  400422:	4606      	mov	r6, r0
  400424:	460d      	mov	r5, r1
  400426:	f401 fc90 	bl	1d4a <HAL_GetLXTEnabled>
  40042a:	2800      	cmp	r0, #0
  40042c:	d16d      	bne.n	40050a <HAL_RC_CALget_curr_cycle_on_48M+0xea>
  40042e:	f7ff ffc9 	bl	4003c4 <HAL_RC_locked>
  400432:	2800      	cmp	r0, #0
  400434:	d16c      	bne.n	400510 <HAL_RC_CALget_curr_cycle_on_48M+0xf0>
  400436:	4c38      	ldr	r4, [pc, #224]	@ (400518 <HAL_RC_CALget_curr_cycle_on_48M+0xf8>)
  400438:	2001      	movs	r0, #1
  40043a:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40043e:	f36f 43dc 	bfc	r3, #19, #10
  400442:	f443 2300 	orr.w	r3, r3, #524288	@ 0x80000
  400446:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40044a:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40044e:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
  400452:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  400456:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40045a:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
  40045e:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  400462:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  400466:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40046a:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40046e:	f36f 030f 	bfc	r3, #0, #16
  400472:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  400476:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  40047a:	431e      	orrs	r6, r3
  40047c:	f8c4 6114 	str.w	r6, [r4, #276]	@ 0x114
  400480:	f8d4 3114 	ldr.w	r3, [r4, #276]	@ 0x114
  400484:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
  400488:	f8c4 3114 	str.w	r3, [r4, #276]	@ 0x114
  40048c:	f000 fcf2 	bl	400e74 <HAL_Delay>
  400490:	f8d4 3118 	ldr.w	r3, [r4, #280]	@ 0x118
  400494:	2b00      	cmp	r3, #0
  400496:	dafb      	bge.n	400490 <HAL_RC_CALget_curr_cycle_on_48M+0x70>
  400498:	4820      	ldr	r0, [pc, #128]	@ (40051c <HAL_RC_CALget_curr_cycle_on_48M+0xfc>)
  40049a:	f8d4 2118 	ldr.w	r2, [r4, #280]	@ 0x118
  40049e:	6801      	ldr	r1, [r0, #0]
  4004a0:	4e1f      	ldr	r6, [pc, #124]	@ (400520 <HAL_RC_CALget_curr_cycle_on_48M+0x100>)
  4004a2:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
  4004a6:	b371      	cbz	r1, 400506 <HAL_RC_CALget_curr_cycle_on_48M+0xe6>
  4004a8:	6833      	ldr	r3, [r6, #0]
  4004aa:	4293      	cmp	r3, r2
  4004ac:	d21d      	bcs.n	4004ea <HAL_RC_CALget_curr_cycle_on_48M+0xca>
  4004ae:	1ad4      	subs	r4, r2, r3
  4004b0:	2cfa      	cmp	r4, #250	@ 0xfa
  4004b2:	d923      	bls.n	4004fc <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004b4:	4299      	cmp	r1, r3
  4004b6:	d921      	bls.n	4004fc <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004b8:	1ac9      	subs	r1, r1, r3
  4004ba:	29fa      	cmp	r1, #250	@ 0xfa
  4004bc:	d91e      	bls.n	4004fc <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004be:	eb03 0443 	add.w	r4, r3, r3, lsl #1
  4004c2:	230d      	movs	r3, #13
  4004c4:	3408      	adds	r4, #8
  4004c6:	fb03 4402 	mla	r4, r3, r2, r4
  4004ca:	0924      	lsrs	r4, r4, #4
  4004cc:	6002      	str	r2, [r0, #0]
  4004ce:	2204      	movs	r2, #4
  4004d0:	2002      	movs	r0, #2
  4004d2:	eb0d 0102 	add.w	r1, sp, r2
  4004d6:	6034      	str	r4, [r6, #0]
  4004d8:	9401      	str	r4, [sp, #4]
  4004da:	f401 fce3 	bl	1ea4 <HAL_LCPU_CONFIG_set>
  4004de:	602c      	str	r4, [r5, #0]
  4004e0:	f7ff ff81 	bl	4003e6 <HAL_RC_unlocked>
  4004e4:	2000      	movs	r0, #0
  4004e6:	b002      	add	sp, #8
  4004e8:	bd70      	pop	{r4, r5, r6, pc}
  4004ea:	d907      	bls.n	4004fc <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004ec:	1a9c      	subs	r4, r3, r2
  4004ee:	2cc8      	cmp	r4, #200	@ 0xc8
  4004f0:	d904      	bls.n	4004fc <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004f2:	4299      	cmp	r1, r3
  4004f4:	d202      	bcs.n	4004fc <HAL_RC_CALget_curr_cycle_on_48M+0xdc>
  4004f6:	1a59      	subs	r1, r3, r1
  4004f8:	29c8      	cmp	r1, #200	@ 0xc8
  4004fa:	e7df      	b.n	4004bc <HAL_RC_CALget_curr_cycle_on_48M+0x9c>
  4004fc:	ebc3 1403 	rsb	r4, r3, r3, lsl #4
  400500:	4414      	add	r4, r2
  400502:	3408      	adds	r4, #8
  400504:	e7e1      	b.n	4004ca <HAL_RC_CALget_curr_cycle_on_48M+0xaa>
  400506:	4614      	mov	r4, r2
  400508:	e7e0      	b.n	4004cc <HAL_RC_CALget_curr_cycle_on_48M+0xac>
  40050a:	f04f 30ff 	mov.w	r0, #4294967295
  40050e:	e7ea      	b.n	4004e6 <HAL_RC_CALget_curr_cycle_on_48M+0xc6>
  400510:	f06f 0002 	mvn.w	r0, #2
  400514:	e7e7      	b.n	4004e6 <HAL_RC_CALget_curr_cycle_on_48M+0xc6>
  400516:	bf00      	nop
  400518:	40090000 	.word	0x40090000
  40051c:	20401a48 	.word	0x20401a48
  400520:	20401a44 	.word	0x20401a44

00400524 <HAL_MAILBOX_GetMutex>:
  400524:	2801      	cmp	r0, #1
  400526:	b508      	push	{r3, lr}
  400528:	d108      	bne.n	40053c <HAL_MAILBOX_GetMutex+0x18>
  40052a:	2903      	cmp	r1, #3
  40052c:	d80e      	bhi.n	40054c <HAL_MAILBOX_GetMutex+0x28>
  40052e:	4808      	ldr	r0, [pc, #32]	@ (400550 <HAL_MAILBOX_GetMutex+0x2c>)
  400530:	e000      	b.n	400534 <HAL_MAILBOX_GetMutex+0x10>
  400532:	4808      	ldr	r0, [pc, #32]	@ (400554 <HAL_MAILBOX_GetMutex+0x30>)
  400534:	2318      	movs	r3, #24
  400536:	fb03 0001 	mla	r0, r3, r1, r0
  40053a:	e008      	b.n	40054e <HAL_MAILBOX_GetMutex+0x2a>
  40053c:	2901      	cmp	r1, #1
  40053e:	d805      	bhi.n	40054c <HAL_MAILBOX_GetMutex+0x28>
  400540:	2802      	cmp	r0, #2
  400542:	d0f6      	beq.n	400532 <HAL_MAILBOX_GetMutex+0xe>
  400544:	21b0      	movs	r1, #176	@ 0xb0
  400546:	4804      	ldr	r0, [pc, #16]	@ (400558 <HAL_MAILBOX_GetMutex+0x34>)
  400548:	f000 fcd2 	bl	400ef0 <HAL_AssertFailed>
  40054c:	2000      	movs	r0, #0
  40054e:	bd08      	pop	{r3, pc}
  400550:	50082000 	.word	0x50082000
  400554:	40002000 	.word	0x40002000
  400558:	00401284 	.word	0x00401284

0040055c <HAL_MAILBOX_Lock>:
  40055c:	b508      	push	{r3, lr}
  40055e:	b138      	cbz	r0, 400570 <HAL_MAILBOX_Lock+0x14>
  400560:	6800      	ldr	r0, [r0, #0]
  400562:	b148      	cbz	r0, 400578 <HAL_MAILBOX_Lock+0x1c>
  400564:	6940      	ldr	r0, [r0, #20]
  400566:	2800      	cmp	r0, #0
  400568:	db08      	blt.n	40057c <HAL_MAILBOX_Lock+0x20>
  40056a:	f000 000f 	and.w	r0, r0, #15
  40056e:	bd08      	pop	{r3, pc}
  400570:	2002      	movs	r0, #2
  400572:	f7ff ffd7 	bl	400524 <HAL_MAILBOX_GetMutex>
  400576:	e7f4      	b.n	400562 <HAL_MAILBOX_Lock+0x6>
  400578:	2004      	movs	r0, #4
  40057a:	e7f8      	b.n	40056e <HAL_MAILBOX_Lock+0x12>
  40057c:	2000      	movs	r0, #0
  40057e:	e7f6      	b.n	40056e <HAL_MAILBOX_Lock+0x12>

00400580 <HAL_MAILBOX_UnLock>:
  400580:	b508      	push	{r3, lr}
  400582:	b130      	cbz	r0, 400592 <HAL_MAILBOX_UnLock+0x12>
  400584:	6800      	ldr	r0, [r0, #0]
  400586:	b118      	cbz	r0, 400590 <HAL_MAILBOX_UnLock+0x10>
  400588:	6943      	ldr	r3, [r0, #20]
  40058a:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
  40058e:	6143      	str	r3, [r0, #20]
  400590:	bd08      	pop	{r3, pc}
  400592:	2002      	movs	r0, #2
  400594:	f7ff ffc6 	bl	400524 <HAL_MAILBOX_GetMutex>
  400598:	e7f5      	b.n	400586 <HAL_MAILBOX_UnLock+0x6>

0040059a <HAL_MAILBOX_IRQHandler>:
  40059a:	b570      	push	{r4, r5, r6, lr}
  40059c:	4605      	mov	r5, r0
  40059e:	2600      	movs	r6, #0
  4005a0:	6803      	ldr	r3, [r0, #0]
  4005a2:	691c      	ldr	r4, [r3, #16]
  4005a4:	609c      	str	r4, [r3, #8]
  4005a6:	b904      	cbnz	r4, 4005aa <HAL_MAILBOX_IRQHandler+0x10>
  4005a8:	bd70      	pop	{r4, r5, r6, pc}
  4005aa:	07e3      	lsls	r3, r4, #31
  4005ac:	d504      	bpl.n	4005b8 <HAL_MAILBOX_IRQHandler+0x1e>
  4005ae:	68ab      	ldr	r3, [r5, #8]
  4005b0:	b113      	cbz	r3, 4005b8 <HAL_MAILBOX_IRQHandler+0x1e>
  4005b2:	4628      	mov	r0, r5
  4005b4:	b2f1      	uxtb	r1, r6
  4005b6:	4798      	blx	r3
  4005b8:	0864      	lsrs	r4, r4, #1
  4005ba:	3601      	adds	r6, #1
  4005bc:	e7f3      	b.n	4005a6 <HAL_MAILBOX_IRQHandler+0xc>
	...

004005c0 <HAL_PTC_Init>:
  4005c0:	b510      	push	{r4, lr}
  4005c2:	4604      	mov	r4, r0
  4005c4:	b918      	cbnz	r0, 4005ce <HAL_PTC_Init+0xe>
  4005c6:	2115      	movs	r1, #21
  4005c8:	480c      	ldr	r0, [pc, #48]	@ (4005fc <HAL_PTC_Init+0x3c>)
  4005ca:	f000 fc91 	bl	400ef0 <HAL_AssertFailed>
  4005ce:	7d23      	ldrb	r3, [r4, #20]
  4005d0:	2b07      	cmp	r3, #7
  4005d2:	d903      	bls.n	4005dc <HAL_PTC_Init+0x1c>
  4005d4:	2116      	movs	r1, #22
  4005d6:	4809      	ldr	r0, [pc, #36]	@ (4005fc <HAL_PTC_Init+0x3c>)
  4005d8:	f000 fc8a 	bl	400ef0 <HAL_AssertFailed>
  4005dc:	6823      	ldr	r3, [r4, #0]
  4005de:	7d22      	ldrb	r2, [r4, #20]
  4005e0:	3310      	adds	r3, #16
  4005e2:	eb03 1302 	add.w	r3, r3, r2, lsl #4
  4005e6:	68a2      	ldr	r2, [r4, #8]
  4005e8:	6063      	str	r3, [r4, #4]
  4005ea:	605a      	str	r2, [r3, #4]
  4005ec:	6863      	ldr	r3, [r4, #4]
  4005ee:	68e2      	ldr	r2, [r4, #12]
  4005f0:	2000      	movs	r0, #0
  4005f2:	609a      	str	r2, [r3, #8]
  4005f4:	2301      	movs	r3, #1
  4005f6:	7623      	strb	r3, [r4, #24]
  4005f8:	bd10      	pop	{r4, pc}
  4005fa:	bf00      	nop
  4005fc:	00401301 	.word	0x00401301

00400600 <HAL_PTC_Enable>:
  400600:	2201      	movs	r2, #1
  400602:	b510      	push	{r4, lr}
  400604:	7d03      	ldrb	r3, [r0, #20]
  400606:	6804      	ldr	r4, [r0, #0]
  400608:	fa02 f303 	lsl.w	r3, r2, r3
  40060c:	b1b1      	cbz	r1, 40063c <HAL_PTC_Enable+0x3c>
  40060e:	6861      	ldr	r1, [r4, #4]
  400610:	430b      	orrs	r3, r1
  400612:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
  400616:	6063      	str	r3, [r4, #4]
  400618:	6804      	ldr	r4, [r0, #0]
  40061a:	7d01      	ldrb	r1, [r0, #20]
  40061c:	68a3      	ldr	r3, [r4, #8]
  40061e:	408a      	lsls	r2, r1
  400620:	4313      	orrs	r3, r2
  400622:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
  400626:	60a3      	str	r3, [r4, #8]
  400628:	7cc2      	ldrb	r2, [r0, #19]
  40062a:	7d83      	ldrb	r3, [r0, #22]
  40062c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
  400630:	6842      	ldr	r2, [r0, #4]
  400632:	6013      	str	r3, [r2, #0]
  400634:	2202      	movs	r2, #2
  400636:	7602      	strb	r2, [r0, #24]
  400638:	2000      	movs	r0, #0
  40063a:	bd10      	pop	{r4, pc}
  40063c:	68a1      	ldr	r1, [r4, #8]
  40063e:	ea43 4303 	orr.w	r3, r3, r3, lsl #16
  400642:	ea21 0303 	bic.w	r3, r1, r3
  400646:	60a3      	str	r3, [r4, #8]
  400648:	e7f5      	b.n	400636 <HAL_PTC_Enable+0x36>

0040064a <HAL_PTC_IRQHandler>:
  40064a:	2301      	movs	r3, #1
  40064c:	6802      	ldr	r2, [r0, #0]
  40064e:	7d00      	ldrb	r0, [r0, #20]
  400650:	6851      	ldr	r1, [r2, #4]
  400652:	4083      	lsls	r3, r0
  400654:	430b      	orrs	r3, r1
  400656:	6053      	str	r3, [r2, #4]
  400658:	4770      	bx	lr
	...

0040065c <RCC_GetModuleMask>:
  40065c:	b510      	push	{r4, lr}
  40065e:	b15a      	cbz	r2, 400678 <RCC_GetModuleMask+0x1c>
  400660:	b151      	cbz	r1, 400678 <RCC_GetModuleMask+0x1c>
  400662:	2823      	cmp	r0, #35	@ 0x23
  400664:	d05d      	beq.n	400722 <RCC_GetModuleMask+0xc6>
  400666:	d847      	bhi.n	4006f8 <RCC_GetModuleMask+0x9c>
  400668:	280b      	cmp	r0, #11
  40066a:	d83b      	bhi.n	4006e4 <RCC_GetModuleMask+0x88>
  40066c:	b9e0      	cbnz	r0, 4006a8 <RCC_GetModuleMask+0x4c>
  40066e:	f240 3122 	movw	r1, #802	@ 0x322
  400672:	4841      	ldr	r0, [pc, #260]	@ (400778 <RCC_GetModuleMask+0x11c>)
  400674:	f000 fc3c 	bl	400ef0 <HAL_AssertFailed>
  400678:	2000      	movs	r0, #0
  40067a:	e051      	b.n	400720 <RCC_GetModuleMask+0xc4>
  40067c:	3859      	subs	r0, #89	@ 0x59
  40067e:	2807      	cmp	r0, #7
  400680:	d8f5      	bhi.n	40066e <RCC_GetModuleMask+0x12>
  400682:	a401      	add	r4, pc, #4	@ (adr r4, 400688 <RCC_GetModuleMask+0x2c>)
  400684:	f854 f020 	ldr.w	pc, [r4, r0, lsl #2]
  400688:	00400741 	.word	0x00400741
  40068c:	00400759 	.word	0x00400759
  400690:	00400761 	.word	0x00400761
  400694:	00400769 	.word	0x00400769
  400698:	0040066f 	.word	0x0040066f
  40069c:	0040066f 	.word	0x0040066f
  4006a0:	0040066f 	.word	0x0040066f
  4006a4:	00400771 	.word	0x00400771
  4006a8:	3801      	subs	r0, #1
  4006aa:	2300      	movs	r3, #0
  4006ac:	280a      	cmp	r0, #10
  4006ae:	d8de      	bhi.n	40066e <RCC_GetModuleMask+0x12>
  4006b0:	a401      	add	r4, pc, #4	@ (adr r4, 4006b8 <RCC_GetModuleMask+0x5c>)
  4006b2:	f854 f020 	ldr.w	pc, [r4, r0, lsl #2]
  4006b6:	bf00      	nop
  4006b8:	00400753 	.word	0x00400753
  4006bc:	0040066f 	.word	0x0040066f
  4006c0:	0040066f 	.word	0x0040066f
  4006c4:	0040074d 	.word	0x0040074d
  4006c8:	0040066f 	.word	0x0040066f
  4006cc:	00400747 	.word	0x00400747
  4006d0:	0040066f 	.word	0x0040066f
  4006d4:	0040066f 	.word	0x0040066f
  4006d8:	0040066f 	.word	0x0040066f
  4006dc:	0040073b 	.word	0x0040073b
  4006e0:	00400735 	.word	0x00400735
  4006e4:	2816      	cmp	r0, #22
  4006e6:	f04f 0300 	mov.w	r3, #0
  4006ea:	d01f      	beq.n	40072c <RCC_GetModuleMask+0xd0>
  4006ec:	2822      	cmp	r0, #34	@ 0x22
  4006ee:	d1be      	bne.n	40066e <RCC_GetModuleMask+0x12>
  4006f0:	600b      	str	r3, [r1, #0]
  4006f2:	f44f 7300 	mov.w	r3, #512	@ 0x200
  4006f6:	e010      	b.n	40071a <RCC_GetModuleMask+0xbe>
  4006f8:	2860      	cmp	r0, #96	@ 0x60
  4006fa:	d8b8      	bhi.n	40066e <RCC_GetModuleMask+0x12>
  4006fc:	2858      	cmp	r0, #88	@ 0x58
  4006fe:	f04f 0300 	mov.w	r3, #0
  400702:	d8bb      	bhi.n	40067c <RCC_GetModuleMask+0x20>
  400704:	2838      	cmp	r0, #56	@ 0x38
  400706:	d005      	beq.n	400714 <RCC_GetModuleMask+0xb8>
  400708:	283a      	cmp	r0, #58	@ 0x3a
  40070a:	d1b0      	bne.n	40066e <RCC_GetModuleMask+0x12>
  40070c:	600b      	str	r3, [r1, #0]
  40070e:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
  400712:	e002      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400714:	600b      	str	r3, [r1, #0]
  400716:	f44f 7380 	mov.w	r3, #256	@ 0x100
  40071a:	f04f 4080 	mov.w	r0, #1073741824	@ 0x40000000
  40071e:	6013      	str	r3, [r2, #0]
  400720:	bd10      	pop	{r4, pc}
  400722:	2300      	movs	r3, #0
  400724:	600b      	str	r3, [r1, #0]
  400726:	f44f 6380 	mov.w	r3, #1024	@ 0x400
  40072a:	e7f6      	b.n	40071a <RCC_GetModuleMask+0xbe>
  40072c:	600b      	str	r3, [r1, #0]
  40072e:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
  400732:	e7f2      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400734:	600b      	str	r3, [r1, #0]
  400736:	2340      	movs	r3, #64	@ 0x40
  400738:	e7ef      	b.n	40071a <RCC_GetModuleMask+0xbe>
  40073a:	600b      	str	r3, [r1, #0]
  40073c:	2320      	movs	r3, #32
  40073e:	e7ec      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400740:	600b      	str	r3, [r1, #0]
  400742:	2310      	movs	r3, #16
  400744:	e7e9      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400746:	600b      	str	r3, [r1, #0]
  400748:	2308      	movs	r3, #8
  40074a:	e7e6      	b.n	40071a <RCC_GetModuleMask+0xbe>
  40074c:	600b      	str	r3, [r1, #0]
  40074e:	2304      	movs	r3, #4
  400750:	e7e3      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400752:	600b      	str	r3, [r1, #0]
  400754:	2302      	movs	r3, #2
  400756:	e7e0      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400758:	600b      	str	r3, [r1, #0]
  40075a:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
  40075e:	e7dc      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400760:	600b      	str	r3, [r1, #0]
  400762:	f44f 2300 	mov.w	r3, #524288	@ 0x80000
  400766:	e7d8      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400768:	600b      	str	r3, [r1, #0]
  40076a:	f44f 2380 	mov.w	r3, #262144	@ 0x40000
  40076e:	e7d4      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400770:	600b      	str	r3, [r1, #0]
  400772:	2380      	movs	r3, #128	@ 0x80
  400774:	e7d1      	b.n	40071a <RCC_GetModuleMask+0xbe>
  400776:	bf00      	nop
  400778:	0040133c 	.word	0x0040133c

0040077c <HAL_RCC_EnableModule>:
  40077c:	b507      	push	{r0, r1, r2, lr}
  40077e:	466a      	mov	r2, sp
  400780:	a901      	add	r1, sp, #4
  400782:	f7ff ff6b 	bl	40065c <RCC_GetModuleMask>
  400786:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
  40078a:	d101      	bne.n	400790 <HAL_RCC_EnableModule+0x14>
  40078c:	9b01      	ldr	r3, [sp, #4]
  40078e:	b13b      	cbz	r3, 4007a0 <HAL_RCC_EnableModule+0x24>
  400790:	f640 0122 	movw	r1, #2082	@ 0x822
  400794:	4809      	ldr	r0, [pc, #36]	@ (4007bc <HAL_RCC_EnableModule+0x40>)
  400796:	b003      	add	sp, #12
  400798:	f85d eb04 	ldr.w	lr, [sp], #4
  40079c:	f000 bba8 	b.w	400ef0 <HAL_AssertFailed>
  4007a0:	f3ef 8210 	mrs	r2, PRIMASK
  4007a4:	2301      	movs	r3, #1
  4007a6:	f383 8810 	msr	PRIMASK, r3
  4007aa:	6843      	ldr	r3, [r0, #4]
  4007ac:	9900      	ldr	r1, [sp, #0]
  4007ae:	430b      	orrs	r3, r1
  4007b0:	6043      	str	r3, [r0, #4]
  4007b2:	f382 8810 	msr	PRIMASK, r2
  4007b6:	b003      	add	sp, #12
  4007b8:	f85d fb04 	ldr.w	pc, [sp], #4
  4007bc:	0040133c 	.word	0x0040133c

004007c0 <HAL_RCC_MspInit>:
  4007c0:	4770      	bx	lr

004007c2 <HAL_RCC_Init>:
  4007c2:	b508      	push	{r3, lr}
  4007c4:	f7ff fffc 	bl	4007c0 <HAL_RCC_MspInit>
  4007c8:	bd08      	pop	{r3, pc}
	...

004007cc <bt_audiopath_init>:
  4007cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  4007ce:	4e12      	ldr	r6, [pc, #72]	@ (400818 <bt_audiopath_init+0x4c>)
  4007d0:	4b12      	ldr	r3, [pc, #72]	@ (40081c <bt_audiopath_init+0x50>)
  4007d2:	4c13      	ldr	r4, [pc, #76]	@ (400820 <bt_audiopath_init+0x54>)
  4007d4:	6033      	str	r3, [r6, #0]
  4007d6:	3320      	adds	r3, #32
  4007d8:	6023      	str	r3, [r4, #0]
  4007da:	4a12      	ldr	r2, [pc, #72]	@ (400824 <bt_audiopath_init+0x58>)
  4007dc:	4b12      	ldr	r3, [pc, #72]	@ (400828 <bt_audiopath_init+0x5c>)
  4007de:	4f13      	ldr	r7, [pc, #76]	@ (40082c <bt_audiopath_init+0x60>)
  4007e0:	601a      	str	r2, [r3, #0]
  4007e2:	4b13      	ldr	r3, [pc, #76]	@ (400830 <bt_audiopath_init+0x64>)
  4007e4:	4d13      	ldr	r5, [pc, #76]	@ (400834 <bt_audiopath_init+0x68>)
  4007e6:	603b      	str	r3, [r7, #0]
  4007e8:	f503 73e6 	add.w	r3, r3, #460	@ 0x1cc
  4007ec:	602b      	str	r3, [r5, #0]
  4007ee:	4b12      	ldr	r3, [pc, #72]	@ (400838 <bt_audiopath_init+0x6c>)
  4007f0:	f502 726b 	add.w	r2, r2, #940	@ 0x3ac
  4007f4:	4811      	ldr	r0, [pc, #68]	@ (40083c <bt_audiopath_init+0x70>)
  4007f6:	601a      	str	r2, [r3, #0]
  4007f8:	f405 f928 	bl	5a4c <bt_sco_data_handle_callback+0xd0>
  4007fc:	6839      	ldr	r1, [r7, #0]
  4007fe:	6830      	ldr	r0, [r6, #0]
  400800:	f44f 72e6 	mov.w	r2, #460	@ 0x1cc
  400804:	f454 f9f6 	bl	54bf4 <rt_ringbuffer_getchar+0x63>
  400808:	6820      	ldr	r0, [r4, #0]
  40080a:	f44f 72e6 	mov.w	r2, #460	@ 0x1cc
  40080e:	6829      	ldr	r1, [r5, #0]
  400810:	f454 f9f0 	bl	54bf4 <rt_ringbuffer_getchar+0x63>
  400814:	2000      	movs	r0, #0
  400816:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  400818:	2040e6e8 	.word	0x2040e6e8
  40081c:	2040e000 	.word	0x2040e000
  400820:	2040e6ec 	.word	0x2040e6ec
  400824:	2040e040 	.word	0x2040e040
  400828:	2040e6f0 	.word	0x2040e6f0
  40082c:	2040e6f4 	.word	0x2040e6f4
  400830:	2040e050 	.word	0x2040e050
  400834:	2040e6f8 	.word	0x2040e6f8
  400838:	2040e6fc 	.word	0x2040e6fc
  40083c:	0000597d 	.word	0x0000597d

00400840 <patch_install>:
  400840:	4a04      	ldr	r2, [pc, #16]	@ (400854 <patch_install+0x14>)
  400842:	4b05      	ldr	r3, [pc, #20]	@ (400858 <patch_install+0x18>)
  400844:	601a      	str	r2, [r3, #0]
  400846:	3a01      	subs	r2, #1
  400848:	6812      	ldr	r2, [r2, #0]
  40084a:	b10a      	cbz	r2, 400850 <patch_install+0x10>
  40084c:	681b      	ldr	r3, [r3, #0]
  40084e:	4718      	bx	r3
  400850:	4770      	bx	lr
  400852:	bf00      	nop
  400854:	00406001 	.word	0x00406001
  400858:	20401a4c 	.word	0x20401a4c

0040085c <bluetooth_init>:
  40085c:	b510      	push	{r4, lr}
  40085e:	2001      	movs	r0, #1
  400860:	f000 f946 	bl	400af0 <rf_ptc_config>
  400864:	f451 fe48 	bl	524f8 <rt_hw_ble_int_init>
  400868:	f401 fa6f 	bl	1d4a <HAL_GetLXTEnabled>
  40086c:	b928      	cbnz	r0, 40087a <bluetooth_init+0x1e>
  40086e:	f450 fcf5 	bl	5125c <rom_config_set_default_sleep_mode+0x7>
  400872:	f7ff fdc5 	bl	400400 <HAL_RC_CAL_GetLPCycle_ex>
  400876:	f450 fce5 	bl	51244 <rom_config_set_default_link_config+0xb>
  40087a:	2003      	movs	r0, #3
  40087c:	f450 fcf2 	bl	51264 <rom_config_set_default_xtal_enabled+0x7>
  400880:	2400      	movs	r4, #0
  400882:	230e      	movs	r3, #14
  400884:	4a0c      	ldr	r2, [pc, #48]	@ (4008b8 <bluetooth_init+0x5c>)
  400886:	490d      	ldr	r1, [pc, #52]	@ (4008bc <bluetooth_init+0x60>)
  400888:	4610      	mov	r0, r2
  40088a:	e9c2 4407 	strd	r4, r4, [r2, #28]
  40088e:	7513      	strb	r3, [r2, #20]
  400890:	f453 fbbe 	bl	54010 <rt_pm_device_register>
  400894:	480a      	ldr	r0, [pc, #40]	@ (4008c0 <bluetooth_init+0x64>)
  400896:	f455 fa33 	bl	55d00 <rt_thread_idle_sethook>
  40089a:	480a      	ldr	r0, [pc, #40]	@ (4008c4 <bluetooth_init+0x68>)
  40089c:	f453 fc96 	bl	541cc <rt_pm_override_mode_select>
  4008a0:	f7ff ffce 	bl	400840 <patch_install>
  4008a4:	f000 f8c2 	bl	400a2c <bluetooth_config>
  4008a8:	f401 fd7a 	bl	23a0 <HAL_RCC_SetMacFreq>
  4008ac:	4620      	mov	r0, r4
  4008ae:	f404 fb35 	bl	4f1c <ble_aon_irq_handler+0x2b>
  4008b2:	4620      	mov	r0, r4
  4008b4:	bd10      	pop	{r4, pc}
  4008b6:	bf00      	nop
  4008b8:	20401a50 	.word	0x20401a50
  4008bc:	004013dc 	.word	0x004013dc
  4008c0:	00017955 	.word	0x00017955
  4008c4:	004008c9 	.word	0x004008c9

004008c8 <bluetooth_select_pm_mode>:
  4008c8:	3001      	adds	r0, #1
  4008ca:	b508      	push	{r3, lr}
  4008cc:	d001      	beq.n	4008d2 <bluetooth_select_pm_mode+0xa>
  4008ce:	2001      	movs	r0, #1
  4008d0:	bd08      	pop	{r3, pc}
  4008d2:	f417 fa35 	bl	17d40 <bluetooth_stack_suspend>
  4008d6:	2800      	cmp	r0, #0
  4008d8:	d1f9      	bne.n	4008ce <bluetooth_select_pm_mode+0x6>
  4008da:	2003      	movs	r0, #3
  4008dc:	e7f8      	b.n	4008d0 <bluetooth_select_pm_mode+0x8>
	...

004008e0 <bluetooth_pm_suspend>:
  4008e0:	b508      	push	{r3, lr}
  4008e2:	4b09      	ldr	r3, [pc, #36]	@ (400908 <bluetooth_pm_suspend+0x28>)
  4008e4:	4602      	mov	r2, r0
  4008e6:	6a18      	ldr	r0, [r3, #32]
  4008e8:	f010 0020 	ands.w	r0, r0, #32
  4008ec:	d006      	beq.n	4008fc <bluetooth_pm_suspend+0x1c>
  4008ee:	4b07      	ldr	r3, [pc, #28]	@ (40090c <bluetooth_pm_suspend+0x2c>)
  4008f0:	429a      	cmp	r2, r3
  4008f2:	d104      	bne.n	4008fe <bluetooth_pm_suspend+0x1e>
  4008f4:	2901      	cmp	r1, #1
  4008f6:	d904      	bls.n	400902 <bluetooth_pm_suspend+0x22>
  4008f8:	f417 fa22 	bl	17d40 <bluetooth_stack_suspend>
  4008fc:	bd08      	pop	{r3, pc}
  4008fe:	2000      	movs	r0, #0
  400900:	e7fc      	b.n	4008fc <bluetooth_pm_suspend+0x1c>
  400902:	f04f 30ff 	mov.w	r0, #4294967295
  400906:	e7f9      	b.n	4008fc <bluetooth_pm_suspend+0x1c>
  400908:	40040000 	.word	0x40040000
  40090c:	20401a50 	.word	0x20401a50

00400910 <ble_standby_sleep_pre_handler>:
  400910:	f404 bba6 	b.w	5060 <ble_standby_sleep_after_handler_rom+0x4f>

00400914 <ble_standby_sleep_after_handler>:
  400914:	b508      	push	{r3, lr}
  400916:	f401 fd43 	bl	23a0 <HAL_RCC_SetMacFreq>
  40091a:	f404 fb79 	bl	5010 <ble_memory_config+0x18>
  40091e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400922:	2000      	movs	r0, #0
  400924:	f000 b8e4 	b.w	400af0 <rf_ptc_config>

00400928 <rom_port_get>:
  400928:	b510      	push	{r4, lr}
  40092a:	b148      	cbz	r0, 400940 <rom_port_get+0x18>
  40092c:	2801      	cmp	r0, #1
  40092e:	d009      	beq.n	400944 <rom_port_get+0x1c>
  400930:	f44f 6207 	mov.w	r2, #2160	@ 0x870
  400934:	4904      	ldr	r1, [pc, #16]	@ (400948 <rom_port_get+0x20>)
  400936:	4805      	ldr	r0, [pc, #20]	@ (40094c <rom_port_get+0x24>)
  400938:	f450 fd10 	bl	5135c <rt_assert_handler>
  40093c:	4620      	mov	r0, r4
  40093e:	bd10      	pop	{r4, pc}
  400940:	2402      	movs	r4, #2
  400942:	e7fb      	b.n	40093c <rom_port_get+0x14>
  400944:	2406      	movs	r4, #6
  400946:	e7f9      	b.n	40093c <rom_port_get+0x14>
  400948:	004013f4 	.word	0x004013f4
  40094c:	00401388 	.word	0x00401388

00400950 <act_config>:
  400950:	2206      	movs	r2, #6
  400952:	b538      	push	{r3, r4, r5, lr}
  400954:	4c0d      	ldr	r4, [pc, #52]	@ (40098c <act_config+0x3c>)
  400956:	2302      	movs	r3, #2
  400958:	2501      	movs	r5, #1
  40095a:	70a2      	strb	r2, [r4, #2]
  40095c:	2203      	movs	r2, #3
  40095e:	2004      	movs	r0, #4
  400960:	7023      	strb	r3, [r4, #0]
  400962:	70e2      	strb	r2, [r4, #3]
  400964:	7123      	strb	r3, [r4, #4]
  400966:	7065      	strb	r5, [r4, #1]
  400968:	f450 fc36 	bl	511d8 <rom_config_em_memory+0x33>
  40096c:	8843      	ldrh	r3, [r0, #2]
  40096e:	2014      	movs	r0, #20
  400970:	3b02      	subs	r3, #2
  400972:	71e3      	strb	r3, [r4, #7]
  400974:	f450 fc30 	bl	511d8 <rom_config_em_memory+0x33>
  400978:	8843      	ldrh	r3, [r0, #2]
  40097a:	7165      	strb	r5, [r4, #5]
  40097c:	3b02      	subs	r3, #2
  40097e:	7223      	strb	r3, [r4, #8]
  400980:	71a5      	strb	r5, [r4, #6]
  400982:	4620      	mov	r0, r4
  400984:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
  400988:	f450 bc56 	b.w	51238 <rom_config_set_controller_enabled+0x7>
  40098c:	2040ead4 	.word	0x2040ead4

00400990 <mem_config>:
  400990:	b500      	push	{lr}
  400992:	4a16      	ldr	r2, [pc, #88]	@ (4009ec <mem_config+0x5c>)
  400994:	b091      	sub	sp, #68	@ 0x44
  400996:	7953      	ldrb	r3, [r2, #5]
  400998:	7990      	ldrb	r0, [r2, #6]
  40099a:	005b      	lsls	r3, r3, #1
  40099c:	f003 0302 	and.w	r3, r3, #2
  4009a0:	f000 0001 	and.w	r0, r0, #1
  4009a4:	4318      	orrs	r0, r3
  4009a6:	f450 fc43 	bl	51230 <rom_config_get_default_attribute_4_em+0x57>
  4009aa:	2228      	movs	r2, #40	@ 0x28
  4009ac:	2100      	movs	r1, #0
  4009ae:	a806      	add	r0, sp, #24
  4009b0:	f000 fc60 	bl	401274 <memset>
  4009b4:	f44f 7200 	mov.w	r2, #512	@ 0x200
  4009b8:	4b0d      	ldr	r3, [pc, #52]	@ (4009f0 <mem_config+0x60>)
  4009ba:	2106      	movs	r1, #6
  4009bc:	e9cd 3203 	strd	r3, r2, [sp, #12]
  4009c0:	2300      	movs	r3, #0
  4009c2:	e9cd 3101 	strd	r3, r1, [sp, #4]
  4009c6:	f44f 7327 	mov.w	r3, #668	@ 0x29c
  4009ca:	2201      	movs	r2, #1
  4009cc:	f44f 5180 	mov.w	r1, #4096	@ 0x1000
  4009d0:	9300      	str	r3, [sp, #0]
  4009d2:	a806      	add	r0, sp, #24
  4009d4:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
  4009d8:	f44f fd7a 	bl	504d0 <mem_env_config>
  4009dc:	a806      	add	r0, sp, #24
  4009de:	f404 fb0b 	bl	4ff8 <ble_memory_config>
  4009e2:	f409 fa0f 	bl	9e04 <em_config_customized>
  4009e6:	b011      	add	sp, #68	@ 0x44
  4009e8:	f85d fb04 	ldr.w	pc, [sp], #4
  4009ec:	2040ead4 	.word	0x2040ead4
  4009f0:	2040fe00 	.word	0x2040fe00

004009f4 <port_config>:
  4009f4:	b510      	push	{r4, lr}
  4009f6:	2000      	movs	r0, #0
  4009f8:	f7ff ff96 	bl	400928 <rom_port_get>
  4009fc:	4b08      	ldr	r3, [pc, #32]	@ (400a20 <port_config+0x2c>)
  4009fe:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
  400a02:	4798      	blx	r3
  400a04:	4604      	mov	r4, r0
  400a06:	b928      	cbnz	r0, 400a14 <port_config+0x20>
  400a08:	f640 12e3 	movw	r2, #2531	@ 0x9e3
  400a0c:	4905      	ldr	r1, [pc, #20]	@ (400a24 <port_config+0x30>)
  400a0e:	4806      	ldr	r0, [pc, #24]	@ (400a28 <port_config+0x34>)
  400a10:	f450 fca4 	bl	5135c <rt_assert_handler>
  400a14:	4620      	mov	r0, r4
  400a16:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400a1a:	2100      	movs	r1, #0
  400a1c:	f450 bc34 	b.w	51288 <rom_config_set_swprofiling+0xb>
  400a20:	0005fdcc 	.word	0x0005fdcc
  400a24:	004013e8 	.word	0x004013e8
  400a28:	0040138a 	.word	0x0040138a

00400a2c <bluetooth_config>:
  400a2c:	b508      	push	{r3, lr}
  400a2e:	f7ff ff8f 	bl	400950 <act_config>
  400a32:	f7ff ffad 	bl	400990 <mem_config>
  400a36:	f7ff ffdd 	bl	4009f4 <port_config>
  400a3a:	bd08      	pop	{r3, pc}

00400a3c <ptc_save_phase>:
  400a3c:	4b07      	ldr	r3, [pc, #28]	@ (400a5c <ptc_save_phase+0x20>)
  400a3e:	f8d3 2098 	ldr.w	r2, [r3, #152]	@ 0x98
  400a42:	f3c2 030b 	ubfx	r3, r2, #0, #12
  400a46:	0512      	lsls	r2, r2, #20
  400a48:	bf44      	itt	mi
  400a4a:	f483 637f 	eormi.w	r3, r3, #4080	@ 0xff0
  400a4e:	f083 030f 	eormi.w	r3, r3, #15
  400a52:	b113      	cbz	r3, 400a5a <ptc_save_phase+0x1e>
  400a54:	4a02      	ldr	r2, [pc, #8]	@ (400a60 <ptc_save_phase+0x24>)
  400a56:	6812      	ldr	r2, [r2, #0]
  400a58:	6013      	str	r3, [r2, #0]
  400a5a:	4770      	bx	lr
  400a5c:	40084000 	.word	0x40084000
  400a60:	204015ec 	.word	0x204015ec

00400a64 <PTC2_IRQHandler>:
  400a64:	b510      	push	{r4, lr}
  400a66:	4b07      	ldr	r3, [pc, #28]	@ (400a84 <PTC2_IRQHandler+0x20>)
  400a68:	681c      	ldr	r4, [r3, #0]
  400a6a:	f451 fff5 	bl	52a58 <rt_interrupt_enter>
  400a6e:	07a3      	lsls	r3, r4, #30
  400a70:	d504      	bpl.n	400a7c <PTC2_IRQHandler+0x18>
  400a72:	4805      	ldr	r0, [pc, #20]	@ (400a88 <PTC2_IRQHandler+0x24>)
  400a74:	f7ff fde9 	bl	40064a <HAL_PTC_IRQHandler>
  400a78:	f7ff ffe0 	bl	400a3c <ptc_save_phase>
  400a7c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400a80:	f452 b802 	b.w	52a88 <rt_interrupt_leave>
  400a84:	4000c000 	.word	0x4000c000
  400a88:	20401a90 	.word	0x20401a90

00400a8c <ptc_config>:
  400a8c:	b570      	push	{r4, r5, r6, lr}
  400a8e:	4616      	mov	r6, r2
  400a90:	221c      	movs	r2, #28
  400a92:	4350      	muls	r0, r2
  400a94:	4d11      	ldr	r5, [pc, #68]	@ (400adc <ptc_config+0x50>)
  400a96:	4a12      	ldr	r2, [pc, #72]	@ (400ae0 <ptc_config+0x54>)
  400a98:	182c      	adds	r4, r5, r0
  400a9a:	502a      	str	r2, [r5, r0]
  400a9c:	2201      	movs	r2, #1
  400a9e:	7522      	strb	r2, [r4, #20]
  400aa0:	4a10      	ldr	r2, [pc, #64]	@ (400ae4 <ptc_config+0x58>)
  400aa2:	2005      	movs	r0, #5
  400aa4:	6812      	ldr	r2, [r2, #0]
  400aa6:	74e0      	strb	r0, [r4, #19]
  400aa8:	60a2      	str	r2, [r4, #8]
  400aaa:	2200      	movs	r2, #0
  400aac:	2012      	movs	r0, #18
  400aae:	75a1      	strb	r1, [r4, #22]
  400ab0:	4611      	mov	r1, r2
  400ab2:	60e2      	str	r2, [r4, #12]
  400ab4:	74a6      	strb	r6, [r4, #18]
  400ab6:	8223      	strh	r3, [r4, #16]
  400ab8:	f401 faf8 	bl	20ac <HAL_NVIC_SetPriority>
  400abc:	4620      	mov	r0, r4
  400abe:	f7ff fd7f 	bl	4005c0 <HAL_PTC_Init>
  400ac2:	b128      	cbz	r0, 400ad0 <ptc_config+0x44>
  400ac4:	f240 125f 	movw	r2, #351	@ 0x15f
  400ac8:	4907      	ldr	r1, [pc, #28]	@ (400ae8 <ptc_config+0x5c>)
  400aca:	4808      	ldr	r0, [pc, #32]	@ (400aec <ptc_config+0x60>)
  400acc:	f450 fc46 	bl	5135c <rt_assert_handler>
  400ad0:	4620      	mov	r0, r4
  400ad2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
  400ad6:	2101      	movs	r1, #1
  400ad8:	f7ff bd92 	b.w	400600 <HAL_PTC_Enable>
  400adc:	20401a90 	.word	0x20401a90
  400ae0:	4000c000 	.word	0x4000c000
  400ae4:	204015ec 	.word	0x204015ec
  400ae8:	00401401 	.word	0x00401401
  400aec:	0040138d 	.word	0x0040138d

00400af0 <rf_ptc_config>:
  400af0:	b510      	push	{r4, lr}
  400af2:	b128      	cbz	r0, 400b00 <rf_ptc_config+0x10>
  400af4:	2200      	movs	r2, #0
  400af6:	4b08      	ldr	r3, [pc, #32]	@ (400b18 <rf_ptc_config+0x28>)
  400af8:	681b      	ldr	r3, [r3, #0]
  400afa:	601a      	str	r2, [r3, #0]
  400afc:	605a      	str	r2, [r3, #4]
  400afe:	811a      	strh	r2, [r3, #8]
  400b00:	2038      	movs	r0, #56	@ 0x38
  400b02:	f7ff fe3b 	bl	40077c <HAL_RCC_EnableModule>
  400b06:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400b0a:	2300      	movs	r3, #0
  400b0c:	2169      	movs	r1, #105	@ 0x69
  400b0e:	461a      	mov	r2, r3
  400b10:	4618      	mov	r0, r3
  400b12:	f7ff bfbb 	b.w	400a8c <ptc_config>
  400b16:	bf00      	nop
  400b18:	204015ec 	.word	0x204015ec

00400b1c <hcpu2lcpu_notification_callback>:
  400b1c:	2907      	cmp	r1, #7
  400b1e:	b510      	push	{r4, lr}
  400b20:	460c      	mov	r4, r1
  400b22:	d904      	bls.n	400b2e <hcpu2lcpu_notification_callback+0x12>
  400b24:	2234      	movs	r2, #52	@ 0x34
  400b26:	490a      	ldr	r1, [pc, #40]	@ (400b50 <hcpu2lcpu_notification_callback+0x34>)
  400b28:	480a      	ldr	r0, [pc, #40]	@ (400b54 <hcpu2lcpu_notification_callback+0x38>)
  400b2a:	f450 fc17 	bl	5135c <rt_assert_handler>
  400b2e:	4b0a      	ldr	r3, [pc, #40]	@ (400b58 <hcpu2lcpu_notification_callback+0x3c>)
  400b30:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
  400b32:	40e2      	lsrs	r2, r4
  400b34:	07d2      	lsls	r2, r2, #31
  400b36:	d503      	bpl.n	400b40 <hcpu2lcpu_notification_callback+0x24>
  400b38:	b91c      	cbnz	r4, 400b42 <hcpu2lcpu_notification_callback+0x26>
  400b3a:	6a98      	ldr	r0, [r3, #40]	@ 0x28
  400b3c:	f415 fe00 	bl	16740 <ipc_queue_data_ind_rom>
  400b40:	bd10      	pop	{r4, pc}
  400b42:	eb03 0384 	add.w	r3, r3, r4, lsl #2
  400b46:	6a98      	ldr	r0, [r3, #40]	@ 0x28
  400b48:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400b4c:	f415 bddc 	b.w	16708 <ipc_queue_data_ind>
  400b50:	0040140c 	.word	0x0040140c
  400b54:	00401396 	.word	0x00401396
  400b58:	2040e498 	.word	0x2040e498

00400b5c <HCPU2LCPU_IRQHandler>:
  400b5c:	b508      	push	{r3, lr}
  400b5e:	f451 ff7b 	bl	52a58 <rt_interrupt_enter>
  400b62:	4803      	ldr	r0, [pc, #12]	@ (400b70 <HCPU2LCPU_IRQHandler+0x14>)
  400b64:	f7ff fd19 	bl	40059a <HAL_MAILBOX_IRQHandler>
  400b68:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400b6c:	f451 bf8c 	b.w	52a88 <rt_interrupt_leave>
  400b70:	204015f0 	.word	0x204015f0

00400b74 <sys_init_debug_trigger>:
  400b74:	b508      	push	{r3, lr}
  400b76:	4a06      	ldr	r2, [pc, #24]	@ (400b90 <sys_init_debug_trigger+0x1c>)
  400b78:	4806      	ldr	r0, [pc, #24]	@ (400b94 <sys_init_debug_trigger+0x20>)
  400b7a:	6913      	ldr	r3, [r2, #16]
  400b7c:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
  400b80:	6113      	str	r3, [r2, #16]
  400b82:	f450 fc09 	bl	51398 <rt_assert_set_hook>
  400b86:	4804      	ldr	r0, [pc, #16]	@ (400b98 <sys_init_debug_trigger+0x24>)
  400b88:	f451 fd42 	bl	52610 <rt_hw_exception_install>
  400b8c:	2000      	movs	r0, #0
  400b8e:	bd08      	pop	{r3, pc}
  400b90:	4000f000 	.word	0x4000f000
  400b94:	00400bbd 	.word	0x00400bbd
  400b98:	00400b9d 	.word	0x00400b9d

00400b9c <exception_handler>:
  400b9c:	b510      	push	{r4, lr}
  400b9e:	4c06      	ldr	r4, [pc, #24]	@ (400bb8 <exception_handler+0x1c>)
  400ba0:	6923      	ldr	r3, [r4, #16]
  400ba2:	005b      	lsls	r3, r3, #1
  400ba4:	d406      	bmi.n	400bb4 <exception_handler+0x18>
  400ba6:	2001      	movs	r0, #1
  400ba8:	f401 fa24 	bl	1ff4 <HAL_LPAON_WakeCore>
  400bac:	6923      	ldr	r3, [r4, #16]
  400bae:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
  400bb2:	6123      	str	r3, [r4, #16]
  400bb4:	2001      	movs	r0, #1
  400bb6:	bd10      	pop	{r4, pc}
  400bb8:	4000f000 	.word	0x4000f000

00400bbc <assert_hook>:
  400bbc:	b510      	push	{r4, lr}
  400bbe:	4c08      	ldr	r4, [pc, #32]	@ (400be0 <assert_hook+0x24>)
  400bc0:	6923      	ldr	r3, [r4, #16]
  400bc2:	005b      	lsls	r3, r3, #1
  400bc4:	d40a      	bmi.n	400bdc <assert_hook+0x20>
  400bc6:	2001      	movs	r0, #1
  400bc8:	f401 fa14 	bl	1ff4 <HAL_LPAON_WakeCore>
  400bcc:	6923      	ldr	r3, [r4, #16]
  400bce:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
  400bd2:	6123      	str	r3, [r4, #16]
  400bd4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400bd8:	f000 bb1e 	b.w	401218 <rt_hw_fatal_error>
  400bdc:	bd10      	pop	{r4, pc}
  400bde:	bf00      	nop
  400be0:	4000f000 	.word	0x4000f000

00400be4 <DBG_Trigger_IRQHandler>:
  400be4:	b508      	push	{r3, lr}
  400be6:	f451 ff37 	bl	52a58 <rt_interrupt_enter>
  400bea:	f240 123b 	movw	r2, #315	@ 0x13b
  400bee:	4904      	ldr	r1, [pc, #16]	@ (400c00 <DBG_Trigger_IRQHandler+0x1c>)
  400bf0:	4804      	ldr	r0, [pc, #16]	@ (400c04 <DBG_Trigger_IRQHandler+0x20>)
  400bf2:	f450 fbb3 	bl	5135c <rt_assert_handler>
  400bf6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400bfa:	f451 bf45 	b.w	52a88 <rt_interrupt_leave>
  400bfe:	bf00      	nop
  400c00:	0040142c 	.word	0x0040142c
  400c04:	00401388 	.word	0x00401388

00400c08 <sifli_exit_idle>:
  400c08:	4770      	bx	lr

00400c0a <sifli_resume>:
  400c0a:	4770      	bx	lr

00400c0c <sifli_suspend>:
  400c0c:	2901      	cmp	r1, #1
  400c0e:	b508      	push	{r3, lr}
  400c10:	d801      	bhi.n	400c16 <sifli_suspend+0xa>
  400c12:	2000      	movs	r0, #0
  400c14:	bd08      	pop	{r3, pc}
  400c16:	f415 fd31 	bl	1667c <ipc_queue_check_idle>
  400c1a:	b908      	cbnz	r0, 400c20 <sifli_suspend+0x14>
  400c1c:	2007      	movs	r0, #7
  400c1e:	e7f9      	b.n	400c14 <sifli_suspend+0x8>
  400c20:	f415 fd4a 	bl	166b8 <ipc_queue_check_idle_rom>
  400c24:	2800      	cmp	r0, #0
  400c26:	d0f9      	beq.n	400c1c <sifli_suspend+0x10>
  400c28:	4b02      	ldr	r3, [pc, #8]	@ (400c34 <sifli_suspend+0x28>)
  400c2a:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
  400c2c:	6a1b      	ldr	r3, [r3, #32]
  400c2e:	421a      	tst	r2, r3
  400c30:	d0ef      	beq.n	400c12 <sifli_suspend+0x6>
  400c32:	e7f3      	b.n	400c1c <sifli_suspend+0x10>
  400c34:	40040000 	.word	0x40040000

00400c38 <rt_application_init_power_on_mode>:
  400c38:	4770      	bx	lr

00400c3a <SystemPowerOnModeInit>:
  400c3a:	b508      	push	{r3, lr}
  400c3c:	f000 fc6c 	bl	401518 <SystemPowerOnInitLCPU>
  400c40:	bd08      	pop	{r3, pc}
	...

00400c44 <SystemPowerOnModeGet>:
  400c44:	4b01      	ldr	r3, [pc, #4]	@ (400c4c <SystemPowerOnModeGet+0x8>)
  400c46:	7818      	ldrb	r0, [r3, #0]
  400c48:	4770      	bx	lr
  400c4a:	bf00      	nop
  400c4c:	2040fd54 	.word	0x2040fd54

00400c50 <sifli_standby_handler>:
  400c50:	b510      	push	{r4, lr}
  400c52:	4c0f      	ldr	r4, [pc, #60]	@ (400c90 <sifli_standby_handler+0x40>)
  400c54:	6a23      	ldr	r3, [r4, #32]
  400c56:	069a      	lsls	r2, r3, #26
  400c58:	d406      	bmi.n	400c68 <sifli_standby_handler+0x18>
  400c5a:	f459 fdcf 	bl	5a7fc <sifli_standby_handler_core>
  400c5e:	6a23      	ldr	r3, [r4, #32]
  400c60:	069b      	lsls	r3, r3, #26
  400c62:	d40b      	bmi.n	400c7c <sifli_standby_handler+0x2c>
  400c64:	2000      	movs	r0, #0
  400c66:	bd10      	pop	{r4, pc}
  400c68:	4b0a      	ldr	r3, [pc, #40]	@ (400c94 <sifli_standby_handler+0x44>)
  400c6a:	2b00      	cmp	r3, #0
  400c6c:	d0f5      	beq.n	400c5a <sifli_standby_handler+0xa>
  400c6e:	f7ff fe4f 	bl	400910 <ble_standby_sleep_pre_handler>
  400c72:	2800      	cmp	r0, #0
  400c74:	d0f1      	beq.n	400c5a <sifli_standby_handler+0xa>
  400c76:	f04f 30ff 	mov.w	r0, #4294967295
  400c7a:	e7f4      	b.n	400c66 <sifli_standby_handler+0x16>
  400c7c:	4c06      	ldr	r4, [pc, #24]	@ (400c98 <sifli_standby_handler+0x48>)
  400c7e:	6823      	ldr	r3, [r4, #0]
  400c80:	2b00      	cmp	r3, #0
  400c82:	d0ef      	beq.n	400c64 <sifli_standby_handler+0x14>
  400c84:	f7ff fe46 	bl	400914 <ble_standby_sleep_after_handler>
  400c88:	2300      	movs	r3, #0
  400c8a:	6023      	str	r3, [r4, #0]
  400c8c:	e7ea      	b.n	400c64 <sifli_standby_handler+0x14>
  400c8e:	bf00      	nop
  400c90:	40040000 	.word	0x40040000
  400c94:	00400911 	.word	0x00400911
  400c98:	20401b1c 	.word	0x20401b1c

00400c9c <low_power_init>:
  400c9c:	b510      	push	{r4, lr}
  400c9e:	2200      	movs	r2, #0
  400ca0:	21fc      	movs	r1, #252	@ 0xfc
  400ca2:	480c      	ldr	r0, [pc, #48]	@ (400cd4 <low_power_init+0x38>)
  400ca4:	f454 fcae 	bl	55604 <rt_system_pm_init>
  400ca8:	2001      	movs	r0, #1
  400caa:	490b      	ldr	r1, [pc, #44]	@ (400cd8 <low_power_init+0x3c>)
  400cac:	f453 fa92 	bl	541d4 <rt_pm_policy_register>
  400cb0:	490a      	ldr	r1, [pc, #40]	@ (400cdc <low_power_init+0x40>)
  400cb2:	2000      	movs	r0, #0
  400cb4:	f453 f9ac 	bl	54010 <rt_pm_device_register>
  400cb8:	f415 fbdc 	bl	16474 <init_default_wakeup_src>
  400cbc:	4b08      	ldr	r3, [pc, #32]	@ (400ce0 <low_power_init+0x44>)
  400cbe:	4c09      	ldr	r4, [pc, #36]	@ (400ce4 <low_power_init+0x48>)
  400cc0:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
  400cc2:	60a3      	str	r3, [r4, #8]
  400cc4:	f455 fa8c 	bl	561e0 <rt_tick_get>
  400cc8:	2301      	movs	r3, #1
  400cca:	60e0      	str	r0, [r4, #12]
  400ccc:	7023      	strb	r3, [r4, #0]
  400cce:	2000      	movs	r0, #0
  400cd0:	bd10      	pop	{r4, pc}
  400cd2:	bf00      	nop
  400cd4:	204015fc 	.word	0x204015fc
  400cd8:	00401460 	.word	0x00401460
  400cdc:	00401454 	.word	0x00401454
  400ce0:	40040000 	.word	0x40040000
  400ce4:	20401afc 	.word	0x20401afc

00400ce8 <sifli_shutdown_handler>:
  400ce8:	4770      	bx	lr
	...

00400cec <sifli_sleep>:
  400cec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  400cee:	4b2c      	ldr	r3, [pc, #176]	@ (400da0 <sifli_sleep+0xb4>)
  400cf0:	6019      	str	r1, [r3, #0]
  400cf2:	3902      	subs	r1, #2
  400cf4:	2903      	cmp	r1, #3
  400cf6:	d805      	bhi.n	400d04 <sifli_sleep+0x18>
  400cf8:	e8df f001 	tbb	[pc, r1]
  400cfc:	0209414a 	.word	0x0209414a
  400d00:	f7ff fff2 	bl	400ce8 <sifli_shutdown_handler>
  400d04:	4b27      	ldr	r3, [pc, #156]	@ (400da4 <sifli_sleep+0xb8>)
  400d06:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
  400d08:	4b27      	ldr	r3, [pc, #156]	@ (400da8 <sifli_sleep+0xbc>)
  400d0a:	601a      	str	r2, [r3, #0]
  400d0c:	e03f      	b.n	400d8e <sifli_sleep+0xa2>
  400d0e:	2009      	movs	r0, #9
  400d10:	f452 ffc2 	bl	53c98 <rt_object_get_information>
  400d14:	4604      	mov	r4, r0
  400d16:	6845      	ldr	r5, [r0, #4]
  400d18:	1d07      	adds	r7, r0, #4
  400d1a:	42bd      	cmp	r5, r7
  400d1c:	d11d      	bne.n	400d5a <sifli_sleep+0x6e>
  400d1e:	4e21      	ldr	r6, [pc, #132]	@ (400da4 <sifli_sleep+0xb8>)
  400d20:	f7ff ff96 	bl	400c50 <sifli_standby_handler>
  400d24:	6cb2      	ldr	r2, [r6, #72]	@ 0x48
  400d26:	4b21      	ldr	r3, [pc, #132]	@ (400dac <sifli_sleep+0xc0>)
  400d28:	4821      	ldr	r0, [pc, #132]	@ (400db0 <sifli_sleep+0xc4>)
  400d2a:	619a      	str	r2, [r3, #24]
  400d2c:	f450 ffb2 	bl	51c94 <rt_device_find>
  400d30:	4605      	mov	r5, r0
  400d32:	b118      	cbz	r0, 400d3c <sifli_sleep+0x50>
  400d34:	2204      	movs	r2, #4
  400d36:	2101      	movs	r1, #1
  400d38:	f450 ff32 	bl	51ba0 <rt_device_control>
  400d3c:	6c73      	ldr	r3, [r6, #68]	@ 0x44
  400d3e:	481d      	ldr	r0, [pc, #116]	@ (400db4 <sifli_sleep+0xc8>)
  400d40:	f023 0301 	bic.w	r3, r3, #1
  400d44:	6473      	str	r3, [r6, #68]	@ 0x44
  400d46:	f400 ffe9 	bl	1d1c <HAL_GPIO_ClearInterrupt>
  400d4a:	6864      	ldr	r4, [r4, #4]
  400d4c:	42bc      	cmp	r4, r7
  400d4e:	d10c      	bne.n	400d6a <sifli_sleep+0x7e>
  400d50:	f415 fe34 	bl	169bc <ipc_queue_restore_all>
  400d54:	f415 fe66 	bl	16a24 <ipc_queue_restore_all_rom>
  400d58:	e7d4      	b.n	400d04 <sifli_sleep+0x18>
  400d5a:	f1a5 000c 	sub.w	r0, r5, #12
  400d5e:	2204      	movs	r2, #4
  400d60:	2102      	movs	r1, #2
  400d62:	f450 ff1d 	bl	51ba0 <rt_device_control>
  400d66:	682d      	ldr	r5, [r5, #0]
  400d68:	e7d7      	b.n	400d1a <sifli_sleep+0x2e>
  400d6a:	f1a4 000c 	sub.w	r0, r4, #12
  400d6e:	4285      	cmp	r5, r0
  400d70:	d003      	beq.n	400d7a <sifli_sleep+0x8e>
  400d72:	2204      	movs	r2, #4
  400d74:	2101      	movs	r1, #1
  400d76:	f450 ff13 	bl	51ba0 <rt_device_control>
  400d7a:	6824      	ldr	r4, [r4, #0]
  400d7c:	e7e6      	b.n	400d4c <sifli_sleep+0x60>
  400d7e:	f459 fbdb 	bl	5a538 <sifli_deep_handler>
  400d82:	4b08      	ldr	r3, [pc, #32]	@ (400da4 <sifli_sleep+0xb8>)
  400d84:	2800      	cmp	r0, #0
  400d86:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
  400d88:	4b08      	ldr	r3, [pc, #32]	@ (400dac <sifli_sleep+0xc0>)
  400d8a:	619a      	str	r2, [r3, #24]
  400d8c:	dbba      	blt.n	400d04 <sifli_sleep+0x18>
  400d8e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  400d90:	f459 fc1e 	bl	5a5d0 <sifli_light_handler>
  400d94:	4b03      	ldr	r3, [pc, #12]	@ (400da4 <sifli_sleep+0xb8>)
  400d96:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
  400d98:	4b04      	ldr	r3, [pc, #16]	@ (400dac <sifli_sleep+0xc0>)
  400d9a:	619a      	str	r2, [r3, #24]
  400d9c:	e7b2      	b.n	400d04 <sifli_sleep+0x18>
  400d9e:	bf00      	nop
  400da0:	2040e8c0 	.word	0x2040e8c0
  400da4:	40040000 	.word	0x40040000
  400da8:	2040fd58 	.word	0x2040fd58
  400dac:	20401afc 	.word	0x20401afc
  400db0:	004013bd 	.word	0x004013bd
  400db4:	40080000 	.word	0x40080000

00400db8 <pm_set_last_latch_tick>:
  400db8:	4b01      	ldr	r3, [pc, #4]	@ (400dc0 <pm_set_last_latch_tick+0x8>)
  400dba:	60d8      	str	r0, [r3, #12]
  400dbc:	4770      	bx	lr
  400dbe:	bf00      	nop
  400dc0:	20401afc 	.word	0x20401afc

00400dc4 <AON_IRQHandler>:
  400dc4:	b508      	push	{r3, lr}
  400dc6:	f451 fe47 	bl	52a58 <rt_interrupt_enter>
  400dca:	f400 fb0b 	bl	13e4 <AON_LCPU_IRQHandler>
  400dce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400dd2:	f451 be59 	b.w	52a88 <rt_interrupt_leave>

00400dd6 <wdt_store_exception_information>:
  400dd6:	4770      	bx	lr

00400dd8 <WDT_IRQHandler>:
  400dd8:	b538      	push	{r3, r4, r5, lr}
  400dda:	4b18      	ldr	r3, [pc, #96]	@ (400e3c <WDT_IRQHandler+0x64>)
  400ddc:	681a      	ldr	r2, [r3, #0]
  400dde:	bb2a      	cbnz	r2, 400e2c <WDT_IRQHandler+0x54>
  400de0:	2401      	movs	r4, #1
  400de2:	4d17      	ldr	r5, [pc, #92]	@ (400e40 <WDT_IRQHandler+0x68>)
  400de4:	601c      	str	r4, [r3, #0]
  400de6:	692b      	ldr	r3, [r5, #16]
  400de8:	005a      	lsls	r2, r3, #1
  400dea:	d41f      	bmi.n	400e2c <WDT_IRQHandler+0x54>
  400dec:	f7ff fff3 	bl	400dd6 <wdt_store_exception_information>
  400df0:	4620      	mov	r0, r4
  400df2:	f401 f8ff 	bl	1ff4 <HAL_LPAON_WakeCore>
  400df6:	692b      	ldr	r3, [r5, #16]
  400df8:	4620      	mov	r0, r4
  400dfa:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
  400dfe:	612b      	str	r3, [r5, #16]
  400e00:	4b10      	ldr	r3, [pc, #64]	@ (400e44 <WDT_IRQHandler+0x6c>)
  400e02:	4d11      	ldr	r5, [pc, #68]	@ (400e48 <WDT_IRQHandler+0x70>)
  400e04:	f64b 3481 	movw	r4, #48001	@ 0xbb81
  400e08:	602b      	str	r3, [r5, #0]
  400e0a:	f000 f833 	bl	400e74 <HAL_Delay>
  400e0e:	2234      	movs	r2, #52	@ 0x34
  400e10:	682b      	ldr	r3, [r5, #0]
  400e12:	60da      	str	r2, [r3, #12]
  400e14:	682b      	ldr	r3, [r5, #0]
  400e16:	695b      	ldr	r3, [r3, #20]
  400e18:	079b      	lsls	r3, r3, #30
  400e1a:	d408      	bmi.n	400e2e <WDT_IRQHandler+0x56>
  400e1c:	2001      	movs	r0, #1
  400e1e:	f000 f829 	bl	400e74 <HAL_Delay>
  400e22:	4a07      	ldr	r2, [pc, #28]	@ (400e40 <WDT_IRQHandler+0x68>)
  400e24:	6813      	ldr	r3, [r2, #0]
  400e26:	f043 0301 	orr.w	r3, r3, #1
  400e2a:	6013      	str	r3, [r2, #0]
  400e2c:	bd38      	pop	{r3, r4, r5, pc}
  400e2e:	3c01      	subs	r4, #1
  400e30:	d0f4      	beq.n	400e1c <WDT_IRQHandler+0x44>
  400e32:	2001      	movs	r0, #1
  400e34:	f400 ff4a 	bl	1ccc <HAL_Delay_us_>
  400e38:	e7ec      	b.n	400e14 <WDT_IRQHandler+0x3c>
  400e3a:	bf00      	nop
  400e3c:	20401b20 	.word	0x20401b20
  400e40:	4000f000 	.word	0x4000f000
  400e44:	4000b000 	.word	0x4000b000
  400e48:	20401b24 	.word	0x20401b24

00400e4c <lcpu_thread_init_hook>:
  400e4c:	b510      	push	{r4, lr}
  400e4e:	6ac2      	ldr	r2, [r0, #44]	@ 0x2c
  400e50:	6a81      	ldr	r1, [r0, #40]	@ 0x28
  400e52:	3a04      	subs	r2, #4
  400e54:	4604      	mov	r4, r0
  400e56:	440a      	add	r2, r1
  400e58:	4b05      	ldr	r3, [pc, #20]	@ (400e70 <lcpu_thread_init_hook+0x24>)
  400e5a:	e9d0 0108 	ldrd	r0, r1, [r0, #32]
  400e5e:	f451 fbfd 	bl	5265c <rt_hw_stack_init>
  400e62:	61e0      	str	r0, [r4, #28]
  400e64:	6aa1      	ldr	r1, [r4, #40]	@ 0x28
  400e66:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  400e6a:	f000 b92d 	b.w	4010c8 <rt_hw_set_stack_limit>
  400e6e:	bf00      	nop
  400e70:	00055ad1 	.word	0x00055ad1

00400e74 <HAL_Delay>:
  400e74:	b507      	push	{r0, r1, r2, lr}
  400e76:	9001      	str	r0, [sp, #4]
  400e78:	9b01      	ldr	r3, [sp, #4]
  400e7a:	b913      	cbnz	r3, 400e82 <HAL_Delay+0xe>
  400e7c:	b003      	add	sp, #12
  400e7e:	f85d fb04 	ldr.w	pc, [sp], #4
  400e82:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
  400e86:	f7ff fa47 	bl	400318 <HAL_Delay_us>
  400e8a:	9b01      	ldr	r3, [sp, #4]
  400e8c:	3b01      	subs	r3, #1
  400e8e:	9301      	str	r3, [sp, #4]
  400e90:	e7f2      	b.n	400e78 <HAL_Delay+0x4>

00400e92 <HAL_InitTick>:
  400e92:	2000      	movs	r0, #0
  400e94:	4770      	bx	lr
	...

00400e98 <SysTick_Handler>:
  400e98:	b570      	push	{r4, r5, r6, lr}
  400e9a:	4d14      	ldr	r5, [pc, #80]	@ (400eec <SysTick_Handler+0x54>)
  400e9c:	f451 fddc 	bl	52a58 <rt_interrupt_enter>
  400ea0:	6a6b      	ldr	r3, [r5, #36]	@ 0x24
  400ea2:	f7ff fa31 	bl	400308 <HAL_IncTick>
  400ea6:	f455 f99b 	bl	561e0 <rt_tick_get>
  400eaa:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
  400eac:	4604      	mov	r4, r0
  400eae:	069b      	lsls	r3, r3, #26
  400eb0:	d405      	bmi.n	400ebe <SysTick_Handler+0x26>
  400eb2:	f455 f99d 	bl	561f0 <rt_tick_increase>
  400eb6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
  400eba:	f451 bde5 	b.w	52a88 <rt_interrupt_leave>
  400ebe:	6cad      	ldr	r5, [r5, #72]	@ 0x48
  400ec0:	1c46      	adds	r6, r0, #1
  400ec2:	f401 f8a7 	bl	2014 <HAL_LPTIM_GetFreq>
  400ec6:	2301      	movs	r3, #1
  400ec8:	4602      	mov	r2, r0
  400eca:	4629      	mov	r1, r5
  400ecc:	4630      	mov	r0, r6
  400ece:	f44f fd03 	bl	508d8 <pm_latch_tick>
  400ed2:	4284      	cmp	r4, r0
  400ed4:	d0ef      	beq.n	400eb6 <SysTick_Handler+0x1e>
  400ed6:	4286      	cmp	r6, r0
  400ed8:	d0eb      	beq.n	400eb2 <SysTick_Handler+0x1a>
  400eda:	f455 f989 	bl	561f0 <rt_tick_increase>
  400ede:	f455 f987 	bl	561f0 <rt_tick_increase>
  400ee2:	1ca0      	adds	r0, r4, #2
  400ee4:	f7ff ff68 	bl	400db8 <pm_set_last_latch_tick>
  400ee8:	e7e5      	b.n	400eb6 <SysTick_Handler+0x1e>
  400eea:	bf00      	nop
  400eec:	40040000 	.word	0x40040000

00400ef0 <HAL_AssertFailed>:
  400ef0:	2300      	movs	r3, #0
  400ef2:	b507      	push	{r0, r1, r2, lr}
  400ef4:	f240 222f 	movw	r2, #559	@ 0x22f
  400ef8:	4905      	ldr	r1, [pc, #20]	@ (400f10 <HAL_AssertFailed+0x20>)
  400efa:	4806      	ldr	r0, [pc, #24]	@ (400f14 <HAL_AssertFailed+0x24>)
  400efc:	9301      	str	r3, [sp, #4]
  400efe:	f450 fa2d 	bl	5135c <rt_assert_handler>
  400f02:	9b01      	ldr	r3, [sp, #4]
  400f04:	2b00      	cmp	r3, #0
  400f06:	d0fc      	beq.n	400f02 <HAL_AssertFailed+0x12>
  400f08:	b003      	add	sp, #12
  400f0a:	f85d fb04 	ldr.w	pc, [sp], #4
  400f0e:	bf00      	nop
  400f10:	00401468 	.word	0x00401468
  400f14:	00401388 	.word	0x00401388

00400f18 <rt_hw_preboard_init>:
  400f18:	4770      	bx	lr
	...

00400f1c <rt_hw_board_init>:
  400f1c:	b508      	push	{r3, lr}
  400f1e:	f7ff fffb 	bl	400f18 <rt_hw_preboard_init>
  400f22:	f7ff f9e0 	bl	4002e6 <HAL_Init>
  400f26:	4808      	ldr	r0, [pc, #32]	@ (400f48 <rt_hw_board_init+0x2c>)
  400f28:	f454 ff40 	bl	55dac <rt_thread_inited_sethook>
  400f2c:	f7ff f931 	bl	400192 <SystemClock_Config>
  400f30:	f451 fbb2 	bl	52698 <rt_hw_systick_init>
  400f34:	f451 fbfa 	bl	5272c <rt_hw_watchdog_init>
  400f38:	4904      	ldr	r1, [pc, #16]	@ (400f4c <rt_hw_board_init+0x30>)
  400f3a:	4805      	ldr	r0, [pc, #20]	@ (400f50 <rt_hw_board_init+0x34>)
  400f3c:	f454 fb14 	bl	55568 <rt_system_heap_init>
  400f40:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  400f44:	f000 b80e 	b.w	400f64 <rt_components_board_init>
  400f48:	00400e4d 	.word	0x00400e4d
  400f4c:	20405c00 	.word	0x20405c00
  400f50:	20401d30 	.word	0x20401d30

00400f54 <rti_start>:
  400f54:	2000      	movs	r0, #0
  400f56:	4770      	bx	lr

00400f58 <rti_board_start>:
  400f58:	2000      	movs	r0, #0
  400f5a:	4770      	bx	lr

00400f5c <rti_board_end>:
  400f5c:	2000      	movs	r0, #0
  400f5e:	4770      	bx	lr

00400f60 <rti_end>:
  400f60:	2000      	movs	r0, #0
  400f62:	4770      	bx	lr

00400f64 <rt_components_board_init>:
  400f64:	b538      	push	{r3, r4, r5, lr}
  400f66:	4c04      	ldr	r4, [pc, #16]	@ (400f78 <rt_components_board_init+0x14>)
  400f68:	4d04      	ldr	r5, [pc, #16]	@ (400f7c <rt_components_board_init+0x18>)
  400f6a:	42ac      	cmp	r4, r5
  400f6c:	d300      	bcc.n	400f70 <rt_components_board_init+0xc>
  400f6e:	bd38      	pop	{r3, r4, r5, pc}
  400f70:	f854 3b04 	ldr.w	r3, [r4], #4
  400f74:	4798      	blx	r3
  400f76:	e7f8      	b.n	400f6a <rt_components_board_init+0x6>
  400f78:	004015a0 	.word	0x004015a0
  400f7c:	004015a4 	.word	0x004015a4

00400f80 <rt_components_init>:
  400f80:	b538      	push	{r3, r4, r5, lr}
  400f82:	4c05      	ldr	r4, [pc, #20]	@ (400f98 <rt_components_init+0x18>)
  400f84:	4d05      	ldr	r5, [pc, #20]	@ (400f9c <rt_components_init+0x1c>)
  400f86:	42ac      	cmp	r4, r5
  400f88:	d300      	bcc.n	400f8c <rt_components_init+0xc>
  400f8a:	bd38      	pop	{r3, r4, r5, pc}
  400f8c:	f854 3b04 	ldr.w	r3, [r4], #4
  400f90:	2b00      	cmp	r3, #0
  400f92:	d0f8      	beq.n	400f86 <rt_components_init+0x6>
  400f94:	4798      	blx	r3
  400f96:	e7f6      	b.n	400f86 <rt_components_init+0x6>
  400f98:	004015a4 	.word	0x004015a4
  400f9c:	004015c4 	.word	0x004015c4

00400fa0 <main_thread_entry>:
  400fa0:	b513      	push	{r0, r1, r4, lr}
  400fa2:	2402      	movs	r4, #2
  400fa4:	f88d 4006 	strb.w	r4, [sp, #6]
  400fa8:	f454 ff50 	bl	55e4c <rt_thread_self>
  400fac:	f890 3035 	ldrb.w	r3, [r0, #53]	@ 0x35
  400fb0:	f88d 3007 	strb.w	r3, [sp, #7]
  400fb4:	f454 ff4a 	bl	55e4c <rt_thread_self>
  400fb8:	4621      	mov	r1, r4
  400fba:	f10d 0206 	add.w	r2, sp, #6
  400fbe:	f454 fc59 	bl	55874 <rt_thread_control>
  400fc2:	f7ff ffdd 	bl	400f80 <rt_components_init>
  400fc6:	f454 ff41 	bl	55e4c <rt_thread_self>
  400fca:	4621      	mov	r1, r4
  400fcc:	f10d 0207 	add.w	r2, sp, #7
  400fd0:	f454 fc50 	bl	55874 <rt_thread_control>
  400fd4:	f7ff f916 	bl	400204 <main>
  400fd8:	b002      	add	sp, #8
  400fda:	bd10      	pop	{r4, pc}

00400fdc <pre_main>:
  400fdc:	4770      	bx	lr
	...

00400fe0 <rt_application_init>:
  400fe0:	2302      	movs	r3, #2
  400fe2:	2214      	movs	r2, #20
  400fe4:	b513      	push	{r0, r1, r4, lr}
  400fe6:	490b      	ldr	r1, [pc, #44]	@ (401014 <rt_application_init+0x34>)
  400fe8:	e9cd 3200 	strd	r3, r2, [sp]
  400fec:	480a      	ldr	r0, [pc, #40]	@ (401018 <rt_application_init+0x38>)
  400fee:	f44f 6380 	mov.w	r3, #1024	@ 0x400
  400ff2:	2200      	movs	r2, #0
  400ff4:	f454 fc86 	bl	55904 <rt_thread_create>
  400ff8:	4604      	mov	r4, r0
  400ffa:	b928      	cbnz	r0, 401008 <rt_application_init+0x28>
  400ffc:	f44f 72b3 	mov.w	r2, #358	@ 0x166
  401000:	4906      	ldr	r1, [pc, #24]	@ (40101c <rt_application_init+0x3c>)
  401002:	4807      	ldr	r0, [pc, #28]	@ (401020 <rt_application_init+0x40>)
  401004:	f450 f9aa 	bl	5135c <rt_assert_handler>
  401008:	4620      	mov	r0, r4
  40100a:	b002      	add	sp, #8
  40100c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
  401010:	f454 bfba 	b.w	55f88 <rt_thread_startup>
  401014:	00400fa1 	.word	0x00400fa1
  401018:	004013c1 	.word	0x004013c1
  40101c:	00401479 	.word	0x00401479
  401020:	004013c6 	.word	0x004013c6

00401024 <rtthread_startup>:
  401024:	b508      	push	{r3, lr}
  401026:	f7ff f3d9 	bl	7dc <rt_hw_interrupt_disable>
  40102a:	f7ff fe05 	bl	400c38 <rt_application_init_power_on_mode>
  40102e:	f7ff ff75 	bl	400f1c <rt_hw_board_init>
  401032:	f7ff fe07 	bl	400c44 <SystemPowerOnModeGet>
  401036:	b908      	cbnz	r0, 40103c <rtthread_startup+0x18>
  401038:	f454 f9fb 	bl	55432 <rt_show_version>
  40103c:	f454 fc10 	bl	55860 <rt_system_timer_init>
  401040:	f454 fbe4 	bl	5580c <rt_system_scheduler_init>
  401044:	f7ff ffcc 	bl	400fe0 <rt_application_init>
  401048:	f454 fc12 	bl	55870 <rt_system_timer_thread_init>
  40104c:	f000 f81e 	bl	40108c <rt_thread_idle_init>
  401050:	f454 fbf2 	bl	55838 <rt_system_scheduler_start>
  401054:	2000      	movs	r0, #0
  401056:	bd08      	pop	{r3, pc}

00401058 <entry>:
  401058:	b508      	push	{r3, lr}
  40105a:	f7ff ffbf 	bl	400fdc <pre_main>
  40105e:	f7ff ffe1 	bl	401024 <rtthread_startup>
  401062:	2000      	movs	r0, #0
  401064:	bd08      	pop	{r3, pc}
	...

00401068 <rt_thread_idle_entry>:
  401068:	b538      	push	{r3, r4, r5, lr}
  40106a:	2400      	movs	r4, #0
  40106c:	4d06      	ldr	r5, [pc, #24]	@ (401088 <rt_thread_idle_entry+0x20>)
  40106e:	f855 3b04 	ldr.w	r3, [r5], #4
  401072:	b103      	cbz	r3, 401076 <rt_thread_idle_entry+0xe>
  401074:	4798      	blx	r3
  401076:	3401      	adds	r4, #1
  401078:	2c04      	cmp	r4, #4
  40107a:	d1f8      	bne.n	40106e <rt_thread_idle_entry+0x6>
  40107c:	f454 fdc2 	bl	55c04 <rt_thread_idle_excute>
  401080:	f454 fb00 	bl	55684 <rt_system_power_manager>
  401084:	e7f1      	b.n	40106a <rt_thread_idle_entry+0x2>
  401086:	bf00      	nop
  401088:	2040efec 	.word	0x2040efec

0040108c <rt_thread_idle_init>:
  40108c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
  40108e:	2307      	movs	r3, #7
  401090:	2220      	movs	r2, #32
  401092:	e9cd 3202 	strd	r3, r2, [sp, #8]
  401096:	f44f 7300 	mov.w	r3, #512	@ 0x200
  40109a:	9301      	str	r3, [sp, #4]
  40109c:	4b06      	ldr	r3, [pc, #24]	@ (4010b8 <rt_thread_idle_init+0x2c>)
  40109e:	4a07      	ldr	r2, [pc, #28]	@ (4010bc <rt_thread_idle_init+0x30>)
  4010a0:	9300      	str	r3, [sp, #0]
  4010a2:	4907      	ldr	r1, [pc, #28]	@ (4010c0 <rt_thread_idle_init+0x34>)
  4010a4:	2300      	movs	r3, #0
  4010a6:	4807      	ldr	r0, [pc, #28]	@ (4010c4 <rt_thread_idle_init+0x38>)
  4010a8:	f454 fe44 	bl	55d34 <rt_thread_init>
  4010ac:	4805      	ldr	r0, [pc, #20]	@ (4010c4 <rt_thread_idle_init+0x38>)
  4010ae:	b005      	add	sp, #20
  4010b0:	f85d eb04 	ldr.w	lr, [sp], #4
  4010b4:	f454 bf68 	b.w	55f88 <rt_thread_startup>
  4010b8:	20401b30 	.word	0x20401b30
  4010bc:	00401069 	.word	0x00401069
  4010c0:	004013d5 	.word	0x004013d5
  4010c4:	2040ef70 	.word	0x2040ef70

004010c8 <rt_hw_set_stack_limit>:
  4010c8:	4770      	bx	lr
  4010ca:	0000      	movs	r0, r0
  4010cc:	f3ef 8010 	mrs	r0, PRIMASK
  4010d0:	b672      	cpsid	i
  4010d2:	4770      	bx	lr
  4010d4:	f380 8810 	msr	PRIMASK, r0
  4010d8:	4770      	bx	lr
  4010da:	bf40      	sev
  4010dc:	4a5f      	ldr	r2, [pc, #380]	@ (40125c <rt_hw_fatal_error+0x44>)
  4010de:	6813      	ldr	r3, [r2, #0]
  4010e0:	2b01      	cmp	r3, #1
  4010e2:	d004      	beq.n	4010ee <_reswitch>
  4010e4:	f04f 0301 	mov.w	r3, #1
  4010e8:	6013      	str	r3, [r2, #0]
  4010ea:	4a5d      	ldr	r2, [pc, #372]	@ (401260 <rt_hw_fatal_error+0x48>)
  4010ec:	6010      	str	r0, [r2, #0]

004010ee <_reswitch>:
  4010ee:	4a5d      	ldr	r2, [pc, #372]	@ (401264 <rt_hw_fatal_error+0x4c>)
  4010f0:	6011      	str	r1, [r2, #0]
  4010f2:	485d      	ldr	r0, [pc, #372]	@ (401268 <rt_hw_fatal_error+0x50>)
  4010f4:	f04f 5180 	mov.w	r1, #268435456	@ 0x10000000
  4010f8:	6001      	str	r1, [r0, #0]
  4010fa:	4770      	bx	lr
  4010fc:	f3ef 8210 	mrs	r2, PRIMASK
  401100:	b672      	cpsid	i
  401102:	4856      	ldr	r0, [pc, #344]	@ (40125c <rt_hw_fatal_error+0x44>)
  401104:	6801      	ldr	r1, [r0, #0]
  401106:	b1c9      	cbz	r1, 40113c <pendsv_exit>
  401108:	f04f 0100 	mov.w	r1, #0
  40110c:	6001      	str	r1, [r0, #0]
  40110e:	4854      	ldr	r0, [pc, #336]	@ (401260 <rt_hw_fatal_error+0x48>)
  401110:	6801      	ldr	r1, [r0, #0]
  401112:	b149      	cbz	r1, 401128 <switch_to_thread>
  401114:	f3ef 8109 	mrs	r1, PSP
  401118:	e921 0ff0 	stmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
  40111c:	f3ef 840b 	mrs	r4, PSPLIM
  401120:	f841 4d04 	str.w	r4, [r1, #-4]!
  401124:	6800      	ldr	r0, [r0, #0]
  401126:	6001      	str	r1, [r0, #0]

00401128 <switch_to_thread>:
  401128:	494e      	ldr	r1, [pc, #312]	@ (401264 <rt_hw_fatal_error+0x4c>)
  40112a:	6809      	ldr	r1, [r1, #0]
  40112c:	6809      	ldr	r1, [r1, #0]
  40112e:	c910      	ldmia	r1!, {r4}
  401130:	f384 880b 	msr	PSPLIM, r4
  401134:	e8b1 0ff0 	ldmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
  401138:	f381 8809 	msr	PSP, r1

0040113c <pendsv_exit>:
  40113c:	f382 8810 	msr	PRIMASK, r2
  401140:	f04e 0e04 	orr.w	lr, lr, #4
  401144:	4770      	bx	lr
  401146:	4849      	ldr	r0, [pc, #292]	@ (40126c <rt_hw_fatal_error+0x54>)
  401148:	f44f 017f 	mov.w	r1, #16711680	@ 0xff0000
  40114c:	f8d0 2000 	ldr.w	r2, [r0]
  401150:	ea41 0102 	orr.w	r1, r1, r2
  401154:	6001      	str	r1, [r0, #0]
  401156:	4770      	bx	lr
  401158:	4942      	ldr	r1, [pc, #264]	@ (401264 <rt_hw_fatal_error+0x4c>)
  40115a:	6008      	str	r0, [r1, #0]
  40115c:	4940      	ldr	r1, [pc, #256]	@ (401260 <rt_hw_fatal_error+0x48>)
  40115e:	f04f 0000 	mov.w	r0, #0
  401162:	6008      	str	r0, [r1, #0]
  401164:	493d      	ldr	r1, [pc, #244]	@ (40125c <rt_hw_fatal_error+0x44>)
  401166:	f04f 0001 	mov.w	r0, #1
  40116a:	6008      	str	r0, [r1, #0]
  40116c:	483f      	ldr	r0, [pc, #252]	@ (40126c <rt_hw_fatal_error+0x54>)
  40116e:	f44f 017f 	mov.w	r1, #16711680	@ 0xff0000
  401172:	f8d0 2000 	ldr.w	r2, [r0]
  401176:	ea41 0102 	orr.w	r1, r1, r2
  40117a:	6001      	str	r1, [r0, #0]
  40117c:	483a      	ldr	r0, [pc, #232]	@ (401268 <rt_hw_fatal_error+0x50>)
  40117e:	f04f 5180 	mov.w	r1, #268435456	@ 0x10000000
  401182:	6001      	str	r1, [r0, #0]
  401184:	483a      	ldr	r0, [pc, #232]	@ (401270 <rt_hw_fatal_error+0x58>)
  401186:	6800      	ldr	r0, [r0, #0]
  401188:	6800      	ldr	r0, [r0, #0]
  40118a:	bf00      	nop
  40118c:	f380 8808 	msr	MSP, r0
  401190:	b661      	cpsie	f
  401192:	b662      	cpsie	i
  401194:	4770      	bx	lr
  401196:	bf00      	nop
  401198:	bf20      	wfe
  40119a:	4770      	bx	lr
  40119c:	f3ef 8008 	mrs	r0, MSP
  4011a0:	f01e 0f04 	tst.w	lr, #4
  4011a4:	d001      	beq.n	4011aa <_get_sp_done>
  4011a6:	f3ef 8009 	mrs	r0, PSP

004011aa <_get_sp_done>:
  4011aa:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
  4011ae:	f3ef 840b 	mrs	r4, PSPLIM
  4011b2:	f840 4d04 	str.w	r4, [r0, #-4]!
  4011b6:	f840 ed04 	str.w	lr, [r0, #-4]!
  4011ba:	f01e 0f04 	tst.w	lr, #4
  4011be:	d002      	beq.n	4011c6 <_update_msp>
  4011c0:	f380 8809 	msr	PSP, r0
  4011c4:	e001      	b.n	4011ca <_update_done>

004011c6 <_update_msp>:
  4011c6:	f380 8808 	msr	MSP, r0

004011ca <_update_done>:
  4011ca:	b500      	push	{lr}
  4011cc:	f451 fa27 	bl	5261e <rt_hw_hard_fault_exception>
  4011d0:	f85d eb04 	ldr.w	lr, [sp], #4
  4011d4:	f04e 0e04 	orr.w	lr, lr, #4
  4011d8:	4770      	bx	lr
  4011da:	f3ef 8008 	mrs	r0, MSP
  4011de:	f01e 0f04 	tst.w	lr, #4
  4011e2:	d001      	beq.n	4011e8 <_mm_get_sp_done>
  4011e4:	f3ef 8009 	mrs	r0, PSP

004011e8 <_mm_get_sp_done>:
  4011e8:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
  4011ec:	f3ef 840b 	mrs	r4, PSPLIM
  4011f0:	f840 4d04 	str.w	r4, [r0, #-4]!
  4011f4:	f840 ed04 	str.w	lr, [r0, #-4]!
  4011f8:	f01e 0f04 	tst.w	lr, #4
  4011fc:	d002      	beq.n	401204 <_mm_update_msp>
  4011fe:	f380 8809 	msr	PSP, r0
  401202:	e001      	b.n	401208 <_mm_update_done>

00401204 <_mm_update_msp>:
  401204:	f380 8808 	msr	MSP, r0

00401208 <_mm_update_done>:
  401208:	b500      	push	{lr}
  40120a:	f451 fa0b 	bl	52624 <rt_hw_mem_manage_exception>
  40120e:	f85d eb04 	ldr.w	lr, [sp], #4
  401212:	f04e 0e04 	orr.w	lr, lr, #4
  401216:	4770      	bx	lr

00401218 <rt_hw_fatal_error>:
  401218:	b410      	push	{r4}
  40121a:	f3ef 8403 	mrs	r4, PSR
  40121e:	b410      	push	{r4}
  401220:	467c      	mov	r4, pc
  401222:	b500      	push	{lr}
  401224:	b500      	push	{lr}
  401226:	f84d cd04 	str.w	ip, [sp, #-4]!
  40122a:	b40f      	push	{r0, r1, r2, r3}
  40122c:	9c08      	ldr	r4, [sp, #32]
  40122e:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
  401232:	f3ef 840b 	mrs	r4, PSPLIM
  401236:	b410      	push	{r4}
  401238:	4668      	mov	r0, sp
  40123a:	f451 f9af 	bl	5259c <rt_hw_do_fatal_error>
  40123e:	bc10      	pop	{r4}
  401240:	f384 880b 	msr	PSPLIM, r4
  401244:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
  401248:	bc0f      	pop	{r0, r1, r2, r3}
  40124a:	f85d cb04 	ldr.w	ip, [sp], #4
  40124e:	f85d eb04 	ldr.w	lr, [sp], #4
  401252:	bc10      	pop	{r4}
  401254:	bc10      	pop	{r4}
  401256:	bc10      	pop	{r4}
  401258:	4770      	bx	lr
  40125a:	0000      	.short	0x0000
  40125c:	2040f8a4 	.word	0x2040f8a4
  401260:	2040f874 	.word	0x2040f874
  401264:	2040f878 	.word	0x2040f878
  401268:	e000ed04 	.word	0xe000ed04
  40126c:	e000ed20 	.word	0xe000ed20
  401270:	e000ed08 	.word	0xe000ed08

00401274 <memset>:
  401274:	4402      	add	r2, r0
  401276:	4603      	mov	r3, r0
  401278:	4293      	cmp	r3, r2
  40127a:	d100      	bne.n	40127e <memset+0xa>
  40127c:	4770      	bx	lr
  40127e:	f803 1b01 	strb.w	r1, [r3], #1
  401282:	e7f9      	b.n	401278 <memset+0x4>
  401284:	785c3a44 	.word	0x785c3a44
  401288:	7a6f6169 	.word	0x7a6f6169
  40128c:	735f6968 	.word	0x735f6968
  401290:	5c323366 	.word	0x5c323366
  401294:	6f616978 	.word	0x6f616978
  401298:	2d69687a 	.word	0x2d69687a
  40129c:	32336673 	.word	0x32336673
  4012a0:	6b64735c 	.word	0x6b64735c
  4012a4:	6972645c 	.word	0x6972645c
  4012a8:	73726576 	.word	0x73726576
  4012ac:	6c61685c 	.word	0x6c61685c
  4012b0:	3066625c 	.word	0x3066625c
  4012b4:	6c61685f 	.word	0x6c61685f
  4012b8:	69616d5f 	.word	0x69616d5f
  4012bc:	786f626c 	.word	0x786f626c
  4012c0:	4400632e 	.word	0x4400632e
  4012c4:	69785c3a 	.word	0x69785c3a
  4012c8:	687a6f61 	.word	0x687a6f61
  4012cc:	66735f69 	.word	0x66735f69
  4012d0:	785c3233 	.word	0x785c3233
  4012d4:	7a6f6169 	.word	0x7a6f6169
  4012d8:	732d6968 	.word	0x732d6968
  4012dc:	5c323366 	.word	0x5c323366
  4012e0:	5c6b6473 	.word	0x5c6b6473
  4012e4:	76697264 	.word	0x76697264
  4012e8:	5c737265 	.word	0x5c737265
  4012ec:	5c6c6168 	.word	0x5c6c6168
  4012f0:	5f306662 	.word	0x5f306662
  4012f4:	5f6c6168 	.word	0x5f6c6168
  4012f8:	6d6e6970 	.word	0x6d6e6970
  4012fc:	632e7875 	.word	0x632e7875
  401300:	5c3a4400 	.word	0x5c3a4400
  401304:	6f616978 	.word	0x6f616978
  401308:	5f69687a 	.word	0x5f69687a
  40130c:	32336673 	.word	0x32336673
  401310:	6169785c 	.word	0x6169785c
  401314:	69687a6f 	.word	0x69687a6f
  401318:	3366732d 	.word	0x3366732d
  40131c:	64735c32 	.word	0x64735c32
  401320:	72645c6b 	.word	0x72645c6b
  401324:	72657669 	.word	0x72657669
  401328:	61685c73 	.word	0x61685c73
  40132c:	66625c6c 	.word	0x66625c6c
  401330:	61685f30 	.word	0x61685f30
  401334:	74705f6c 	.word	0x74705f6c
  401338:	00632e63 	.word	0x00632e63
  40133c:	785c3a44 	.word	0x785c3a44
  401340:	7a6f6169 	.word	0x7a6f6169
  401344:	735f6968 	.word	0x735f6968
  401348:	5c323366 	.word	0x5c323366
  40134c:	6f616978 	.word	0x6f616978
  401350:	2d69687a 	.word	0x2d69687a
  401354:	32336673 	.word	0x32336673
  401358:	6b64735c 	.word	0x6b64735c
  40135c:	6972645c 	.word	0x6972645c
  401360:	73726576 	.word	0x73726576
  401364:	6c61685c 	.word	0x6c61685c
  401368:	3066625c 	.word	0x3066625c
  40136c:	6c61685f 	.word	0x6c61685f
  401370:	6363725f 	.word	0x6363725f
  401374:	6300632e 	.word	0x6300632e
  401378:	626c6c61 	.word	0x626c6c61
  40137c:	206b6361 	.word	0x206b6361
  401380:	4e203d21 	.word	0x4e203d21
  401384:	004c4c55 	.word	0x004c4c55
  401388:	6c740030 	.word	0x6c740030
  40138c:	5f545200 	.word	0x5f545200
  401390:	534c4146 	.word	0x534c4146
  401394:	5f710045 	.word	0x5f710045
  401398:	20786469 	.word	0x20786469
  40139c:	5049203c 	.word	0x5049203c
  4013a0:	57485f43 	.word	0x57485f43
  4013a4:	4555515f 	.word	0x4555515f
  4013a8:	4e5f4555 	.word	0x4e5f4555
  4013ac:	48004d55 	.word	0x48004d55
  4013b0:	4f5f4c41 	.word	0x4f5f4c41
  4013b4:	3d3d204b 	.word	0x3d3d204b
  4013b8:	72726520 	.word	0x72726520
  4013bc:	6e697000 	.word	0x6e697000
  4013c0:	69616d00 	.word	0x69616d00
  4013c4:	6974006e 	.word	0x6974006e
  4013c8:	3d212064 	.word	0x3d212064
  4013cc:	5f545220 	.word	0x5f545220
  4013d0:	4c4c554e 	.word	0x4c4c554e
  4013d4:	64697400 	.word	0x64697400
  4013d8:	0000656c 	.word	0x0000656c

004013dc <g_ble_mac_pm_ops>:
  4013dc:	004008e1 00000000 00000000              ..@.........

004013e8 <__FUNCTION__.0>:
  4013e8:	74726f70 6e6f635f 00676966              port_config.

004013f4 <__FUNCTION__.3>:
  4013f4:	5f6d6f72 74726f70 7465675f               rom_port_get.

00401401 <__FUNCTION__.0>:
  401401:	5f637470 666e6f63                        ptc_config.

0040140c <__FUNCTION__.0>:
  40140c:	75706368 70636c32 6f6e5f75 69666974     hcpu2lcpu_notifi
  40141c:	69746163 635f6e6f 626c6c61 006b6361     cation_callback.

0040142c <__FUNCTION__.1>:
  40142c:	5f474244 67697254 5f726567 48515249     DBG_Trigger_IRQH
  40143c:	6c646e61                                 andler.

00401443 <__FUNCTION__.2>:
  401443:	705f6d70 725f6e69 6f747365 00006572     pm_pin_restore..
	...

00401454 <sifli_pm_op>:
  401454:	00400c0d 00400c0b 00000000              ..@...@.....

00401460 <pm_policy>:
  401460:	0000000a 00000003                       ........

00401468 <__FUNCTION__.0>:
  401468:	5f4c4148 65737341 61467472 64656c69     HAL_AssertFailed
	...

00401479 <__FUNCTION__.0>:
  401479:	615f7472 696c7070 69746163 695f6e6f     rt_application_i
  401489:	0074696e                                 nit....

00401490 <HAL_PIN_Restore>:
  401490:	b510      	push	{r4, lr}
  401492:	4604      	mov	r4, r0
  401494:	b920      	cbnz	r0, 4014a0 <HAL_PIN_Restore+0x10>
  401496:	f640 01b5 	movw	r1, #2229	@ 0x8b5
  40149a:	480a      	ldr	r0, [pc, #40]	@ (4014c4 <HAL_PIN_Restore+0x34>)
  40149c:	f7ff fd28 	bl	400ef0 <HAL_AssertFailed>
  4014a0:	6822      	ldr	r2, [r4, #0]
  4014a2:	4b09      	ldr	r3, [pc, #36]	@ (4014c8 <HAL_PIN_Restore+0x38>)
  4014a4:	2000      	movs	r0, #0
  4014a6:	601a      	str	r2, [r3, #0]
  4014a8:	6862      	ldr	r2, [r4, #4]
  4014aa:	605a      	str	r2, [r3, #4]
  4014ac:	68a2      	ldr	r2, [r4, #8]
  4014ae:	609a      	str	r2, [r3, #8]
  4014b0:	68e2      	ldr	r2, [r4, #12]
  4014b2:	60da      	str	r2, [r3, #12]
  4014b4:	6922      	ldr	r2, [r4, #16]
  4014b6:	f503 4340 	add.w	r3, r3, #49152	@ 0xc000
  4014ba:	639a      	str	r2, [r3, #56]	@ 0x38
  4014bc:	6962      	ldr	r2, [r4, #20]
  4014be:	63da      	str	r2, [r3, #60]	@ 0x3c
  4014c0:	bd10      	pop	{r4, pc}
  4014c2:	bf00      	nop
  4014c4:	004012c3 	.word	0x004012c3
  4014c8:	40003000 	.word	0x40003000

004014cc <sifli_pm_run>:
  4014cc:	4770      	bx	lr

004014ce <sifli_enter_idle>:
  4014ce:	4770      	bx	lr

004014d0 <pm_pin_restore>:
  4014d0:	b508      	push	{r3, lr}
  4014d2:	480c      	ldr	r0, [pc, #48]	@ (401504 <pm_pin_restore+0x34>)
  4014d4:	f7ff ffdc 	bl	401490 <HAL_PIN_Restore>
  4014d8:	b128      	cbz	r0, 4014e6 <pm_pin_restore+0x16>
  4014da:	f240 1271 	movw	r2, #369	@ 0x171
  4014de:	490a      	ldr	r1, [pc, #40]	@ (401508 <pm_pin_restore+0x38>)
  4014e0:	480a      	ldr	r0, [pc, #40]	@ (40150c <pm_pin_restore+0x3c>)
  4014e2:	f44f ff3b 	bl	5135c <rt_assert_handler>
  4014e6:	2202      	movs	r2, #2
  4014e8:	4909      	ldr	r1, [pc, #36]	@ (401510 <pm_pin_restore+0x40>)
  4014ea:	480a      	ldr	r0, [pc, #40]	@ (401514 <pm_pin_restore+0x44>)
  4014ec:	f7fe ff44 	bl	400378 <HAL_GPIO_Restore>
  4014f0:	b138      	cbz	r0, 401502 <pm_pin_restore+0x32>
  4014f2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  4014f6:	f240 1275 	movw	r2, #373	@ 0x175
  4014fa:	4903      	ldr	r1, [pc, #12]	@ (401508 <pm_pin_restore+0x38>)
  4014fc:	4803      	ldr	r0, [pc, #12]	@ (40150c <pm_pin_restore+0x3c>)
  4014fe:	f44f bf2d 	b.w	5135c <rt_assert_handler>
  401502:	bd08      	pop	{r3, pc}
  401504:	20401aac 	.word	0x20401aac
  401508:	00401443 	.word	0x00401443
  40150c:	004013af 	.word	0x004013af
  401510:	20401ac4 	.word	0x20401ac4
  401514:	40080000 	.word	0x40080000

00401518 <SystemPowerOnInitLCPU>:
  401518:	b538      	push	{r3, r4, r5, lr}
  40151a:	4c16      	ldr	r4, [pc, #88]	@ (401574 <SystemPowerOnInitLCPU+0x5c>)
  40151c:	6823      	ldr	r3, [r4, #0]
  40151e:	f003 0303 	and.w	r3, r3, #3
  401522:	2b03      	cmp	r3, #3
  401524:	4b14      	ldr	r3, [pc, #80]	@ (401578 <SystemPowerOnInitLCPU+0x60>)
  401526:	d002      	beq.n	40152e <SystemPowerOnInitLCPU+0x16>
  401528:	2200      	movs	r2, #0
  40152a:	701a      	strb	r2, [r3, #0]
  40152c:	bd38      	pop	{r3, r4, r5, pc}
  40152e:	2501      	movs	r5, #1
  401530:	701d      	strb	r5, [r3, #0]
  401532:	f455 fbe7 	bl	56d04 <rt_wdt_restore>
  401536:	4a11      	ldr	r2, [pc, #68]	@ (40157c <SystemPowerOnInitLCPU+0x64>)
  401538:	6913      	ldr	r3, [r2, #16]
  40153a:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
  40153e:	6113      	str	r3, [r2, #16]
  401540:	6c63      	ldr	r3, [r4, #68]	@ 0x44
  401542:	f023 0302 	bic.w	r3, r3, #2
  401546:	6463      	str	r3, [r4, #68]	@ 0x44
  401548:	f7ff ffc2 	bl	4014d0 <pm_pin_restore>
  40154c:	6c63      	ldr	r3, [r4, #68]	@ 0x44
  40154e:	f023 0301 	bic.w	r3, r3, #1
  401552:	6463      	str	r3, [r4, #68]	@ 0x44
  401554:	f7fe fec7 	bl	4002e6 <HAL_Init>
  401558:	f7ff f140 	bl	7dc <rt_hw_interrupt_disable>
  40155c:	4b08      	ldr	r3, [pc, #32]	@ (401580 <SystemPowerOnInitLCPU+0x68>)
  40155e:	601d      	str	r5, [r3, #0]
  401560:	f7fe fe17 	bl	400192 <SystemClock_Config>
  401564:	f451 f898 	bl	52698 <rt_hw_systick_init>
  401568:	f7ff f175 	bl	856 <rt_hw_cfg_pendsv_pri>
  40156c:	f44f fb86 	bl	50c7c <restore_context>
  401570:	e7dc      	b.n	40152c <SystemPowerOnInitLCPU+0x14>
  401572:	bf00      	nop
  401574:	40040000 	.word	0x40040000
  401578:	2040fd54 	.word	0x2040fd54
  40157c:	4000f000 	.word	0x4000f000
  401580:	20401b1c 	.word	0x20401b1c

00401584 <_init>:
  401584:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  401586:	bf00      	nop
  401588:	bcf8      	pop	{r3, r4, r5, r6, r7}
  40158a:	bc08      	pop	{r3}
  40158c:	469e      	mov	lr, r3
  40158e:	4770      	bx	lr

00401590 <_fini>:
  401590:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
  401592:	bf00      	nop
  401594:	bcf8      	pop	{r3, r4, r5, r6, r7}
  401596:	bc08      	pop	{r3}
  401598:	469e      	mov	lr, r3
  40159a:	4770      	bx	lr

0040159c <__rt_init_rti_start>:
  40159c:	0f55 0040                                   U.@.

004015a0 <__rt_init_rti_board_start>:
  4015a0:	0f59 0040                                   Y.@.

004015a4 <__rt_init_rti_board_end>:
  4015a4:	0f5d 0040                                   ].@.

004015a8 <__rt_init_low_power_init>:
  4015a8:	0c9d 0040                                   ..@.

004015ac <__rt_init_libc_system_init>:
  4015ac:	a6e1 0002                                   ....

004015b0 <__rt_init_rc10k_cal_init>:
  4015b0:	01c5 0040                                   ..@.

004015b4 <__rt_init_sys_init_lh_bt_audio_queue>:
  4015b4:	aced 0005                                   ....

004015b8 <__rt_init_bt_audiopath_init>:
  4015b8:	07cd 0040                                   ..@.

004015bc <__rt_init_bluetooth_init>:
  4015bc:	085d 0040                                   ].@.

004015c0 <__rt_init_sys_init_debug_trigger>:
  4015c0:	0b75 0040                                   u.@.

004015c4 <__rt_init_rti_end>:
  4015c4:	0f61 0040                                   a.@.

004015c8 <__EH_FRAME_BEGIN__>:
  4015c8:	0000 0000                                   ....
