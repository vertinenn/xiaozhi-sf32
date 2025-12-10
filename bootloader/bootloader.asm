
build_sf32lb52-lchspi-ulp_hcpu\bootloader\bootloader.elf:     file format elf32-littlearm


Disassembly of section .text:

20020208 <deregister_tm_clones>:
20020208:	4803      	ldr	r0, [pc, #12]	@ (20020218 <deregister_tm_clones+0x10>)
2002020a:	4b04      	ldr	r3, [pc, #16]	@ (2002021c <deregister_tm_clones+0x14>)
2002020c:	4283      	cmp	r3, r0
2002020e:	d002      	beq.n	20020216 <deregister_tm_clones+0xe>
20020210:	4b03      	ldr	r3, [pc, #12]	@ (20020220 <deregister_tm_clones+0x18>)
20020212:	b103      	cbz	r3, 20020216 <deregister_tm_clones+0xe>
20020214:	4718      	bx	r3
20020216:	4770      	bx	lr
20020218:	200449a0 	.word	0x200449a0
2002021c:	200449a0 	.word	0x200449a0
20020220:	00000000 	.word	0x00000000

20020224 <register_tm_clones>:
20020224:	4b06      	ldr	r3, [pc, #24]	@ (20020240 <register_tm_clones+0x1c>)
20020226:	4907      	ldr	r1, [pc, #28]	@ (20020244 <register_tm_clones+0x20>)
20020228:	1ac9      	subs	r1, r1, r3
2002022a:	1089      	asrs	r1, r1, #2
2002022c:	bf48      	it	mi
2002022e:	3101      	addmi	r1, #1
20020230:	1049      	asrs	r1, r1, #1
20020232:	d003      	beq.n	2002023c <register_tm_clones+0x18>
20020234:	4b04      	ldr	r3, [pc, #16]	@ (20020248 <register_tm_clones+0x24>)
20020236:	b10b      	cbz	r3, 2002023c <register_tm_clones+0x18>
20020238:	4801      	ldr	r0, [pc, #4]	@ (20020240 <register_tm_clones+0x1c>)
2002023a:	4718      	bx	r3
2002023c:	4770      	bx	lr
2002023e:	bf00      	nop
20020240:	200449a0 	.word	0x200449a0
20020244:	200449a0 	.word	0x200449a0
20020248:	00000000 	.word	0x00000000

2002024c <__do_global_dtors_aux>:
2002024c:	b510      	push	{r4, lr}
2002024e:	4c06      	ldr	r4, [pc, #24]	@ (20020268 <__do_global_dtors_aux+0x1c>)
20020250:	7823      	ldrb	r3, [r4, #0]
20020252:	b943      	cbnz	r3, 20020266 <__do_global_dtors_aux+0x1a>
20020254:	f7ff ffd8 	bl	20020208 <deregister_tm_clones>
20020258:	4b04      	ldr	r3, [pc, #16]	@ (2002026c <__do_global_dtors_aux+0x20>)
2002025a:	b113      	cbz	r3, 20020262 <__do_global_dtors_aux+0x16>
2002025c:	4804      	ldr	r0, [pc, #16]	@ (20020270 <__do_global_dtors_aux+0x24>)
2002025e:	f3af 8000 	nop.w
20020262:	2301      	movs	r3, #1
20020264:	7023      	strb	r3, [r4, #0]
20020266:	bd10      	pop	{r4, pc}
20020268:	200449a0 	.word	0x200449a0
2002026c:	00000000 	.word	0x00000000
20020270:	2002c214 	.word	0x2002c214

20020274 <frame_dummy>:
20020274:	b508      	push	{r3, lr}
20020276:	4b05      	ldr	r3, [pc, #20]	@ (2002028c <frame_dummy+0x18>)
20020278:	b11b      	cbz	r3, 20020282 <frame_dummy+0xe>
2002027a:	4905      	ldr	r1, [pc, #20]	@ (20020290 <frame_dummy+0x1c>)
2002027c:	4805      	ldr	r0, [pc, #20]	@ (20020294 <frame_dummy+0x20>)
2002027e:	f3af 8000 	nop.w
20020282:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20020286:	f7ff bfcd 	b.w	20020224 <register_tm_clones>
2002028a:	bf00      	nop
2002028c:	00000000 	.word	0x00000000
20020290:	200449a4 	.word	0x200449a4
20020294:	2002c214 	.word	0x2002c214

20020298 <boot_uart_tx>:
20020298:	2300      	movs	r3, #0
2002029a:	b510      	push	{r4, lr}
2002029c:	4293      	cmp	r3, r2
2002029e:	db00      	blt.n	200202a2 <boot_uart_tx+0xa>
200202a0:	bd10      	pop	{r4, pc}
200202a2:	69c4      	ldr	r4, [r0, #28]
200202a4:	0624      	lsls	r4, r4, #24
200202a6:	d5fc      	bpl.n	200202a2 <boot_uart_tx+0xa>
200202a8:	5ccc      	ldrb	r4, [r1, r3]
200202aa:	3301      	adds	r3, #1
200202ac:	6284      	str	r4, [r0, #40]	@ 0x28
200202ae:	e7f5      	b.n	2002029c <boot_uart_tx+0x4>

200202b0 <boot_error>:
200202b0:	b507      	push	{r0, r1, r2, lr}
200202b2:	2201      	movs	r2, #1
200202b4:	f88d 0007 	strb.w	r0, [sp, #7]
200202b8:	f10d 0107 	add.w	r1, sp, #7
200202bc:	480e      	ldr	r0, [pc, #56]	@ (200202f8 <boot_error+0x48>)
200202be:	f7ff ffeb 	bl	20020298 <boot_uart_tx>
200202c2:	4b0e      	ldr	r3, [pc, #56]	@ (200202fc <boot_error+0x4c>)
200202c4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202c8:	f002 0203 	and.w	r2, r2, #3
200202cc:	2a03      	cmp	r2, #3
200202ce:	f102 0101 	add.w	r1, r2, #1
200202d2:	d00f      	beq.n	200202f4 <boot_error+0x44>
200202d4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202d8:	f022 0203 	bic.w	r2, r2, #3
200202dc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202e0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202e4:	430a      	orrs	r2, r1
200202e6:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202ea:	f00b ffdb 	bl	2002c2a4 <HAL_PMU_Reboot>
200202ee:	b003      	add	sp, #12
200202f0:	f85d fb04 	ldr.w	pc, [sp], #4
200202f4:	e7fe      	b.n	200202f4 <boot_error+0x44>
200202f6:	bf00      	nop
200202f8:	50084000 	.word	0x50084000
200202fc:	500ca000 	.word	0x500ca000

20020300 <HAL_MspInit>:
20020300:	2234      	movs	r2, #52	@ 0x34
20020302:	4b01      	ldr	r3, [pc, #4]	@ (20020308 <HAL_MspInit+0x8>)
20020304:	60da      	str	r2, [r3, #12]
20020306:	4770      	bx	lr
20020308:	50094000 	.word	0x50094000

2002030c <mpu_config>:
2002030c:	4770      	bx	lr

2002030e <cache_enable>:
2002030e:	4770      	bx	lr

20020310 <board_pinmux_mpi1_puya_base>:
20020310:	b510      	push	{r4, lr}
20020312:	2301      	movs	r3, #1
20020314:	2200      	movs	r2, #0
20020316:	2103      	movs	r1, #3
20020318:	2002      	movs	r0, #2
2002031a:	f004 fb4d 	bl	200249b8 <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fb47 	bl	200249b8 <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fb41 	bl	200249b8 <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fb3b 	bl	200249b8 <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bb33 	b.w	200249b8 <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fcd5 	bl	20024d08 <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fcd1 	bl	20024d08 <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fccd 	bl	20024d08 <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fcc9 	bl	20024d08 <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fcc5 	bl	20024d08 <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fcc1 	bl	20024d08 <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fcbc 	bl	20024d08 <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bb0c 	b.w	200249b8 <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fcb1 	bl	20024d08 <HAL_PIN_Set_Analog>
200203a6:	2301      	movs	r3, #1
200203a8:	2230      	movs	r2, #48	@ 0x30
200203aa:	210b      	movs	r1, #11
200203ac:	4618      	mov	r0, r3
200203ae:	e7f3      	b.n	20020398 <board_pinmux_mpi1_puya_ext+0x46>

200203b0 <board_pinmux_mpi1_gd>:
200203b0:	b508      	push	{r3, lr}
200203b2:	2200      	movs	r2, #0
200203b4:	2301      	movs	r3, #1
200203b6:	2103      	movs	r1, #3
200203b8:	2005      	movs	r0, #5
200203ba:	f004 fafd 	bl	200249b8 <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 faf7 	bl	200249b8 <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 faf1 	bl	200249b8 <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 faeb 	bl	200249b8 <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fae5 	bl	200249b8 <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fadf 	bl	200249b8 <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fc83 	bl	20024d08 <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fc7f 	bl	20024d08 <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fc7b 	bl	20024d08 <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fc77 	bl	20024d08 <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fc73 	bl	20024d08 <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fc6f 	bl	20024d08 <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bc69 	b.w	20024d08 <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 faba 	bl	200249b8 <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fab4 	bl	200249b8 <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 faae 	bl	200249b8 <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 faa8 	bl	200249b8 <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 faa2 	bl	200249b8 <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 ba9a 	b.w	200249b8 <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fa92 	bl	200249b8 <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fd8c 	bl	20021fb2 <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 fa88 	bl	200249b8 <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 fa81 	bl	200249b8 <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 fa7a 	bl	200249b8 <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fa73 	bl	200249b8 <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 ba6a 	b.w	200249b8 <HAL_PIN_Set>

200204e4 <board_boot_from>:
200204e4:	b510      	push	{r4, lr}
200204e6:	4b0d      	ldr	r3, [pc, #52]	@ (2002051c <board_boot_from+0x38>)
200204e8:	685b      	ldr	r3, [r3, #4]
200204ea:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204ee:	2b07      	cmp	r3, #7
200204f0:	d10c      	bne.n	2002050c <board_boot_from+0x28>
200204f2:	2400      	movs	r4, #0
200204f4:	3401      	adds	r4, #1
200204f6:	2101      	movs	r1, #1
200204f8:	4620      	mov	r0, r4
200204fa:	f004 fc05 	bl	20024d08 <HAL_PIN_Set_Analog>
200204fe:	2c0d      	cmp	r4, #13
20020500:	d1f8      	bne.n	200204f4 <board_boot_from+0x10>
20020502:	2000      	movs	r0, #0
20020504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020508:	f00b be8c 	b.w	2002c224 <HAL_Get_backup>
2002050c:	b11b      	cbz	r3, 20020516 <board_boot_from+0x32>
2002050e:	2b01      	cmp	r3, #1
20020510:	d1f7      	bne.n	20020502 <board_boot_from+0x1e>
20020512:	2002      	movs	r0, #2
20020514:	bd10      	pop	{r4, pc}
20020516:	2001      	movs	r0, #1
20020518:	e7fc      	b.n	20020514 <board_boot_from+0x30>
2002051a:	bf00      	nop
2002051c:	5000b000 	.word	0x5000b000

20020520 <board_flash_power_on>:
20020520:	4770      	bx	lr

20020522 <board_pinmux_psram_func0>:
20020522:	b508      	push	{r3, lr}
20020524:	2210      	movs	r2, #16
20020526:	2301      	movs	r3, #1
20020528:	2109      	movs	r1, #9
2002052a:	2002      	movs	r0, #2
2002052c:	f004 fa44 	bl	200249b8 <HAL_PIN_Set>
20020530:	2301      	movs	r3, #1
20020532:	2210      	movs	r2, #16
20020534:	210a      	movs	r1, #10
20020536:	2003      	movs	r0, #3
20020538:	f004 fa3e 	bl	200249b8 <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210b      	movs	r1, #11
20020542:	2004      	movs	r0, #4
20020544:	f004 fa38 	bl	200249b8 <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210c      	movs	r1, #12
2002054e:	2005      	movs	r0, #5
20020550:	f004 fa32 	bl	200249b8 <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210d      	movs	r1, #13
2002055a:	2006      	movs	r0, #6
2002055c:	f004 fa2c 	bl	200249b8 <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210e      	movs	r1, #14
20020566:	2007      	movs	r0, #7
20020568:	f004 fa26 	bl	200249b8 <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210f      	movs	r1, #15
20020572:	2008      	movs	r0, #8
20020574:	f004 fa20 	bl	200249b8 <HAL_PIN_Set>
20020578:	2210      	movs	r2, #16
2002057a:	2301      	movs	r3, #1
2002057c:	4611      	mov	r1, r2
2002057e:	2009      	movs	r0, #9
20020580:	f004 fa1a 	bl	200249b8 <HAL_PIN_Set>
20020584:	2301      	movs	r3, #1
20020586:	2210      	movs	r2, #16
20020588:	2106      	movs	r1, #6
2002058a:	200a      	movs	r0, #10
2002058c:	f004 fa14 	bl	200249b8 <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2200      	movs	r2, #0
20020594:	4619      	mov	r1, r3
20020596:	200b      	movs	r0, #11
20020598:	f004 fa0e 	bl	200249b8 <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	2103      	movs	r1, #3
200205a2:	200c      	movs	r0, #12
200205a4:	f004 fa08 	bl	200249b8 <HAL_PIN_Set>
200205a8:	2101      	movs	r1, #1
200205aa:	4608      	mov	r0, r1
200205ac:	f004 fbac 	bl	20024d08 <HAL_PIN_Set_Analog>
200205b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b4:	2101      	movs	r1, #1
200205b6:	200d      	movs	r0, #13
200205b8:	f004 bba6 	b.w	20024d08 <HAL_PIN_Set_Analog>

200205bc <board_pinmux_psram_func1_2_4>:
200205bc:	b510      	push	{r4, lr}
200205be:	2301      	movs	r3, #1
200205c0:	4604      	mov	r4, r0
200205c2:	2210      	movs	r2, #16
200205c4:	2109      	movs	r1, #9
200205c6:	2002      	movs	r0, #2
200205c8:	f004 f9f6 	bl	200249b8 <HAL_PIN_Set>
200205cc:	2301      	movs	r3, #1
200205ce:	2210      	movs	r2, #16
200205d0:	210a      	movs	r1, #10
200205d2:	2003      	movs	r0, #3
200205d4:	f004 f9f0 	bl	200249b8 <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210b      	movs	r1, #11
200205de:	2004      	movs	r0, #4
200205e0:	f004 f9ea 	bl	200249b8 <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210c      	movs	r1, #12
200205ea:	2005      	movs	r0, #5
200205ec:	f004 f9e4 	bl	200249b8 <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210d      	movs	r1, #13
200205f6:	2009      	movs	r0, #9
200205f8:	f004 f9de 	bl	200249b8 <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210e      	movs	r1, #14
20020602:	200a      	movs	r0, #10
20020604:	f004 f9d8 	bl	200249b8 <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210f      	movs	r1, #15
2002060e:	200b      	movs	r0, #11
20020610:	f004 f9d2 	bl	200249b8 <HAL_PIN_Set>
20020614:	2210      	movs	r2, #16
20020616:	2301      	movs	r3, #1
20020618:	4611      	mov	r1, r2
2002061a:	200c      	movs	r0, #12
2002061c:	f004 f9cc 	bl	200249b8 <HAL_PIN_Set>
20020620:	2301      	movs	r3, #1
20020622:	2200      	movs	r2, #0
20020624:	4619      	mov	r1, r3
20020626:	2008      	movs	r0, #8
20020628:	f004 f9c6 	bl	200249b8 <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	2103      	movs	r1, #3
20020632:	2006      	movs	r0, #6
20020634:	f004 f9c0 	bl	200249b8 <HAL_PIN_Set>
20020638:	2c02      	cmp	r4, #2
2002063a:	d013      	beq.n	20020664 <board_pinmux_psram_func1_2_4+0xa8>
2002063c:	2c04      	cmp	r4, #4
2002063e:	d025      	beq.n	2002068c <board_pinmux_psram_func1_2_4+0xd0>
20020640:	2c01      	cmp	r4, #1
20020642:	d12c      	bne.n	2002069e <board_pinmux_psram_func1_2_4+0xe2>
20020644:	2106      	movs	r1, #6
20020646:	4623      	mov	r3, r4
20020648:	2210      	movs	r2, #16
2002064a:	200d      	movs	r0, #13
2002064c:	f004 f9b4 	bl	200249b8 <HAL_PIN_Set>
20020650:	4621      	mov	r1, r4
20020652:	4620      	mov	r0, r4
20020654:	f004 fb58 	bl	20024d08 <HAL_PIN_Set_Analog>
20020658:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002065c:	2101      	movs	r1, #1
2002065e:	2007      	movs	r0, #7
20020660:	f004 bb52 	b.w	20024d08 <HAL_PIN_Set_Analog>
20020664:	2301      	movs	r3, #1
20020666:	2210      	movs	r2, #16
20020668:	2104      	movs	r1, #4
2002066a:	4618      	mov	r0, r3
2002066c:	f004 f9a4 	bl	200249b8 <HAL_PIN_Set>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2105      	movs	r1, #5
20020676:	200d      	movs	r0, #13
20020678:	f004 f99e 	bl	200249b8 <HAL_PIN_Set>
2002067c:	4621      	mov	r1, r4
2002067e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020682:	2301      	movs	r3, #1
20020684:	2200      	movs	r2, #0
20020686:	2007      	movs	r0, #7
20020688:	f004 b996 	b.w	200249b8 <HAL_PIN_Set>
2002068c:	2106      	movs	r1, #6
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	200d      	movs	r0, #13
20020694:	f004 f990 	bl	200249b8 <HAL_PIN_Set>
20020698:	2101      	movs	r1, #1
2002069a:	4608      	mov	r0, r1
2002069c:	e7da      	b.n	20020654 <board_pinmux_psram_func1_2_4+0x98>
2002069e:	bd10      	pop	{r4, pc}

200206a0 <board_pinmux_psram_func3>:
200206a0:	b508      	push	{r3, lr}
200206a2:	2301      	movs	r3, #1
200206a4:	2200      	movs	r2, #0
200206a6:	4619      	mov	r1, r3
200206a8:	200a      	movs	r0, #10
200206aa:	f004 f985 	bl	200249b8 <HAL_PIN_Set>
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	2103      	movs	r1, #3
200206b4:	2009      	movs	r0, #9
200206b6:	f004 f97f 	bl	200249b8 <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2210      	movs	r2, #16
200206be:	2109      	movs	r1, #9
200206c0:	2006      	movs	r0, #6
200206c2:	f004 f979 	bl	200249b8 <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	210a      	movs	r1, #10
200206cc:	2008      	movs	r0, #8
200206ce:	f004 f973 	bl	200249b8 <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2230      	movs	r2, #48	@ 0x30
200206d6:	210b      	movs	r1, #11
200206d8:	2007      	movs	r0, #7
200206da:	f004 f96d 	bl	200249b8 <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210c      	movs	r1, #12
200206e4:	200b      	movs	r0, #11
200206e6:	f004 f967 	bl	200249b8 <HAL_PIN_Set>
200206ea:	2101      	movs	r1, #1
200206ec:	4608      	mov	r0, r1
200206ee:	f004 fb0b 	bl	20024d08 <HAL_PIN_Set_Analog>
200206f2:	2101      	movs	r1, #1
200206f4:	2002      	movs	r0, #2
200206f6:	f004 fb07 	bl	20024d08 <HAL_PIN_Set_Analog>
200206fa:	2101      	movs	r1, #1
200206fc:	2003      	movs	r0, #3
200206fe:	f004 fb03 	bl	20024d08 <HAL_PIN_Set_Analog>
20020702:	2101      	movs	r1, #1
20020704:	2004      	movs	r0, #4
20020706:	f004 faff 	bl	20024d08 <HAL_PIN_Set_Analog>
2002070a:	2101      	movs	r1, #1
2002070c:	2005      	movs	r0, #5
2002070e:	f004 fafb 	bl	20024d08 <HAL_PIN_Set_Analog>
20020712:	2101      	movs	r1, #1
20020714:	200c      	movs	r0, #12
20020716:	f004 faf7 	bl	20024d08 <HAL_PIN_Set_Analog>
2002071a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071e:	2101      	movs	r1, #1
20020720:	200d      	movs	r0, #13
20020722:	f004 baf1 	b.w	20024d08 <HAL_PIN_Set_Analog>

20020726 <bootloader_switch_clock>:
20020726:	2102      	movs	r1, #2
20020728:	2004      	movs	r0, #4
2002072a:	f004 bc1f 	b.w	20024f6c <HAL_RCC_HCPU_ClockSelect>
	...

20020730 <boot_psram_init>:
20020730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020734:	2400      	movs	r4, #0
20020736:	b08a      	sub	sp, #40	@ 0x28
20020738:	4605      	mov	r5, r0
2002073a:	2230      	movs	r2, #48	@ 0x30
2002073c:	4621      	mov	r1, r4
2002073e:	4863      	ldr	r0, [pc, #396]	@ (200208cc <boot_psram_init+0x19c>)
20020740:	f00a f824 	bl	2002a78c <memset>
20020744:	4b62      	ldr	r3, [pc, #392]	@ (200208d0 <boot_psram_init+0x1a0>)
20020746:	1ea8      	subs	r0, r5, #2
20020748:	9305      	str	r3, [sp, #20]
2002074a:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
2002074e:	9307      	str	r3, [sp, #28]
20020750:	2303      	movs	r3, #3
20020752:	9406      	str	r4, [sp, #24]
20020754:	9309      	str	r3, [sp, #36]	@ 0x24
20020756:	2804      	cmp	r0, #4
20020758:	d804      	bhi.n	20020764 <boot_psram_init+0x34>
2002075a:	e8df f000 	tbb	[pc, r0]
2002075e:	6264      	.short	0x6264
20020760:	5d04      	.short	0x5d04
20020762:	60          	.byte	0x60
20020763:	00          	.byte	0x00
20020764:	e7fe      	b.n	20020764 <boot_psram_init+0x34>
20020766:	2305      	movs	r3, #5
20020768:	9309      	str	r3, [sp, #36]	@ 0x24
2002076a:	2304      	movs	r3, #4
2002076c:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002076e:	9308      	str	r3, [sp, #32]
20020770:	2d03      	cmp	r5, #3
20020772:	d162      	bne.n	2002083a <boot_psram_init+0x10a>
20020774:	f001 fb3e 	bl	20021df4 <BSP_GetFlash1DIV>
20020778:	a905      	add	r1, sp, #20
2002077a:	4602      	mov	r2, r0
2002077c:	4853      	ldr	r0, [pc, #332]	@ (200208cc <boot_psram_init+0x19c>)
2002077e:	f003 febf 	bl	20024500 <HAL_OPI_PSRAM_Init>
20020782:	462a      	mov	r2, r5
20020784:	2108      	movs	r1, #8
20020786:	4851      	ldr	r0, [pc, #324]	@ (200208cc <boot_psram_init+0x19c>)
20020788:	f003 fdac 	bl	200242e4 <HAL_MPI_MR_WRITE>
2002078c:	484f      	ldr	r0, [pc, #316]	@ (200208cc <boot_psram_init+0x19c>)
2002078e:	f003 fab7 	bl	20023d00 <HAL_QSPI_GET_CLK>
20020792:	4b50      	ldr	r3, [pc, #320]	@ (200208d4 <boot_psram_init+0x1a4>)
20020794:	4298      	cmp	r0, r3
20020796:	d948      	bls.n	2002082a <boot_psram_init+0xfa>
20020798:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
2002079c:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
200207a0:	4298      	cmp	r0, r3
200207a2:	d944      	bls.n	2002082e <boot_psram_init+0xfe>
200207a4:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200207a8:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200207ac:	4298      	cmp	r0, r3
200207ae:	d940      	bls.n	20020832 <boot_psram_init+0x102>
200207b0:	4b49      	ldr	r3, [pc, #292]	@ (200208d8 <boot_psram_init+0x1a8>)
200207b2:	4298      	cmp	r0, r3
200207b4:	d93f      	bls.n	20020836 <boot_psram_init+0x106>
200207b6:	4b49      	ldr	r3, [pc, #292]	@ (200208dc <boot_psram_init+0x1ac>)
200207b8:	4298      	cmp	r0, r3
200207ba:	bf98      	it	ls
200207bc:	2407      	movls	r4, #7
200207be:	2600      	movs	r6, #0
200207c0:	2507      	movs	r5, #7
200207c2:	f04f 0803 	mov.w	r8, #3
200207c6:	0067      	lsls	r7, r4, #1
200207c8:	b2ff      	uxtb	r7, r7
200207ca:	1e7a      	subs	r2, r7, #1
200207cc:	4633      	mov	r3, r6
200207ce:	b252      	sxtb	r2, r2
200207d0:	4629      	mov	r1, r5
200207d2:	483e      	ldr	r0, [pc, #248]	@ (200208cc <boot_psram_init+0x19c>)
200207d4:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207d8:	e9cd 6800 	strd	r6, r8, [sp]
200207dc:	f002 f964 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
200207e0:	4631      	mov	r1, r6
200207e2:	483a      	ldr	r0, [pc, #232]	@ (200208cc <boot_psram_init+0x19c>)
200207e4:	f002 f955 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
200207e8:	1e62      	subs	r2, r4, #1
200207ea:	4633      	mov	r3, r6
200207ec:	b252      	sxtb	r2, r2
200207ee:	4629      	mov	r1, r5
200207f0:	4836      	ldr	r0, [pc, #216]	@ (200208cc <boot_psram_init+0x19c>)
200207f2:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f6:	e9cd 6800 	strd	r6, r8, [sp]
200207fa:	f002 f97e 	bl	20022afa <HAL_FLASH_CFG_AHB_WCMD>
200207fe:	2180      	movs	r1, #128	@ 0x80
20020800:	4832      	ldr	r0, [pc, #200]	@ (200208cc <boot_psram_init+0x19c>)
20020802:	f002 f96e 	bl	20022ae2 <HAL_FLASH_SET_AHB_WCMD>
20020806:	4623      	mov	r3, r4
20020808:	463a      	mov	r2, r7
2002080a:	2101      	movs	r1, #1
2002080c:	482f      	ldr	r0, [pc, #188]	@ (200208cc <boot_psram_init+0x19c>)
2002080e:	f003 fd8d 	bl	2002432c <HAL_MPI_SET_FIXLAT>
20020812:	b00a      	add	sp, #40	@ 0x28
20020814:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020818:	2302      	movs	r3, #2
2002081a:	9309      	str	r3, [sp, #36]	@ 0x24
2002081c:	e7a6      	b.n	2002076c <boot_psram_init+0x3c>
2002081e:	2306      	movs	r3, #6
20020820:	9309      	str	r3, [sp, #36]	@ 0x24
20020822:	2308      	movs	r3, #8
20020824:	e7a2      	b.n	2002076c <boot_psram_init+0x3c>
20020826:	2310      	movs	r3, #16
20020828:	e7a0      	b.n	2002076c <boot_psram_init+0x3c>
2002082a:	462c      	mov	r4, r5
2002082c:	e7c7      	b.n	200207be <boot_psram_init+0x8e>
2002082e:	2404      	movs	r4, #4
20020830:	e7c5      	b.n	200207be <boot_psram_init+0x8e>
20020832:	2405      	movs	r4, #5
20020834:	e7c3      	b.n	200207be <boot_psram_init+0x8e>
20020836:	2406      	movs	r4, #6
20020838:	e7c1      	b.n	200207be <boot_psram_init+0x8e>
2002083a:	2d05      	cmp	r5, #5
2002083c:	d10d      	bne.n	2002085a <boot_psram_init+0x12a>
2002083e:	f001 fad9 	bl	20021df4 <BSP_GetFlash1DIV>
20020842:	a905      	add	r1, sp, #20
20020844:	4602      	mov	r2, r0
20020846:	4821      	ldr	r0, [pc, #132]	@ (200208cc <boot_psram_init+0x19c>)
20020848:	f003 fed2 	bl	200245f0 <HAL_LEGACY_PSRAM_Init>
2002084c:	481f      	ldr	r0, [pc, #124]	@ (200208cc <boot_psram_init+0x19c>)
2002084e:	f003 fddf 	bl	20024410 <HAL_LEGACY_CFG_READ>
20020852:	481e      	ldr	r0, [pc, #120]	@ (200208cc <boot_psram_init+0x19c>)
20020854:	f003 fdf7 	bl	20024446 <HAL_LEGACY_CFG_WRITE>
20020858:	e7db      	b.n	20020812 <boot_psram_init+0xe2>
2002085a:	2d06      	cmp	r5, #6
2002085c:	d10d      	bne.n	2002087a <boot_psram_init+0x14a>
2002085e:	f001 fac9 	bl	20021df4 <BSP_GetFlash1DIV>
20020862:	a905      	add	r1, sp, #20
20020864:	4602      	mov	r2, r0
20020866:	4819      	ldr	r0, [pc, #100]	@ (200208cc <boot_psram_init+0x19c>)
20020868:	f003 ff8a 	bl	20024780 <HAL_HYPER_PSRAM_Init>
2002086c:	4817      	ldr	r0, [pc, #92]	@ (200208cc <boot_psram_init+0x19c>)
2002086e:	f003 ffc1 	bl	200247f4 <HAL_HYPER_CFG_READ>
20020872:	4816      	ldr	r0, [pc, #88]	@ (200208cc <boot_psram_init+0x19c>)
20020874:	f003 ffd0 	bl	20024818 <HAL_HYPER_CFG_WRITE>
20020878:	e7cb      	b.n	20020812 <boot_psram_init+0xe2>
2002087a:	f001 fabb 	bl	20021df4 <BSP_GetFlash1DIV>
2002087e:	2500      	movs	r5, #0
20020880:	2403      	movs	r4, #3
20020882:	2701      	movs	r7, #1
20020884:	2602      	movs	r6, #2
20020886:	4602      	mov	r2, r0
20020888:	a905      	add	r1, sp, #20
2002088a:	4810      	ldr	r0, [pc, #64]	@ (200208cc <boot_psram_init+0x19c>)
2002088c:	f003 fcd4 	bl	20024238 <HAL_SPI_PSRAM_Init>
20020890:	462b      	mov	r3, r5
20020892:	2206      	movs	r2, #6
20020894:	4621      	mov	r1, r4
20020896:	e9cd 4702 	strd	r4, r7, [sp, #8]
2002089a:	e9cd 5600 	strd	r5, r6, [sp]
2002089e:	480b      	ldr	r0, [pc, #44]	@ (200208cc <boot_psram_init+0x19c>)
200208a0:	f002 f902 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
200208a4:	21eb      	movs	r1, #235	@ 0xeb
200208a6:	4809      	ldr	r0, [pc, #36]	@ (200208cc <boot_psram_init+0x19c>)
200208a8:	f002 f8f3 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
200208ac:	4621      	mov	r1, r4
200208ae:	462b      	mov	r3, r5
200208b0:	462a      	mov	r2, r5
200208b2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b6:	e9cd 5600 	strd	r5, r6, [sp]
200208ba:	4804      	ldr	r0, [pc, #16]	@ (200208cc <boot_psram_init+0x19c>)
200208bc:	f002 f91d 	bl	20022afa <HAL_FLASH_CFG_AHB_WCMD>
200208c0:	2138      	movs	r1, #56	@ 0x38
200208c2:	4802      	ldr	r0, [pc, #8]	@ (200208cc <boot_psram_init+0x19c>)
200208c4:	f002 f90d 	bl	20022ae2 <HAL_FLASH_SET_AHB_WCMD>
200208c8:	e7a3      	b.n	20020812 <boot_psram_init+0xe2>
200208ca:	bf00      	nop
200208cc:	200449bc 	.word	0x200449bc
200208d0:	50041000 	.word	0x50041000
200208d4:	07de2901 	.word	0x07de2901
200208d8:	13c9eb01 	.word	0x13c9eb01
200208dc:	17d78401 	.word	0x17d78401

200208e0 <board_init_psram>:
200208e0:	b510      	push	{r4, lr}
200208e2:	4b15      	ldr	r3, [pc, #84]	@ (20020938 <board_init_psram+0x58>)
200208e4:	685c      	ldr	r4, [r3, #4]
200208e6:	f3c4 2402 	ubfx	r4, r4, #8, #3
200208ea:	1ea3      	subs	r3, r4, #2
200208ec:	2b04      	cmp	r3, #4
200208ee:	d821      	bhi.n	20020934 <board_init_psram+0x54>
200208f0:	e8df f003 	tbb	[pc, r3]
200208f4:	03151b1d 	.word	0x03151b1d
200208f8:	19          	.byte	0x19
200208f9:	00          	.byte	0x00
200208fa:	f7ff fed1 	bl	200206a0 <board_pinmux_psram_func3>
200208fe:	2201      	movs	r2, #1
20020900:	2000      	movs	r0, #0
20020902:	4611      	mov	r1, r2
20020904:	f00b fc94 	bl	2002c230 <HAL_PMU_ConfigPeriLdo>
20020908:	2001      	movs	r0, #1
2002090a:	f7ff ff0c 	bl	20020726 <bootloader_switch_clock>
2002090e:	2002      	movs	r0, #2
20020910:	f001 fa7c 	bl	20021e0c <BSP_SetFlash1DIV>
20020914:	4620      	mov	r0, r4
20020916:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002091a:	f7ff bf09 	b.w	20020730 <boot_psram_init>
2002091e:	2002      	movs	r0, #2
20020920:	f7ff fe4c 	bl	200205bc <board_pinmux_psram_func1_2_4>
20020924:	e7eb      	b.n	200208fe <board_init_psram+0x1e>
20020926:	2004      	movs	r0, #4
20020928:	e7fa      	b.n	20020920 <board_init_psram+0x40>
2002092a:	2001      	movs	r0, #1
2002092c:	e7f8      	b.n	20020920 <board_init_psram+0x40>
2002092e:	f7ff fdf8 	bl	20020522 <board_pinmux_psram_func0>
20020932:	e7e4      	b.n	200208fe <board_init_psram+0x1e>
20020934:	bd10      	pop	{r4, pc}
20020936:	bf00      	nop
20020938:	5000b000 	.word	0x5000b000

2002093c <erase_nor>:
2002093c:	4b15      	ldr	r3, [pc, #84]	@ (20020994 <erase_nor+0x58>)
2002093e:	b570      	push	{r4, r5, r6, lr}
20020940:	f103 0644 	add.w	r6, r3, #68	@ 0x44
20020944:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
20020948:	bf38      	it	cc
2002094a:	461e      	movcc	r6, r3
2002094c:	6933      	ldr	r3, [r6, #16]
2002094e:	460c      	mov	r4, r1
20020950:	4283      	cmp	r3, r0
20020952:	d901      	bls.n	20020958 <erase_nor+0x1c>
20020954:	2001      	movs	r0, #1
20020956:	bd70      	pop	{r4, r5, r6, pc}
20020958:	6972      	ldr	r2, [r6, #20]
2002095a:	441a      	add	r2, r3
2002095c:	4282      	cmp	r2, r0
2002095e:	d3f9      	bcc.n	20020954 <erase_nor+0x18>
20020960:	1ac0      	subs	r0, r0, r3
20020962:	f3c0 030b 	ubfx	r3, r0, #0, #12
20020966:	b97b      	cbnz	r3, 20020988 <erase_nor+0x4c>
20020968:	f3c1 030b 	ubfx	r3, r1, #0, #12
2002096c:	b97b      	cbnz	r3, 2002098e <erase_nor+0x52>
2002096e:	1845      	adds	r5, r0, r1
20020970:	1b29      	subs	r1, r5, r4
20020972:	b90c      	cbnz	r4, 20020978 <erase_nor+0x3c>
20020974:	4620      	mov	r0, r4
20020976:	e7ee      	b.n	20020956 <erase_nor+0x1a>
20020978:	4630      	mov	r0, r6
2002097a:	f003 f975 	bl	20023c68 <HAL_QSPIEX_SECT_ERASE>
2002097e:	2800      	cmp	r0, #0
20020980:	d1e8      	bne.n	20020954 <erase_nor+0x18>
20020982:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020986:	e7f3      	b.n	20020970 <erase_nor+0x34>
20020988:	f04f 30ff 	mov.w	r0, #4294967295
2002098c:	e7e3      	b.n	20020956 <erase_nor+0x1a>
2002098e:	f06f 0001 	mvn.w	r0, #1
20020992:	e7e0      	b.n	20020956 <erase_nor+0x1a>
20020994:	20046f0c 	.word	0x20046f0c

20020998 <write_nor>:
20020998:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002099c:	4b20      	ldr	r3, [pc, #128]	@ (20020a20 <write_nor+0x88>)
2002099e:	460f      	mov	r7, r1
200209a0:	f103 0844 	add.w	r8, r3, #68	@ 0x44
200209a4:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
200209a8:	bf38      	it	cc
200209aa:	4698      	movcc	r8, r3
200209ac:	f8d8 5010 	ldr.w	r5, [r8, #16]
200209b0:	4616      	mov	r6, r2
200209b2:	4285      	cmp	r5, r0
200209b4:	d902      	bls.n	200209bc <write_nor+0x24>
200209b6:	2000      	movs	r0, #0
200209b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200209bc:	f8d8 2014 	ldr.w	r2, [r8, #20]
200209c0:	442a      	add	r2, r5
200209c2:	4282      	cmp	r2, r0
200209c4:	d3f7      	bcc.n	200209b6 <write_nor+0x1e>
200209c6:	1b45      	subs	r5, r0, r5
200209c8:	f015 04ff 	ands.w	r4, r5, #255	@ 0xff
200209cc:	d012      	beq.n	200209f4 <write_nor+0x5c>
200209ce:	f5c4 7480 	rsb	r4, r4, #256	@ 0x100
200209d2:	42b4      	cmp	r4, r6
200209d4:	bf28      	it	cs
200209d6:	4634      	movcs	r4, r6
200209d8:	460a      	mov	r2, r1
200209da:	4623      	mov	r3, r4
200209dc:	4629      	mov	r1, r5
200209de:	4640      	mov	r0, r8
200209e0:	f003 f85d 	bl	20023a9e <HAL_QSPIEX_WRITE_PAGE>
200209e4:	4284      	cmp	r4, r0
200209e6:	d1e6      	bne.n	200209b6 <write_nor+0x1e>
200209e8:	4425      	add	r5, r4
200209ea:	4427      	add	r7, r4
200209ec:	1b34      	subs	r4, r6, r4
200209ee:	b91c      	cbnz	r4, 200209f8 <write_nor+0x60>
200209f0:	4630      	mov	r0, r6
200209f2:	e7e1      	b.n	200209b8 <write_nor+0x20>
200209f4:	4634      	mov	r4, r6
200209f6:	e7fa      	b.n	200209ee <write_nor+0x56>
200209f8:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
200209fc:	46a1      	mov	r9, r4
200209fe:	bf28      	it	cs
20020a00:	f44f 7980 	movcs.w	r9, #256	@ 0x100
20020a04:	463a      	mov	r2, r7
20020a06:	464b      	mov	r3, r9
20020a08:	4629      	mov	r1, r5
20020a0a:	4640      	mov	r0, r8
20020a0c:	f003 f847 	bl	20023a9e <HAL_QSPIEX_WRITE_PAGE>
20020a10:	4581      	cmp	r9, r0
20020a12:	d1d0      	bne.n	200209b6 <write_nor+0x1e>
20020a14:	444d      	add	r5, r9
20020a16:	444f      	add	r7, r9
20020a18:	eba4 0409 	sub.w	r4, r4, r9
20020a1c:	e7e7      	b.n	200209ee <write_nor+0x56>
20020a1e:	bf00      	nop
20020a20:	20046f0c 	.word	0x20046f0c

20020a24 <read_nor>:
20020a24:	460b      	mov	r3, r1
20020a26:	b510      	push	{r4, lr}
20020a28:	4614      	mov	r4, r2
20020a2a:	4601      	mov	r1, r0
20020a2c:	4618      	mov	r0, r3
20020a2e:	f009 fec7 	bl	2002a7c0 <memcpy>
20020a32:	4620      	mov	r0, r4
20020a34:	bd10      	pop	{r4, pc}
	...

20020a38 <read_nand>:
20020a38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020a3c:	2600      	movs	r6, #0
20020a3e:	460f      	mov	r7, r1
20020a40:	4615      	mov	r5, r2
20020a42:	46b0      	mov	r8, r6
20020a44:	4b19      	ldr	r3, [pc, #100]	@ (20020aac <read_nand+0x74>)
20020a46:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20020ab0 <read_nand+0x78>
20020a4a:	681b      	ldr	r3, [r3, #0]
20020a4c:	f8df b064 	ldr.w	fp, [pc, #100]	@ 20020ab4 <read_nand+0x7c>
20020a50:	691b      	ldr	r3, [r3, #16]
20020a52:	4604      	mov	r4, r0
20020a54:	4283      	cmp	r3, r0
20020a56:	b085      	sub	sp, #20
20020a58:	bf98      	it	ls
20020a5a:	1ac4      	subls	r4, r0, r3
20020a5c:	b91d      	cbnz	r5, 20020a66 <read_nand+0x2e>
20020a5e:	4630      	mov	r0, r6
20020a60:	b005      	add	sp, #20
20020a62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20020a66:	f8da 1000 	ldr.w	r1, [sl]
20020a6a:	f8db 0000 	ldr.w	r0, [fp]
20020a6e:	42a9      	cmp	r1, r5
20020a70:	fbb0 fcf1 	udiv	ip, r0, r1
20020a74:	4689      	mov	r9, r1
20020a76:	f101 32ff 	add.w	r2, r1, #4294967295
20020a7a:	bf28      	it	cs
20020a7c:	46a9      	movcs	r9, r5
20020a7e:	fbb4 f1f1 	udiv	r1, r4, r1
20020a82:	f10c 3cff 	add.w	ip, ip, #4294967295
20020a86:	fbb4 f0f0 	udiv	r0, r4, r0
20020a8a:	e9cd 8801 	strd	r8, r8, [sp, #4]
20020a8e:	f8cd 9000 	str.w	r9, [sp]
20020a92:	19bb      	adds	r3, r7, r6
20020a94:	4022      	ands	r2, r4
20020a96:	ea0c 0101 	and.w	r1, ip, r1
20020a9a:	f004 fe7d 	bl	20025798 <bbm_read_page>
20020a9e:	4548      	cmp	r0, r9
20020aa0:	d1dd      	bne.n	20020a5e <read_nand+0x26>
20020aa2:	4406      	add	r6, r0
20020aa4:	1a2d      	subs	r5, r5, r0
20020aa6:	4404      	add	r4, r0
20020aa8:	e7d8      	b.n	20020a5c <read_nand+0x24>
20020aaa:	bf00      	nop
20020aac:	20046cf4 	.word	0x20046cf4
20020ab0:	20042c04 	.word	0x20042c04
20020ab4:	20042c00 	.word	0x20042c00

20020ab8 <read_sdnand>:
20020ab8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020abc:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020ac0:	460d      	mov	r5, r1
20020ac2:	4614      	mov	r4, r2
20020ac4:	4617      	mov	r7, r2
20020ac6:	46b0      	mov	r8, r6
20020ac8:	eb02 0901 	add.w	r9, r2, r1
20020acc:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020ad0:	eba9 0107 	sub.w	r1, r9, r7
20020ad4:	d218      	bcs.n	20020b08 <read_sdnand+0x50>
20020ad6:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020ada:	b197      	cbz	r7, 20020b02 <read_sdnand+0x4a>
20020adc:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020ae0:	f020 0001 	bic.w	r0, r0, #1
20020ae4:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020ae8:	490c      	ldr	r1, [pc, #48]	@ (20020b1c <read_sdnand+0x64>)
20020aea:	4430      	add	r0, r6
20020aec:	f001 f866 	bl	20021bbc <sd_read_data>
20020af0:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af4:	f020 0001 	bic.w	r0, r0, #1
20020af8:	463a      	mov	r2, r7
20020afa:	4908      	ldr	r1, [pc, #32]	@ (20020b1c <read_sdnand+0x64>)
20020afc:	4428      	add	r0, r5
20020afe:	f009 fe5f 	bl	2002a7c0 <memcpy>
20020b02:	4620      	mov	r0, r4
20020b04:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b08:	4640      	mov	r0, r8
20020b0a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0e:	f001 f855 	bl	20021bbc <sd_read_data>
20020b12:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b16:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b1a:	e7d7      	b.n	20020acc <read_sdnand+0x14>
20020b1c:	20046af0 	.word	0x20046af0

20020b20 <read_sdemmc>:
20020b20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020b24:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020b28:	460d      	mov	r5, r1
20020b2a:	4614      	mov	r4, r2
20020b2c:	4617      	mov	r7, r2
20020b2e:	46b0      	mov	r8, r6
20020b30:	eb02 0901 	add.w	r9, r2, r1
20020b34:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020b38:	eba9 0107 	sub.w	r1, r9, r7
20020b3c:	d218      	bcs.n	20020b70 <read_sdemmc+0x50>
20020b3e:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020b42:	b197      	cbz	r7, 20020b6a <read_sdemmc+0x4a>
20020b44:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b48:	f020 0001 	bic.w	r0, r0, #1
20020b4c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b50:	490c      	ldr	r1, [pc, #48]	@ (20020b84 <read_sdemmc+0x64>)
20020b52:	4430      	add	r0, r6
20020b54:	f000 fe1c 	bl	20021790 <emmc_read_data>
20020b58:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b5c:	f020 0001 	bic.w	r0, r0, #1
20020b60:	463a      	mov	r2, r7
20020b62:	4908      	ldr	r1, [pc, #32]	@ (20020b84 <read_sdemmc+0x64>)
20020b64:	4428      	add	r0, r5
20020b66:	f009 fe2b 	bl	2002a7c0 <memcpy>
20020b6a:	4620      	mov	r0, r4
20020b6c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b70:	4640      	mov	r0, r8
20020b72:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b76:	f000 fe0b 	bl	20021790 <emmc_read_data>
20020b7a:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b7e:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b82:	e7d7      	b.n	20020b34 <read_sdemmc+0x14>
20020b84:	20046af0 	.word	0x20046af0

20020b88 <port_read_page>:
20020b88:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020b8c:	4615      	mov	r5, r2
20020b8e:	460e      	mov	r6, r1
20020b90:	4928      	ldr	r1, [pc, #160]	@ (20020c34 <port_read_page+0xac>)
20020b92:	461a      	mov	r2, r3
20020b94:	e9dd 3c08 	ldrd	r3, ip, [sp, #32]
20020b98:	680f      	ldr	r7, [r1, #0]
20020b9a:	18e9      	adds	r1, r5, r3
20020b9c:	428f      	cmp	r7, r1
20020b9e:	f8dd e028 	ldr.w	lr, [sp, #40]	@ 0x28
20020ba2:	d200      	bcs.n	20020ba6 <port_read_page+0x1e>
20020ba4:	e7fe      	b.n	20020ba4 <port_read_page+0x1c>
20020ba6:	4924      	ldr	r1, [pc, #144]	@ (20020c38 <port_read_page+0xb0>)
20020ba8:	f107 0980 	add.w	r9, r7, #128	@ 0x80
20020bac:	f1b9 0f00 	cmp.w	r9, #0
20020bb0:	6809      	ldr	r1, [r1, #0]
20020bb2:	dd15      	ble.n	20020be0 <port_read_page+0x58>
20020bb4:	4c21      	ldr	r4, [pc, #132]	@ (20020c3c <port_read_page+0xb4>)
20020bb6:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020bb8:	f004 081f 	and.w	r8, r4, #31
20020bbc:	44c8      	add	r8, r9
20020bbe:	f3bf 8f4f 	dsb	sy
20020bc2:	f8df a080 	ldr.w	sl, [pc, #128]	@ 20020c44 <port_read_page+0xbc>
20020bc6:	44a0      	add	r8, r4
20020bc8:	f8ca 425c 	str.w	r4, [sl, #604]	@ 0x25c
20020bcc:	3420      	adds	r4, #32
20020bce:	eba8 0904 	sub.w	r9, r8, r4
20020bd2:	f1b9 0f00 	cmp.w	r9, #0
20020bd6:	dcf7      	bgt.n	20020bc8 <port_read_page+0x40>
20020bd8:	f3bf 8f4f 	dsb	sy
20020bdc:	f3bf 8f6f 	isb	sy
20020be0:	07c4      	lsls	r4, r0, #31
20020be2:	d51b      	bpl.n	20020c1c <port_read_page+0x94>
20020be4:	4c15      	ldr	r4, [pc, #84]	@ (20020c3c <port_read_page+0xb4>)
20020be6:	f894 806b 	ldrb.w	r8, [r4, #107]	@ 0x6b
20020bea:	f1b8 0f00 	cmp.w	r8, #0
20020bee:	d015      	beq.n	20020c1c <port_read_page+0x94>
20020bf0:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020bf2:	f504 5880 	add.w	r8, r4, #4096	@ 0x1000
20020bf6:	f004 041f 	and.w	r4, r4, #31
20020bfa:	f504 6408 	add.w	r4, r4, #2176	@ 0x880
20020bfe:	f3bf 8f4f 	dsb	sy
20020c02:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 20020c44 <port_read_page+0xbc>
20020c06:	3c20      	subs	r4, #32
20020c08:	2c00      	cmp	r4, #0
20020c0a:	f8c9 825c 	str.w	r8, [r9, #604]	@ 0x25c
20020c0e:	f108 0820 	add.w	r8, r8, #32
20020c12:	dcf8      	bgt.n	20020c06 <port_read_page+0x7e>
20020c14:	f3bf 8f4f 	dsb	sy
20020c18:	f3bf 8f6f 	isb	sy
20020c1c:	fb07 5506 	mla	r5, r7, r6, r5
20020c20:	e9cd ce08 	strd	ip, lr, [sp, #32]
20020c24:	fb01 5100 	mla	r1, r1, r0, r5
20020c28:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020c2c:	4804      	ldr	r0, [pc, #16]	@ (20020c40 <port_read_page+0xb8>)
20020c2e:	f002 be54 	b.w	200238da <HAL_NAND_READ_WITHOOB>
20020c32:	bf00      	nop
20020c34:	20042c04 	.word	0x20042c04
20020c38:	20042c00 	.word	0x20042c00
20020c3c:	20046f0c 	.word	0x20046f0c
20020c40:	20046f50 	.word	0x20046f50
20020c44:	e000ed00 	.word	0xe000ed00

20020c48 <bbm_get_bb>:
20020c48:	b410      	push	{r4}
20020c4a:	4b1c      	ldr	r3, [pc, #112]	@ (20020cbc <bbm_get_bb+0x74>)
20020c4c:	4601      	mov	r1, r0
20020c4e:	6818      	ldr	r0, [r3, #0]
20020c50:	3080      	adds	r0, #128	@ 0x80
20020c52:	2800      	cmp	r0, #0
20020c54:	dd12      	ble.n	20020c7c <bbm_get_bb+0x34>
20020c56:	4b1a      	ldr	r3, [pc, #104]	@ (20020cc0 <bbm_get_bb+0x78>)
20020c58:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020c5a:	f003 021f 	and.w	r2, r3, #31
20020c5e:	4402      	add	r2, r0
20020c60:	f3bf 8f4f 	dsb	sy
20020c64:	4c17      	ldr	r4, [pc, #92]	@ (20020cc4 <bbm_get_bb+0x7c>)
20020c66:	441a      	add	r2, r3
20020c68:	f8c4 325c 	str.w	r3, [r4, #604]	@ 0x25c
20020c6c:	3320      	adds	r3, #32
20020c6e:	1ad0      	subs	r0, r2, r3
20020c70:	2800      	cmp	r0, #0
20020c72:	dcf9      	bgt.n	20020c68 <bbm_get_bb+0x20>
20020c74:	f3bf 8f4f 	dsb	sy
20020c78:	f3bf 8f6f 	isb	sy
20020c7c:	07cb      	lsls	r3, r1, #31
20020c7e:	d518      	bpl.n	20020cb2 <bbm_get_bb+0x6a>
20020c80:	4b0f      	ldr	r3, [pc, #60]	@ (20020cc0 <bbm_get_bb+0x78>)
20020c82:	f893 206b 	ldrb.w	r2, [r3, #107]	@ 0x6b
20020c86:	b1a2      	cbz	r2, 20020cb2 <bbm_get_bb+0x6a>
20020c88:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020c8a:	f503 5280 	add.w	r2, r3, #4096	@ 0x1000
20020c8e:	f003 031f 	and.w	r3, r3, #31
20020c92:	f503 6308 	add.w	r3, r3, #2176	@ 0x880
20020c96:	f3bf 8f4f 	dsb	sy
20020c9a:	480a      	ldr	r0, [pc, #40]	@ (20020cc4 <bbm_get_bb+0x7c>)
20020c9c:	3b20      	subs	r3, #32
20020c9e:	2b00      	cmp	r3, #0
20020ca0:	f8c0 225c 	str.w	r2, [r0, #604]	@ 0x25c
20020ca4:	f102 0220 	add.w	r2, r2, #32
20020ca8:	dcf8      	bgt.n	20020c9c <bbm_get_bb+0x54>
20020caa:	f3bf 8f4f 	dsb	sy
20020cae:	f3bf 8f6f 	isb	sy
20020cb2:	4805      	ldr	r0, [pc, #20]	@ (20020cc8 <bbm_get_bb+0x80>)
20020cb4:	f85d 4b04 	ldr.w	r4, [sp], #4
20020cb8:	f002 bed0 	b.w	20023a5c <HAL_NAND_GET_BADBLK>
20020cbc:	20042c04 	.word	0x20042c04
20020cc0:	20046f0c 	.word	0x20046f0c
20020cc4:	e000ed00 	.word	0xe000ed00
20020cc8:	20046f50 	.word	0x20046f50

20020ccc <dfu_flash_init>:
20020ccc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020cd0:	b08c      	sub	sp, #48	@ 0x30
20020cd2:	f001 fea9 	bl	20022a28 <HAL_HPAON_EnableXT48>
20020cd6:	2101      	movs	r1, #1
20020cd8:	2000      	movs	r0, #0
20020cda:	f004 f947 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20020cde:	2101      	movs	r1, #1
20020ce0:	200c      	movs	r0, #12
20020ce2:	f004 f943 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20020ce6:	2001      	movs	r0, #1
20020ce8:	f004 f83e 	bl	20024d68 <HAL_PMU_EnableDLL>
20020cec:	4f9c      	ldr	r7, [pc, #624]	@ (20020f60 <dfu_flash_init+0x294>)
20020cee:	2090      	movs	r0, #144	@ 0x90
20020cf0:	f004 fa9e 	bl	20025230 <HAL_RCC_HCPU_ConfigHCLK>
20020cf4:	2000      	movs	r0, #0
20020cf6:	f001 f95c 	bl	20021fb2 <HAL_Delay_us>
20020cfa:	683b      	ldr	r3, [r7, #0]
20020cfc:	4d99      	ldr	r5, [pc, #612]	@ (20020f64 <dfu_flash_init+0x298>)
20020cfe:	3b01      	subs	r3, #1
20020d00:	2b05      	cmp	r3, #5
20020d02:	f200 811d 	bhi.w	20020f40 <dfu_flash_init+0x274>
20020d06:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d0a:	0006      	.short	0x0006
20020d0c:	00780006 	.word	0x00780006
20020d10:	00f80078 	.word	0x00f80078
20020d14:	010c      	.short	0x010c
20020d16:	4894      	ldr	r0, [pc, #592]	@ (20020f68 <dfu_flash_init+0x29c>)
20020d18:	f004 f8f0 	bl	20024efc <HAL_RCC_HCPU_EnableDLL2>
20020d1c:	4c93      	ldr	r4, [pc, #588]	@ (20020f6c <dfu_flash_init+0x2a0>)
20020d1e:	2006      	movs	r0, #6
20020d20:	f001 f874 	bl	20021e0c <BSP_SetFlash1DIV>
20020d24:	ae07      	add	r6, sp, #28
20020d26:	2102      	movs	r1, #2
20020d28:	2004      	movs	r0, #4
20020d2a:	f004 f91f 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20020d2e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d30:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d32:	f854 3b04 	ldr.w	r3, [r4], #4
20020d36:	6033      	str	r3, [r6, #0]
20020d38:	ae03      	add	r6, sp, #12
20020d3a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d3e:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d42:	2301      	movs	r3, #1
20020d44:	4c8a      	ldr	r4, [pc, #552]	@ (20020f70 <dfu_flash_init+0x2a4>)
20020d46:	f884 3035 	strb.w	r3, [r4, #53]	@ 0x35
20020d4a:	2300      	movs	r3, #0
20020d4c:	9308      	str	r3, [sp, #32]
20020d4e:	683b      	ldr	r3, [r7, #0]
20020d50:	2b01      	cmp	r3, #1
20020d52:	d14d      	bne.n	20020df0 <dfu_flash_init+0x124>
20020d54:	f7ff fadc 	bl	20020310 <board_pinmux_mpi1_puya_base>
20020d58:	f001 f84c 	bl	20021df4 <BSP_GetFlash1DIV>
20020d5c:	4633      	mov	r3, r6
20020d5e:	9000      	str	r0, [sp, #0]
20020d60:	4a84      	ldr	r2, [pc, #528]	@ (20020f74 <dfu_flash_init+0x2a8>)
20020d62:	4883      	ldr	r0, [pc, #524]	@ (20020f70 <dfu_flash_init+0x2a4>)
20020d64:	a907      	add	r1, sp, #28
20020d66:	f003 f851 	bl	20023e0c <HAL_FLASH_Init>
20020d6a:	683e      	ldr	r6, [r7, #0]
20020d6c:	2e01      	cmp	r6, #1
20020d6e:	d10d      	bne.n	20020d8c <dfu_flash_init+0xc0>
20020d70:	6b20      	ldr	r0, [r4, #48]	@ 0x30
20020d72:	4b81      	ldr	r3, [pc, #516]	@ (20020f78 <dfu_flash_init+0x2ac>)
20020d74:	1ac3      	subs	r3, r0, r3
20020d76:	4258      	negs	r0, r3
20020d78:	4158      	adcs	r0, r3
20020d7a:	f7ff faea 	bl	20020352 <board_pinmux_mpi1_puya_ext>
20020d7e:	4631      	mov	r1, r6
20020d80:	487b      	ldr	r0, [pc, #492]	@ (20020f70 <dfu_flash_init+0x2a4>)
20020d82:	f002 fabc 	bl	200232fe <HAL_FLASH_SET_QUAL_SPI>
20020d86:	2302      	movs	r3, #2
20020d88:	f884 3020 	strb.w	r3, [r4, #32]
20020d8c:	4b7b      	ldr	r3, [pc, #492]	@ (20020f7c <dfu_flash_init+0x2b0>)
20020d8e:	4a7c      	ldr	r2, [pc, #496]	@ (20020f80 <dfu_flash_init+0x2b4>)
20020d90:	602b      	str	r3, [r5, #0]
20020d92:	4b7c      	ldr	r3, [pc, #496]	@ (20020f84 <dfu_flash_init+0x2b8>)
20020d94:	601a      	str	r2, [r3, #0]
20020d96:	4b7c      	ldr	r3, [pc, #496]	@ (20020f88 <dfu_flash_init+0x2bc>)
20020d98:	4a7c      	ldr	r2, [pc, #496]	@ (20020f8c <dfu_flash_init+0x2c0>)
20020d9a:	601a      	str	r2, [r3, #0]
20020d9c:	4b7c      	ldr	r3, [pc, #496]	@ (20020f90 <dfu_flash_init+0x2c4>)
20020d9e:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20020da0:	601a      	str	r2, [r3, #0]
20020da2:	4b7c      	ldr	r3, [pc, #496]	@ (20020f94 <dfu_flash_init+0x2c8>)
20020da4:	601c      	str	r4, [r3, #0]
20020da6:	2405      	movs	r4, #5
20020da8:	f8df 81ec 	ldr.w	r8, [pc, #492]	@ 20020f98 <dfu_flash_init+0x2cc>
20020dac:	4e78      	ldr	r6, [pc, #480]	@ (20020f90 <dfu_flash_init+0x2c4>)
20020dae:	f8df 921c 	ldr.w	r9, [pc, #540]	@ 20020fcc <dfu_flash_init+0x300>
20020db2:	682b      	ldr	r3, [r5, #0]
20020db4:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020db8:	4977      	ldr	r1, [pc, #476]	@ (20020f98 <dfu_flash_init+0x2cc>)
20020dba:	6830      	ldr	r0, [r6, #0]
20020dbc:	4798      	blx	r3
20020dbe:	f8d8 3000 	ldr.w	r3, [r8]
20020dc2:	454b      	cmp	r3, r9
20020dc4:	f040 80c0 	bne.w	20020f48 <dfu_flash_init+0x27c>
20020dc8:	683b      	ldr	r3, [r7, #0]
20020dca:	2b04      	cmp	r3, #4
20020dcc:	f040 8085 	bne.w	20020eda <dfu_flash_init+0x20e>
20020dd0:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020dd4:	1e5a      	subs	r2, r3, #1
20020dd6:	3203      	adds	r2, #3
20020dd8:	d87f      	bhi.n	20020eda <dfu_flash_init+0x20e>
20020dda:	4a70      	ldr	r2, [pc, #448]	@ (20020f9c <dfu_flash_init+0x2d0>)
20020ddc:	496e      	ldr	r1, [pc, #440]	@ (20020f98 <dfu_flash_init+0x2cc>)
20020dde:	6013      	str	r3, [r2, #0]
20020de0:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020de4:	682b      	ldr	r3, [r5, #0]
20020de6:	6830      	ldr	r0, [r6, #0]
20020de8:	b00c      	add	sp, #48	@ 0x30
20020dea:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020dee:	4718      	bx	r3
20020df0:	f7ff fade 	bl	200203b0 <board_pinmux_mpi1_gd>
20020df4:	2302      	movs	r3, #2
20020df6:	9308      	str	r3, [sp, #32]
20020df8:	e7ae      	b.n	20020d58 <dfu_flash_init+0x8c>
20020dfa:	485b      	ldr	r0, [pc, #364]	@ (20020f68 <dfu_flash_init+0x29c>)
20020dfc:	f004 f87e 	bl	20024efc <HAL_RCC_HCPU_EnableDLL2>
20020e00:	4c67      	ldr	r4, [pc, #412]	@ (20020fa0 <dfu_flash_init+0x2d4>)
20020e02:	2006      	movs	r0, #6
20020e04:	f001 f808 	bl	20021e18 <BSP_SetFlash2DIV>
20020e08:	ae07      	add	r6, sp, #28
20020e0a:	2102      	movs	r1, #2
20020e0c:	2006      	movs	r0, #6
20020e0e:	f004 f8ad 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20020e12:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e14:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e16:	f854 3b04 	ldr.w	r3, [r4], #4
20020e1a:	f8d7 8000 	ldr.w	r8, [r7]
20020e1e:	6033      	str	r3, [r6, #0]
20020e20:	ae03      	add	r6, sp, #12
20020e22:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e26:	f1b8 0903 	subs.w	r9, r8, #3
20020e2a:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e2e:	bf18      	it	ne
20020e30:	f04f 0901 	movne.w	r9, #1
20020e34:	f7ff faff 	bl	20020436 <board_pinmux_mpi2>
20020e38:	2302      	movs	r3, #2
20020e3a:	f1b8 0f03 	cmp.w	r8, #3
20020e3e:	4c4c      	ldr	r4, [pc, #304]	@ (20020f70 <dfu_flash_init+0x2a4>)
20020e40:	9308      	str	r3, [sp, #32]
20020e42:	d04d      	beq.n	20020ee0 <dfu_flash_init+0x214>
20020e44:	4b57      	ldr	r3, [pc, #348]	@ (20020fa4 <dfu_flash_init+0x2d8>)
20020e46:	602b      	str	r3, [r5, #0]
20020e48:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e4a:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e4e:	9309      	str	r3, [sp, #36]	@ 0x24
20020e50:	2301      	movs	r3, #1
20020e52:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e54:	4b54      	ldr	r3, [pc, #336]	@ (20020fa8 <dfu_flash_init+0x2dc>)
20020e56:	6623      	str	r3, [r4, #96]	@ 0x60
20020e58:	f04f 0a01 	mov.w	sl, #1
20020e5c:	2000      	movs	r0, #0
20020e5e:	f001 f8a8 	bl	20021fb2 <HAL_Delay_us>
20020e62:	f884 a079 	strb.w	sl, [r4, #121]	@ 0x79
20020e66:	f884 9078 	strb.w	r9, [r4, #120]	@ 0x78
20020e6a:	f000 ffc9 	bl	20021e00 <BSP_GetFlash2DIV>
20020e6e:	4633      	mov	r3, r6
20020e70:	9000      	str	r0, [sp, #0]
20020e72:	4a4e      	ldr	r2, [pc, #312]	@ (20020fac <dfu_flash_init+0x2e0>)
20020e74:	484e      	ldr	r0, [pc, #312]	@ (20020fb0 <dfu_flash_init+0x2e4>)
20020e76:	a907      	add	r1, sp, #28
20020e78:	f002 ffc8 	bl	20023e0c <HAL_FLASH_Init>
20020e7c:	4e4c      	ldr	r6, [pc, #304]	@ (20020fb0 <dfu_flash_init+0x2e4>)
20020e7e:	bb90      	cbnz	r0, 20020ee6 <dfu_flash_init+0x21a>
20020e80:	f1b8 0f03 	cmp.w	r8, #3
20020e84:	d032      	beq.n	20020eec <dfu_flash_init+0x220>
20020e86:	4630      	mov	r0, r6
20020e88:	f002 fd1c 	bl	200238c4 <HAL_NAND_PAGE_SIZE>
20020e8c:	f8df 910c 	ldr.w	r9, [pc, #268]	@ 20020f9c <dfu_flash_init+0x2d0>
20020e90:	f8df 813c 	ldr.w	r8, [pc, #316]	@ 20020fd0 <dfu_flash_init+0x304>
20020e94:	f8c9 0000 	str.w	r0, [r9]
20020e98:	4630      	mov	r0, r6
20020e9a:	f002 fdd3 	bl	20023a44 <HAL_NAND_BLOCK_SIZE>
20020e9e:	4651      	mov	r1, sl
20020ea0:	f8c8 0000 	str.w	r0, [r8]
20020ea4:	4630      	mov	r0, r6
20020ea6:	f884 a06a 	strb.w	sl, [r4, #106]	@ 0x6a
20020eaa:	f002 fbe8 	bl	2002367e <HAL_NAND_CONF_ECC>
20020eae:	f8d9 0000 	ldr.w	r0, [r9]
20020eb2:	f004 ff59 	bl	20025d68 <bbm_set_page_size>
20020eb6:	f8d8 0000 	ldr.w	r0, [r8]
20020eba:	f004 ff5b 	bl	20025d74 <bbm_set_blk_size>
20020ebe:	493d      	ldr	r1, [pc, #244]	@ (20020fb4 <dfu_flash_init+0x2e8>)
20020ec0:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
20020ec4:	f004 fdf2 	bl	20025aac <sif_bbm_init>
20020ec8:	4b31      	ldr	r3, [pc, #196]	@ (20020f90 <dfu_flash_init+0x2c4>)
20020eca:	6fe2      	ldr	r2, [r4, #124]	@ 0x7c
20020ecc:	601a      	str	r2, [r3, #0]
20020ece:	4b31      	ldr	r3, [pc, #196]	@ (20020f94 <dfu_flash_init+0x2c8>)
20020ed0:	601e      	str	r6, [r3, #0]
20020ed2:	682b      	ldr	r3, [r5, #0]
20020ed4:	2b00      	cmp	r3, #0
20020ed6:	f47f af66 	bne.w	20020da6 <dfu_flash_init+0xda>
20020eda:	b00c      	add	sp, #48	@ 0x30
20020edc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020ee0:	4b26      	ldr	r3, [pc, #152]	@ (20020f7c <dfu_flash_init+0x2b0>)
20020ee2:	602b      	str	r3, [r5, #0]
20020ee4:	e7b8      	b.n	20020e58 <dfu_flash_init+0x18c>
20020ee6:	f1b8 0f03 	cmp.w	r8, #3
20020eea:	d1ed      	bne.n	20020ec8 <dfu_flash_init+0x1fc>
20020eec:	4b25      	ldr	r3, [pc, #148]	@ (20020f84 <dfu_flash_init+0x2b8>)
20020eee:	4a24      	ldr	r2, [pc, #144]	@ (20020f80 <dfu_flash_init+0x2b4>)
20020ef0:	601a      	str	r2, [r3, #0]
20020ef2:	4b25      	ldr	r3, [pc, #148]	@ (20020f88 <dfu_flash_init+0x2bc>)
20020ef4:	4a25      	ldr	r2, [pc, #148]	@ (20020f8c <dfu_flash_init+0x2c0>)
20020ef6:	601a      	str	r2, [r3, #0]
20020ef8:	e7e6      	b.n	20020ec8 <dfu_flash_init+0x1fc>
20020efa:	481b      	ldr	r0, [pc, #108]	@ (20020f68 <dfu_flash_init+0x29c>)
20020efc:	f003 fffe 	bl	20024efc <HAL_RCC_HCPU_EnableDLL2>
20020f00:	f7ff fac0 	bl	20020484 <board_pinmux_sd>
20020f04:	f000 fd2e 	bl	20021964 <sdmmc1_sdnand>
20020f08:	2801      	cmp	r0, #1
20020f0a:	d001      	beq.n	20020f10 <dfu_flash_init+0x244>
20020f0c:	f7ff f9d0 	bl	200202b0 <boot_error>
20020f10:	4b29      	ldr	r3, [pc, #164]	@ (20020fb8 <dfu_flash_init+0x2ec>)
20020f12:	4a2a      	ldr	r2, [pc, #168]	@ (20020fbc <dfu_flash_init+0x2f0>)
20020f14:	602b      	str	r3, [r5, #0]
20020f16:	4b1e      	ldr	r3, [pc, #120]	@ (20020f90 <dfu_flash_init+0x2c4>)
20020f18:	601a      	str	r2, [r3, #0]
20020f1a:	2200      	movs	r2, #0
20020f1c:	4b1d      	ldr	r3, [pc, #116]	@ (20020f94 <dfu_flash_init+0x2c8>)
20020f1e:	601a      	str	r2, [r3, #0]
20020f20:	e741      	b.n	20020da6 <dfu_flash_init+0xda>
20020f22:	4811      	ldr	r0, [pc, #68]	@ (20020f68 <dfu_flash_init+0x29c>)
20020f24:	f003 ffea 	bl	20024efc <HAL_RCC_HCPU_EnableDLL2>
20020f28:	f7ff faac 	bl	20020484 <board_pinmux_sd>
20020f2c:	f000 fb0a 	bl	20021544 <sdio_emmc_init>
20020f30:	4b23      	ldr	r3, [pc, #140]	@ (20020fc0 <dfu_flash_init+0x2f4>)
20020f32:	6018      	str	r0, [r3, #0]
20020f34:	b110      	cbz	r0, 20020f3c <dfu_flash_init+0x270>
20020f36:	b2c0      	uxtb	r0, r0
20020f38:	f7ff f9ba 	bl	200202b0 <boot_error>
20020f3c:	4b21      	ldr	r3, [pc, #132]	@ (20020fc4 <dfu_flash_init+0x2f8>)
20020f3e:	e7e8      	b.n	20020f12 <dfu_flash_init+0x246>
20020f40:	2053      	movs	r0, #83	@ 0x53
20020f42:	f7ff f9b5 	bl	200202b0 <boot_error>
20020f46:	e7c4      	b.n	20020ed2 <dfu_flash_init+0x206>
20020f48:	481f      	ldr	r0, [pc, #124]	@ (20020fc8 <dfu_flash_init+0x2fc>)
20020f4a:	f001 f832 	bl	20021fb2 <HAL_Delay_us>
20020f4e:	3c01      	subs	r4, #1
20020f50:	f47f af2f 	bne.w	20020db2 <dfu_flash_init+0xe6>
20020f54:	2043      	movs	r0, #67	@ 0x43
20020f56:	b00c      	add	sp, #48	@ 0x30
20020f58:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f5c:	f7ff b9a8 	b.w	200202b0 <boot_error>
20020f60:	20049f10 	.word	0x20049f10
20020f64:	20046d00 	.word	0x20046d00
20020f68:	112a8800 	.word	0x112a8800
20020f6c:	2002a890 	.word	0x2002a890
20020f70:	20046f0c 	.word	0x20046f0c
20020f74:	20046d04 	.word	0x20046d04
20020f78:	00176085 	.word	0x00176085
20020f7c:	20020a25 	.word	0x20020a25
20020f80:	20020999 	.word	0x20020999
20020f84:	20046cfc 	.word	0x20046cfc
20020f88:	20046cf8 	.word	0x20046cf8
20020f8c:	2002093d 	.word	0x2002093d
20020f90:	20046cf0 	.word	0x20046cf0
20020f94:	20046cf4 	.word	0x20046cf4
20020f98:	20047300 	.word	0x20047300
20020f9c:	20042c04 	.word	0x20042c04
20020fa0:	2002a8b4 	.word	0x2002a8b4
20020fa4:	20020a39 	.word	0x20020a39
20020fa8:	20045a70 	.word	0x20045a70
20020fac:	20046d6c 	.word	0x20046d6c
20020fb0:	20046f50 	.word	0x20046f50
20020fb4:	200449f0 	.word	0x200449f0
20020fb8:	20020ab9 	.word	0x20020ab9
20020fbc:	62001000 	.word	0x62001000
20020fc0:	200449ec 	.word	0x200449ec
20020fc4:	20020b21 	.word	0x20020b21
20020fc8:	000f4240 	.word	0x000f4240
20020fcc:	53454346 	.word	0x53454346
20020fd0:	20042c00 	.word	0x20042c00

20020fd4 <sifli_hw_efuse_read_bank>:
20020fd4:	2803      	cmp	r0, #3
20020fd6:	b508      	push	{r3, lr}
20020fd8:	d80c      	bhi.n	20020ff4 <sifli_hw_efuse_read_bank+0x20>
20020fda:	0200      	lsls	r0, r0, #8
20020fdc:	2220      	movs	r2, #32
20020fde:	4907      	ldr	r1, [pc, #28]	@ (20020ffc <sifli_hw_efuse_read_bank+0x28>)
20020fe0:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
20020fe4:	f001 fc8c 	bl	20022900 <HAL_EFUSE_Read>
20020fe8:	2800      	cmp	r0, #0
20020fea:	bf0c      	ite	eq
20020fec:	f06f 0001 	mvneq.w	r0, #1
20020ff0:	2000      	movne	r0, #0
20020ff2:	bd08      	pop	{r3, pc}
20020ff4:	f04f 30ff 	mov.w	r0, #4294967295
20020ff8:	e7fb      	b.n	20020ff2 <sifli_hw_efuse_read_bank+0x1e>
20020ffa:	bf00      	nop
20020ffc:	20047280 	.word	0x20047280

20021000 <sifli_hw_efuse_read>:
20021000:	b513      	push	{r0, r1, r4, lr}
20021002:	3801      	subs	r0, #1
20021004:	460c      	mov	r4, r1
20021006:	2803      	cmp	r0, #3
20021008:	d81e      	bhi.n	20021048 <sifli_hw_efuse_read+0x48>
2002100a:	e8df f000 	tbb	[pc, r0]
2002100e:	0c02      	.short	0x0c02
20021010:	1009      	.short	0x1009
20021012:	2210      	movs	r2, #16
20021014:	2000      	movs	r0, #0
20021016:	b002      	add	sp, #8
20021018:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002101c:	f001 bc70 	b.w	20022900 <HAL_EFUSE_Read>
20021020:	2208      	movs	r2, #8
20021022:	2080      	movs	r0, #128	@ 0x80
20021024:	e7f7      	b.n	20021016 <sifli_hw_efuse_read+0x16>
20021026:	2220      	movs	r2, #32
20021028:	f44f 7040 	mov.w	r0, #768	@ 0x300
2002102c:	e7f3      	b.n	20021016 <sifli_hw_efuse_read+0x16>
2002102e:	2204      	movs	r2, #4
20021030:	20c0      	movs	r0, #192	@ 0xc0
20021032:	eb0d 0102 	add.w	r1, sp, r2
20021036:	f001 fc63 	bl	20022900 <HAL_EFUSE_Read>
2002103a:	2804      	cmp	r0, #4
2002103c:	d104      	bne.n	20021048 <sifli_hw_efuse_read+0x48>
2002103e:	2001      	movs	r0, #1
20021040:	9b01      	ldr	r3, [sp, #4]
20021042:	7023      	strb	r3, [r4, #0]
20021044:	b002      	add	sp, #8
20021046:	bd10      	pop	{r4, pc}
20021048:	2000      	movs	r0, #0
2002104a:	e7fb      	b.n	20021044 <sifli_hw_efuse_read+0x44>

2002104c <sifli_hw_init_xip_key>:
2002104c:	b538      	push	{r3, r4, r5, lr}
2002104e:	4605      	mov	r5, r0
20021050:	4c0f      	ldr	r4, [pc, #60]	@ (20021090 <sifli_hw_init_xip_key+0x44>)
20021052:	2210      	movs	r2, #16
20021054:	68e3      	ldr	r3, [r4, #12]
20021056:	490f      	ldr	r1, [pc, #60]	@ (20021094 <sifli_hw_init_xip_key+0x48>)
20021058:	f043 0301 	orr.w	r3, r3, #1
2002105c:	60e3      	str	r3, [r4, #12]
2002105e:	2001      	movs	r0, #1
20021060:	f7ff ffce 	bl	20021000 <sifli_hw_efuse_read>
20021064:	2220      	movs	r2, #32
20021066:	2100      	movs	r1, #0
20021068:	480b      	ldr	r0, [pc, #44]	@ (20021098 <sifli_hw_init_xip_key+0x4c>)
2002106a:	f009 fb8f 	bl	2002a78c <memset>
2002106e:	2302      	movs	r3, #2
20021070:	2120      	movs	r1, #32
20021072:	4a08      	ldr	r2, [pc, #32]	@ (20021094 <sifli_hw_init_xip_key+0x48>)
20021074:	2000      	movs	r0, #0
20021076:	f001 f815 	bl	200220a4 <HAL_AES_init>
2002107a:	2320      	movs	r3, #32
2002107c:	4629      	mov	r1, r5
2002107e:	2000      	movs	r0, #0
20021080:	4a05      	ldr	r2, [pc, #20]	@ (20021098 <sifli_hw_init_xip_key+0x4c>)
20021082:	f001 f853 	bl	2002212c <HAL_AES_run>
20021086:	68e3      	ldr	r3, [r4, #12]
20021088:	f023 0301 	bic.w	r3, r3, #1
2002108c:	60e3      	str	r3, [r4, #12]
2002108e:	bd38      	pop	{r3, r4, r5, pc}
20021090:	5000b000 	.word	0x5000b000
20021094:	200472b0 	.word	0x200472b0
20021098:	20047260 	.word	0x20047260

2002109c <sifli_hw_dec_key>:
2002109c:	b538      	push	{r3, r4, r5, lr}
2002109e:	4604      	mov	r4, r0
200210a0:	460d      	mov	r5, r1
200210a2:	2210      	movs	r2, #16
200210a4:	4908      	ldr	r1, [pc, #32]	@ (200210c8 <sifli_hw_dec_key+0x2c>)
200210a6:	2001      	movs	r0, #1
200210a8:	f7ff ffaa 	bl	20021000 <sifli_hw_efuse_read>
200210ac:	2302      	movs	r3, #2
200210ae:	2120      	movs	r1, #32
200210b0:	4a05      	ldr	r2, [pc, #20]	@ (200210c8 <sifli_hw_dec_key+0x2c>)
200210b2:	2000      	movs	r0, #0
200210b4:	f000 fff6 	bl	200220a4 <HAL_AES_init>
200210b8:	2320      	movs	r3, #32
200210ba:	462a      	mov	r2, r5
200210bc:	4621      	mov	r1, r4
200210be:	2000      	movs	r0, #0
200210c0:	f001 f834 	bl	2002212c <HAL_AES_run>
200210c4:	2000      	movs	r0, #0
200210c6:	bd38      	pop	{r3, r4, r5, pc}
200210c8:	200472b0 	.word	0x200472b0

200210cc <dfu_get_counter>:
200210cc:	b538      	push	{r3, r4, r5, lr}
200210ce:	4d0a      	ldr	r5, [pc, #40]	@ (200210f8 <dfu_get_counter+0x2c>)
200210d0:	4604      	mov	r4, r0
200210d2:	2208      	movs	r2, #8
200210d4:	4629      	mov	r1, r5
200210d6:	2003      	movs	r0, #3
200210d8:	f7ff ff92 	bl	20021000 <sifli_hw_efuse_read>
200210dc:	2300      	movs	r3, #0
200210de:	e9c5 3302 	strd	r3, r3, [r5, #8]
200210e2:	230f      	movs	r3, #15
200210e4:	0924      	lsrs	r4, r4, #4
200210e6:	b12c      	cbz	r4, 200210f4 <dfu_get_counter+0x28>
200210e8:	54ec      	strb	r4, [r5, r3]
200210ea:	3b01      	subs	r3, #1
200210ec:	2b0b      	cmp	r3, #11
200210ee:	ea4f 2414 	mov.w	r4, r4, lsr #8
200210f2:	d1f8      	bne.n	200210e6 <dfu_get_counter+0x1a>
200210f4:	4800      	ldr	r0, [pc, #0]	@ (200210f8 <dfu_get_counter+0x2c>)
200210f6:	bd38      	pop	{r3, r4, r5, pc}
200210f8:	200472a0 	.word	0x200472a0

200210fc <sifli_hw_dec>:
200210fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021100:	4680      	mov	r8, r0
20021102:	4689      	mov	r9, r1
20021104:	4692      	mov	sl, r2
20021106:	2100      	movs	r1, #0
20021108:	f44f 7200 	mov.w	r2, #512	@ 0x200
2002110c:	4814      	ldr	r0, [pc, #80]	@ (20021160 <sifli_hw_dec+0x64>)
2002110e:	461e      	mov	r6, r3
20021110:	9f08      	ldr	r7, [sp, #32]
20021112:	2400      	movs	r4, #0
20021114:	f009 fb3a 	bl	2002a78c <memset>
20021118:	42a6      	cmp	r6, r4
2002111a:	d802      	bhi.n	20021122 <sifli_hw_dec+0x26>
2002111c:	4620      	mov	r0, r4
2002111e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021122:	1b35      	subs	r5, r6, r4
20021124:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
20021128:	bf28      	it	cs
2002112a:	f44f 7500 	movcs.w	r5, #512	@ 0x200
2002112e:	eb09 0104 	add.w	r1, r9, r4
20021132:	462a      	mov	r2, r5
20021134:	480a      	ldr	r0, [pc, #40]	@ (20021160 <sifli_hw_dec+0x64>)
20021136:	f009 fb43 	bl	2002a7c0 <memcpy>
2002113a:	19e0      	adds	r0, r4, r7
2002113c:	f7ff ffc6 	bl	200210cc <dfu_get_counter>
20021140:	2301      	movs	r3, #1
20021142:	4602      	mov	r2, r0
20021144:	2120      	movs	r1, #32
20021146:	4640      	mov	r0, r8
20021148:	f000 ffac 	bl	200220a4 <HAL_AES_init>
2002114c:	eb0a 0204 	add.w	r2, sl, r4
20021150:	462b      	mov	r3, r5
20021152:	2000      	movs	r0, #0
20021154:	4902      	ldr	r1, [pc, #8]	@ (20021160 <sifli_hw_dec+0x64>)
20021156:	f000 ffe9 	bl	2002212c <HAL_AES_run>
2002115a:	442c      	add	r4, r5
2002115c:	e7dc      	b.n	20021118 <sifli_hw_dec+0x1c>
2002115e:	bf00      	nop
20021160:	20047060 	.word	0x20047060

20021164 <update_sec_flash>:
20021164:	b510      	push	{r4, lr}
20021166:	4604      	mov	r4, r0
20021168:	4b08      	ldr	r3, [pc, #32]	@ (2002118c <update_sec_flash+0x28>)
2002116a:	f44f 5140 	mov.w	r1, #12288	@ 0x3000
2002116e:	681b      	ldr	r3, [r3, #0]
20021170:	f04f 5090 	mov.w	r0, #301989888	@ 0x12000000
20021174:	4798      	blx	r3
20021176:	4b06      	ldr	r3, [pc, #24]	@ (20021190 <update_sec_flash+0x2c>)
20021178:	4621      	mov	r1, r4
2002117a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002117e:	f642 4210 	movw	r2, #11280	@ 0x2c10
20021182:	f04f 5090 	mov.w	r0, #301989888	@ 0x12000000
20021186:	681b      	ldr	r3, [r3, #0]
20021188:	4718      	bx	r3
2002118a:	bf00      	nop
2002118c:	20046cf8 	.word	0x20046cf8
20021190:	20046d00 	.word	0x20046d00

20021194 <boot_ram>:
20021194:	4b05      	ldr	r3, [pc, #20]	@ (200211ac <boot_ram+0x18>)
20021196:	b082      	sub	sp, #8
20021198:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
2002119a:	9301      	str	r3, [sp, #4]
2002119c:	9b01      	ldr	r3, [sp, #4]
2002119e:	b113      	cbz	r3, 200211a6 <boot_ram+0x12>
200211a0:	9b01      	ldr	r3, [sp, #4]
200211a2:	b002      	add	sp, #8
200211a4:	4718      	bx	r3
200211a6:	b002      	add	sp, #8
200211a8:	4770      	bx	lr
200211aa:	bf00      	nop
200211ac:	500c0000 	.word	0x500c0000

200211b0 <is_addr_in_nor>:
200211b0:	4b09      	ldr	r3, [pc, #36]	@ (200211d8 <is_addr_in_nor+0x28>)
200211b2:	4602      	mov	r2, r0
200211b4:	681b      	ldr	r3, [r3, #0]
200211b6:	b163      	cbz	r3, 200211d2 <is_addr_in_nor+0x22>
200211b8:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
200211bc:	b948      	cbnz	r0, 200211d2 <is_addr_in_nor+0x22>
200211be:	6919      	ldr	r1, [r3, #16]
200211c0:	4291      	cmp	r1, r2
200211c2:	d807      	bhi.n	200211d4 <is_addr_in_nor+0x24>
200211c4:	695b      	ldr	r3, [r3, #20]
200211c6:	4419      	add	r1, r3
200211c8:	4291      	cmp	r1, r2
200211ca:	bf94      	ite	ls
200211cc:	2000      	movls	r0, #0
200211ce:	2001      	movhi	r0, #1
200211d0:	4770      	bx	lr
200211d2:	2000      	movs	r0, #0
200211d4:	4770      	bx	lr
200211d6:	bf00      	nop
200211d8:	20046cf4 	.word	0x20046cf4

200211dc <dfu_boot_img_in_flash>:
200211dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200211e0:	4f5e      	ldr	r7, [pc, #376]	@ (2002135c <dfu_boot_img_in_flash+0x180>)
200211e2:	1e84      	subs	r4, r0, #2
200211e4:	eb07 1300 	add.w	r3, r7, r0, lsl #4
200211e8:	eb07 2040 	add.w	r0, r7, r0, lsl #9
200211ec:	f8d3 8004 	ldr.w	r8, [r3, #4]
200211f0:	68dd      	ldr	r5, [r3, #12]
200211f2:	f8b0 3c06 	ldrh.w	r3, [r0, #3078]	@ 0xc06
200211f6:	b085      	sub	sp, #20
200211f8:	07db      	lsls	r3, r3, #31
200211fa:	f140 8095 	bpl.w	20021328 <dfu_boot_img_in_flash+0x14c>
200211fe:	f44f 7193 	mov.w	r1, #294	@ 0x126
20021202:	f507 7082 	add.w	r0, r7, #260	@ 0x104
20021206:	f000 fd8e 	bl	20021d26 <sifli_sigkey_pub_verify>
2002120a:	b110      	cbz	r0, 20021212 <dfu_boot_img_in_flash+0x36>
2002120c:	2001      	movs	r0, #1
2002120e:	f000 fdd7 	bl	20021dc0 <sifli_secboot_exception>
20021212:	2c07      	cmp	r4, #7
20021214:	f300 8093 	bgt.w	2002133e <dfu_boot_img_in_flash+0x162>
20021218:	2003      	movs	r0, #3
2002121a:	f7ff fedb 	bl	20020fd4 <sifli_hw_efuse_read_bank>
2002121e:	4262      	negs	r2, r4
20021220:	f002 0203 	and.w	r2, r2, #3
20021224:	f004 0303 	and.w	r3, r4, #3
20021228:	bf58      	it	pl
2002122a:	4253      	negpl	r3, r2
2002122c:	2b02      	cmp	r3, #2
2002122e:	f200 8086 	bhi.w	2002133e <dfu_boot_img_in_flash+0x162>
20021232:	4628      	mov	r0, r5
20021234:	f7ff ffbc 	bl	200211b0 <is_addr_in_nor>
20021238:	f241 0308 	movw	r3, #4104	@ 0x1008
2002123c:	4682      	mov	sl, r0
2002123e:	ea4f 2944 	mov.w	r9, r4, lsl #9
20021242:	f8df c12c 	ldr.w	ip, [pc, #300]	@ 20021370 <dfu_boot_img_in_flash+0x194>
20021246:	eb07 0609 	add.w	r6, r7, r9
2002124a:	441e      	add	r6, r3
2002124c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
2002124e:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
20021252:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
20021256:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
2002125a:	f1ba 0f00 	cmp.w	sl, #0
2002125e:	d04b      	beq.n	200212f8 <dfu_boot_img_in_flash+0x11c>
20021260:	f104 0608 	add.w	r6, r4, #8
20021264:	f1ac 0010 	sub.w	r0, ip, #16
20021268:	0276      	lsls	r6, r6, #9
2002126a:	f7ff feef 	bl	2002104c <sifli_hw_init_xip_key>
2002126e:	59ba      	ldr	r2, [r7, r6]
20021270:	f8df a0f0 	ldr.w	sl, [pc, #240]	@ 20021364 <dfu_boot_img_in_flash+0x188>
20021274:	442a      	add	r2, r5
20021276:	2000      	movs	r0, #0
20021278:	f8da b000 	ldr.w	fp, [sl]
2002127c:	9203      	str	r2, [sp, #12]
2002127e:	f7ff ff25 	bl	200210cc <dfu_get_counter>
20021282:	4629      	mov	r1, r5
20021284:	4603      	mov	r3, r0
20021286:	9a03      	ldr	r2, [sp, #12]
20021288:	4658      	mov	r0, fp
2002128a:	f002 f9a6 	bl	200235da <HAL_FLASH_NONCE_CFG>
2002128e:	4629      	mov	r1, r5
20021290:	f8da 0000 	ldr.w	r0, [sl]
20021294:	59ba      	ldr	r2, [r7, r6]
20021296:	eba8 0305 	sub.w	r3, r8, r5
2002129a:	f002 f98d 	bl	200235b8 <HAL_FLASH_ALIAS_CFG>
2002129e:	2101      	movs	r1, #1
200212a0:	f8da 0000 	ldr.w	r0, [sl]
200212a4:	f002 f9b1 	bl	2002360a <HAL_FLASH_AES_CFG>
200212a8:	f104 0308 	add.w	r3, r4, #8
200212ac:	f509 5081 	add.w	r0, r9, #4128	@ 0x1020
200212b0:	025b      	lsls	r3, r3, #9
200212b2:	3008      	adds	r0, #8
200212b4:	462a      	mov	r2, r5
200212b6:	58fb      	ldr	r3, [r7, r3]
200212b8:	4929      	ldr	r1, [pc, #164]	@ (20021360 <dfu_boot_img_in_flash+0x184>)
200212ba:	4438      	add	r0, r7
200212bc:	f000 fd4b 	bl	20021d56 <sifli_img_sig_hash_verify>
200212c0:	b110      	cbz	r0, 200212c8 <dfu_boot_img_in_flash+0xec>
200212c2:	2002      	movs	r0, #2
200212c4:	f000 fd7c 	bl	20021dc0 <sifli_secboot_exception>
200212c8:	f8d5 d000 	ldr.w	sp, [r5]
200212cc:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212d0:	4628      	mov	r0, r5
200212d2:	f7ff ff6d 	bl	200211b0 <is_addr_in_nor>
200212d6:	2800      	cmp	r0, #0
200212d8:	d034      	beq.n	20021344 <dfu_boot_img_in_flash+0x168>
200212da:	4822      	ldr	r0, [pc, #136]	@ (20021364 <dfu_boot_img_in_flash+0x188>)
200212dc:	3408      	adds	r4, #8
200212de:	0264      	lsls	r4, r4, #9
200212e0:	4629      	mov	r1, r5
200212e2:	593a      	ldr	r2, [r7, r4]
200212e4:	6800      	ldr	r0, [r0, #0]
200212e6:	eba8 0305 	sub.w	r3, r8, r5
200212ea:	f002 f965 	bl	200235b8 <HAL_FLASH_ALIAS_CFG>
200212ee:	f8d5 d000 	ldr.w	sp, [r5]
200212f2:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212f6:	e022      	b.n	2002133e <dfu_boot_img_in_flash+0x162>
200212f8:	f1ac 0010 	sub.w	r0, ip, #16
200212fc:	2220      	movs	r2, #32
200212fe:	491a      	ldr	r1, [pc, #104]	@ (20021368 <dfu_boot_img_in_flash+0x18c>)
20021300:	f7ff fecc 	bl	2002109c <sifli_hw_dec_key>
20021304:	f104 0608 	add.w	r6, r4, #8
20021308:	4b18      	ldr	r3, [pc, #96]	@ (2002136c <dfu_boot_img_in_flash+0x190>)
2002130a:	0276      	lsls	r6, r6, #9
2002130c:	4629      	mov	r1, r5
2002130e:	59ba      	ldr	r2, [r7, r6]
20021310:	4640      	mov	r0, r8
20021312:	681b      	ldr	r3, [r3, #0]
20021314:	4798      	blx	r3
20021316:	f8cd a000 	str.w	sl, [sp]
2002131a:	462a      	mov	r2, r5
2002131c:	4629      	mov	r1, r5
2002131e:	59bb      	ldr	r3, [r7, r6]
20021320:	4811      	ldr	r0, [pc, #68]	@ (20021368 <dfu_boot_img_in_flash+0x18c>)
20021322:	f7ff feeb 	bl	200210fc <sifli_hw_dec>
20021326:	e7bf      	b.n	200212a8 <dfu_boot_img_in_flash+0xcc>
20021328:	2c07      	cmp	r4, #7
2002132a:	dc08      	bgt.n	2002133e <dfu_boot_img_in_flash+0x162>
2002132c:	4262      	negs	r2, r4
2002132e:	f002 0203 	and.w	r2, r2, #3
20021332:	f004 0303 	and.w	r3, r4, #3
20021336:	bf58      	it	pl
20021338:	4253      	negpl	r3, r2
2002133a:	2b02      	cmp	r3, #2
2002133c:	d9c8      	bls.n	200212d0 <dfu_boot_img_in_flash+0xf4>
2002133e:	b005      	add	sp, #20
20021340:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021344:	45a8      	cmp	r8, r5
20021346:	d0d2      	beq.n	200212ee <dfu_boot_img_in_flash+0x112>
20021348:	4b08      	ldr	r3, [pc, #32]	@ (2002136c <dfu_boot_img_in_flash+0x190>)
2002134a:	3408      	adds	r4, #8
2002134c:	0264      	lsls	r4, r4, #9
2002134e:	4629      	mov	r1, r5
20021350:	4640      	mov	r0, r8
20021352:	681b      	ldr	r3, [r3, #0]
20021354:	593a      	ldr	r2, [r7, r4]
20021356:	4798      	blx	r3
20021358:	e7c9      	b.n	200212ee <dfu_boot_img_in_flash+0x112>
2002135a:	bf00      	nop
2002135c:	20047300 	.word	0x20047300
20021360:	20047404 	.word	0x20047404
20021364:	20046cf4 	.word	0x20046cf4
20021368:	200472c0 	.word	0x200472c0
2002136c:	20046d00 	.word	0x20046d00
20021370:	200472e0 	.word	0x200472e0

20021374 <boot_images_help>:
20021374:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20021378:	4e40      	ldr	r6, [pc, #256]	@ (2002147c <boot_images_help+0x108>)
2002137a:	4b41      	ldr	r3, [pc, #260]	@ (20021480 <boot_images_help+0x10c>)
2002137c:	6832      	ldr	r2, [r6, #0]
2002137e:	429a      	cmp	r2, r3
20021380:	d179      	bne.n	20021476 <boot_images_help+0x102>
20021382:	2008      	movs	r0, #8
20021384:	f00a ff4e 	bl	2002c224 <HAL_Get_backup>
20021388:	4605      	mov	r5, r0
2002138a:	2005      	movs	r0, #5
2002138c:	f00a ff4a 	bl	2002c224 <HAL_Get_backup>
20021390:	f8df 8104 	ldr.w	r8, [pc, #260]	@ 20021498 <boot_images_help+0x124>
20021394:	493b      	ldr	r1, [pc, #236]	@ (20021484 <boot_images_help+0x110>)
20021396:	4b3c      	ldr	r3, [pc, #240]	@ (20021488 <boot_images_help+0x114>)
20021398:	4607      	mov	r7, r0
2002139a:	f642 4210 	movw	r2, #11280	@ 0x2c10
2002139e:	f04f 5090 	mov.w	r0, #301989888	@ 0x12000000
200213a2:	681b      	ldr	r3, [r3, #0]
200213a4:	f8c8 1000 	str.w	r1, [r8]
200213a8:	f506 5600 	add.w	r6, r6, #8192	@ 0x2000
200213ac:	4798      	blx	r3
200213ae:	4c37      	ldr	r4, [pc, #220]	@ (2002148c <boot_images_help+0x118>)
200213b0:	f8d6 9c08 	ldr.w	r9, [r6, #3080]	@ 0xc08
200213b4:	45a1      	cmp	r9, r4
200213b6:	d13d      	bne.n	20021434 <boot_images_help+0xc0>
200213b8:	b2eb      	uxtb	r3, r5
200213ba:	2b04      	cmp	r3, #4
200213bc:	d015      	beq.n	200213ea <boot_images_help+0x76>
200213be:	2b06      	cmp	r3, #6
200213c0:	d028      	beq.n	20021414 <boot_images_help+0xa0>
200213c2:	2b01      	cmp	r3, #1
200213c4:	d131      	bne.n	2002142a <boot_images_help+0xb6>
200213c6:	f8d6 3c08 	ldr.w	r3, [r6, #3080]	@ 0xc08
200213ca:	1c5a      	adds	r2, r3, #1
200213cc:	d053      	beq.n	20021476 <boot_images_help+0x102>
200213ce:	4a30      	ldr	r2, [pc, #192]	@ (20021490 <boot_images_help+0x11c>)
200213d0:	6814      	ldr	r4, [r2, #0]
200213d2:	1b1c      	subs	r4, r3, r4
200213d4:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
200213d8:	0a64      	lsrs	r4, r4, #9
200213da:	3402      	adds	r4, #2
200213dc:	f7ff fa80 	bl	200208e0 <board_init_psram>
200213e0:	4620      	mov	r0, r4
200213e2:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200213e6:	f7ff bef9 	b.w	200211dc <dfu_boot_img_in_flash>
200213ea:	4c2a      	ldr	r4, [pc, #168]	@ (20021494 <boot_images_help+0x120>)
200213ec:	2008      	movs	r0, #8
200213ee:	2106      	movs	r1, #6
200213f0:	f8c6 4c08 	str.w	r4, [r6, #3080]	@ 0xc08
200213f4:	f00a ff10 	bl	2002c218 <HAL_Set_backup>
200213f8:	f8d8 0000 	ldr.w	r0, [r8]
200213fc:	f500 5300 	add.w	r3, r0, #8192	@ 0x2000
20021400:	f8c3 4c08 	str.w	r4, [r3, #3080]	@ 0xc08
20021404:	b11f      	cbz	r7, 2002140e <boot_images_help+0x9a>
20021406:	f500 5380 	add.w	r3, r0, #4096	@ 0x1000
2002140a:	f8c3 7c00 	str.w	r7, [r3, #3072]	@ 0xc00
2002140e:	f7ff fea9 	bl	20021164 <update_sec_flash>
20021412:	e7d8      	b.n	200213c6 <boot_images_help+0x52>
20021414:	2101      	movs	r1, #1
20021416:	2008      	movs	r0, #8
20021418:	f00a fefe 	bl	2002c218 <HAL_Set_backup>
2002141c:	f8d8 0000 	ldr.w	r0, [r8]
20021420:	f500 5300 	add.w	r3, r0, #8192	@ 0x2000
20021424:	f8c3 9c08 	str.w	r9, [r3, #3080]	@ 0xc08
20021428:	e7f1      	b.n	2002140e <boot_images_help+0x9a>
2002142a:	2101      	movs	r1, #1
2002142c:	2008      	movs	r0, #8
2002142e:	f00a fef3 	bl	2002c218 <HAL_Set_backup>
20021432:	e7c8      	b.n	200213c6 <boot_images_help+0x52>
20021434:	4b17      	ldr	r3, [pc, #92]	@ (20021494 <boot_images_help+0x120>)
20021436:	4599      	cmp	r9, r3
20021438:	d1c5      	bne.n	200213c6 <boot_images_help+0x52>
2002143a:	b2eb      	uxtb	r3, r5
2002143c:	2b03      	cmp	r3, #3
2002143e:	d005      	beq.n	2002144c <boot_images_help+0xd8>
20021440:	2b05      	cmp	r3, #5
20021442:	d016      	beq.n	20021472 <boot_images_help+0xfe>
20021444:	2b02      	cmp	r3, #2
20021446:	d0be      	beq.n	200213c6 <boot_images_help+0x52>
20021448:	2102      	movs	r1, #2
2002144a:	e7ef      	b.n	2002142c <boot_images_help+0xb8>
2002144c:	2008      	movs	r0, #8
2002144e:	2105      	movs	r1, #5
20021450:	f8c6 4c08 	str.w	r4, [r6, #3080]	@ 0xc08
20021454:	f00a fee0 	bl	2002c218 <HAL_Set_backup>
20021458:	f8d8 0000 	ldr.w	r0, [r8]
2002145c:	f500 5300 	add.w	r3, r0, #8192	@ 0x2000
20021460:	f8c3 4c08 	str.w	r4, [r3, #3080]	@ 0xc08
20021464:	2f00      	cmp	r7, #0
20021466:	d0d2      	beq.n	2002140e <boot_images_help+0x9a>
20021468:	f500 5380 	add.w	r3, r0, #4096	@ 0x1000
2002146c:	f8c3 7400 	str.w	r7, [r3, #1024]	@ 0x400
20021470:	e7cd      	b.n	2002140e <boot_images_help+0x9a>
20021472:	2102      	movs	r1, #2
20021474:	e7cf      	b.n	20021416 <boot_images_help+0xa2>
20021476:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002147a:	bf00      	nop
2002147c:	20047300 	.word	0x20047300
20021480:	53454346 	.word	0x53454346
20021484:	20049f18 	.word	0x20049f18
20021488:	20046d00 	.word	0x20046d00
2002148c:	12001400 	.word	0x12001400
20021490:	20046cf0 	.word	0x20046cf0
20021494:	12001c00 	.word	0x12001c00
20021498:	20049f14 	.word	0x20049f14

2002149c <hw_preinit0>:
2002149c:	b508      	push	{r3, lr}
2002149e:	4b0e      	ldr	r3, [pc, #56]	@ (200214d8 <hw_preinit0+0x3c>)
200214a0:	685b      	ldr	r3, [r3, #4]
200214a2:	b2db      	uxtb	r3, r3
200214a4:	2b06      	cmp	r3, #6
200214a6:	d80a      	bhi.n	200214be <hw_preinit0+0x22>
200214a8:	4a0c      	ldr	r2, [pc, #48]	@ (200214dc <hw_preinit0+0x40>)
200214aa:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200214ac:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
200214b0:	f043 0306 	orr.w	r3, r3, #6
200214b4:	6293      	str	r3, [r2, #40]	@ 0x28
200214b6:	6853      	ldr	r3, [r2, #4]
200214b8:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
200214bc:	6053      	str	r3, [r2, #4]
200214be:	2000      	movs	r0, #0
200214c0:	f000 fd77 	bl	20021fb2 <HAL_Delay_us>
200214c4:	4b06      	ldr	r3, [pc, #24]	@ (200214e0 <hw_preinit0+0x44>)
200214c6:	4a07      	ldr	r2, [pc, #28]	@ (200214e4 <hw_preinit0+0x48>)
200214c8:	2000      	movs	r0, #0
200214ca:	605a      	str	r2, [r3, #4]
200214cc:	f7ff fd82 	bl	20020fd4 <sifli_hw_efuse_read_bank>
200214d0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200214d4:	f7ff be5e 	b.w	20021194 <boot_ram>
200214d8:	5000b000 	.word	0x5000b000
200214dc:	500ca000 	.word	0x500ca000
200214e0:	5000c000 	.word	0x5000c000
200214e4:	0002d08f 	.word	0x0002d08f

200214e8 <entry>:
200214e8:	4c14      	ldr	r4, [pc, #80]	@ (2002153c <entry+0x54>)
200214ea:	b508      	push	{r3, lr}
200214ec:	2000      	movs	r0, #0
200214ee:	f000 fd60 	bl	20021fb2 <HAL_Delay_us>
200214f2:	6863      	ldr	r3, [r4, #4]
200214f4:	4d12      	ldr	r5, [pc, #72]	@ (20021540 <entry+0x58>)
200214f6:	b2db      	uxtb	r3, r3
200214f8:	2b06      	cmp	r3, #6
200214fa:	d90f      	bls.n	2002151c <entry+0x34>
200214fc:	f7ff f810 	bl	20020520 <board_flash_power_on>
20021500:	f7fe fefe 	bl	20020300 <HAL_MspInit>
20021504:	f7fe ffee 	bl	200204e4 <board_boot_from>
20021508:	6028      	str	r0, [r5, #0]
2002150a:	68e3      	ldr	r3, [r4, #12]
2002150c:	f023 0301 	bic.w	r3, r3, #1
20021510:	60e3      	str	r3, [r4, #12]
20021512:	f7ff fbdb 	bl	20020ccc <dfu_flash_init>
20021516:	f7ff ff2d 	bl	20021374 <boot_images_help>
2002151a:	e7fe      	b.n	2002151a <entry+0x32>
2002151c:	f7fe ffe2 	bl	200204e4 <board_boot_from>
20021520:	6028      	str	r0, [r5, #0]
20021522:	f7fe fffd 	bl	20020520 <board_flash_power_on>
20021526:	f7fe feeb 	bl	20020300 <HAL_MspInit>
2002152a:	68e3      	ldr	r3, [r4, #12]
2002152c:	f023 0301 	bic.w	r3, r3, #1
20021530:	60e3      	str	r3, [r4, #12]
20021532:	f7ff fbcb 	bl	20020ccc <dfu_flash_init>
20021536:	f7ff ff1d 	bl	20021374 <boot_images_help>
2002153a:	e7ee      	b.n	2002151a <entry+0x32>
2002153c:	5000b000 	.word	0x5000b000
20021540:	20049f10 	.word	0x20049f10

20021544 <sdio_emmc_init>:
20021544:	b570      	push	{r4, r5, r6, lr}
20021546:	b08c      	sub	sp, #48	@ 0x30
20021548:	f000 f968 	bl	2002181c <sd1_init>
2002154c:	4c8d      	ldr	r4, [pc, #564]	@ (20021784 <sdio_emmc_init+0x240>)
2002154e:	4b8e      	ldr	r3, [pc, #568]	@ (20021788 <sdio_emmc_init+0x244>)
20021550:	2500      	movs	r5, #0
20021552:	6323      	str	r3, [r4, #48]	@ 0x30
20021554:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021556:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
2002155a:	f043 0302 	orr.w	r3, r3, #2
2002155e:	6323      	str	r3, [r4, #48]	@ 0x30
20021560:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021564:	62e5      	str	r5, [r4, #44]	@ 0x2c
20021566:	6223      	str	r3, [r4, #32]
20021568:	f000 fd23 	bl	20021fb2 <HAL_Delay_us>
2002156c:	4629      	mov	r1, r5
2002156e:	4628      	mov	r0, r5
20021570:	f000 f986 	bl	20021880 <sd1_send_cmd>
20021574:	2301      	movs	r3, #1
20021576:	65e3      	str	r3, [r4, #92]	@ 0x5c
20021578:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
2002157a:	079d      	lsls	r5, r3, #30
2002157c:	d5fc      	bpl.n	20021578 <sdio_emmc_init+0x34>
2002157e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021580:	f043 0320 	orr.w	r3, r3, #32
20021584:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021586:	4981      	ldr	r1, [pc, #516]	@ (2002178c <sdio_emmc_init+0x248>)
20021588:	2001      	movs	r0, #1
2002158a:	ad07      	add	r5, sp, #28
2002158c:	f000 f978 	bl	20021880 <sd1_send_cmd>
20021590:	ab06      	add	r3, sp, #24
20021592:	aa05      	add	r2, sp, #20
20021594:	a904      	add	r1, sp, #16
20021596:	f10d 000f 	add.w	r0, sp, #15
2002159a:	9500      	str	r5, [sp, #0]
2002159c:	f000 f9ae 	bl	200218fc <sd1_get_rsp>
200215a0:	2014      	movs	r0, #20
200215a2:	f000 fd06 	bl	20021fb2 <HAL_Delay_us>
200215a6:	9b04      	ldr	r3, [sp, #16]
200215a8:	2b00      	cmp	r3, #0
200215aa:	daec      	bge.n	20021586 <sdio_emmc_init+0x42>
200215ac:	2014      	movs	r0, #20
200215ae:	f000 fd00 	bl	20021fb2 <HAL_Delay_us>
200215b2:	2100      	movs	r1, #0
200215b4:	2002      	movs	r0, #2
200215b6:	f000 f963 	bl	20021880 <sd1_send_cmd>
200215ba:	2801      	cmp	r0, #1
200215bc:	f000 8081 	beq.w	200216c2 <sdio_emmc_init+0x17e>
200215c0:	2802      	cmp	r0, #2
200215c2:	d07e      	beq.n	200216c2 <sdio_emmc_init+0x17e>
200215c4:	ab08      	add	r3, sp, #32
200215c6:	aa0a      	add	r2, sp, #40	@ 0x28
200215c8:	a90b      	add	r1, sp, #44	@ 0x2c
200215ca:	9300      	str	r3, [sp, #0]
200215cc:	f10d 000f 	add.w	r0, sp, #15
200215d0:	ab09      	add	r3, sp, #36	@ 0x24
200215d2:	f000 f993 	bl	200218fc <sd1_get_rsp>
200215d6:	2014      	movs	r0, #20
200215d8:	f000 fceb 	bl	20021fb2 <HAL_Delay_us>
200215dc:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200215e0:	2003      	movs	r0, #3
200215e2:	f000 f94d 	bl	20021880 <sd1_send_cmd>
200215e6:	2801      	cmp	r0, #1
200215e8:	f000 80ab 	beq.w	20021742 <sdio_emmc_init+0x1fe>
200215ec:	2802      	cmp	r0, #2
200215ee:	f000 80aa 	beq.w	20021746 <sdio_emmc_init+0x202>
200215f2:	ab06      	add	r3, sp, #24
200215f4:	9500      	str	r5, [sp, #0]
200215f6:	aa05      	add	r2, sp, #20
200215f8:	a904      	add	r1, sp, #16
200215fa:	f10d 000f 	add.w	r0, sp, #15
200215fe:	f000 f97d 	bl	200218fc <sd1_get_rsp>
20021602:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021606:	2b03      	cmp	r3, #3
20021608:	f040 809f 	bne.w	2002174a <sdio_emmc_init+0x206>
2002160c:	4c5d      	ldr	r4, [pc, #372]	@ (20021784 <sdio_emmc_init+0x240>)
2002160e:	2014      	movs	r0, #20
20021610:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021612:	f023 0320 	bic.w	r3, r3, #32
20021616:	63e3      	str	r3, [r4, #60]	@ 0x3c
20021618:	f000 fccb 	bl	20021fb2 <HAL_Delay_us>
2002161c:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021620:	2009      	movs	r0, #9
20021622:	f000 f92d 	bl	20021880 <sd1_send_cmd>
20021626:	2801      	cmp	r0, #1
20021628:	f000 8091 	beq.w	2002174e <sdio_emmc_init+0x20a>
2002162c:	2802      	cmp	r0, #2
2002162e:	f000 8090 	beq.w	20021752 <sdio_emmc_init+0x20e>
20021632:	aa05      	add	r2, sp, #20
20021634:	a904      	add	r1, sp, #16
20021636:	ab06      	add	r3, sp, #24
20021638:	f10d 000f 	add.w	r0, sp, #15
2002163c:	9500      	str	r5, [sp, #0]
2002163e:	f000 f95d 	bl	200218fc <sd1_get_rsp>
20021642:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
20021646:	6323      	str	r3, [r4, #48]	@ 0x30
20021648:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002164a:	2014      	movs	r0, #20
2002164c:	f043 0302 	orr.w	r3, r3, #2
20021650:	6323      	str	r3, [r4, #48]	@ 0x30
20021652:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021656:	6223      	str	r3, [r4, #32]
20021658:	2302      	movs	r3, #2
2002165a:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002165c:	f000 fca9 	bl	20021fb2 <HAL_Delay_us>
20021660:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021664:	2007      	movs	r0, #7
20021666:	f000 f90b 	bl	20021880 <sd1_send_cmd>
2002166a:	2801      	cmp	r0, #1
2002166c:	d073      	beq.n	20021756 <sdio_emmc_init+0x212>
2002166e:	2802      	cmp	r0, #2
20021670:	d073      	beq.n	2002175a <sdio_emmc_init+0x216>
20021672:	ab06      	add	r3, sp, #24
20021674:	9500      	str	r5, [sp, #0]
20021676:	aa05      	add	r2, sp, #20
20021678:	a904      	add	r1, sp, #16
2002167a:	f10d 000f 	add.w	r0, sp, #15
2002167e:	f000 f93d 	bl	200218fc <sd1_get_rsp>
20021682:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021686:	2b07      	cmp	r3, #7
20021688:	d169      	bne.n	2002175e <sdio_emmc_init+0x21a>
2002168a:	f04f 33ff 	mov.w	r3, #4294967295
2002168e:	2101      	movs	r1, #1
20021690:	2000      	movs	r0, #0
20021692:	6023      	str	r3, [r4, #0]
20021694:	f000 f942 	bl	2002191c <sd1_read>
20021698:	2100      	movs	r1, #0
2002169a:	2008      	movs	r0, #8
2002169c:	f000 f8f0 	bl	20021880 <sd1_send_cmd>
200216a0:	2801      	cmp	r0, #1
200216a2:	d05e      	beq.n	20021762 <sdio_emmc_init+0x21e>
200216a4:	2802      	cmp	r0, #2
200216a6:	d05e      	beq.n	20021766 <sdio_emmc_init+0x222>
200216a8:	ab06      	add	r3, sp, #24
200216aa:	9500      	str	r5, [sp, #0]
200216ac:	aa05      	add	r2, sp, #20
200216ae:	a904      	add	r1, sp, #16
200216b0:	f10d 000f 	add.w	r0, sp, #15
200216b4:	f000 f922 	bl	200218fc <sd1_get_rsp>
200216b8:	f89d 300f 	ldrb.w	r3, [sp, #15]
200216bc:	2b08      	cmp	r3, #8
200216be:	d002      	beq.n	200216c6 <sdio_emmc_init+0x182>
200216c0:	200d      	movs	r0, #13
200216c2:	b00c      	add	sp, #48	@ 0x30
200216c4:	bd70      	pop	{r4, r5, r6, pc}
200216c6:	2320      	movs	r3, #32
200216c8:	62e3      	str	r3, [r4, #44]	@ 0x2c
200216ca:	f000 f937 	bl	2002193c <sd1_wait_read>
200216ce:	6823      	ldr	r3, [r4, #0]
200216d0:	0618      	lsls	r0, r3, #24
200216d2:	d4f5      	bmi.n	200216c0 <sdio_emmc_init+0x17c>
200216d4:	6823      	ldr	r3, [r4, #0]
200216d6:	0659      	lsls	r1, r3, #25
200216d8:	d447      	bmi.n	2002176a <sdio_emmc_init+0x226>
200216da:	2680      	movs	r6, #128	@ 0x80
200216dc:	3e01      	subs	r6, #1
200216de:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
200216e2:	d1fb      	bne.n	200216dc <sdio_emmc_init+0x198>
200216e4:	2101      	movs	r1, #1
200216e6:	4630      	mov	r0, r6
200216e8:	f000 f918 	bl	2002191c <sd1_read>
200216ec:	2014      	movs	r0, #20
200216ee:	f000 fc60 	bl	20021fb2 <HAL_Delay_us>
200216f2:	f04f 33ff 	mov.w	r3, #4294967295
200216f6:	4631      	mov	r1, r6
200216f8:	2011      	movs	r0, #17
200216fa:	6023      	str	r3, [r4, #0]
200216fc:	f000 f8c0 	bl	20021880 <sd1_send_cmd>
20021700:	2801      	cmp	r0, #1
20021702:	d034      	beq.n	2002176e <sdio_emmc_init+0x22a>
20021704:	2802      	cmp	r0, #2
20021706:	d034      	beq.n	20021772 <sdio_emmc_init+0x22e>
20021708:	ab06      	add	r3, sp, #24
2002170a:	9500      	str	r5, [sp, #0]
2002170c:	aa05      	add	r2, sp, #20
2002170e:	a904      	add	r1, sp, #16
20021710:	f10d 000f 	add.w	r0, sp, #15
20021714:	f000 f8f2 	bl	200218fc <sd1_get_rsp>
20021718:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002171c:	2b11      	cmp	r3, #17
2002171e:	d12a      	bne.n	20021776 <sdio_emmc_init+0x232>
20021720:	2320      	movs	r3, #32
20021722:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021724:	f000 f90a 	bl	2002193c <sd1_wait_read>
20021728:	6823      	ldr	r3, [r4, #0]
2002172a:	061a      	lsls	r2, r3, #24
2002172c:	d425      	bmi.n	2002177a <sdio_emmc_init+0x236>
2002172e:	6823      	ldr	r3, [r4, #0]
20021730:	065b      	lsls	r3, r3, #25
20021732:	d424      	bmi.n	2002177e <sdio_emmc_init+0x23a>
20021734:	2080      	movs	r0, #128	@ 0x80
20021736:	4b13      	ldr	r3, [pc, #76]	@ (20021784 <sdio_emmc_init+0x240>)
20021738:	3801      	subs	r0, #1
2002173a:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
2002173e:	d1fb      	bne.n	20021738 <sdio_emmc_init+0x1f4>
20021740:	e7bf      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021742:	2003      	movs	r0, #3
20021744:	e7bd      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021746:	2004      	movs	r0, #4
20021748:	e7bb      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002174a:	2005      	movs	r0, #5
2002174c:	e7b9      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002174e:	2006      	movs	r0, #6
20021750:	e7b7      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021752:	2007      	movs	r0, #7
20021754:	e7b5      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021756:	2008      	movs	r0, #8
20021758:	e7b3      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002175a:	2009      	movs	r0, #9
2002175c:	e7b1      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002175e:	200a      	movs	r0, #10
20021760:	e7af      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021762:	200b      	movs	r0, #11
20021764:	e7ad      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021766:	200c      	movs	r0, #12
20021768:	e7ab      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002176a:	200e      	movs	r0, #14
2002176c:	e7a9      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002176e:	2011      	movs	r0, #17
20021770:	e7a7      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021772:	2012      	movs	r0, #18
20021774:	e7a5      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021776:	2013      	movs	r0, #19
20021778:	e7a3      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002177a:	2014      	movs	r0, #20
2002177c:	e7a1      	b.n	200216c2 <sdio_emmc_init+0x17e>
2002177e:	2015      	movs	r0, #21
20021780:	e79f      	b.n	200216c2 <sdio_emmc_init+0x17e>
20021782:	bf00      	nop
20021784:	50045000 	.word	0x50045000
20021788:	00016700 	.word	0x00016700
2002178c:	40000080 	.word	0x40000080

20021790 <emmc_read_data>:
20021790:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20021794:	4607      	mov	r7, r0
20021796:	f04f 38ff 	mov.w	r8, #4294967295
2002179a:	b088      	sub	sp, #32
2002179c:	2000      	movs	r0, #0
2002179e:	460d      	mov	r5, r1
200217a0:	4e1d      	ldr	r6, [pc, #116]	@ (20021818 <emmc_read_data+0x88>)
200217a2:	2101      	movs	r1, #1
200217a4:	4614      	mov	r4, r2
200217a6:	f000 f8b9 	bl	2002191c <sd1_read>
200217aa:	2014      	movs	r0, #20
200217ac:	f000 fc01 	bl	20021fb2 <HAL_Delay_us>
200217b0:	2011      	movs	r0, #17
200217b2:	f8c6 8000 	str.w	r8, [r6]
200217b6:	0a79      	lsrs	r1, r7, #9
200217b8:	f000 f862 	bl	20021880 <sd1_send_cmd>
200217bc:	4440      	add	r0, r8
200217be:	b2c0      	uxtb	r0, r0
200217c0:	2801      	cmp	r0, #1
200217c2:	d803      	bhi.n	200217cc <emmc_read_data+0x3c>
200217c4:	2000      	movs	r0, #0
200217c6:	b008      	add	sp, #32
200217c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200217cc:	ab07      	add	r3, sp, #28
200217ce:	9300      	str	r3, [sp, #0]
200217d0:	aa05      	add	r2, sp, #20
200217d2:	ab06      	add	r3, sp, #24
200217d4:	a904      	add	r1, sp, #16
200217d6:	f10d 000f 	add.w	r0, sp, #15
200217da:	f000 f88f 	bl	200218fc <sd1_get_rsp>
200217de:	f89d 300f 	ldrb.w	r3, [sp, #15]
200217e2:	2b11      	cmp	r3, #17
200217e4:	d1ee      	bne.n	200217c4 <emmc_read_data+0x34>
200217e6:	2320      	movs	r3, #32
200217e8:	f8c6 8000 	str.w	r8, [r6]
200217ec:	62f3      	str	r3, [r6, #44]	@ 0x2c
200217ee:	f000 f8a5 	bl	2002193c <sd1_wait_read>
200217f2:	6833      	ldr	r3, [r6, #0]
200217f4:	061a      	lsls	r2, r3, #24
200217f6:	d4e5      	bmi.n	200217c4 <emmc_read_data+0x34>
200217f8:	6833      	ldr	r3, [r6, #0]
200217fa:	065b      	lsls	r3, r3, #25
200217fc:	d4e2      	bmi.n	200217c4 <emmc_read_data+0x34>
200217fe:	f024 0303 	bic.w	r3, r4, #3
20021802:	442b      	add	r3, r5
20021804:	429d      	cmp	r5, r3
20021806:	d101      	bne.n	2002180c <emmc_read_data+0x7c>
20021808:	4620      	mov	r0, r4
2002180a:	e7dc      	b.n	200217c6 <emmc_read_data+0x36>
2002180c:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021810:	f845 2b04 	str.w	r2, [r5], #4
20021814:	e7f6      	b.n	20021804 <emmc_read_data+0x74>
20021816:	bf00      	nop
20021818:	50045000 	.word	0x50045000

2002181c <sd1_init>:
2002181c:	b510      	push	{r4, lr}
2002181e:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
20021822:	68e3      	ldr	r3, [r4, #12]
20021824:	2064      	movs	r0, #100	@ 0x64
20021826:	f023 0310 	bic.w	r3, r3, #16
2002182a:	60e3      	str	r3, [r4, #12]
2002182c:	f000 fbc1 	bl	20021fb2 <HAL_Delay_us>
20021830:	68e3      	ldr	r3, [r4, #12]
20021832:	4a07      	ldr	r2, [pc, #28]	@ (20021850 <sd1_init+0x34>)
20021834:	f043 0310 	orr.w	r3, r3, #16
20021838:	60e3      	str	r3, [r4, #12]
2002183a:	6913      	ldr	r3, [r2, #16]
2002183c:	f043 0302 	orr.w	r3, r3, #2
20021840:	6113      	str	r3, [r2, #16]
20021842:	f44f 7280 	mov.w	r2, #256	@ 0x100
20021846:	4b03      	ldr	r3, [pc, #12]	@ (20021854 <sd1_init+0x38>)
20021848:	631a      	str	r2, [r3, #48]	@ 0x30
2002184a:	2200      	movs	r2, #0
2002184c:	63da      	str	r2, [r3, #60]	@ 0x3c
2002184e:	bd10      	pop	{r4, pc}
20021850:	5000b000 	.word	0x5000b000
20021854:	50045000 	.word	0x50045000

20021858 <sd1_wait_cmd>:
20021858:	4b08      	ldr	r3, [pc, #32]	@ (2002187c <sd1_wait_cmd+0x24>)
2002185a:	681a      	ldr	r2, [r3, #0]
2002185c:	f012 0f0a 	tst.w	r2, #10
20021860:	d0fb      	beq.n	2002185a <sd1_wait_cmd+0x2>
20021862:	2202      	movs	r2, #2
20021864:	601a      	str	r2, [r3, #0]
20021866:	681a      	ldr	r2, [r3, #0]
20021868:	0712      	lsls	r2, r2, #28
2002186a:	bf5f      	itttt	pl
2002186c:	6818      	ldrpl	r0, [r3, #0]
2002186e:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
20021872:	0040      	lslpl	r0, r0, #1
20021874:	b2c0      	uxtbpl	r0, r0
20021876:	bf48      	it	mi
20021878:	2001      	movmi	r0, #1
2002187a:	4770      	bx	lr
2002187c:	50045000 	.word	0x50045000

20021880 <sd1_send_cmd>:
20021880:	4b0e      	ldr	r3, [pc, #56]	@ (200218bc <sd1_send_cmd+0x3c>)
20021882:	280f      	cmp	r0, #15
20021884:	6099      	str	r1, [r3, #8]
20021886:	ea4f 4380 	mov.w	r3, r0, lsl #18
2002188a:	d813      	bhi.n	200218b4 <sd1_send_cmd+0x34>
2002188c:	2201      	movs	r2, #1
2002188e:	f248 0111 	movw	r1, #32785	@ 0x8011
20021892:	4082      	lsls	r2, r0
20021894:	420a      	tst	r2, r1
20021896:	d105      	bne.n	200218a4 <sd1_send_cmd+0x24>
20021898:	f240 6104 	movw	r1, #1540	@ 0x604
2002189c:	420a      	tst	r2, r1
2002189e:	d009      	beq.n	200218b4 <sd1_send_cmd+0x34>
200218a0:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
200218a4:	4a05      	ldr	r2, [pc, #20]	@ (200218bc <sd1_send_cmd+0x3c>)
200218a6:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
200218aa:	f043 0301 	orr.w	r3, r3, #1
200218ae:	6053      	str	r3, [r2, #4]
200218b0:	f7ff bfd2 	b.w	20021858 <sd1_wait_cmd>
200218b4:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
200218b8:	e7f4      	b.n	200218a4 <sd1_send_cmd+0x24>
200218ba:	bf00      	nop
200218bc:	50045000 	.word	0x50045000

200218c0 <sd1_send_acmd>:
200218c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200218c2:	4605      	mov	r5, r0
200218c4:	460f      	mov	r7, r1
200218c6:	2037      	movs	r0, #55	@ 0x37
200218c8:	0411      	lsls	r1, r2, #16
200218ca:	f7ff ffd9 	bl	20021880 <sd1_send_cmd>
200218ce:	4604      	mov	r4, r0
200218d0:	b968      	cbnz	r0, 200218ee <sd1_send_acmd+0x2e>
200218d2:	4b08      	ldr	r3, [pc, #32]	@ (200218f4 <sd1_send_acmd+0x34>)
200218d4:	4e08      	ldr	r6, [pc, #32]	@ (200218f8 <sd1_send_acmd+0x38>)
200218d6:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
200218da:	60b7      	str	r7, [r6, #8]
200218dc:	6073      	str	r3, [r6, #4]
200218de:	f7ff ffbb 	bl	20021858 <sd1_wait_cmd>
200218e2:	2802      	cmp	r0, #2
200218e4:	d104      	bne.n	200218f0 <sd1_send_acmd+0x30>
200218e6:	2d29      	cmp	r5, #41	@ 0x29
200218e8:	d102      	bne.n	200218f0 <sd1_send_acmd+0x30>
200218ea:	2304      	movs	r3, #4
200218ec:	6033      	str	r3, [r6, #0]
200218ee:	4620      	mov	r0, r4
200218f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200218f2:	bf00      	nop
200218f4:	00010101 	.word	0x00010101
200218f8:	50045000 	.word	0x50045000

200218fc <sd1_get_rsp>:
200218fc:	b530      	push	{r4, r5, lr}
200218fe:	4c06      	ldr	r4, [pc, #24]	@ (20021918 <sd1_get_rsp+0x1c>)
20021900:	68e5      	ldr	r5, [r4, #12]
20021902:	7005      	strb	r5, [r0, #0]
20021904:	6920      	ldr	r0, [r4, #16]
20021906:	6008      	str	r0, [r1, #0]
20021908:	6961      	ldr	r1, [r4, #20]
2002190a:	6011      	str	r1, [r2, #0]
2002190c:	69a2      	ldr	r2, [r4, #24]
2002190e:	601a      	str	r2, [r3, #0]
20021910:	69e2      	ldr	r2, [r4, #28]
20021912:	9b03      	ldr	r3, [sp, #12]
20021914:	601a      	str	r2, [r3, #0]
20021916:	bd30      	pop	{r4, r5, pc}
20021918:	50045000 	.word	0x50045000

2002191c <sd1_read>:
2002191c:	f04f 33ff 	mov.w	r3, #4294967295
20021920:	4a04      	ldr	r2, [pc, #16]	@ (20021934 <sd1_read+0x18>)
20021922:	eb03 2341 	add.w	r3, r3, r1, lsl #9
20021926:	6293      	str	r3, [r2, #40]	@ 0x28
20021928:	4b03      	ldr	r3, [pc, #12]	@ (20021938 <sd1_read+0x1c>)
2002192a:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
2002192e:	6253      	str	r3, [r2, #36]	@ 0x24
20021930:	4770      	bx	lr
20021932:	bf00      	nop
20021934:	50045000 	.word	0x50045000
20021938:	01ff0301 	.word	0x01ff0301

2002193c <sd1_wait_read>:
2002193c:	4b08      	ldr	r3, [pc, #32]	@ (20021960 <sd1_wait_read+0x24>)
2002193e:	681a      	ldr	r2, [r3, #0]
20021940:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
20021944:	d0fb      	beq.n	2002193e <sd1_wait_read+0x2>
20021946:	2220      	movs	r2, #32
20021948:	601a      	str	r2, [r3, #0]
2002194a:	681a      	ldr	r2, [r3, #0]
2002194c:	0612      	lsls	r2, r2, #24
2002194e:	bf5f      	itttt	pl
20021950:	6818      	ldrpl	r0, [r3, #0]
20021952:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
20021956:	0040      	lslpl	r0, r0, #1
20021958:	b2c0      	uxtbpl	r0, r0
2002195a:	bf48      	it	mi
2002195c:	2001      	movmi	r0, #1
2002195e:	4770      	bx	lr
20021960:	50045000 	.word	0x50045000

20021964 <sdmmc1_sdnand>:
20021964:	b5f0      	push	{r4, r5, r6, r7, lr}
20021966:	b08d      	sub	sp, #52	@ 0x34
20021968:	f7ff ff58 	bl	2002181c <sd1_init>
2002196c:	4c8f      	ldr	r4, [pc, #572]	@ (20021bac <sdmmc1_sdnand+0x248>)
2002196e:	4b90      	ldr	r3, [pc, #576]	@ (20021bb0 <sdmmc1_sdnand+0x24c>)
20021970:	2500      	movs	r5, #0
20021972:	6323      	str	r3, [r4, #48]	@ 0x30
20021974:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021976:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
2002197a:	f043 0302 	orr.w	r3, r3, #2
2002197e:	6323      	str	r3, [r4, #48]	@ 0x30
20021980:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
20021984:	62e5      	str	r5, [r4, #44]	@ 0x2c
20021986:	6223      	str	r3, [r4, #32]
20021988:	f000 fb13 	bl	20021fb2 <HAL_Delay_us>
2002198c:	4629      	mov	r1, r5
2002198e:	4628      	mov	r0, r5
20021990:	f7ff ff76 	bl	20021880 <sd1_send_cmd>
20021994:	2301      	movs	r3, #1
20021996:	65e3      	str	r3, [r4, #92]	@ 0x5c
20021998:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
2002199a:	079a      	lsls	r2, r3, #30
2002199c:	d5fc      	bpl.n	20021998 <sdmmc1_sdnand+0x34>
2002199e:	2014      	movs	r0, #20
200219a0:	f000 fb07 	bl	20021fb2 <HAL_Delay_us>
200219a4:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
200219a8:	2008      	movs	r0, #8
200219aa:	f7ff ff69 	bl	20021880 <sd1_send_cmd>
200219ae:	3801      	subs	r0, #1
200219b0:	b2c0      	uxtb	r0, r0
200219b2:	2801      	cmp	r0, #1
200219b4:	d802      	bhi.n	200219bc <sdmmc1_sdnand+0x58>
200219b6:	2038      	movs	r0, #56	@ 0x38
200219b8:	b00d      	add	sp, #52	@ 0x34
200219ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
200219bc:	ac07      	add	r4, sp, #28
200219be:	ab06      	add	r3, sp, #24
200219c0:	9400      	str	r4, [sp, #0]
200219c2:	aa05      	add	r2, sp, #20
200219c4:	a904      	add	r1, sp, #16
200219c6:	f10d 000f 	add.w	r0, sp, #15
200219ca:	f7ff ff97 	bl	200218fc <sd1_get_rsp>
200219ce:	f89d 300f 	ldrb.w	r3, [sp, #15]
200219d2:	2b08      	cmp	r3, #8
200219d4:	d1ef      	bne.n	200219b6 <sdmmc1_sdnand+0x52>
200219d6:	9b04      	ldr	r3, [sp, #16]
200219d8:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
200219dc:	d1eb      	bne.n	200219b6 <sdmmc1_sdnand+0x52>
200219de:	2014      	movs	r0, #20
200219e0:	f000 fae7 	bl	20021fb2 <HAL_Delay_us>
200219e4:	2200      	movs	r2, #0
200219e6:	2029      	movs	r0, #41	@ 0x29
200219e8:	4972      	ldr	r1, [pc, #456]	@ (20021bb4 <sdmmc1_sdnand+0x250>)
200219ea:	f7ff ff69 	bl	200218c0 <sd1_send_acmd>
200219ee:	2801      	cmp	r0, #1
200219f0:	f000 80d0 	beq.w	20021b94 <sdmmc1_sdnand+0x230>
200219f4:	ab06      	add	r3, sp, #24
200219f6:	9400      	str	r4, [sp, #0]
200219f8:	aa05      	add	r2, sp, #20
200219fa:	a904      	add	r1, sp, #16
200219fc:	f10d 000f 	add.w	r0, sp, #15
20021a00:	f7ff ff7c 	bl	200218fc <sd1_get_rsp>
20021a04:	9b04      	ldr	r3, [sp, #16]
20021a06:	2b00      	cmp	r3, #0
20021a08:	db03      	blt.n	20021a12 <sdmmc1_sdnand+0xae>
20021a0a:	2002      	movs	r0, #2
20021a0c:	f000 fad1 	bl	20021fb2 <HAL_Delay_us>
20021a10:	e7e5      	b.n	200219de <sdmmc1_sdnand+0x7a>
20021a12:	2014      	movs	r0, #20
20021a14:	f000 facd 	bl	20021fb2 <HAL_Delay_us>
20021a18:	2100      	movs	r1, #0
20021a1a:	2002      	movs	r0, #2
20021a1c:	f7ff ff30 	bl	20021880 <sd1_send_cmd>
20021a20:	3801      	subs	r0, #1
20021a22:	b2c0      	uxtb	r0, r0
20021a24:	2801      	cmp	r0, #1
20021a26:	f240 80b7 	bls.w	20021b98 <sdmmc1_sdnand+0x234>
20021a2a:	ab08      	add	r3, sp, #32
20021a2c:	aa0a      	add	r2, sp, #40	@ 0x28
20021a2e:	a90b      	add	r1, sp, #44	@ 0x2c
20021a30:	9300      	str	r3, [sp, #0]
20021a32:	f10d 000f 	add.w	r0, sp, #15
20021a36:	ab09      	add	r3, sp, #36	@ 0x24
20021a38:	f7ff ff60 	bl	200218fc <sd1_get_rsp>
20021a3c:	2014      	movs	r0, #20
20021a3e:	f000 fab8 	bl	20021fb2 <HAL_Delay_us>
20021a42:	2100      	movs	r1, #0
20021a44:	2003      	movs	r0, #3
20021a46:	f7ff ff1b 	bl	20021880 <sd1_send_cmd>
20021a4a:	3801      	subs	r0, #1
20021a4c:	b2c0      	uxtb	r0, r0
20021a4e:	2801      	cmp	r0, #1
20021a50:	d801      	bhi.n	20021a56 <sdmmc1_sdnand+0xf2>
20021a52:	2033      	movs	r0, #51	@ 0x33
20021a54:	e7b0      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021a56:	ab06      	add	r3, sp, #24
20021a58:	9400      	str	r4, [sp, #0]
20021a5a:	aa05      	add	r2, sp, #20
20021a5c:	a904      	add	r1, sp, #16
20021a5e:	f10d 000f 	add.w	r0, sp, #15
20021a62:	f7ff ff4b 	bl	200218fc <sd1_get_rsp>
20021a66:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a6a:	2b03      	cmp	r3, #3
20021a6c:	d1f1      	bne.n	20021a52 <sdmmc1_sdnand+0xee>
20021a6e:	9e04      	ldr	r6, [sp, #16]
20021a70:	2014      	movs	r0, #20
20021a72:	0c35      	lsrs	r5, r6, #16
20021a74:	042d      	lsls	r5, r5, #16
20021a76:	f000 fa9c 	bl	20021fb2 <HAL_Delay_us>
20021a7a:	4629      	mov	r1, r5
20021a7c:	2009      	movs	r0, #9
20021a7e:	f7ff feff 	bl	20021880 <sd1_send_cmd>
20021a82:	3801      	subs	r0, #1
20021a84:	b2c0      	uxtb	r0, r0
20021a86:	2801      	cmp	r0, #1
20021a88:	f240 8088 	bls.w	20021b9c <sdmmc1_sdnand+0x238>
20021a8c:	9400      	str	r4, [sp, #0]
20021a8e:	ab06      	add	r3, sp, #24
20021a90:	aa05      	add	r2, sp, #20
20021a92:	a904      	add	r1, sp, #16
20021a94:	f10d 000f 	add.w	r0, sp, #15
20021a98:	f7ff ff30 	bl	200218fc <sd1_get_rsp>
20021a9c:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
20021aa0:	9c06      	ldr	r4, [sp, #24]
20021aa2:	9907      	ldr	r1, [sp, #28]
20021aa4:	0e23      	lsrs	r3, r4, #24
20021aa6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
20021aaa:	0e01      	lsrs	r1, r0, #24
20021aac:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
20021ab0:	9105      	str	r1, [sp, #20]
20021ab2:	0e11      	lsrs	r1, r2, #24
20021ab4:	9304      	str	r3, [sp, #16]
20021ab6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
20021aba:	0212      	lsls	r2, r2, #8
20021abc:	0f9b      	lsrs	r3, r3, #30
20021abe:	9106      	str	r1, [sp, #24]
20021ac0:	9207      	str	r2, [sp, #28]
20021ac2:	d01e      	beq.n	20021b02 <sdmmc1_sdnand+0x19e>
20021ac4:	2b01      	cmp	r3, #1
20021ac6:	d16b      	bne.n	20021ba0 <sdmmc1_sdnand+0x23c>
20021ac8:	2300      	movs	r3, #0
20021aca:	4a3b      	ldr	r2, [pc, #236]	@ (20021bb8 <sdmmc1_sdnand+0x254>)
20021acc:	4c37      	ldr	r4, [pc, #220]	@ (20021bac <sdmmc1_sdnand+0x248>)
20021ace:	7013      	strb	r3, [r2, #0]
20021ad0:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
20021ad4:	6323      	str	r3, [r4, #48]	@ 0x30
20021ad6:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021ad8:	2702      	movs	r7, #2
20021ada:	f043 0302 	orr.w	r3, r3, #2
20021ade:	6323      	str	r3, [r4, #48]	@ 0x30
20021ae0:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021ae4:	2014      	movs	r0, #20
20021ae6:	6223      	str	r3, [r4, #32]
20021ae8:	63e7      	str	r7, [r4, #60]	@ 0x3c
20021aea:	f000 fa62 	bl	20021fb2 <HAL_Delay_us>
20021aee:	4629      	mov	r1, r5
20021af0:	2007      	movs	r0, #7
20021af2:	f7ff fec5 	bl	20021880 <sd1_send_cmd>
20021af6:	3801      	subs	r0, #1
20021af8:	b2c0      	uxtb	r0, r0
20021afa:	2801      	cmp	r0, #1
20021afc:	d803      	bhi.n	20021b06 <sdmmc1_sdnand+0x1a2>
20021afe:	2037      	movs	r0, #55	@ 0x37
20021b00:	e75a      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021b02:	2301      	movs	r3, #1
20021b04:	e7e1      	b.n	20021aca <sdmmc1_sdnand+0x166>
20021b06:	ad07      	add	r5, sp, #28
20021b08:	ab06      	add	r3, sp, #24
20021b0a:	9500      	str	r5, [sp, #0]
20021b0c:	aa05      	add	r2, sp, #20
20021b0e:	a904      	add	r1, sp, #16
20021b10:	f10d 000f 	add.w	r0, sp, #15
20021b14:	f7ff fef2 	bl	200218fc <sd1_get_rsp>
20021b18:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b1c:	2b07      	cmp	r3, #7
20021b1e:	d1ee      	bne.n	20021afe <sdmmc1_sdnand+0x19a>
20021b20:	2014      	movs	r0, #20
20021b22:	f000 fa46 	bl	20021fb2 <HAL_Delay_us>
20021b26:	4639      	mov	r1, r7
20021b28:	2006      	movs	r0, #6
20021b2a:	0c32      	lsrs	r2, r6, #16
20021b2c:	f7ff fec8 	bl	200218c0 <sd1_send_acmd>
20021b30:	3801      	subs	r0, #1
20021b32:	b2c0      	uxtb	r0, r0
20021b34:	2801      	cmp	r0, #1
20021b36:	d935      	bls.n	20021ba4 <sdmmc1_sdnand+0x240>
20021b38:	2101      	movs	r1, #1
20021b3a:	4608      	mov	r0, r1
20021b3c:	f7ff feee 	bl	2002191c <sd1_read>
20021b40:	2014      	movs	r0, #20
20021b42:	f000 fa36 	bl	20021fb2 <HAL_Delay_us>
20021b46:	2100      	movs	r1, #0
20021b48:	2011      	movs	r0, #17
20021b4a:	f7ff fe99 	bl	20021880 <sd1_send_cmd>
20021b4e:	3801      	subs	r0, #1
20021b50:	b2c0      	uxtb	r0, r0
20021b52:	2801      	cmp	r0, #1
20021b54:	d801      	bhi.n	20021b5a <sdmmc1_sdnand+0x1f6>
20021b56:	2052      	movs	r0, #82	@ 0x52
20021b58:	e72e      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021b5a:	ab06      	add	r3, sp, #24
20021b5c:	9500      	str	r5, [sp, #0]
20021b5e:	aa05      	add	r2, sp, #20
20021b60:	a904      	add	r1, sp, #16
20021b62:	f10d 000f 	add.w	r0, sp, #15
20021b66:	f7ff fec9 	bl	200218fc <sd1_get_rsp>
20021b6a:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b6e:	2b11      	cmp	r3, #17
20021b70:	d1f1      	bne.n	20021b56 <sdmmc1_sdnand+0x1f2>
20021b72:	f04f 33ff 	mov.w	r3, #4294967295
20021b76:	6023      	str	r3, [r4, #0]
20021b78:	2320      	movs	r3, #32
20021b7a:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021b7c:	f7ff fede 	bl	2002193c <sd1_wait_read>
20021b80:	6823      	ldr	r3, [r4, #0]
20021b82:	061b      	lsls	r3, r3, #24
20021b84:	d410      	bmi.n	20021ba8 <sdmmc1_sdnand+0x244>
20021b86:	6823      	ldr	r3, [r4, #0]
20021b88:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021b8c:	bf14      	ite	ne
20021b8e:	2044      	movne	r0, #68	@ 0x44
20021b90:	2001      	moveq	r0, #1
20021b92:	e711      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021b94:	2034      	movs	r0, #52	@ 0x34
20021b96:	e70f      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021b98:	2032      	movs	r0, #50	@ 0x32
20021b9a:	e70d      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021b9c:	2039      	movs	r0, #57	@ 0x39
20021b9e:	e70b      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021ba0:	2054      	movs	r0, #84	@ 0x54
20021ba2:	e709      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021ba4:	2036      	movs	r0, #54	@ 0x36
20021ba6:	e707      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021ba8:	204f      	movs	r0, #79	@ 0x4f
20021baa:	e705      	b.n	200219b8 <sdmmc1_sdnand+0x54>
20021bac:	50045000 	.word	0x50045000
20021bb0:	00016700 	.word	0x00016700
20021bb4:	40ff8000 	.word	0x40ff8000
20021bb8:	20042c08 	.word	0x20042c08

20021bbc <sd_read_data>:
20021bbc:	b570      	push	{r4, r5, r6, lr}
20021bbe:	460d      	mov	r5, r1
20021bc0:	2101      	movs	r1, #1
20021bc2:	b088      	sub	sp, #32
20021bc4:	4606      	mov	r6, r0
20021bc6:	4608      	mov	r0, r1
20021bc8:	4614      	mov	r4, r2
20021bca:	f7ff fea7 	bl	2002191c <sd1_read>
20021bce:	2014      	movs	r0, #20
20021bd0:	f000 f9ef 	bl	20021fb2 <HAL_Delay_us>
20021bd4:	4b1a      	ldr	r3, [pc, #104]	@ (20021c40 <sd_read_data+0x84>)
20021bd6:	781b      	ldrb	r3, [r3, #0]
20021bd8:	b903      	cbnz	r3, 20021bdc <sd_read_data+0x20>
20021bda:	0a76      	lsrs	r6, r6, #9
20021bdc:	4631      	mov	r1, r6
20021bde:	2011      	movs	r0, #17
20021be0:	f7ff fe4e 	bl	20021880 <sd1_send_cmd>
20021be4:	3801      	subs	r0, #1
20021be6:	b2c0      	uxtb	r0, r0
20021be8:	2801      	cmp	r0, #1
20021bea:	d802      	bhi.n	20021bf2 <sd_read_data+0x36>
20021bec:	2000      	movs	r0, #0
20021bee:	b008      	add	sp, #32
20021bf0:	bd70      	pop	{r4, r5, r6, pc}
20021bf2:	ab07      	add	r3, sp, #28
20021bf4:	9300      	str	r3, [sp, #0]
20021bf6:	aa05      	add	r2, sp, #20
20021bf8:	ab06      	add	r3, sp, #24
20021bfa:	a904      	add	r1, sp, #16
20021bfc:	f10d 000f 	add.w	r0, sp, #15
20021c00:	f7ff fe7c 	bl	200218fc <sd1_get_rsp>
20021c04:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021c08:	2b11      	cmp	r3, #17
20021c0a:	d1ef      	bne.n	20021bec <sd_read_data+0x30>
20021c0c:	f04f 33ff 	mov.w	r3, #4294967295
20021c10:	4e0c      	ldr	r6, [pc, #48]	@ (20021c44 <sd_read_data+0x88>)
20021c12:	6033      	str	r3, [r6, #0]
20021c14:	2320      	movs	r3, #32
20021c16:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021c18:	f7ff fe90 	bl	2002193c <sd1_wait_read>
20021c1c:	6833      	ldr	r3, [r6, #0]
20021c1e:	061a      	lsls	r2, r3, #24
20021c20:	d4e4      	bmi.n	20021bec <sd_read_data+0x30>
20021c22:	6833      	ldr	r3, [r6, #0]
20021c24:	065b      	lsls	r3, r3, #25
20021c26:	d4e1      	bmi.n	20021bec <sd_read_data+0x30>
20021c28:	f024 0303 	bic.w	r3, r4, #3
20021c2c:	442b      	add	r3, r5
20021c2e:	429d      	cmp	r5, r3
20021c30:	d101      	bne.n	20021c36 <sd_read_data+0x7a>
20021c32:	4620      	mov	r0, r4
20021c34:	e7db      	b.n	20021bee <sd_read_data+0x32>
20021c36:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021c3a:	f845 2b04 	str.w	r2, [r5], #4
20021c3e:	e7f6      	b.n	20021c2e <sd_read_data+0x72>
20021c40:	20042c08 	.word	0x20042c08
20021c44:	50045000 	.word	0x50045000

20021c48 <sifli_hash_calculate>:
20021c48:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021c4c:	460c      	mov	r4, r1
20021c4e:	4615      	mov	r5, r2
20021c50:	4699      	mov	r9, r3
20021c52:	4680      	mov	r8, r0
20021c54:	2800      	cmp	r0, #0
20021c56:	d03f      	beq.n	20021cd8 <sifli_hash_calculate+0x90>
20021c58:	2900      	cmp	r1, #0
20021c5a:	d03d      	beq.n	20021cd8 <sifli_hash_calculate+0x90>
20021c5c:	2a00      	cmp	r2, #0
20021c5e:	d03b      	beq.n	20021cd8 <sifli_hash_calculate+0x90>
20021c60:	2b03      	cmp	r3, #3
20021c62:	d839      	bhi.n	20021cd8 <sifli_hash_calculate+0x90>
20021c64:	f000 fab8 	bl	200221d8 <HAL_HASH_reset>
20021c68:	2200      	movs	r2, #0
20021c6a:	4649      	mov	r1, r9
20021c6c:	4610      	mov	r0, r2
20021c6e:	f000 fabb 	bl	200221e8 <HAL_HASH_init>
20021c72:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20021c76:	d929      	bls.n	20021ccc <sifli_hash_calculate+0x84>
20021c78:	2600      	movs	r6, #0
20021c7a:	4637      	mov	r7, r6
20021c7c:	f506 7680 	add.w	r6, r6, #256	@ 0x100
20021c80:	42a6      	cmp	r6, r4
20021c82:	bf34      	ite	cc
20021c84:	f04f 0a00 	movcc.w	sl, #0
20021c88:	f04f 0a01 	movcs.w	sl, #1
20021c8c:	b14f      	cbz	r7, 20021ca2 <sifli_hash_calculate+0x5a>
20021c8e:	f000 faa3 	bl	200221d8 <HAL_HASH_reset>
20021c92:	42a6      	cmp	r6, r4
20021c94:	bf2c      	ite	cs
20021c96:	463a      	movcs	r2, r7
20021c98:	2200      	movcc	r2, #0
20021c9a:	4649      	mov	r1, r9
20021c9c:	4628      	mov	r0, r5
20021c9e:	f000 faa3 	bl	200221e8 <HAL_HASH_init>
20021ca2:	42a6      	cmp	r6, r4
20021ca4:	bf34      	ite	cc
20021ca6:	f44f 7180 	movcc.w	r1, #256	@ 0x100
20021caa:	1be1      	subcs	r1, r4, r7
20021cac:	4652      	mov	r2, sl
20021cae:	eb08 0007 	add.w	r0, r8, r7
20021cb2:	f000 fa73 	bl	2002219c <HAL_HASH_run>
20021cb6:	4628      	mov	r0, r5
20021cb8:	f000 fac4 	bl	20022244 <HAL_HASH_result>
20021cbc:	42a6      	cmp	r6, r4
20021cbe:	d3dc      	bcc.n	20021c7a <sifli_hash_calculate+0x32>
20021cc0:	4628      	mov	r0, r5
20021cc2:	f000 fabf 	bl	20022244 <HAL_HASH_result>
20021cc6:	2000      	movs	r0, #0
20021cc8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021ccc:	2201      	movs	r2, #1
20021cce:	4621      	mov	r1, r4
20021cd0:	4640      	mov	r0, r8
20021cd2:	f000 fa63 	bl	2002219c <HAL_HASH_run>
20021cd6:	e7f3      	b.n	20021cc0 <sifli_hash_calculate+0x78>
20021cd8:	f04f 30ff 	mov.w	r0, #4294967295
20021cdc:	e7f4      	b.n	20021cc8 <sifli_hash_calculate+0x80>

20021cde <sifli_hash_verify>:
20021cde:	b5f0      	push	{r4, r5, r6, r7, lr}
20021ce0:	4605      	mov	r5, r0
20021ce2:	b089      	sub	sp, #36	@ 0x24
20021ce4:	460f      	mov	r7, r1
20021ce6:	4614      	mov	r4, r2
20021ce8:	2100      	movs	r1, #0
20021cea:	2220      	movs	r2, #32
20021cec:	4668      	mov	r0, sp
20021cee:	461e      	mov	r6, r3
20021cf0:	f008 fd4c 	bl	2002a78c <memset>
20021cf4:	b91d      	cbnz	r5, 20021cfe <sifli_hash_verify+0x20>
20021cf6:	f04f 30ff 	mov.w	r0, #4294967295
20021cfa:	b009      	add	sp, #36	@ 0x24
20021cfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021cfe:	2c00      	cmp	r4, #0
20021d00:	d0f9      	beq.n	20021cf6 <sifli_hash_verify+0x18>
20021d02:	2302      	movs	r3, #2
20021d04:	466a      	mov	r2, sp
20021d06:	4639      	mov	r1, r7
20021d08:	4628      	mov	r0, r5
20021d0a:	f7ff ff9d 	bl	20021c48 <sifli_hash_calculate>
20021d0e:	2800      	cmp	r0, #0
20021d10:	d1f1      	bne.n	20021cf6 <sifli_hash_verify+0x18>
20021d12:	4632      	mov	r2, r6
20021d14:	4621      	mov	r1, r4
20021d16:	4668      	mov	r0, sp
20021d18:	f008 fd28 	bl	2002a76c <memcmp>
20021d1c:	3800      	subs	r0, #0
20021d1e:	bf18      	it	ne
20021d20:	2001      	movne	r0, #1
20021d22:	4240      	negs	r0, r0
20021d24:	e7e9      	b.n	20021cfa <sifli_hash_verify+0x1c>

20021d26 <sifli_sigkey_pub_verify>:
20021d26:	2300      	movs	r3, #0
20021d28:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021d2a:	4604      	mov	r4, r0
20021d2c:	460d      	mov	r5, r1
20021d2e:	2208      	movs	r2, #8
20021d30:	4669      	mov	r1, sp
20021d32:	2003      	movs	r0, #3
20021d34:	e9cd 3300 	strd	r3, r3, [sp]
20021d38:	f7ff f962 	bl	20021000 <sifli_hw_efuse_read>
20021d3c:	2808      	cmp	r0, #8
20021d3e:	4603      	mov	r3, r0
20021d40:	d106      	bne.n	20021d50 <sifli_sigkey_pub_verify+0x2a>
20021d42:	466a      	mov	r2, sp
20021d44:	4629      	mov	r1, r5
20021d46:	4620      	mov	r0, r4
20021d48:	f7ff ffc9 	bl	20021cde <sifli_hash_verify>
20021d4c:	b003      	add	sp, #12
20021d4e:	bd30      	pop	{r4, r5, pc}
20021d50:	f04f 30ff 	mov.w	r0, #4294967295
20021d54:	e7fa      	b.n	20021d4c <sifli_sigkey_pub_verify+0x26>

20021d56 <sifli_img_sig_hash_verify>:
20021d56:	b5f0      	push	{r4, r5, r6, r7, lr}
20021d58:	461f      	mov	r7, r3
20021d5a:	4616      	mov	r6, r2
20021d5c:	b08d      	sub	sp, #52	@ 0x34
20021d5e:	2220      	movs	r2, #32
20021d60:	4604      	mov	r4, r0
20021d62:	460d      	mov	r5, r1
20021d64:	a804      	add	r0, sp, #16
20021d66:	2100      	movs	r1, #0
20021d68:	f008 fd10 	bl	2002a78c <memset>
20021d6c:	2302      	movs	r3, #2
20021d6e:	4639      	mov	r1, r7
20021d70:	4630      	mov	r0, r6
20021d72:	aa04      	add	r2, sp, #16
20021d74:	f7ff ff68 	bl	20021c48 <sifli_hash_calculate>
20021d78:	b118      	cbz	r0, 20021d82 <sifli_img_sig_hash_verify+0x2c>
20021d7a:	f04f 30ff 	mov.w	r0, #4294967295
20021d7e:	b00d      	add	sp, #52	@ 0x34
20021d80:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021d82:	a802      	add	r0, sp, #8
20021d84:	f007 fa76 	bl	20029274 <mbedtls_pk_init>
20021d88:	4629      	mov	r1, r5
20021d8a:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021d8e:	a802      	add	r0, sp, #8
20021d90:	f007 fb7c 	bl	2002948c <mbedtls_pk_parse_public_key>
20021d94:	4601      	mov	r1, r0
20021d96:	2800      	cmp	r0, #0
20021d98:	d1ef      	bne.n	20021d7a <sifli_img_sig_hash_verify+0x24>
20021d9a:	2206      	movs	r2, #6
20021d9c:	9803      	ldr	r0, [sp, #12]
20021d9e:	f007 fc1c 	bl	200295da <mbedtls_rsa_set_padding>
20021da2:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021da6:	2106      	movs	r1, #6
20021da8:	e9cd 4300 	strd	r4, r3, [sp]
20021dac:	aa04      	add	r2, sp, #16
20021dae:	2320      	movs	r3, #32
20021db0:	a802      	add	r0, sp, #8
20021db2:	f007 fa93 	bl	200292dc <mbedtls_pk_verify>
20021db6:	3800      	subs	r0, #0
20021db8:	bf18      	it	ne
20021dba:	2001      	movne	r0, #1
20021dbc:	4240      	negs	r0, r0
20021dbe:	e7de      	b.n	20021d7e <sifli_img_sig_hash_verify+0x28>

20021dc0 <sifli_secboot_exception>:
20021dc0:	2801      	cmp	r0, #1
20021dc2:	b508      	push	{r3, lr}
20021dc4:	d004      	beq.n	20021dd0 <sifli_secboot_exception+0x10>
20021dc6:	2802      	cmp	r0, #2
20021dc8:	d009      	beq.n	20021dde <sifli_secboot_exception+0x1e>
20021dca:	2213      	movs	r2, #19
20021dcc:	4905      	ldr	r1, [pc, #20]	@ (20021de4 <sifli_secboot_exception+0x24>)
20021dce:	e001      	b.n	20021dd4 <sifli_secboot_exception+0x14>
20021dd0:	2217      	movs	r2, #23
20021dd2:	4905      	ldr	r1, [pc, #20]	@ (20021de8 <sifli_secboot_exception+0x28>)
20021dd4:	4805      	ldr	r0, [pc, #20]	@ (20021dec <sifli_secboot_exception+0x2c>)
20021dd6:	f7fe fa5f 	bl	20020298 <boot_uart_tx>
20021dda:	e7fe      	b.n	20021dda <sifli_secboot_exception+0x1a>
20021ddc:	bd08      	pop	{r3, pc}
20021dde:	2219      	movs	r2, #25
20021de0:	4903      	ldr	r1, [pc, #12]	@ (20021df0 <sifli_secboot_exception+0x30>)
20021de2:	e7f7      	b.n	20021dd4 <sifli_secboot_exception+0x14>
20021de4:	2002a90a 	.word	0x2002a90a
20021de8:	2002a8d8 	.word	0x2002a8d8
20021dec:	50084000 	.word	0x50084000
20021df0:	2002a8f0 	.word	0x2002a8f0

20021df4 <BSP_GetFlash1DIV>:
20021df4:	4b01      	ldr	r3, [pc, #4]	@ (20021dfc <BSP_GetFlash1DIV+0x8>)
20021df6:	8818      	ldrh	r0, [r3, #0]
20021df8:	4770      	bx	lr
20021dfa:	bf00      	nop
20021dfc:	20042c0c 	.word	0x20042c0c

20021e00 <BSP_GetFlash2DIV>:
20021e00:	4b01      	ldr	r3, [pc, #4]	@ (20021e08 <BSP_GetFlash2DIV+0x8>)
20021e02:	8818      	ldrh	r0, [r3, #0]
20021e04:	4770      	bx	lr
20021e06:	bf00      	nop
20021e08:	20042c0a 	.word	0x20042c0a

20021e0c <BSP_SetFlash1DIV>:
20021e0c:	4b01      	ldr	r3, [pc, #4]	@ (20021e14 <BSP_SetFlash1DIV+0x8>)
20021e0e:	8018      	strh	r0, [r3, #0]
20021e10:	4770      	bx	lr
20021e12:	bf00      	nop
20021e14:	20042c0c 	.word	0x20042c0c

20021e18 <BSP_SetFlash2DIV>:
20021e18:	4b01      	ldr	r3, [pc, #4]	@ (20021e20 <BSP_SetFlash2DIV+0x8>)
20021e1a:	8018      	strh	r0, [r3, #0]
20021e1c:	4770      	bx	lr
20021e1e:	bf00      	nop
20021e20:	20042c0a 	.word	0x20042c0a

20021e24 <boot_images>:
20021e24:	4770      	bx	lr

20021e26 <SystemPowerOnModeInit>:
20021e26:	4770      	bx	lr

20021e28 <SystemInit>:
20021e28:	b508      	push	{r3, lr}
20021e2a:	4a10      	ldr	r2, [pc, #64]	@ (20021e6c <SystemInit+0x44>)
20021e2c:	4b10      	ldr	r3, [pc, #64]	@ (20021e70 <SystemInit+0x48>)
20021e2e:	609a      	str	r2, [r3, #8]
20021e30:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021e34:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021e38:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021e3c:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021e40:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021e44:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021e48:	f7ff fb28 	bl	2002149c <hw_preinit0>
20021e4c:	f7fe fa5e 	bl	2002030c <mpu_config>
20021e50:	4b08      	ldr	r3, [pc, #32]	@ (20021e74 <SystemInit+0x4c>)
20021e52:	681b      	ldr	r3, [r3, #0]
20021e54:	07db      	lsls	r3, r3, #31
20021e56:	d401      	bmi.n	20021e5c <SystemInit+0x34>
20021e58:	f7ff ffe4 	bl	20021e24 <boot_images>
20021e5c:	f7fe fa57 	bl	2002030e <cache_enable>
20021e60:	f7ff ffe1 	bl	20021e26 <SystemPowerOnModeInit>
20021e64:	4b04      	ldr	r3, [pc, #16]	@ (20021e78 <SystemInit+0x50>)
20021e66:	4a05      	ldr	r2, [pc, #20]	@ (20021e7c <SystemInit+0x54>)
20021e68:	601a      	str	r2, [r3, #0]
20021e6a:	bd08      	pop	{r3, pc}
20021e6c:	20020000 	.word	0x20020000
20021e70:	e000ed00 	.word	0xe000ed00
20021e74:	5000b000 	.word	0x5000b000
20021e78:	20042c10 	.word	0x20042c10
20021e7c:	017d7840 	.word	0x017d7840

20021e80 <Reset_Handler>:
20021e80:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021ecc <AES_IRQHandler+0x2>
20021e84:	4812      	ldr	r0, [pc, #72]	@ (20021ed0 <AES_IRQHandler+0x6>)
20021e86:	f380 880a 	msr	MSPLIM, r0
20021e8a:	f7ff ffcd 	bl	20021e28 <SystemInit>
20021e8e:	4c11      	ldr	r4, [pc, #68]	@ (20021ed4 <AES_IRQHandler+0xa>)
20021e90:	4d11      	ldr	r5, [pc, #68]	@ (20021ed8 <AES_IRQHandler+0xe>)
20021e92:	42ac      	cmp	r4, r5
20021e94:	da09      	bge.n	20021eaa <Reset_Handler+0x2a>
20021e96:	6821      	ldr	r1, [r4, #0]
20021e98:	6862      	ldr	r2, [r4, #4]
20021e9a:	68a3      	ldr	r3, [r4, #8]
20021e9c:	3b04      	subs	r3, #4
20021e9e:	bfa2      	ittt	ge
20021ea0:	58c8      	ldrge	r0, [r1, r3]
20021ea2:	50d0      	strge	r0, [r2, r3]
20021ea4:	e7fa      	bge.n	20021e9c <Reset_Handler+0x1c>
20021ea6:	340c      	adds	r4, #12
20021ea8:	e7f3      	b.n	20021e92 <Reset_Handler+0x12>
20021eaa:	4b0c      	ldr	r3, [pc, #48]	@ (20021edc <AES_IRQHandler+0x12>)
20021eac:	4c0c      	ldr	r4, [pc, #48]	@ (20021ee0 <AES_IRQHandler+0x16>)
20021eae:	42a3      	cmp	r3, r4
20021eb0:	da08      	bge.n	20021ec4 <Reset_Handler+0x44>
20021eb2:	6819      	ldr	r1, [r3, #0]
20021eb4:	685a      	ldr	r2, [r3, #4]
20021eb6:	2000      	movs	r0, #0
20021eb8:	3a04      	subs	r2, #4
20021eba:	bfa4      	itt	ge
20021ebc:	5088      	strge	r0, [r1, r2]
20021ebe:	e7fb      	bge.n	20021eb8 <Reset_Handler+0x38>
20021ec0:	3308      	adds	r3, #8
20021ec2:	e7f4      	b.n	20021eae <Reset_Handler+0x2e>
20021ec4:	f7ff fb10 	bl	200214e8 <entry>

20021ec8 <HardFault_Handler>:
20021ec8:	e7fe      	b.n	20021ec8 <HardFault_Handler>

20021eca <AES_IRQHandler>:
20021eca:	e7fe      	b.n	20021eca <AES_IRQHandler>
20021ecc:	20042000 	.word	0x20042000
20021ed0:	20040000 	.word	0x20040000
20021ed4:	2002c374 	.word	0x2002c374
20021ed8:	2002c380 	.word	0x2002c380
20021edc:	2002c380 	.word	0x2002c380
20021ee0:	2002c388 	.word	0x2002c388

20021ee4 <__aeabi_unwind_cpp_pr0>:
20021ee4:	2000      	movs	r0, #0
20021ee6:	4770      	bx	lr

20021ee8 <HAL_GetTick>:
20021ee8:	4b01      	ldr	r3, [pc, #4]	@ (20021ef0 <HAL_GetTick+0x8>)
20021eea:	6818      	ldr	r0, [r3, #0]
20021eec:	4770      	bx	lr
20021eee:	bf00      	nop
20021ef0:	2004cb2c 	.word	0x2004cb2c

20021ef4 <HAL_Delay_us_>:
20021ef4:	b513      	push	{r0, r1, r4, lr}
20021ef6:	9001      	str	r0, [sp, #4]
20021ef8:	9b01      	ldr	r3, [sp, #4]
20021efa:	4c1a      	ldr	r4, [pc, #104]	@ (20021f64 <HAL_Delay_us_+0x70>)
20021efc:	b133      	cbz	r3, 20021f0c <HAL_Delay_us_+0x18>
20021efe:	6823      	ldr	r3, [r4, #0]
20021f00:	b123      	cbz	r3, 20021f0c <HAL_Delay_us_+0x18>
20021f02:	9b01      	ldr	r3, [sp, #4]
20021f04:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021f08:	d90c      	bls.n	20021f24 <HAL_Delay_us_+0x30>
20021f0a:	e7fe      	b.n	20021f0a <HAL_Delay_us_+0x16>
20021f0c:	2000      	movs	r0, #0
20021f0e:	f003 f811 	bl	20024f34 <HAL_RCC_GetHCLKFreq>
20021f12:	4b15      	ldr	r3, [pc, #84]	@ (20021f68 <HAL_Delay_us_+0x74>)
20021f14:	fbb0 f0f3 	udiv	r0, r0, r3
20021f18:	9b01      	ldr	r3, [sp, #4]
20021f1a:	6020      	str	r0, [r4, #0]
20021f1c:	2b00      	cmp	r3, #0
20021f1e:	d1f0      	bne.n	20021f02 <HAL_Delay_us_+0xe>
20021f20:	b002      	add	sp, #8
20021f22:	bd10      	pop	{r4, pc}
20021f24:	9b01      	ldr	r3, [sp, #4]
20021f26:	2b00      	cmp	r3, #0
20021f28:	d0fa      	beq.n	20021f20 <HAL_Delay_us_+0x2c>
20021f2a:	4a10      	ldr	r2, [pc, #64]	@ (20021f6c <HAL_Delay_us_+0x78>)
20021f2c:	6813      	ldr	r3, [r2, #0]
20021f2e:	f013 0301 	ands.w	r3, r3, #1
20021f32:	d10d      	bne.n	20021f50 <HAL_Delay_us_+0x5c>
20021f34:	480e      	ldr	r0, [pc, #56]	@ (20021f70 <HAL_Delay_us_+0x7c>)
20021f36:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021f3a:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021f3e:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021f42:	6053      	str	r3, [r2, #4]
20021f44:	6813      	ldr	r3, [r2, #0]
20021f46:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021f4a:	f043 0301 	orr.w	r3, r3, #1
20021f4e:	6013      	str	r3, [r2, #0]
20021f50:	9b01      	ldr	r3, [sp, #4]
20021f52:	6822      	ldr	r2, [r4, #0]
20021f54:	4905      	ldr	r1, [pc, #20]	@ (20021f6c <HAL_Delay_us_+0x78>)
20021f56:	4353      	muls	r3, r2
20021f58:	6848      	ldr	r0, [r1, #4]
20021f5a:	684a      	ldr	r2, [r1, #4]
20021f5c:	1a12      	subs	r2, r2, r0
20021f5e:	429a      	cmp	r2, r3
20021f60:	d3fb      	bcc.n	20021f5a <HAL_Delay_us_+0x66>
20021f62:	e7dd      	b.n	20021f20 <HAL_Delay_us_+0x2c>
20021f64:	2004cb28 	.word	0x2004cb28
20021f68:	000f4240 	.word	0x000f4240
20021f6c:	e0001000 	.word	0xe0001000
20021f70:	e000ed00 	.word	0xe000ed00

20021f74 <HAL_Delay_us2_>:
20021f74:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021f76:	9001      	str	r0, [sp, #4]
20021f78:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021f7c:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021f80:	6944      	ldr	r4, [r0, #20]
20021f82:	9b01      	ldr	r3, [sp, #4]
20021f84:	4363      	muls	r3, r4
20021f86:	fbb3 f3f2 	udiv	r3, r3, r2
20021f8a:	9301      	str	r3, [sp, #4]
20021f8c:	2300      	movs	r3, #0
20021f8e:	6981      	ldr	r1, [r0, #24]
20021f90:	6982      	ldr	r2, [r0, #24]
20021f92:	428a      	cmp	r2, r1
20021f94:	d0fc      	beq.n	20021f90 <HAL_Delay_us2_+0x1c>
20021f96:	bf25      	ittet	cs
20021f98:	1aa5      	subcs	r5, r4, r2
20021f9a:	195b      	addcs	r3, r3, r5
20021f9c:	185b      	addcc	r3, r3, r1
20021f9e:	185b      	addcs	r3, r3, r1
20021fa0:	9901      	ldr	r1, [sp, #4]
20021fa2:	bf38      	it	cc
20021fa4:	1a9b      	subcc	r3, r3, r2
20021fa6:	4299      	cmp	r1, r3
20021fa8:	d801      	bhi.n	20021fae <HAL_Delay_us2_+0x3a>
20021faa:	b003      	add	sp, #12
20021fac:	bd30      	pop	{r4, r5, pc}
20021fae:	4611      	mov	r1, r2
20021fb0:	e7ee      	b.n	20021f90 <HAL_Delay_us2_+0x1c>

20021fb2 <HAL_Delay_us>:
20021fb2:	4603      	mov	r3, r0
20021fb4:	b570      	push	{r4, r5, r6, lr}
20021fb6:	b1b8      	cbz	r0, 20021fe8 <HAL_Delay_us+0x36>
20021fb8:	f242 7510 	movw	r5, #10000	@ 0x2710
20021fbc:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20021fc0:	42ab      	cmp	r3, r5
20021fc2:	bf84      	itt	hi
20021fc4:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20021fc8:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20021fcc:	6932      	ldr	r2, [r6, #16]
20021fce:	bf98      	it	ls
20021fd0:	2400      	movls	r4, #0
20021fd2:	4618      	mov	r0, r3
20021fd4:	bf88      	it	hi
20021fd6:	3c10      	subhi	r4, #16
20021fd8:	07d3      	lsls	r3, r2, #31
20021fda:	d408      	bmi.n	20021fee <HAL_Delay_us+0x3c>
20021fdc:	f7ff ff8a 	bl	20021ef4 <HAL_Delay_us_>
20021fe0:	4623      	mov	r3, r4
20021fe2:	2c00      	cmp	r4, #0
20021fe4:	d1ec      	bne.n	20021fc0 <HAL_Delay_us+0xe>
20021fe6:	e001      	b.n	20021fec <HAL_Delay_us+0x3a>
20021fe8:	f7ff ff84 	bl	20021ef4 <HAL_Delay_us_>
20021fec:	bd70      	pop	{r4, r5, r6, pc}
20021fee:	f7ff ffc1 	bl	20021f74 <HAL_Delay_us2_>
20021ff2:	e7f5      	b.n	20021fe0 <HAL_Delay_us+0x2e>

20021ff4 <WDT_IRQHandler>:
20021ff4:	4770      	bx	lr

20021ff6 <DBG_Trigger_IRQHandler>:
20021ff6:	4770      	bx	lr

20021ff8 <NMI_Handler>:
20021ff8:	b508      	push	{r3, lr}
20021ffa:	4b05      	ldr	r3, [pc, #20]	@ (20022010 <NMI_Handler+0x18>)
20021ffc:	6a1b      	ldr	r3, [r3, #32]
20021ffe:	005b      	lsls	r3, r3, #1
20022000:	d502      	bpl.n	20022008 <NMI_Handler+0x10>
20022002:	f7ff fff8 	bl	20021ff6 <DBG_Trigger_IRQHandler>
20022006:	bd08      	pop	{r3, pc}
20022008:	f7ff fff4 	bl	20021ff4 <WDT_IRQHandler>
2002200c:	e7fb      	b.n	20022006 <NMI_Handler+0xe>
2002200e:	bf00      	nop
20022010:	5000b000 	.word	0x5000b000

20022014 <HAL_AES_run_help>:
20022014:	b510      	push	{r4, lr}
20022016:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
2002201a:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
2002201e:	4c0e      	ldr	r4, [pc, #56]	@ (20022058 <HAL_AES_run_help+0x44>)
20022020:	bf38      	it	cc
20022022:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20022026:	6161      	str	r1, [r4, #20]
20022028:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
2002202c:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20022030:	f103 030f 	add.w	r3, r3, #15
20022034:	ea4f 1323 	mov.w	r3, r3, asr #4
20022038:	bf38      	it	cc
2002203a:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
2002203e:	61a2      	str	r2, [r4, #24]
20022040:	61e3      	str	r3, [r4, #28]
20022042:	6923      	ldr	r3, [r4, #16]
20022044:	b108      	cbz	r0, 2002204a <HAL_AES_run_help+0x36>
20022046:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
2002204a:	4a03      	ldr	r2, [pc, #12]	@ (20022058 <HAL_AES_run_help+0x44>)
2002204c:	6123      	str	r3, [r4, #16]
2002204e:	6813      	ldr	r3, [r2, #0]
20022050:	f043 0301 	orr.w	r3, r3, #1
20022054:	6013      	str	r3, [r2, #0]
20022056:	bd10      	pop	{r4, pc}
20022058:	5000d000 	.word	0x5000d000

2002205c <HAL_HASH_run_help.isra.0>:
2002205c:	f100 4370 	add.w	r3, r0, #4026531840	@ 0xf0000000
20022060:	b510      	push	{r4, lr}
20022062:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20022066:	4c09      	ldr	r4, [pc, #36]	@ (2002208c <HAL_HASH_run_help.isra.0+0x30>)
20022068:	bf38      	it	cc
2002206a:	f100 40a0 	addcc.w	r0, r0, #1342177280	@ 0x50000000
2002206e:	6560      	str	r0, [r4, #84]	@ 0x54
20022070:	65a1      	str	r1, [r4, #88]	@ 0x58
20022072:	b11a      	cbz	r2, 2002207c <HAL_HASH_run_help.isra.0+0x20>
20022074:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20022076:	f043 0308 	orr.w	r3, r3, #8
2002207a:	6523      	str	r3, [r4, #80]	@ 0x50
2002207c:	6d21      	ldr	r1, [r4, #80]	@ 0x50
2002207e:	4804      	ldr	r0, [pc, #16]	@ (20022090 <HAL_HASH_run_help.isra.0+0x34>)
20022080:	f000 fca4 	bl	200229cc <HAL_DBG_printf>
20022084:	2304      	movs	r3, #4
20022086:	6023      	str	r3, [r4, #0]
20022088:	bd10      	pop	{r4, pc}
2002208a:	bf00      	nop
2002208c:	5000d000 	.word	0x5000d000
20022090:	2002a91e 	.word	0x2002a91e

20022094 <HAL_AES_reset>:
20022094:	2202      	movs	r2, #2
20022096:	2000      	movs	r0, #0
20022098:	4b01      	ldr	r3, [pc, #4]	@ (200220a0 <HAL_AES_reset+0xc>)
2002209a:	601a      	str	r2, [r3, #0]
2002209c:	6018      	str	r0, [r3, #0]
2002209e:	4770      	bx	lr
200220a0:	5000d000 	.word	0x5000d000

200220a4 <HAL_AES_init>:
200220a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200220a6:	461f      	mov	r7, r3
200220a8:	4b1e      	ldr	r3, [pc, #120]	@ (20022124 <HAL_AES_init+0x80>)
200220aa:	4604      	mov	r4, r0
200220ac:	685b      	ldr	r3, [r3, #4]
200220ae:	4616      	mov	r6, r2
200220b0:	07db      	lsls	r3, r3, #31
200220b2:	d501      	bpl.n	200220b8 <HAL_AES_init+0x14>
200220b4:	f7ff ffee 	bl	20022094 <HAL_AES_reset>
200220b8:	fab4 f084 	clz	r0, r4
200220bc:	2918      	cmp	r1, #24
200220be:	ea4f 1050 	mov.w	r0, r0, lsr #5
200220c2:	ea4f 1540 	mov.w	r5, r0, lsl #5
200220c6:	d01c      	beq.n	20022102 <HAL_AES_init+0x5e>
200220c8:	2920      	cmp	r1, #32
200220ca:	d01c      	beq.n	20022106 <HAL_AES_init+0x62>
200220cc:	2910      	cmp	r1, #16
200220ce:	d125      	bne.n	2002211c <HAL_AES_init+0x78>
200220d0:	2300      	movs	r3, #0
200220d2:	b164      	cbz	r4, 200220ee <HAL_AES_init+0x4a>
200220d4:	4620      	mov	r0, r4
200220d6:	4a14      	ldr	r2, [pc, #80]	@ (20022128 <HAL_AES_init+0x84>)
200220d8:	f021 0103 	bic.w	r1, r1, #3
200220dc:	4421      	add	r1, r4
200220de:	1b12      	subs	r2, r2, r4
200220e0:	1814      	adds	r4, r2, r0
200220e2:	f850 cb04 	ldr.w	ip, [r0], #4
200220e6:	4281      	cmp	r1, r0
200220e8:	f8c4 c000 	str.w	ip, [r4]
200220ec:	d1f8      	bne.n	200220e0 <HAL_AES_init+0x3c>
200220ee:	ea47 0005 	orr.w	r0, r7, r5
200220f2:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
200220f6:	4b0b      	ldr	r3, [pc, #44]	@ (20022124 <HAL_AES_init+0x80>)
200220f8:	6118      	str	r0, [r3, #16]
200220fa:	b107      	cbz	r7, 200220fe <HAL_AES_init+0x5a>
200220fc:	b92e      	cbnz	r6, 2002210a <HAL_AES_init+0x66>
200220fe:	2000      	movs	r0, #0
20022100:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022102:	2301      	movs	r3, #1
20022104:	e7e5      	b.n	200220d2 <HAL_AES_init+0x2e>
20022106:	2302      	movs	r3, #2
20022108:	e7e3      	b.n	200220d2 <HAL_AES_init+0x2e>
2002210a:	6832      	ldr	r2, [r6, #0]
2002210c:	621a      	str	r2, [r3, #32]
2002210e:	6872      	ldr	r2, [r6, #4]
20022110:	625a      	str	r2, [r3, #36]	@ 0x24
20022112:	68b2      	ldr	r2, [r6, #8]
20022114:	629a      	str	r2, [r3, #40]	@ 0x28
20022116:	68f2      	ldr	r2, [r6, #12]
20022118:	62da      	str	r2, [r3, #44]	@ 0x2c
2002211a:	e7f0      	b.n	200220fe <HAL_AES_init+0x5a>
2002211c:	f04f 30ff 	mov.w	r0, #4294967295
20022120:	e7ee      	b.n	20022100 <HAL_AES_init+0x5c>
20022122:	bf00      	nop
20022124:	5000d000 	.word	0x5000d000
20022128:	5000d030 	.word	0x5000d030

2002212c <HAL_AES_run>:
2002212c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002212e:	2708      	movs	r7, #8
20022130:	4e17      	ldr	r6, [pc, #92]	@ (20022190 <HAL_AES_run+0x64>)
20022132:	4614      	mov	r4, r2
20022134:	461d      	mov	r5, r3
20022136:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
2002213a:	f3bf 8f4f 	dsb	sy
2002213e:	f3bf 8f6f 	isb	sy
20022142:	2700      	movs	r7, #0
20022144:	4e13      	ldr	r6, [pc, #76]	@ (20022194 <HAL_AES_run+0x68>)
20022146:	60f7      	str	r7, [r6, #12]
20022148:	f7ff ff64 	bl	20022014 <HAL_AES_run_help>
2002214c:	6873      	ldr	r3, [r6, #4]
2002214e:	07db      	lsls	r3, r3, #31
20022150:	d4fc      	bmi.n	2002214c <HAL_AES_run+0x20>
20022152:	68b0      	ldr	r0, [r6, #8]
20022154:	f000 0006 	and.w	r0, r0, #6
20022158:	3800      	subs	r0, #0
2002215a:	bf18      	it	ne
2002215c:	2001      	movne	r0, #1
2002215e:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
20022162:	d313      	bcc.n	2002218c <HAL_AES_run+0x60>
20022164:	2d00      	cmp	r5, #0
20022166:	dd11      	ble.n	2002218c <HAL_AES_run+0x60>
20022168:	f004 031f 	and.w	r3, r4, #31
2002216c:	442b      	add	r3, r5
2002216e:	f3bf 8f4f 	dsb	sy
20022172:	4622      	mov	r2, r4
20022174:	4c08      	ldr	r4, [pc, #32]	@ (20022198 <HAL_AES_run+0x6c>)
20022176:	4413      	add	r3, r2
20022178:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
2002217c:	3220      	adds	r2, #32
2002217e:	1a99      	subs	r1, r3, r2
20022180:	2900      	cmp	r1, #0
20022182:	dcf9      	bgt.n	20022178 <HAL_AES_run+0x4c>
20022184:	f3bf 8f4f 	dsb	sy
20022188:	f3bf 8f6f 	isb	sy
2002218c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002218e:	bf00      	nop
20022190:	e000e100 	.word	0xe000e100
20022194:	5000d000 	.word	0x5000d000
20022198:	e000ed00 	.word	0xe000ed00

2002219c <HAL_HASH_run>:
2002219c:	b510      	push	{r4, lr}
2002219e:	2408      	movs	r4, #8
200221a0:	4b0b      	ldr	r3, [pc, #44]	@ (200221d0 <HAL_HASH_run+0x34>)
200221a2:	f8c3 4088 	str.w	r4, [r3, #136]	@ 0x88
200221a6:	f3bf 8f4f 	dsb	sy
200221aa:	f3bf 8f6f 	isb	sy
200221ae:	f7ff ff55 	bl	2002205c <HAL_HASH_run_help.isra.0>
200221b2:	4b08      	ldr	r3, [pc, #32]	@ (200221d4 <HAL_HASH_run+0x38>)
200221b4:	685a      	ldr	r2, [r3, #4]
200221b6:	0752      	lsls	r2, r2, #29
200221b8:	d4fc      	bmi.n	200221b4 <HAL_HASH_run+0x18>
200221ba:	689a      	ldr	r2, [r3, #8]
200221bc:	f002 0238 	and.w	r2, r2, #56	@ 0x38
200221c0:	609a      	str	r2, [r3, #8]
200221c2:	6898      	ldr	r0, [r3, #8]
200221c4:	f000 0030 	and.w	r0, r0, #48	@ 0x30
200221c8:	3800      	subs	r0, #0
200221ca:	bf18      	it	ne
200221cc:	2001      	movne	r0, #1
200221ce:	bd10      	pop	{r4, pc}
200221d0:	e000e100 	.word	0xe000e100
200221d4:	5000d000 	.word	0x5000d000

200221d8 <HAL_HASH_reset>:
200221d8:	2208      	movs	r2, #8
200221da:	2000      	movs	r0, #0
200221dc:	4b01      	ldr	r3, [pc, #4]	@ (200221e4 <HAL_HASH_reset+0xc>)
200221de:	601a      	str	r2, [r3, #0]
200221e0:	6018      	str	r0, [r3, #0]
200221e2:	4770      	bx	lr
200221e4:	5000d000 	.word	0x5000d000

200221e8 <HAL_HASH_init>:
200221e8:	0693      	lsls	r3, r2, #26
200221ea:	b570      	push	{r4, r5, r6, lr}
200221ec:	4606      	mov	r6, r0
200221ee:	460c      	mov	r4, r1
200221f0:	4615      	mov	r5, r2
200221f2:	d11c      	bne.n	2002222e <HAL_HASH_init+0x46>
200221f4:	2903      	cmp	r1, #3
200221f6:	d81a      	bhi.n	2002222e <HAL_HASH_init+0x46>
200221f8:	f7ff ffee 	bl	200221d8 <HAL_HASH_reset>
200221fc:	b13e      	cbz	r6, 2002220e <HAL_HASH_init+0x26>
200221fe:	4b0d      	ldr	r3, [pc, #52]	@ (20022234 <HAL_HASH_init+0x4c>)
20022200:	480d      	ldr	r0, [pc, #52]	@ (20022238 <HAL_HASH_init+0x50>)
20022202:	5c5a      	ldrb	r2, [r3, r1]
20022204:	4631      	mov	r1, r6
20022206:	f008 fadb 	bl	2002a7c0 <memcpy>
2002220a:	f044 0420 	orr.w	r4, r4, #32
2002220e:	4b0b      	ldr	r3, [pc, #44]	@ (2002223c <HAL_HASH_init+0x54>)
20022210:	f044 0180 	orr.w	r1, r4, #128	@ 0x80
20022214:	6519      	str	r1, [r3, #80]	@ 0x50
20022216:	b11d      	cbz	r5, 20022220 <HAL_HASH_init+0x38>
20022218:	f8c3 509c 	str.w	r5, [r3, #156]	@ 0x9c
2002221c:	f444 71c0 	orr.w	r1, r4, #384	@ 0x180
20022220:	4807      	ldr	r0, [pc, #28]	@ (20022240 <HAL_HASH_init+0x58>)
20022222:	462a      	mov	r2, r5
20022224:	6519      	str	r1, [r3, #80]	@ 0x50
20022226:	f000 fbd1 	bl	200229cc <HAL_DBG_printf>
2002222a:	2000      	movs	r0, #0
2002222c:	bd70      	pop	{r4, r5, r6, pc}
2002222e:	f04f 30ff 	mov.w	r0, #4294967295
20022232:	e7fb      	b.n	2002222c <HAL_HASH_init+0x44>
20022234:	2002b7b4 	.word	0x2002b7b4
20022238:	5000d05c 	.word	0x5000d05c
2002223c:	5000d000 	.word	0x5000d000
20022240:	2002a931 	.word	0x2002a931

20022244 <HAL_HASH_result>:
20022244:	b510      	push	{r4, lr}
20022246:	4c08      	ldr	r4, [pc, #32]	@ (20022268 <HAL_HASH_result+0x24>)
20022248:	4a08      	ldr	r2, [pc, #32]	@ (2002226c <HAL_HASH_result+0x28>)
2002224a:	6d23      	ldr	r3, [r4, #80]	@ 0x50
2002224c:	f104 017c 	add.w	r1, r4, #124	@ 0x7c
20022250:	f003 0307 	and.w	r3, r3, #7
20022254:	5cd2      	ldrb	r2, [r2, r3]
20022256:	f008 fab3 	bl	2002a7c0 <memcpy>
2002225a:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
2002225e:	4804      	ldr	r0, [pc, #16]	@ (20022270 <HAL_HASH_result+0x2c>)
20022260:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20022264:	f000 bbb2 	b.w	200229cc <HAL_DBG_printf>
20022268:	5000d000 	.word	0x5000d000
2002226c:	2002b7b4 	.word	0x2002b7b4
20022270:	2002a965 	.word	0x2002a965

20022274 <HAL_NVIC_EnableIRQ>:
20022274:	2800      	cmp	r0, #0
20022276:	da00      	bge.n	2002227a <HAL_NVIC_EnableIRQ+0x6>
20022278:	e7fe      	b.n	20022278 <HAL_NVIC_EnableIRQ+0x4>
2002227a:	2301      	movs	r3, #1
2002227c:	0941      	lsrs	r1, r0, #5
2002227e:	4a03      	ldr	r2, [pc, #12]	@ (2002228c <HAL_NVIC_EnableIRQ+0x18>)
20022280:	f000 001f 	and.w	r0, r0, #31
20022284:	4083      	lsls	r3, r0
20022286:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
2002228a:	4770      	bx	lr
2002228c:	e000e100 	.word	0xe000e100

20022290 <HAL_NVIC_DisableIRQ>:
20022290:	2800      	cmp	r0, #0
20022292:	da00      	bge.n	20022296 <HAL_NVIC_DisableIRQ+0x6>
20022294:	e7fe      	b.n	20022294 <HAL_NVIC_DisableIRQ+0x4>
20022296:	2201      	movs	r2, #1
20022298:	4906      	ldr	r1, [pc, #24]	@ (200222b4 <HAL_NVIC_DisableIRQ+0x24>)
2002229a:	0943      	lsrs	r3, r0, #5
2002229c:	f000 001f 	and.w	r0, r0, #31
200222a0:	4082      	lsls	r2, r0
200222a2:	3320      	adds	r3, #32
200222a4:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
200222a8:	f3bf 8f4f 	dsb	sy
200222ac:	f3bf 8f6f 	isb	sy
200222b0:	4770      	bx	lr
200222b2:	bf00      	nop
200222b4:	e000e100 	.word	0xe000e100

200222b8 <DMA_Init>:
200222b8:	2302      	movs	r3, #2
200222ba:	b530      	push	{r4, r5, lr}
200222bc:	6a42      	ldr	r2, [r0, #36]	@ 0x24
200222be:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
200222c2:	6803      	ldr	r3, [r0, #0]
200222c4:	611a      	str	r2, [r3, #16]
200222c6:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
200222ca:	4323      	orrs	r3, r4
200222cc:	6904      	ldr	r4, [r0, #16]
200222ce:	6801      	ldr	r1, [r0, #0]
200222d0:	4323      	orrs	r3, r4
200222d2:	6944      	ldr	r4, [r0, #20]
200222d4:	680a      	ldr	r2, [r1, #0]
200222d6:	4323      	orrs	r3, r4
200222d8:	6984      	ldr	r4, [r0, #24]
200222da:	f36f 120e 	bfc	r2, #4, #11
200222de:	4323      	orrs	r3, r4
200222e0:	69c4      	ldr	r4, [r0, #28]
200222e2:	4323      	orrs	r3, r4
200222e4:	6a04      	ldr	r4, [r0, #32]
200222e6:	4323      	orrs	r3, r4
200222e8:	4313      	orrs	r3, r2
200222ea:	600b      	str	r3, [r1, #0]
200222ec:	6883      	ldr	r3, [r0, #8]
200222ee:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200222f2:	d018      	beq.n	20022326 <DMA_Init+0x6e>
200222f4:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
200222f6:	6c82      	ldr	r2, [r0, #72]	@ 0x48
200222f8:	f3c1 0387 	ubfx	r3, r1, #2, #8
200222fc:	06c9      	lsls	r1, r1, #27
200222fe:	d41b      	bmi.n	20022338 <DMA_Init+0x80>
20022300:	243f      	movs	r4, #63	@ 0x3f
20022302:	f003 0307 	and.w	r3, r3, #7
20022306:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
2002230a:	00db      	lsls	r3, r3, #3
2002230c:	409c      	lsls	r4, r3
2002230e:	ea21 0104 	bic.w	r1, r1, r4
20022312:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
20022316:	6c81      	ldr	r1, [r0, #72]	@ 0x48
20022318:	6842      	ldr	r2, [r0, #4]
2002231a:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
2002231e:	409a      	lsls	r2, r3
20022320:	4322      	orrs	r2, r4
20022322:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
20022326:	6982      	ldr	r2, [r0, #24]
20022328:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
2002232c:	d018      	beq.n	20022360 <DMA_Init+0xa8>
2002232e:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
20022332:	d01f      	beq.n	20022374 <DMA_Init+0xbc>
20022334:	b1aa      	cbz	r2, 20022362 <DMA_Init+0xaa>
20022336:	e7fe      	b.n	20022336 <DMA_Init+0x7e>
20022338:	243f      	movs	r4, #63	@ 0x3f
2002233a:	f003 0303 	and.w	r3, r3, #3
2002233e:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
20022342:	00db      	lsls	r3, r3, #3
20022344:	409c      	lsls	r4, r3
20022346:	ea21 0104 	bic.w	r1, r1, r4
2002234a:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
2002234e:	6c81      	ldr	r1, [r0, #72]	@ 0x48
20022350:	6842      	ldr	r2, [r0, #4]
20022352:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
20022356:	409a      	lsls	r2, r3
20022358:	4322      	orrs	r2, r4
2002235a:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
2002235e:	e7e2      	b.n	20022326 <DMA_Init+0x6e>
20022360:	2201      	movs	r2, #1
20022362:	6943      	ldr	r3, [r0, #20]
20022364:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20022368:	d006      	beq.n	20022378 <DMA_Init+0xc0>
2002236a:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
2002236e:	d02b      	beq.n	200223c8 <DMA_Init+0x110>
20022370:	b11b      	cbz	r3, 2002237a <DMA_Init+0xc2>
20022372:	e7fe      	b.n	20022372 <DMA_Init+0xba>
20022374:	2202      	movs	r2, #2
20022376:	e7f4      	b.n	20022362 <DMA_Init+0xaa>
20022378:	2301      	movs	r3, #1
2002237a:	6901      	ldr	r1, [r0, #16]
2002237c:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
20022380:	4261      	negs	r1, r4
20022382:	4161      	adcs	r1, r4
20022384:	68c4      	ldr	r4, [r0, #12]
20022386:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
2002238a:	426c      	negs	r4, r5
2002238c:	416c      	adcs	r4, r5
2002238e:	6885      	ldr	r5, [r0, #8]
20022390:	2d10      	cmp	r5, #16
20022392:	bf1f      	itttt	ne
20022394:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
20022398:	4619      	movne	r1, r3
2002239a:	4613      	movne	r3, r2
2002239c:	460a      	movne	r2, r1
2002239e:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
200223a2:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
200223a6:	f04f 0300 	mov.w	r3, #0
200223aa:	f04f 0201 	mov.w	r2, #1
200223ae:	6443      	str	r3, [r0, #68]	@ 0x44
200223b0:	bf06      	itte	eq
200223b2:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
200223b6:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
200223ba:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
200223be:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
200223c2:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
200223c6:	bd30      	pop	{r4, r5, pc}
200223c8:	2302      	movs	r3, #2
200223ca:	e7d6      	b.n	2002237a <DMA_Init+0xc2>

200223cc <DMA_AllocChannel>:
200223cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200223ce:	4b2e      	ldr	r3, [pc, #184]	@ (20022488 <DMA_AllocChannel+0xbc>)
200223d0:	6802      	ldr	r2, [r0, #0]
200223d2:	4413      	add	r3, r2
200223d4:	2ba0      	cmp	r3, #160	@ 0xa0
200223d6:	d904      	bls.n	200223e2 <DMA_AllocChannel+0x16>
200223d8:	4b2c      	ldr	r3, [pc, #176]	@ (2002248c <DMA_AllocChannel+0xc0>)
200223da:	4413      	add	r3, r2
200223dc:	2ba0      	cmp	r3, #160	@ 0xa0
200223de:	d90f      	bls.n	20022400 <DMA_AllocChannel+0x34>
200223e0:	e7fe      	b.n	200223e0 <DMA_AllocChannel+0x14>
200223e2:	2632      	movs	r6, #50	@ 0x32
200223e4:	f8df c0b0 	ldr.w	ip, [pc, #176]	@ 20022498 <DMA_AllocChannel+0xcc>
200223e8:	4b29      	ldr	r3, [pc, #164]	@ (20022490 <DMA_AllocChannel+0xc4>)
200223ea:	f3ef 8710 	mrs	r7, PRIMASK
200223ee:	2201      	movs	r2, #1
200223f0:	f382 8810 	msr	PRIMASK, r2
200223f4:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200223f6:	2d1f      	cmp	r5, #31
200223f8:	ea4f 0495 	mov.w	r4, r5, lsr #2
200223fc:	d905      	bls.n	2002240a <DMA_AllocChannel+0x3e>
200223fe:	e7fe      	b.n	200223fe <DMA_AllocChannel+0x32>
20022400:	2602      	movs	r6, #2
20022402:	f8df c098 	ldr.w	ip, [pc, #152]	@ 2002249c <DMA_AllocChannel+0xd0>
20022406:	4b23      	ldr	r3, [pc, #140]	@ (20022494 <DMA_AllocChannel+0xc8>)
20022408:	e7ef      	b.n	200223ea <DMA_AllocChannel+0x1e>
2002240a:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
2002240e:	f895 e004 	ldrb.w	lr, [r5, #4]
20022412:	f1be 0f00 	cmp.w	lr, #0
20022416:	d032      	beq.n	2002247e <DMA_AllocChannel+0xb2>
20022418:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
2002241c:	4282      	cmp	r2, r0
2002241e:	d103      	bne.n	20022428 <DMA_AllocChannel+0x5c>
20022420:	f387 8810 	msr	PRIMASK, r7
20022424:	2002      	movs	r0, #2
20022426:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022428:	2200      	movs	r2, #0
2002242a:	791c      	ldrb	r4, [r3, #4]
2002242c:	461d      	mov	r5, r3
2002242e:	bb04      	cbnz	r4, 20022472 <DMA_AllocChannel+0xa6>
20022430:	2301      	movs	r3, #1
20022432:	712b      	strb	r3, [r5, #4]
20022434:	2314      	movs	r3, #20
20022436:	fb03 c302 	mla	r3, r3, r2, ip
2002243a:	4416      	add	r6, r2
2002243c:	0092      	lsls	r2, r2, #2
2002243e:	b274      	sxtb	r4, r6
20022440:	6003      	str	r3, [r0, #0]
20022442:	64c2      	str	r2, [r0, #76]	@ 0x4c
20022444:	f387 8810 	msr	PRIMASK, r7
20022448:	b121      	cbz	r1, 20022454 <DMA_AllocChannel+0x88>
2002244a:	682b      	ldr	r3, [r5, #0]
2002244c:	4283      	cmp	r3, r0
2002244e:	d001      	beq.n	20022454 <DMA_AllocChannel+0x88>
20022450:	f7ff ff32 	bl	200222b8 <DMA_Init>
20022454:	6028      	str	r0, [r5, #0]
20022456:	6a83      	ldr	r3, [r0, #40]	@ 0x28
20022458:	f104 4260 	add.w	r2, r4, #3758096384	@ 0xe0000000
2002245c:	015b      	lsls	r3, r3, #5
2002245e:	b2db      	uxtb	r3, r3
20022460:	f502 4261 	add.w	r2, r2, #57600	@ 0xe100
20022464:	4620      	mov	r0, r4
20022466:	f882 3300 	strb.w	r3, [r2, #768]	@ 0x300
2002246a:	f7ff ff03 	bl	20022274 <HAL_NVIC_EnableIRQ>
2002246e:	2000      	movs	r0, #0
20022470:	e7d9      	b.n	20022426 <DMA_AllocChannel+0x5a>
20022472:	3201      	adds	r2, #1
20022474:	2a08      	cmp	r2, #8
20022476:	f103 0308 	add.w	r3, r3, #8
2002247a:	d1d6      	bne.n	2002242a <DMA_AllocChannel+0x5e>
2002247c:	e7d0      	b.n	20022420 <DMA_AllocChannel+0x54>
2002247e:	4434      	add	r4, r6
20022480:	712a      	strb	r2, [r5, #4]
20022482:	b264      	sxtb	r4, r4
20022484:	e7de      	b.n	20022444 <DMA_AllocChannel+0x78>
20022486:	bf00      	nop
20022488:	aff7eff8 	.word	0xaff7eff8
2002248c:	bfffeff8 	.word	0xbfffeff8
20022490:	2004cb70 	.word	0x2004cb70
20022494:	2004cb30 	.word	0x2004cb30
20022498:	50081008 	.word	0x50081008
2002249c:	40001008 	.word	0x40001008

200224a0 <DMA_FreeChannel.isra.0>:
200224a0:	b538      	push	{r3, r4, r5, lr}
200224a2:	4a13      	ldr	r2, [pc, #76]	@ (200224f0 <DMA_FreeChannel.isra.0+0x50>)
200224a4:	6c83      	ldr	r3, [r0, #72]	@ 0x48
200224a6:	4293      	cmp	r3, r2
200224a8:	d003      	beq.n	200224b2 <DMA_FreeChannel.isra.0+0x12>
200224aa:	4a12      	ldr	r2, [pc, #72]	@ (200224f4 <DMA_FreeChannel.isra.0+0x54>)
200224ac:	4293      	cmp	r3, r2
200224ae:	d008      	beq.n	200224c2 <DMA_FreeChannel.isra.0+0x22>
200224b0:	e7fe      	b.n	200224b0 <DMA_FreeChannel.isra.0+0x10>
200224b2:	2132      	movs	r1, #50	@ 0x32
200224b4:	4a10      	ldr	r2, [pc, #64]	@ (200224f8 <DMA_FreeChannel.isra.0+0x58>)
200224b6:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
200224b8:	2c1f      	cmp	r4, #31
200224ba:	ea4f 0394 	mov.w	r3, r4, lsr #2
200224be:	d903      	bls.n	200224c8 <DMA_FreeChannel.isra.0+0x28>
200224c0:	e7fe      	b.n	200224c0 <DMA_FreeChannel.isra.0+0x20>
200224c2:	2102      	movs	r1, #2
200224c4:	4a0d      	ldr	r2, [pc, #52]	@ (200224fc <DMA_FreeChannel.isra.0+0x5c>)
200224c6:	e7f6      	b.n	200224b6 <DMA_FreeChannel.isra.0+0x16>
200224c8:	f3ef 8410 	mrs	r4, PRIMASK
200224cc:	2501      	movs	r5, #1
200224ce:	f385 8810 	msr	PRIMASK, r5
200224d2:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
200224d6:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
200224da:	4290      	cmp	r0, r2
200224dc:	d105      	bne.n	200224ea <DMA_FreeChannel.isra.0+0x4a>
200224de:	1858      	adds	r0, r3, r1
200224e0:	b240      	sxtb	r0, r0
200224e2:	f7ff fed5 	bl	20022290 <HAL_NVIC_DisableIRQ>
200224e6:	2300      	movs	r3, #0
200224e8:	712b      	strb	r3, [r5, #4]
200224ea:	f384 8810 	msr	PRIMASK, r4
200224ee:	bd38      	pop	{r3, r4, r5, pc}
200224f0:	50081000 	.word	0x50081000
200224f4:	40001000 	.word	0x40001000
200224f8:	2004cb70 	.word	0x2004cb70
200224fc:	2004cb30 	.word	0x2004cb30

20022500 <HAL_DMA_Init>:
20022500:	b538      	push	{r3, r4, r5, lr}
20022502:	4604      	mov	r4, r0
20022504:	2800      	cmp	r0, #0
20022506:	d053      	beq.n	200225b0 <HAL_DMA_Init+0xb0>
20022508:	6883      	ldr	r3, [r0, #8]
2002250a:	f033 0210 	bics.w	r2, r3, #16
2002250e:	d003      	beq.n	20022518 <HAL_DMA_Init+0x18>
20022510:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022514:	d000      	beq.n	20022518 <HAL_DMA_Init+0x18>
20022516:	e7fe      	b.n	20022516 <HAL_DMA_Init+0x16>
20022518:	68e3      	ldr	r3, [r4, #12]
2002251a:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
2002251e:	d000      	beq.n	20022522 <HAL_DMA_Init+0x22>
20022520:	e7fe      	b.n	20022520 <HAL_DMA_Init+0x20>
20022522:	6923      	ldr	r3, [r4, #16]
20022524:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
20022528:	d000      	beq.n	2002252c <HAL_DMA_Init+0x2c>
2002252a:	e7fe      	b.n	2002252a <HAL_DMA_Init+0x2a>
2002252c:	6963      	ldr	r3, [r4, #20]
2002252e:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
20022532:	d003      	beq.n	2002253c <HAL_DMA_Init+0x3c>
20022534:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
20022538:	d000      	beq.n	2002253c <HAL_DMA_Init+0x3c>
2002253a:	e7fe      	b.n	2002253a <HAL_DMA_Init+0x3a>
2002253c:	69a3      	ldr	r3, [r4, #24]
2002253e:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
20022542:	d003      	beq.n	2002254c <HAL_DMA_Init+0x4c>
20022544:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
20022548:	d000      	beq.n	2002254c <HAL_DMA_Init+0x4c>
2002254a:	e7fe      	b.n	2002254a <HAL_DMA_Init+0x4a>
2002254c:	69e3      	ldr	r3, [r4, #28]
2002254e:	f033 0320 	bics.w	r3, r3, #32
20022552:	d000      	beq.n	20022556 <HAL_DMA_Init+0x56>
20022554:	e7fe      	b.n	20022554 <HAL_DMA_Init+0x54>
20022556:	6a23      	ldr	r3, [r4, #32]
20022558:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
2002255c:	d000      	beq.n	20022560 <HAL_DMA_Init+0x60>
2002255e:	e7fe      	b.n	2002255e <HAL_DMA_Init+0x5e>
20022560:	6863      	ldr	r3, [r4, #4]
20022562:	2b3f      	cmp	r3, #63	@ 0x3f
20022564:	d900      	bls.n	20022568 <HAL_DMA_Init+0x68>
20022566:	e7fe      	b.n	20022566 <HAL_DMA_Init+0x66>
20022568:	6822      	ldr	r2, [r4, #0]
2002256a:	4b13      	ldr	r3, [pc, #76]	@ (200225b8 <HAL_DMA_Init+0xb8>)
2002256c:	4413      	add	r3, r2
2002256e:	2b8c      	cmp	r3, #140	@ 0x8c
20022570:	d813      	bhi.n	2002259a <HAL_DMA_Init+0x9a>
20022572:	2214      	movs	r2, #20
20022574:	fbb3 f3f2 	udiv	r3, r3, r2
20022578:	009b      	lsls	r3, r3, #2
2002257a:	64e3      	str	r3, [r4, #76]	@ 0x4c
2002257c:	4b0f      	ldr	r3, [pc, #60]	@ (200225bc <HAL_DMA_Init+0xbc>)
2002257e:	64a3      	str	r3, [r4, #72]	@ 0x48
20022580:	2100      	movs	r1, #0
20022582:	4620      	mov	r0, r4
20022584:	f7ff ff22 	bl	200223cc <DMA_AllocChannel>
20022588:	4605      	mov	r5, r0
2002258a:	b998      	cbnz	r0, 200225b4 <HAL_DMA_Init+0xb4>
2002258c:	4620      	mov	r0, r4
2002258e:	f7ff fe93 	bl	200222b8 <DMA_Init>
20022592:	f7ff ff85 	bl	200224a0 <DMA_FreeChannel.isra.0>
20022596:	4628      	mov	r0, r5
20022598:	bd38      	pop	{r3, r4, r5, pc}
2002259a:	4b09      	ldr	r3, [pc, #36]	@ (200225c0 <HAL_DMA_Init+0xc0>)
2002259c:	4413      	add	r3, r2
2002259e:	2b8c      	cmp	r3, #140	@ 0x8c
200225a0:	d8ee      	bhi.n	20022580 <HAL_DMA_Init+0x80>
200225a2:	2214      	movs	r2, #20
200225a4:	fbb3 f3f2 	udiv	r3, r3, r2
200225a8:	009b      	lsls	r3, r3, #2
200225aa:	64e3      	str	r3, [r4, #76]	@ 0x4c
200225ac:	4b05      	ldr	r3, [pc, #20]	@ (200225c4 <HAL_DMA_Init+0xc4>)
200225ae:	e7e6      	b.n	2002257e <HAL_DMA_Init+0x7e>
200225b0:	2501      	movs	r5, #1
200225b2:	e7f0      	b.n	20022596 <HAL_DMA_Init+0x96>
200225b4:	2502      	movs	r5, #2
200225b6:	e7ee      	b.n	20022596 <HAL_DMA_Init+0x96>
200225b8:	aff7eff8 	.word	0xaff7eff8
200225bc:	50081000 	.word	0x50081000
200225c0:	bfffeff8 	.word	0xbfffeff8
200225c4:	40001000 	.word	0x40001000

200225c8 <HAL_DMA_DeInit>:
200225c8:	b510      	push	{r4, lr}
200225ca:	4604      	mov	r4, r0
200225cc:	2800      	cmp	r0, #0
200225ce:	d051      	beq.n	20022674 <HAL_DMA_DeInit+0xac>
200225d0:	6802      	ldr	r2, [r0, #0]
200225d2:	6813      	ldr	r3, [r2, #0]
200225d4:	f023 0301 	bic.w	r3, r3, #1
200225d8:	6013      	str	r3, [r2, #0]
200225da:	6802      	ldr	r2, [r0, #0]
200225dc:	4b26      	ldr	r3, [pc, #152]	@ (20022678 <HAL_DMA_DeInit+0xb0>)
200225de:	4413      	add	r3, r2
200225e0:	2b8c      	cmp	r3, #140	@ 0x8c
200225e2:	d82f      	bhi.n	20022644 <HAL_DMA_DeInit+0x7c>
200225e4:	2114      	movs	r1, #20
200225e6:	fbb3 f3f1 	udiv	r3, r3, r1
200225ea:	009b      	lsls	r3, r3, #2
200225ec:	64c3      	str	r3, [r0, #76]	@ 0x4c
200225ee:	4b23      	ldr	r3, [pc, #140]	@ (2002267c <HAL_DMA_DeInit+0xb4>)
200225f0:	64a3      	str	r3, [r4, #72]	@ 0x48
200225f2:	2300      	movs	r3, #0
200225f4:	6013      	str	r3, [r2, #0]
200225f6:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
200225fa:	f003 021c 	and.w	r2, r3, #28
200225fe:	2301      	movs	r3, #1
20022600:	4093      	lsls	r3, r2
20022602:	604b      	str	r3, [r1, #4]
20022604:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
20022606:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
20022608:	2b0f      	cmp	r3, #15
2002260a:	ea4f 0293 	mov.w	r2, r3, lsr #2
2002260e:	d824      	bhi.n	2002265a <HAL_DMA_DeInit+0x92>
20022610:	203f      	movs	r0, #63	@ 0x3f
20022612:	005b      	lsls	r3, r3, #1
20022614:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
20022618:	f003 0338 	and.w	r3, r3, #56	@ 0x38
2002261c:	fa00 f303 	lsl.w	r3, r0, r3
20022620:	ea22 0303 	bic.w	r3, r2, r3
20022624:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
20022628:	4620      	mov	r0, r4
2002262a:	f7ff ff39 	bl	200224a0 <DMA_FreeChannel.isra.0>
2002262e:	2000      	movs	r0, #0
20022630:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
20022634:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
20022638:	6460      	str	r0, [r4, #68]	@ 0x44
2002263a:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
2002263e:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
20022642:	bd10      	pop	{r4, pc}
20022644:	4b0e      	ldr	r3, [pc, #56]	@ (20022680 <HAL_DMA_DeInit+0xb8>)
20022646:	4413      	add	r3, r2
20022648:	2b8c      	cmp	r3, #140	@ 0x8c
2002264a:	d8d2      	bhi.n	200225f2 <HAL_DMA_DeInit+0x2a>
2002264c:	2114      	movs	r1, #20
2002264e:	fbb3 f3f1 	udiv	r3, r3, r1
20022652:	009b      	lsls	r3, r3, #2
20022654:	64c3      	str	r3, [r0, #76]	@ 0x4c
20022656:	4b0b      	ldr	r3, [pc, #44]	@ (20022684 <HAL_DMA_DeInit+0xbc>)
20022658:	e7ca      	b.n	200225f0 <HAL_DMA_DeInit+0x28>
2002265a:	f002 0303 	and.w	r3, r2, #3
2002265e:	223f      	movs	r2, #63	@ 0x3f
20022660:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
20022664:	00db      	lsls	r3, r3, #3
20022666:	fa02 f303 	lsl.w	r3, r2, r3
2002266a:	ea20 0303 	bic.w	r3, r0, r3
2002266e:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
20022672:	e7d9      	b.n	20022628 <HAL_DMA_DeInit+0x60>
20022674:	2001      	movs	r0, #1
20022676:	e7e4      	b.n	20022642 <HAL_DMA_DeInit+0x7a>
20022678:	aff7eff8 	.word	0xaff7eff8
2002267c:	50081000 	.word	0x50081000
20022680:	bfffeff8 	.word	0xbfffeff8
20022684:	40001000 	.word	0x40001000

20022688 <HAL_DMA_PollForTransfer>:
20022688:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002268c:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022690:	4617      	mov	r7, r2
20022692:	2b02      	cmp	r3, #2
20022694:	4604      	mov	r4, r0
20022696:	4688      	mov	r8, r1
20022698:	b2da      	uxtb	r2, r3
2002269a:	d005      	beq.n	200226a8 <HAL_DMA_PollForTransfer+0x20>
2002269c:	2304      	movs	r3, #4
2002269e:	6443      	str	r3, [r0, #68]	@ 0x44
200226a0:	2300      	movs	r3, #0
200226a2:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
200226a6:	e006      	b.n	200226b6 <HAL_DMA_PollForTransfer+0x2e>
200226a8:	6803      	ldr	r3, [r0, #0]
200226aa:	681b      	ldr	r3, [r3, #0]
200226ac:	0699      	lsls	r1, r3, #26
200226ae:	d505      	bpl.n	200226bc <HAL_DMA_PollForTransfer+0x34>
200226b0:	f44f 7380 	mov.w	r3, #256	@ 0x100
200226b4:	6443      	str	r3, [r0, #68]	@ 0x44
200226b6:	2001      	movs	r0, #1
200226b8:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
200226bc:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200226be:	f005 051c 	and.w	r5, r5, #28
200226c2:	f1b8 0f00 	cmp.w	r8, #0
200226c6:	d123      	bne.n	20022710 <HAL_DMA_PollForTransfer+0x88>
200226c8:	fa02 f505 	lsl.w	r5, r2, r5
200226cc:	f7ff fc0c 	bl	20021ee8 <HAL_GetTick>
200226d0:	f04f 0a08 	mov.w	sl, #8
200226d4:	4681      	mov	r9, r0
200226d6:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
200226da:	f003 031c 	and.w	r3, r3, #28
200226de:	fa0a f103 	lsl.w	r1, sl, r3
200226e2:	6832      	ldr	r2, [r6, #0]
200226e4:	ea12 0b05 	ands.w	fp, r2, r5
200226e8:	d016      	beq.n	20022718 <HAL_DMA_PollForTransfer+0x90>
200226ea:	f1b8 0f00 	cmp.w	r8, #0
200226ee:	d136      	bne.n	2002275e <HAL_DMA_PollForTransfer+0xd6>
200226f0:	2202      	movs	r2, #2
200226f2:	fa02 f303 	lsl.w	r3, r2, r3
200226f6:	6073      	str	r3, [r6, #4]
200226f8:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200226fa:	b92b      	cbnz	r3, 20022708 <HAL_DMA_PollForTransfer+0x80>
200226fc:	4620      	mov	r0, r4
200226fe:	f7ff fecf 	bl	200224a0 <DMA_FreeChannel.isra.0>
20022702:	2301      	movs	r3, #1
20022704:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022708:	2000      	movs	r0, #0
2002270a:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
2002270e:	e7d3      	b.n	200226b8 <HAL_DMA_PollForTransfer+0x30>
20022710:	2304      	movs	r3, #4
20022712:	fa03 f505 	lsl.w	r5, r3, r5
20022716:	e7d9      	b.n	200226cc <HAL_DMA_PollForTransfer+0x44>
20022718:	6832      	ldr	r2, [r6, #0]
2002271a:	4211      	tst	r1, r2
2002271c:	d00c      	beq.n	20022738 <HAL_DMA_PollForTransfer+0xb0>
2002271e:	2501      	movs	r5, #1
20022720:	fa05 f303 	lsl.w	r3, r5, r3
20022724:	6073      	str	r3, [r6, #4]
20022726:	4620      	mov	r0, r4
20022728:	6465      	str	r5, [r4, #68]	@ 0x44
2002272a:	f7ff feb9 	bl	200224a0 <DMA_FreeChannel.isra.0>
2002272e:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
20022732:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
20022736:	e7be      	b.n	200226b6 <HAL_DMA_PollForTransfer+0x2e>
20022738:	1c7a      	adds	r2, r7, #1
2002273a:	d0d2      	beq.n	200226e2 <HAL_DMA_PollForTransfer+0x5a>
2002273c:	f7ff fbd4 	bl	20021ee8 <HAL_GetTick>
20022740:	eba0 0009 	sub.w	r0, r0, r9
20022744:	42b8      	cmp	r0, r7
20022746:	d801      	bhi.n	2002274c <HAL_DMA_PollForTransfer+0xc4>
20022748:	2f00      	cmp	r7, #0
2002274a:	d1c4      	bne.n	200226d6 <HAL_DMA_PollForTransfer+0x4e>
2002274c:	2320      	movs	r3, #32
2002274e:	4620      	mov	r0, r4
20022750:	6463      	str	r3, [r4, #68]	@ 0x44
20022752:	f7ff fea5 	bl	200224a0 <DMA_FreeChannel.isra.0>
20022756:	2301      	movs	r3, #1
20022758:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
2002275c:	e7a0      	b.n	200226a0 <HAL_DMA_PollForTransfer+0x18>
2002275e:	2204      	movs	r2, #4
20022760:	fa02 f303 	lsl.w	r3, r2, r3
20022764:	6073      	str	r3, [r6, #4]
20022766:	e7cf      	b.n	20022708 <HAL_DMA_PollForTransfer+0x80>

20022768 <DMA_Remap>:
20022768:	b530      	push	{r4, r5, lr}
2002276a:	4b15      	ldr	r3, [pc, #84]	@ (200227c0 <DMA_Remap+0x58>)
2002276c:	6c84      	ldr	r4, [r0, #72]	@ 0x48
2002276e:	429c      	cmp	r4, r3
20022770:	d11b      	bne.n	200227aa <DMA_Remap+0x42>
20022772:	6883      	ldr	r3, [r0, #8]
20022774:	2b10      	cmp	r3, #16
20022776:	d002      	beq.n	2002277e <DMA_Remap+0x16>
20022778:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
2002277c:	d108      	bne.n	20022790 <DMA_Remap+0x28>
2002277e:	680b      	ldr	r3, [r1, #0]
20022780:	4c10      	ldr	r4, [pc, #64]	@ (200227c4 <DMA_Remap+0x5c>)
20022782:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
20022786:	42a5      	cmp	r5, r4
20022788:	bf98      	it	ls
2002278a:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
2002278e:	600b      	str	r3, [r1, #0]
20022790:	6883      	ldr	r3, [r0, #8]
20022792:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
20022796:	d108      	bne.n	200227aa <DMA_Remap+0x42>
20022798:	6813      	ldr	r3, [r2, #0]
2002279a:	480a      	ldr	r0, [pc, #40]	@ (200227c4 <DMA_Remap+0x5c>)
2002279c:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
200227a0:	4284      	cmp	r4, r0
200227a2:	bf98      	it	ls
200227a4:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
200227a8:	6013      	str	r3, [r2, #0]
200227aa:	680b      	ldr	r3, [r1, #0]
200227ac:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
200227b0:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
200227b4:	bf3c      	itt	cc
200227b6:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
200227ba:	600b      	strcc	r3, [r1, #0]
200227bc:	bd30      	pop	{r4, r5, pc}
200227be:	bf00      	nop
200227c0:	40001000 	.word	0x40001000
200227c4:	0007fffe 	.word	0x0007fffe

200227c8 <DMA_Start>:
200227c8:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
200227cc:	f64f 75ff 	movw	r5, #65535	@ 0xffff
200227d0:	6d03      	ldr	r3, [r0, #80]	@ 0x50
200227d2:	6802      	ldr	r2, [r0, #0]
200227d4:	429d      	cmp	r5, r3
200227d6:	bf28      	it	cs
200227d8:	461d      	movcs	r5, r3
200227da:	1b5b      	subs	r3, r3, r5
200227dc:	6503      	str	r3, [r0, #80]	@ 0x50
200227de:	6585      	str	r5, [r0, #88]	@ 0x58
200227e0:	6813      	ldr	r3, [r2, #0]
200227e2:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
200227e6:	f023 0301 	bic.w	r3, r3, #1
200227ea:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
200227ee:	6013      	str	r3, [r2, #0]
200227f0:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
200227f4:	460e      	mov	r6, r1
200227f6:	e9cd 2300 	strd	r2, r3, [sp]
200227fa:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
200227fe:	f003 011c 	and.w	r1, r3, #28
20022802:	2301      	movs	r3, #1
20022804:	4604      	mov	r4, r0
20022806:	408b      	lsls	r3, r1
20022808:	6053      	str	r3, [r2, #4]
2002280a:	6803      	ldr	r3, [r0, #0]
2002280c:	4669      	mov	r1, sp
2002280e:	605d      	str	r5, [r3, #4]
20022810:	aa01      	add	r2, sp, #4
20022812:	f7ff ffa9 	bl	20022768 <DMA_Remap>
20022816:	e9dd 0300 	ldrd	r0, r3, [sp]
2002281a:	68a1      	ldr	r1, [r4, #8]
2002281c:	6822      	ldr	r2, [r4, #0]
2002281e:	2910      	cmp	r1, #16
20022820:	bf0b      	itete	eq
20022822:	6093      	streq	r3, [r2, #8]
20022824:	6090      	strne	r0, [r2, #8]
20022826:	6823      	ldreq	r3, [r4, #0]
20022828:	6822      	ldrne	r2, [r4, #0]
2002282a:	bf0c      	ite	eq
2002282c:	60d8      	streq	r0, [r3, #12]
2002282e:	60d3      	strne	r3, [r2, #12]
20022830:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
20022834:	b123      	cbz	r3, 20022840 <DMA_Start+0x78>
20022836:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20022838:	fa05 f707 	lsl.w	r7, r5, r7
2002283c:	443b      	add	r3, r7
2002283e:	65e3      	str	r3, [r4, #92]	@ 0x5c
20022840:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
20022844:	b123      	cbz	r3, 20022850 <DMA_Start+0x88>
20022846:	6e23      	ldr	r3, [r4, #96]	@ 0x60
20022848:	fa05 f508 	lsl.w	r5, r5, r8
2002284c:	442b      	add	r3, r5
2002284e:	6623      	str	r3, [r4, #96]	@ 0x60
20022850:	b136      	cbz	r6, 20022860 <DMA_Start+0x98>
20022852:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20022854:	6823      	ldr	r3, [r4, #0]
20022856:	b15a      	cbz	r2, 20022870 <DMA_Start+0xa8>
20022858:	681a      	ldr	r2, [r3, #0]
2002285a:	f042 020e 	orr.w	r2, r2, #14
2002285e:	601a      	str	r2, [r3, #0]
20022860:	6822      	ldr	r2, [r4, #0]
20022862:	6813      	ldr	r3, [r2, #0]
20022864:	f043 0301 	orr.w	r3, r3, #1
20022868:	6013      	str	r3, [r2, #0]
2002286a:	b002      	add	sp, #8
2002286c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022870:	681a      	ldr	r2, [r3, #0]
20022872:	f022 0204 	bic.w	r2, r2, #4
20022876:	601a      	str	r2, [r3, #0]
20022878:	6822      	ldr	r2, [r4, #0]
2002287a:	6813      	ldr	r3, [r2, #0]
2002287c:	f043 030a 	orr.w	r3, r3, #10
20022880:	6013      	str	r3, [r2, #0]
20022882:	e7ed      	b.n	20022860 <DMA_Start+0x98>

20022884 <HAL_DMA_Start>:
20022884:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022886:	461d      	mov	r5, r3
20022888:	69c3      	ldr	r3, [r0, #28]
2002288a:	4604      	mov	r4, r0
2002288c:	2b20      	cmp	r3, #32
2002288e:	460f      	mov	r7, r1
20022890:	4616      	mov	r6, r2
20022892:	d105      	bne.n	200228a0 <HAL_DMA_Start+0x1c>
20022894:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
20022898:	1e6a      	subs	r2, r5, #1
2002289a:	429a      	cmp	r2, r3
2002289c:	d900      	bls.n	200228a0 <HAL_DMA_Start+0x1c>
2002289e:	e7fe      	b.n	2002289e <HAL_DMA_Start+0x1a>
200228a0:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
200228a4:	2b01      	cmp	r3, #1
200228a6:	d00e      	beq.n	200228c6 <HAL_DMA_Start+0x42>
200228a8:	2301      	movs	r3, #1
200228aa:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
200228ae:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
200228b2:	2b01      	cmp	r3, #1
200228b4:	b2d9      	uxtb	r1, r3
200228b6:	d103      	bne.n	200228c0 <HAL_DMA_Start+0x3c>
200228b8:	4620      	mov	r0, r4
200228ba:	f7ff fd87 	bl	200223cc <DMA_AllocChannel>
200228be:	b120      	cbz	r0, 200228ca <HAL_DMA_Start+0x46>
200228c0:	2300      	movs	r3, #0
200228c2:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
200228c6:	2002      	movs	r0, #2
200228c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200228ca:	2302      	movs	r3, #2
200228cc:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
200228d0:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
200228d4:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200228d8:	6460      	str	r0, [r4, #68]	@ 0x44
200228da:	6d20      	ldr	r0, [r4, #80]	@ 0x50
200228dc:	2800      	cmp	r0, #0
200228de:	d0f3      	beq.n	200228c8 <HAL_DMA_Start+0x44>
200228e0:	2100      	movs	r1, #0
200228e2:	4620      	mov	r0, r4
200228e4:	f7ff ff70 	bl	200227c8 <DMA_Start>
200228e8:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200228ea:	2b00      	cmp	r3, #0
200228ec:	d0f5      	beq.n	200228da <HAL_DMA_Start+0x56>
200228ee:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
200228f2:	2100      	movs	r1, #0
200228f4:	4620      	mov	r0, r4
200228f6:	f7ff fec7 	bl	20022688 <HAL_DMA_PollForTransfer>
200228fa:	2800      	cmp	r0, #0
200228fc:	d0ed      	beq.n	200228da <HAL_DMA_Start+0x56>
200228fe:	e7e3      	b.n	200228c8 <HAL_DMA_Start+0x44>

20022900 <HAL_EFUSE_Read>:
20022900:	2a20      	cmp	r2, #32
20022902:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20022906:	4606      	mov	r6, r0
20022908:	460c      	mov	r4, r1
2002290a:	4615      	mov	r5, r2
2002290c:	dc30      	bgt.n	20022970 <HAL_EFUSE_Read+0x70>
2002290e:	f3c0 08c4 	ubfx	r8, r0, #3, #5
20022912:	eb08 0302 	add.w	r3, r8, r2
20022916:	2b20      	cmp	r3, #32
20022918:	dc2a      	bgt.n	20022970 <HAL_EFUSE_Read+0x70>
2002291a:	0797      	lsls	r7, r2, #30
2002291c:	d128      	bne.n	20022970 <HAL_EFUSE_Read+0x70>
2002291e:	f010 091f 	ands.w	r9, r0, #31
20022922:	d125      	bne.n	20022970 <HAL_EFUSE_Read+0x70>
20022924:	4a25      	ldr	r2, [pc, #148]	@ (200229bc <HAL_EFUSE_Read+0xbc>)
20022926:	2014      	movs	r0, #20
20022928:	f8d2 7094 	ldr.w	r7, [r2, #148]	@ 0x94
2002292c:	0a36      	lsrs	r6, r6, #8
2002292e:	1cfb      	adds	r3, r7, #3
20022930:	2b0e      	cmp	r3, #14
20022932:	bf38      	it	cc
20022934:	230e      	movcc	r3, #14
20022936:	2b0f      	cmp	r3, #15
20022938:	bf28      	it	cs
2002293a:	230f      	movcs	r3, #15
2002293c:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20022940:	f7ff fb37 	bl	20021fb2 <HAL_Delay_us>
20022944:	4a1e      	ldr	r2, [pc, #120]	@ (200229c0 <HAL_EFUSE_Read+0xc0>)
20022946:	00b3      	lsls	r3, r6, #2
20022948:	6013      	str	r3, [r2, #0]
2002294a:	6813      	ldr	r3, [r2, #0]
2002294c:	491d      	ldr	r1, [pc, #116]	@ (200229c4 <HAL_EFUSE_Read+0xc4>)
2002294e:	f043 0301 	orr.w	r3, r3, #1
20022952:	6013      	str	r3, [r2, #0]
20022954:	464b      	mov	r3, r9
20022956:	4369      	muls	r1, r5
20022958:	6890      	ldr	r0, [r2, #8]
2002295a:	07c0      	lsls	r0, r0, #31
2002295c:	d50c      	bpl.n	20022978 <HAL_EFUSE_Read+0x78>
2002295e:	6890      	ldr	r0, [r2, #8]
20022960:	428b      	cmp	r3, r1
20022962:	f040 0001 	orr.w	r0, r0, #1
20022966:	6090      	str	r0, [r2, #8]
20022968:	d30a      	bcc.n	20022980 <HAL_EFUSE_Read+0x80>
2002296a:	4b14      	ldr	r3, [pc, #80]	@ (200229bc <HAL_EFUSE_Read+0xbc>)
2002296c:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
20022970:	2500      	movs	r5, #0
20022972:	4628      	mov	r0, r5
20022974:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20022978:	428b      	cmp	r3, r1
2002297a:	d2f0      	bcs.n	2002295e <HAL_EFUSE_Read+0x5e>
2002297c:	3301      	adds	r3, #1
2002297e:	e7eb      	b.n	20022958 <HAL_EFUSE_Read+0x58>
20022980:	4a11      	ldr	r2, [pc, #68]	@ (200229c8 <HAL_EFUSE_Read+0xc8>)
20022982:	f008 001c 	and.w	r0, r8, #28
20022986:	eb00 1046 	add.w	r0, r0, r6, lsl #5
2002298a:	f025 0103 	bic.w	r1, r5, #3
2002298e:	4402      	add	r2, r0
20022990:	4421      	add	r1, r4
20022992:	428c      	cmp	r4, r1
20022994:	d103      	bne.n	2002299e <HAL_EFUSE_Read+0x9e>
20022996:	4b09      	ldr	r3, [pc, #36]	@ (200229bc <HAL_EFUSE_Read+0xbc>)
20022998:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
2002299c:	e7e9      	b.n	20022972 <HAL_EFUSE_Read+0x72>
2002299e:	f852 3b04 	ldr.w	r3, [r2], #4
200229a2:	3404      	adds	r4, #4
200229a4:	0a18      	lsrs	r0, r3, #8
200229a6:	f804 3c04 	strb.w	r3, [r4, #-4]
200229aa:	f804 0c03 	strb.w	r0, [r4, #-3]
200229ae:	0c18      	lsrs	r0, r3, #16
200229b0:	0e1b      	lsrs	r3, r3, #24
200229b2:	f804 0c02 	strb.w	r0, [r4, #-2]
200229b6:	f804 3c01 	strb.w	r3, [r4, #-1]
200229ba:	e7ea      	b.n	20022992 <HAL_EFUSE_Read+0x92>
200229bc:	500ca000 	.word	0x500ca000
200229c0:	5000c000 	.word	0x5000c000
200229c4:	0005dc00 	.word	0x0005dc00
200229c8:	5000c030 	.word	0x5000c030

200229cc <HAL_DBG_printf>:
200229cc:	b40f      	push	{r0, r1, r2, r3}
200229ce:	b004      	add	sp, #16
200229d0:	4770      	bx	lr
	...

200229d4 <HAL_HPAON_WakeCore>:
200229d4:	2802      	cmp	r0, #2
200229d6:	b510      	push	{r4, lr}
200229d8:	d120      	bne.n	20022a1c <HAL_HPAON_WakeCore+0x48>
200229da:	4c11      	ldr	r4, [pc, #68]	@ (20022a20 <HAL_HPAON_WakeCore+0x4c>)
200229dc:	20e6      	movs	r0, #230	@ 0xe6
200229de:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200229e0:	f043 0301 	orr.w	r3, r3, #1
200229e4:	62e3      	str	r3, [r4, #44]	@ 0x2c
200229e6:	f7ff fae4 	bl	20021fb2 <HAL_Delay_us>
200229ea:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200229ec:	069a      	lsls	r2, r3, #26
200229ee:	d5fc      	bpl.n	200229ea <HAL_HPAON_WakeCore+0x16>
200229f0:	201e      	movs	r0, #30
200229f2:	f7ff fade 	bl	20021fb2 <HAL_Delay_us>
200229f6:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200229f8:	069b      	lsls	r3, r3, #26
200229fa:	d5fc      	bpl.n	200229f6 <HAL_HPAON_WakeCore+0x22>
200229fc:	f3ef 8110 	mrs	r1, PRIMASK
20022a00:	2301      	movs	r3, #1
20022a02:	f383 8810 	msr	PRIMASK, r3
20022a06:	4a07      	ldr	r2, [pc, #28]	@ (20022a24 <HAL_HPAON_WakeCore+0x50>)
20022a08:	7813      	ldrb	r3, [r2, #0]
20022a0a:	2b13      	cmp	r3, #19
20022a0c:	d900      	bls.n	20022a10 <HAL_HPAON_WakeCore+0x3c>
20022a0e:	e7fe      	b.n	20022a0e <HAL_HPAON_WakeCore+0x3a>
20022a10:	3301      	adds	r3, #1
20022a12:	7013      	strb	r3, [r2, #0]
20022a14:	f381 8810 	msr	PRIMASK, r1
20022a18:	2000      	movs	r0, #0
20022a1a:	bd10      	pop	{r4, pc}
20022a1c:	2001      	movs	r0, #1
20022a1e:	e7fc      	b.n	20022a1a <HAL_HPAON_WakeCore+0x46>
20022a20:	500c0000 	.word	0x500c0000
20022a24:	2004cbb0 	.word	0x2004cbb0

20022a28 <HAL_HPAON_EnableXT48>:
20022a28:	4b04      	ldr	r3, [pc, #16]	@ (20022a3c <HAL_HPAON_EnableXT48+0x14>)
20022a2a:	691a      	ldr	r2, [r3, #16]
20022a2c:	f042 0202 	orr.w	r2, r2, #2
20022a30:	611a      	str	r2, [r3, #16]
20022a32:	691a      	ldr	r2, [r3, #16]
20022a34:	2a00      	cmp	r2, #0
20022a36:	dafc      	bge.n	20022a32 <HAL_HPAON_EnableXT48+0xa>
20022a38:	4770      	bx	lr
20022a3a:	bf00      	nop
20022a3c:	500c0000 	.word	0x500c0000

20022a40 <HAL_HPAON_DisableXT48>:
20022a40:	4a02      	ldr	r2, [pc, #8]	@ (20022a4c <HAL_HPAON_DisableXT48+0xc>)
20022a42:	6913      	ldr	r3, [r2, #16]
20022a44:	f023 0302 	bic.w	r3, r3, #2
20022a48:	6113      	str	r3, [r2, #16]
20022a4a:	4770      	bx	lr
20022a4c:	500c0000 	.word	0x500c0000

20022a50 <HAL_QSPI_Init>:
20022a50:	b510      	push	{r4, lr}
20022a52:	b1e0      	cbz	r0, 20022a8e <HAL_QSPI_Init+0x3e>
20022a54:	b1d9      	cbz	r1, 20022a8e <HAL_QSPI_Init+0x3e>
20022a56:	2300      	movs	r3, #0
20022a58:	2201      	movs	r2, #1
20022a5a:	6043      	str	r3, [r0, #4]
20022a5c:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20022a60:	680c      	ldr	r4, [r1, #0]
20022a62:	6004      	str	r4, [r0, #0]
20022a64:	684a      	ldr	r2, [r1, #4]
20022a66:	f880 2020 	strb.w	r2, [r0, #32]
20022a6a:	688a      	ldr	r2, [r1, #8]
20022a6c:	6102      	str	r2, [r0, #16]
20022a6e:	68ca      	ldr	r2, [r1, #12]
20022a70:	0512      	lsls	r2, r2, #20
20022a72:	6142      	str	r2, [r0, #20]
20022a74:	22ff      	movs	r2, #255	@ 0xff
20022a76:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20022a7a:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20022a7e:	6801      	ldr	r1, [r0, #0]
20022a80:	678c      	str	r4, [r1, #120]	@ 0x78
20022a82:	6801      	ldr	r1, [r0, #0]
20022a84:	620a      	str	r2, [r1, #32]
20022a86:	6801      	ldr	r1, [r0, #0]
20022a88:	4618      	mov	r0, r3
20022a8a:	644a      	str	r2, [r1, #68]	@ 0x44
20022a8c:	bd10      	pop	{r4, pc}
20022a8e:	2001      	movs	r0, #1
20022a90:	e7fc      	b.n	20022a8c <HAL_QSPI_Init+0x3c>

20022a92 <HAL_FLASH_SET_AHB_RCMD>:
20022a92:	b138      	cbz	r0, 20022aa4 <HAL_FLASH_SET_AHB_RCMD+0x12>
20022a94:	6802      	ldr	r2, [r0, #0]
20022a96:	2000      	movs	r0, #0
20022a98:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022a9a:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022a9e:	4319      	orrs	r1, r3
20022aa0:	6411      	str	r1, [r2, #64]	@ 0x40
20022aa2:	4770      	bx	lr
20022aa4:	2001      	movs	r0, #1
20022aa6:	4770      	bx	lr

20022aa8 <HAL_FLASH_CFG_AHB_RCMD>:
20022aa8:	b570      	push	{r4, r5, r6, lr}
20022aaa:	b1c8      	cbz	r0, 20022ae0 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022aac:	6805      	ldr	r5, [r0, #0]
20022aae:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022ab2:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022ab6:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022ab8:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022abc:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022ac0:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022ac4:	f36f 0414 	bfc	r4, #0, #21
20022ac8:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022acc:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022ad0:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022ad4:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022ad8:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022adc:	4321      	orrs	r1, r4
20022ade:	64a9      	str	r1, [r5, #72]	@ 0x48
20022ae0:	bd70      	pop	{r4, r5, r6, pc}

20022ae2 <HAL_FLASH_SET_AHB_WCMD>:
20022ae2:	b140      	cbz	r0, 20022af6 <HAL_FLASH_SET_AHB_WCMD+0x14>
20022ae4:	6802      	ldr	r2, [r0, #0]
20022ae6:	2000      	movs	r0, #0
20022ae8:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022aea:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022aee:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022af2:	6411      	str	r1, [r2, #64]	@ 0x40
20022af4:	4770      	bx	lr
20022af6:	2001      	movs	r0, #1
20022af8:	4770      	bx	lr

20022afa <HAL_FLASH_CFG_AHB_WCMD>:
20022afa:	b570      	push	{r4, r5, r6, lr}
20022afc:	b1c8      	cbz	r0, 20022b32 <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022afe:	6805      	ldr	r5, [r0, #0]
20022b00:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022b04:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022b08:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022b0a:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022b0e:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022b12:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022b16:	f36f 0414 	bfc	r4, #0, #21
20022b1a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022b1e:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022b22:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022b26:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022b2a:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022b2e:	4321      	orrs	r1, r4
20022b30:	6529      	str	r1, [r5, #80]	@ 0x50
20022b32:	bd70      	pop	{r4, r5, r6, pc}

20022b34 <HAL_FLASH_WRITE_WORD>:
20022b34:	b118      	cbz	r0, 20022b3e <HAL_FLASH_WRITE_WORD+0xa>
20022b36:	6803      	ldr	r3, [r0, #0]
20022b38:	2000      	movs	r0, #0
20022b3a:	6059      	str	r1, [r3, #4]
20022b3c:	4770      	bx	lr
20022b3e:	2001      	movs	r0, #1
20022b40:	4770      	bx	lr

20022b42 <HAL_FLASH_WRITE_DLEN>:
20022b42:	b130      	cbz	r0, 20022b52 <HAL_FLASH_WRITE_DLEN+0x10>
20022b44:	6803      	ldr	r3, [r0, #0]
20022b46:	3901      	subs	r1, #1
20022b48:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022b4c:	2000      	movs	r0, #0
20022b4e:	6259      	str	r1, [r3, #36]	@ 0x24
20022b50:	4770      	bx	lr
20022b52:	2001      	movs	r0, #1
20022b54:	4770      	bx	lr

20022b56 <HAL_FLASH_WRITE_DLEN2>:
20022b56:	b130      	cbz	r0, 20022b66 <HAL_FLASH_WRITE_DLEN2+0x10>
20022b58:	6803      	ldr	r3, [r0, #0]
20022b5a:	3901      	subs	r1, #1
20022b5c:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022b60:	2000      	movs	r0, #0
20022b62:	6399      	str	r1, [r3, #56]	@ 0x38
20022b64:	4770      	bx	lr
20022b66:	2001      	movs	r0, #1
20022b68:	4770      	bx	lr

20022b6a <HAL_FLASH_WRITE_ABYTE>:
20022b6a:	b108      	cbz	r0, 20022b70 <HAL_FLASH_WRITE_ABYTE+0x6>
20022b6c:	6803      	ldr	r3, [r0, #0]
20022b6e:	6219      	str	r1, [r3, #32]
20022b70:	4770      	bx	lr

20022b72 <HAL_FLASH_IS_CMD_DONE>:
20022b72:	b118      	cbz	r0, 20022b7c <HAL_FLASH_IS_CMD_DONE+0xa>
20022b74:	6803      	ldr	r3, [r0, #0]
20022b76:	6918      	ldr	r0, [r3, #16]
20022b78:	f000 0001 	and.w	r0, r0, #1
20022b7c:	4770      	bx	lr

20022b7e <HAL_FLASH_CLR_CMD_DONE>:
20022b7e:	b120      	cbz	r0, 20022b8a <HAL_FLASH_CLR_CMD_DONE+0xc>
20022b80:	6802      	ldr	r2, [r0, #0]
20022b82:	6953      	ldr	r3, [r2, #20]
20022b84:	f043 0301 	orr.w	r3, r3, #1
20022b88:	6153      	str	r3, [r2, #20]
20022b8a:	4770      	bx	lr

20022b8c <HAL_FLASH_SET_CMD>:
20022b8c:	b538      	push	{r3, r4, r5, lr}
20022b8e:	460d      	mov	r5, r1
20022b90:	4604      	mov	r4, r0
20022b92:	b1a8      	cbz	r0, 20022bc0 <HAL_FLASH_SET_CMD+0x34>
20022b94:	6803      	ldr	r3, [r0, #0]
20022b96:	61da      	str	r2, [r3, #28]
20022b98:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022b9a:	b10b      	cbz	r3, 20022ba0 <HAL_FLASH_SET_CMD+0x14>
20022b9c:	2001      	movs	r0, #1
20022b9e:	4798      	blx	r3
20022ba0:	6823      	ldr	r3, [r4, #0]
20022ba2:	619d      	str	r5, [r3, #24]
20022ba4:	4620      	mov	r0, r4
20022ba6:	f7ff ffe4 	bl	20022b72 <HAL_FLASH_IS_CMD_DONE>
20022baa:	2800      	cmp	r0, #0
20022bac:	d0fa      	beq.n	20022ba4 <HAL_FLASH_SET_CMD+0x18>
20022bae:	4620      	mov	r0, r4
20022bb0:	f7ff ffe5 	bl	20022b7e <HAL_FLASH_CLR_CMD_DONE>
20022bb4:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022bb6:	b10b      	cbz	r3, 20022bbc <HAL_FLASH_SET_CMD+0x30>
20022bb8:	2000      	movs	r0, #0
20022bba:	4798      	blx	r3
20022bbc:	2000      	movs	r0, #0
20022bbe:	bd38      	pop	{r3, r4, r5, pc}
20022bc0:	2001      	movs	r0, #1
20022bc2:	e7fc      	b.n	20022bbe <HAL_FLASH_SET_CMD+0x32>

20022bc4 <HAL_FLASH_CLR_STATUS>:
20022bc4:	b118      	cbz	r0, 20022bce <HAL_FLASH_CLR_STATUS+0xa>
20022bc6:	6802      	ldr	r2, [r0, #0]
20022bc8:	6953      	ldr	r3, [r2, #20]
20022bca:	4319      	orrs	r1, r3
20022bcc:	6151      	str	r1, [r2, #20]
20022bce:	4770      	bx	lr

20022bd0 <HAL_FLASH_STATUS_MATCH>:
20022bd0:	b118      	cbz	r0, 20022bda <HAL_FLASH_STATUS_MATCH+0xa>
20022bd2:	6803      	ldr	r3, [r0, #0]
20022bd4:	6918      	ldr	r0, [r3, #16]
20022bd6:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022bda:	4770      	bx	lr

20022bdc <HAL_FLASH_IS_PROG_DONE>:
20022bdc:	b128      	cbz	r0, 20022bea <HAL_FLASH_IS_PROG_DONE+0xe>
20022bde:	6803      	ldr	r3, [r0, #0]
20022be0:	6858      	ldr	r0, [r3, #4]
20022be2:	43c0      	mvns	r0, r0
20022be4:	f000 0001 	and.w	r0, r0, #1
20022be8:	4770      	bx	lr
20022bea:	2001      	movs	r0, #1
20022bec:	4770      	bx	lr

20022bee <HAL_FLASH_READ32>:
20022bee:	b108      	cbz	r0, 20022bf4 <HAL_FLASH_READ32+0x6>
20022bf0:	6803      	ldr	r3, [r0, #0]
20022bf2:	6858      	ldr	r0, [r3, #4]
20022bf4:	4770      	bx	lr

20022bf6 <HAL_FLASH_SET_TXSLOT>:
20022bf6:	b120      	cbz	r0, 20022c02 <HAL_FLASH_SET_TXSLOT+0xc>
20022bf8:	6802      	ldr	r2, [r0, #0]
20022bfa:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022bfc:	f361 238e 	bfi	r3, r1, #10, #5
20022c00:	6553      	str	r3, [r2, #84]	@ 0x54
20022c02:	4770      	bx	lr

20022c04 <HAL_FLASH_SET_CLK_rom>:
20022c04:	b108      	cbz	r0, 20022c0a <HAL_FLASH_SET_CLK_rom+0x6>
20022c06:	6803      	ldr	r3, [r0, #0]
20022c08:	60d9      	str	r1, [r3, #12]
20022c0a:	4770      	bx	lr

20022c0c <HAL_FLASH_GET_DIV>:
20022c0c:	b110      	cbz	r0, 20022c14 <HAL_FLASH_GET_DIV+0x8>
20022c0e:	6803      	ldr	r3, [r0, #0]
20022c10:	68d8      	ldr	r0, [r3, #12]
20022c12:	b2c0      	uxtb	r0, r0
20022c14:	4770      	bx	lr

20022c16 <HAL_FLASH_MANUAL_CMD>:
20022c16:	b570      	push	{r4, r5, r6, lr}
20022c18:	b1e8      	cbz	r0, 20022c56 <HAL_FLASH_MANUAL_CMD+0x40>
20022c1a:	6805      	ldr	r5, [r0, #0]
20022c1c:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022c20:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022c24:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022c26:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022c2a:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022c2e:	f36f 0415 	bfc	r4, #0, #22
20022c32:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022c36:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022c3a:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022c3e:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022c42:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022c46:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022c4a:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022c4e:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022c52:	4321      	orrs	r1, r4
20022c54:	62a9      	str	r1, [r5, #40]	@ 0x28
20022c56:	bd70      	pop	{r4, r5, r6, pc}

20022c58 <HAL_FLASH_MANUAL_CMD2>:
20022c58:	b570      	push	{r4, r5, r6, lr}
20022c5a:	b1e8      	cbz	r0, 20022c98 <HAL_FLASH_MANUAL_CMD2+0x40>
20022c5c:	6805      	ldr	r5, [r0, #0]
20022c5e:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022c62:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022c66:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022c68:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022c6c:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022c70:	f36f 0415 	bfc	r4, #0, #22
20022c74:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022c78:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022c7c:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022c80:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022c84:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022c88:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022c8c:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022c90:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022c94:	4321      	orrs	r1, r4
20022c96:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022c98:	bd70      	pop	{r4, r5, r6, pc}
	...

20022c9c <HAL_FLASH_SET_ALIAS_RANGE>:
20022c9c:	b510      	push	{r4, lr}
20022c9e:	b158      	cbz	r0, 20022cb8 <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022ca0:	4b06      	ldr	r3, [pc, #24]	@ (20022cbc <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022ca2:	6804      	ldr	r4, [r0, #0]
20022ca4:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022ca8:	440a      	add	r2, r1
20022caa:	4019      	ands	r1, r3
20022cac:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022cae:	401a      	ands	r2, r3
20022cb0:	6803      	ldr	r3, [r0, #0]
20022cb2:	2000      	movs	r0, #0
20022cb4:	671a      	str	r2, [r3, #112]	@ 0x70
20022cb6:	bd10      	pop	{r4, pc}
20022cb8:	2001      	movs	r0, #1
20022cba:	e7fc      	b.n	20022cb6 <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022cbc:	fffffc00 	.word	0xfffffc00

20022cc0 <HAL_FLASH_SET_ALIAS_OFFSET>:
20022cc0:	b128      	cbz	r0, 20022cce <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022cc2:	6803      	ldr	r3, [r0, #0]
20022cc4:	f36f 0109 	bfc	r1, #0, #10
20022cc8:	2000      	movs	r0, #0
20022cca:	6759      	str	r1, [r3, #116]	@ 0x74
20022ccc:	4770      	bx	lr
20022cce:	2001      	movs	r0, #1
20022cd0:	4770      	bx	lr
	...

20022cd4 <HAL_FLASH_SET_CTR>:
20022cd4:	b510      	push	{r4, lr}
20022cd6:	b150      	cbz	r0, 20022cee <HAL_FLASH_SET_CTR+0x1a>
20022cd8:	4b06      	ldr	r3, [pc, #24]	@ (20022cf4 <HAL_FLASH_SET_CTR+0x20>)
20022cda:	6804      	ldr	r4, [r0, #0]
20022cdc:	4019      	ands	r1, r3
20022cde:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022ce0:	6801      	ldr	r1, [r0, #0]
20022ce2:	2000      	movs	r0, #0
20022ce4:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022ce8:	401a      	ands	r2, r3
20022cea:	660a      	str	r2, [r1, #96]	@ 0x60
20022cec:	bd10      	pop	{r4, pc}
20022cee:	2001      	movs	r0, #1
20022cf0:	e7fc      	b.n	20022cec <HAL_FLASH_SET_CTR+0x18>
20022cf2:	bf00      	nop
20022cf4:	fffffc00 	.word	0xfffffc00

20022cf8 <HAL_FLASH_SET_NONCE>:
20022cf8:	b150      	cbz	r0, 20022d10 <HAL_FLASH_SET_NONCE+0x18>
20022cfa:	b149      	cbz	r1, 20022d10 <HAL_FLASH_SET_NONCE+0x18>
20022cfc:	680b      	ldr	r3, [r1, #0]
20022cfe:	6802      	ldr	r2, [r0, #0]
20022d00:	ba1b      	rev	r3, r3
20022d02:	6653      	str	r3, [r2, #100]	@ 0x64
20022d04:	684b      	ldr	r3, [r1, #4]
20022d06:	6802      	ldr	r2, [r0, #0]
20022d08:	ba1b      	rev	r3, r3
20022d0a:	2000      	movs	r0, #0
20022d0c:	6693      	str	r3, [r2, #104]	@ 0x68
20022d0e:	4770      	bx	lr
20022d10:	2001      	movs	r0, #1
20022d12:	4770      	bx	lr

20022d14 <HAL_FLASH_SET_AES>:
20022d14:	b158      	cbz	r0, 20022d2e <HAL_FLASH_SET_AES+0x1a>
20022d16:	6803      	ldr	r3, [r0, #0]
20022d18:	2901      	cmp	r1, #1
20022d1a:	681a      	ldr	r2, [r3, #0]
20022d1c:	d104      	bne.n	20022d28 <HAL_FLASH_SET_AES+0x14>
20022d1e:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022d22:	2000      	movs	r0, #0
20022d24:	601a      	str	r2, [r3, #0]
20022d26:	4770      	bx	lr
20022d28:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022d2c:	e7f9      	b.n	20022d22 <HAL_FLASH_SET_AES+0xe>
20022d2e:	2001      	movs	r0, #1
20022d30:	4770      	bx	lr

20022d32 <HAL_FLASH_ENABLE_AES>:
20022d32:	b150      	cbz	r0, 20022d4a <HAL_FLASH_ENABLE_AES+0x18>
20022d34:	6803      	ldr	r3, [r0, #0]
20022d36:	681a      	ldr	r2, [r3, #0]
20022d38:	b121      	cbz	r1, 20022d44 <HAL_FLASH_ENABLE_AES+0x12>
20022d3a:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022d3e:	2000      	movs	r0, #0
20022d40:	601a      	str	r2, [r3, #0]
20022d42:	4770      	bx	lr
20022d44:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022d48:	e7f9      	b.n	20022d3e <HAL_FLASH_ENABLE_AES+0xc>
20022d4a:	2001      	movs	r0, #1
20022d4c:	4770      	bx	lr

20022d4e <HAL_FLASH_ENABLE_QSPI>:
20022d4e:	b150      	cbz	r0, 20022d66 <HAL_FLASH_ENABLE_QSPI+0x18>
20022d50:	6803      	ldr	r3, [r0, #0]
20022d52:	681a      	ldr	r2, [r3, #0]
20022d54:	b121      	cbz	r1, 20022d60 <HAL_FLASH_ENABLE_QSPI+0x12>
20022d56:	f042 0201 	orr.w	r2, r2, #1
20022d5a:	2000      	movs	r0, #0
20022d5c:	601a      	str	r2, [r3, #0]
20022d5e:	4770      	bx	lr
20022d60:	f022 0201 	bic.w	r2, r2, #1
20022d64:	e7f9      	b.n	20022d5a <HAL_FLASH_ENABLE_QSPI+0xc>
20022d66:	2001      	movs	r0, #1
20022d68:	4770      	bx	lr

20022d6a <HAL_FLASH_ENABLE_OPI>:
20022d6a:	b150      	cbz	r0, 20022d82 <HAL_FLASH_ENABLE_OPI+0x18>
20022d6c:	6803      	ldr	r3, [r0, #0]
20022d6e:	681a      	ldr	r2, [r3, #0]
20022d70:	b121      	cbz	r1, 20022d7c <HAL_FLASH_ENABLE_OPI+0x12>
20022d72:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022d76:	2000      	movs	r0, #0
20022d78:	601a      	str	r2, [r3, #0]
20022d7a:	4770      	bx	lr
20022d7c:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022d80:	e7f9      	b.n	20022d76 <HAL_FLASH_ENABLE_OPI+0xc>
20022d82:	2001      	movs	r0, #1
20022d84:	4770      	bx	lr

20022d86 <HAL_FLASH_ENABLE_HYPER>:
20022d86:	b150      	cbz	r0, 20022d9e <HAL_FLASH_ENABLE_HYPER+0x18>
20022d88:	6803      	ldr	r3, [r0, #0]
20022d8a:	689a      	ldr	r2, [r3, #8]
20022d8c:	b121      	cbz	r1, 20022d98 <HAL_FLASH_ENABLE_HYPER+0x12>
20022d8e:	f042 0210 	orr.w	r2, r2, #16
20022d92:	2000      	movs	r0, #0
20022d94:	609a      	str	r2, [r3, #8]
20022d96:	4770      	bx	lr
20022d98:	f022 0210 	bic.w	r2, r2, #16
20022d9c:	e7f9      	b.n	20022d92 <HAL_FLASH_ENABLE_HYPER+0xc>
20022d9e:	2001      	movs	r0, #1
20022da0:	4770      	bx	lr

20022da2 <HAL_FLASH_ENABLE_CMD2>:
20022da2:	b150      	cbz	r0, 20022dba <HAL_FLASH_ENABLE_CMD2+0x18>
20022da4:	6803      	ldr	r3, [r0, #0]
20022da6:	681a      	ldr	r2, [r3, #0]
20022da8:	b121      	cbz	r1, 20022db4 <HAL_FLASH_ENABLE_CMD2+0x12>
20022daa:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022dae:	2000      	movs	r0, #0
20022db0:	601a      	str	r2, [r3, #0]
20022db2:	4770      	bx	lr
20022db4:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022db8:	e7f9      	b.n	20022dae <HAL_FLASH_ENABLE_CMD2+0xc>
20022dba:	2001      	movs	r0, #1
20022dbc:	4770      	bx	lr

20022dbe <HAL_FLASH_STAUS_MATCH_CMD2>:
20022dbe:	b150      	cbz	r0, 20022dd6 <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022dc0:	6803      	ldr	r3, [r0, #0]
20022dc2:	681a      	ldr	r2, [r3, #0]
20022dc4:	b121      	cbz	r1, 20022dd0 <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022dc6:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022dca:	2000      	movs	r0, #0
20022dcc:	601a      	str	r2, [r3, #0]
20022dce:	4770      	bx	lr
20022dd0:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022dd4:	e7f9      	b.n	20022dca <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022dd6:	2001      	movs	r0, #1
20022dd8:	4770      	bx	lr

20022dda <HAL_FLASH_SET_CS_TIME>:
20022dda:	b530      	push	{r4, r5, lr}
20022ddc:	b180      	cbz	r0, 20022e00 <HAL_FLASH_SET_CS_TIME+0x26>
20022dde:	6805      	ldr	r5, [r0, #0]
20022de0:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022de4:	68ac      	ldr	r4, [r5, #8]
20022de6:	0680      	lsls	r0, r0, #26
20022de8:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022dec:	2000      	movs	r0, #0
20022dee:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022df2:	f36f 149e 	bfc	r4, #6, #25
20022df6:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022dfa:	4322      	orrs	r2, r4
20022dfc:	60aa      	str	r2, [r5, #8]
20022dfe:	bd30      	pop	{r4, r5, pc}
20022e00:	2001      	movs	r0, #1
20022e02:	e7fc      	b.n	20022dfe <HAL_FLASH_SET_CS_TIME+0x24>

20022e04 <HAL_FLASH_SET_ROW_BOUNDARY>:
20022e04:	b130      	cbz	r0, 20022e14 <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022e06:	6802      	ldr	r2, [r0, #0]
20022e08:	2000      	movs	r0, #0
20022e0a:	6893      	ldr	r3, [r2, #8]
20022e0c:	f361 0302 	bfi	r3, r1, #0, #3
20022e10:	6093      	str	r3, [r2, #8]
20022e12:	4770      	bx	lr
20022e14:	2001      	movs	r0, #1
20022e16:	4770      	bx	lr

20022e18 <HAL_FLASH_SET_LEGACY>:
20022e18:	b150      	cbz	r0, 20022e30 <HAL_FLASH_SET_LEGACY+0x18>
20022e1a:	6803      	ldr	r3, [r0, #0]
20022e1c:	689a      	ldr	r2, [r3, #8]
20022e1e:	b121      	cbz	r1, 20022e2a <HAL_FLASH_SET_LEGACY+0x12>
20022e20:	f042 0220 	orr.w	r2, r2, #32
20022e24:	2000      	movs	r0, #0
20022e26:	609a      	str	r2, [r3, #8]
20022e28:	4770      	bx	lr
20022e2a:	f022 0220 	bic.w	r2, r2, #32
20022e2e:	e7f9      	b.n	20022e24 <HAL_FLASH_SET_LEGACY+0xc>
20022e30:	2001      	movs	r0, #1
20022e32:	4770      	bx	lr

20022e34 <HAL_FLASH_SET_DUAL_MODE>:
20022e34:	b150      	cbz	r0, 20022e4c <HAL_FLASH_SET_DUAL_MODE+0x18>
20022e36:	6803      	ldr	r3, [r0, #0]
20022e38:	681a      	ldr	r2, [r3, #0]
20022e3a:	b121      	cbz	r1, 20022e46 <HAL_FLASH_SET_DUAL_MODE+0x12>
20022e3c:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20022e40:	2000      	movs	r0, #0
20022e42:	601a      	str	r2, [r3, #0]
20022e44:	4770      	bx	lr
20022e46:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20022e4a:	e7f9      	b.n	20022e40 <HAL_FLASH_SET_DUAL_MODE+0xc>
20022e4c:	2001      	movs	r0, #1
20022e4e:	4770      	bx	lr

20022e50 <HAL_MPI_EN_FIXLAT>:
20022e50:	b150      	cbz	r0, 20022e68 <HAL_MPI_EN_FIXLAT+0x18>
20022e52:	6803      	ldr	r3, [r0, #0]
20022e54:	689a      	ldr	r2, [r3, #8]
20022e56:	b121      	cbz	r1, 20022e62 <HAL_MPI_EN_FIXLAT+0x12>
20022e58:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20022e5c:	2000      	movs	r0, #0
20022e5e:	609a      	str	r2, [r3, #8]
20022e60:	4770      	bx	lr
20022e62:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20022e66:	e7f9      	b.n	20022e5c <HAL_MPI_EN_FIXLAT+0xc>
20022e68:	2001      	movs	r0, #1
20022e6a:	4770      	bx	lr

20022e6c <HAL_MPI_ENABLE_DQS>:
20022e6c:	b150      	cbz	r0, 20022e84 <HAL_MPI_ENABLE_DQS+0x18>
20022e6e:	6803      	ldr	r3, [r0, #0]
20022e70:	689a      	ldr	r2, [r3, #8]
20022e72:	b121      	cbz	r1, 20022e7e <HAL_MPI_ENABLE_DQS+0x12>
20022e74:	f042 0208 	orr.w	r2, r2, #8
20022e78:	2000      	movs	r0, #0
20022e7a:	609a      	str	r2, [r3, #8]
20022e7c:	4770      	bx	lr
20022e7e:	f022 0208 	bic.w	r2, r2, #8
20022e82:	e7f9      	b.n	20022e78 <HAL_MPI_ENABLE_DQS+0xc>
20022e84:	2001      	movs	r0, #1
20022e86:	4770      	bx	lr

20022e88 <HAL_MPI_SET_DQS_DELAY>:
20022e88:	b140      	cbz	r0, 20022e9c <HAL_MPI_SET_DQS_DELAY+0x14>
20022e8a:	6802      	ldr	r2, [r0, #0]
20022e8c:	2000      	movs	r0, #0
20022e8e:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20022e90:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20022e94:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20022e98:	6591      	str	r1, [r2, #88]	@ 0x58
20022e9a:	4770      	bx	lr
20022e9c:	2001      	movs	r0, #1
20022e9e:	4770      	bx	lr

20022ea0 <HAL_MPI_SET_SCK>:
20022ea0:	b160      	cbz	r0, 20022ebc <HAL_MPI_SET_SCK+0x1c>
20022ea2:	6800      	ldr	r0, [r0, #0]
20022ea4:	0652      	lsls	r2, r2, #25
20022ea6:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20022ea8:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20022eac:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022eb0:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022eb4:	4319      	orrs	r1, r3
20022eb6:	6581      	str	r1, [r0, #88]	@ 0x58
20022eb8:	2000      	movs	r0, #0
20022eba:	4770      	bx	lr
20022ebc:	2001      	movs	r0, #1
20022ebe:	4770      	bx	lr

20022ec0 <HAL_MPI_CFG_DTR>:
20022ec0:	b510      	push	{r4, lr}
20022ec2:	b1f0      	cbz	r0, 20022f02 <HAL_MPI_CFG_DTR+0x42>
20022ec4:	6804      	ldr	r4, [r0, #0]
20022ec6:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20022ec8:	b1b1      	cbz	r1, 20022ef8 <HAL_MPI_CFG_DTR+0x38>
20022eca:	2a02      	cmp	r2, #2
20022ecc:	bf84      	itt	hi
20022ece:	3a02      	subhi	r2, #2
20022ed0:	b2d2      	uxtbhi	r2, r2
20022ed2:	0213      	lsls	r3, r2, #8
20022ed4:	f36f 000f 	bfc	r0, #0, #16
20022ed8:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20022edc:	4303      	orrs	r3, r0
20022ede:	0612      	lsls	r2, r2, #24
20022ee0:	bf54      	ite	pl
20022ee2:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
20022ee6:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20022eea:	f043 030a 	orr.w	r3, r3, #10
20022eee:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022ef2:	2000      	movs	r0, #0
20022ef4:	65a3      	str	r3, [r4, #88]	@ 0x58
20022ef6:	bd10      	pop	{r4, pc}
20022ef8:	4b03      	ldr	r3, [pc, #12]	@ (20022f08 <HAL_MPI_CFG_DTR+0x48>)
20022efa:	4003      	ands	r3, r0
20022efc:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
20022f00:	e7f7      	b.n	20022ef2 <HAL_MPI_CFG_DTR+0x32>
20022f02:	2001      	movs	r0, #1
20022f04:	e7f7      	b.n	20022ef6 <HAL_MPI_CFG_DTR+0x36>
20022f06:	bf00      	nop
20022f08:	faff0000 	.word	0xfaff0000

20022f0c <HAL_MPI_MODIFY_RCMD_DELAY>:
20022f0c:	b130      	cbz	r0, 20022f1c <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20022f0e:	6802      	ldr	r2, [r0, #0]
20022f10:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20022f12:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022f16:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022f1a:	6491      	str	r1, [r2, #72]	@ 0x48
20022f1c:	4770      	bx	lr

20022f1e <HAL_MPI_MODIFY_WCMD_DELAY>:
20022f1e:	b130      	cbz	r0, 20022f2e <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20022f20:	6802      	ldr	r2, [r0, #0]
20022f22:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20022f24:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20022f28:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20022f2c:	6511      	str	r1, [r2, #80]	@ 0x50
20022f2e:	4770      	bx	lr

20022f30 <HAL_FLASH_CONFIG_AHB_READ>:
20022f30:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022f32:	4605      	mov	r5, r0
20022f34:	2800      	cmp	r0, #0
20022f36:	d03d      	beq.n	20022fb4 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022f38:	68c4      	ldr	r4, [r0, #12]
20022f3a:	b301      	cbz	r1, 20022f7e <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20022f3c:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
20022f40:	2b00      	cmp	r3, #0
20022f42:	d037      	beq.n	20022fb4 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022f44:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
20022f48:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20022f4c:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20022f50:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
20022f54:	9603      	str	r6, [sp, #12]
20022f56:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
20022f5a:	9602      	str	r6, [sp, #8]
20022f5c:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
20022f60:	9601      	str	r6, [sp, #4]
20022f62:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
20022f66:	9400      	str	r4, [sp, #0]
20022f68:	f7ff fd9e 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20022f6c:	68eb      	ldr	r3, [r5, #12]
20022f6e:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20022f72:	4628      	mov	r0, r5
20022f74:	f7ff fd8d 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
20022f78:	2000      	movs	r0, #0
20022f7a:	b004      	add	sp, #16
20022f7c:	bd70      	pop	{r4, r5, r6, pc}
20022f7e:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
20022f82:	b1bb      	cbz	r3, 20022fb4 <HAL_FLASH_CONFIG_AHB_READ+0x84>
20022f84:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
20022f88:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
20022f8c:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
20022f90:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
20022f94:	9603      	str	r6, [sp, #12]
20022f96:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
20022f9a:	9602      	str	r6, [sp, #8]
20022f9c:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
20022fa0:	9601      	str	r6, [sp, #4]
20022fa2:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
20022fa6:	9400      	str	r4, [sp, #0]
20022fa8:	f7ff fd7e 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20022fac:	68eb      	ldr	r3, [r5, #12]
20022fae:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20022fb2:	e7de      	b.n	20022f72 <HAL_FLASH_CONFIG_AHB_READ+0x42>
20022fb4:	2001      	movs	r0, #1
20022fb6:	e7e0      	b.n	20022f7a <HAL_FLASH_CONFIG_AHB_READ+0x4a>

20022fb8 <HAL_FLASH_CONFIG_FULL_AHB_READ>:
20022fb8:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20022fba:	4605      	mov	r5, r0
20022fbc:	2800      	cmp	r0, #0
20022fbe:	d036      	beq.n	2002302e <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
20022fc0:	68c4      	ldr	r4, [r0, #12]
20022fc2:	b1e1      	cbz	r1, 20022ffe <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
20022fc4:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
20022fc8:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
20022fcc:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
20022fd0:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
20022fd4:	9603      	str	r6, [sp, #12]
20022fd6:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
20022fda:	9602      	str	r6, [sp, #8]
20022fdc:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
20022fe0:	9601      	str	r6, [sp, #4]
20022fe2:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
20022fe6:	9400      	str	r4, [sp, #0]
20022fe8:	f7ff fd5e 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20022fec:	68eb      	ldr	r3, [r5, #12]
20022fee:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
20022ff2:	4628      	mov	r0, r5
20022ff4:	f7ff fd4d 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
20022ff8:	2000      	movs	r0, #0
20022ffa:	b004      	add	sp, #16
20022ffc:	bd70      	pop	{r4, r5, r6, pc}
20022ffe:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
20023002:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
20023006:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
2002300a:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
2002300e:	9603      	str	r6, [sp, #12]
20023010:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
20023014:	9602      	str	r6, [sp, #8]
20023016:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
2002301a:	9601      	str	r6, [sp, #4]
2002301c:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
20023020:	9400      	str	r4, [sp, #0]
20023022:	f7ff fd41 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20023026:	68eb      	ldr	r3, [r5, #12]
20023028:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
2002302c:	e7e1      	b.n	20022ff2 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
2002302e:	2001      	movs	r0, #1
20023030:	e7e3      	b.n	20022ffa <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

20023032 <HAL_FLASH_PRE_CMD>:
20023032:	b530      	push	{r4, r5, lr}
20023034:	68c4      	ldr	r4, [r0, #12]
20023036:	b087      	sub	sp, #28
20023038:	b304      	cbz	r4, 2002307c <HAL_FLASH_PRE_CMD+0x4a>
2002303a:	2938      	cmp	r1, #56	@ 0x38
2002303c:	d81e      	bhi.n	2002307c <HAL_FLASH_PRE_CMD+0x4a>
2002303e:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
20023042:	440c      	add	r4, r1
20023044:	7c23      	ldrb	r3, [r4, #16]
20023046:	b1cb      	cbz	r3, 2002307c <HAL_FLASH_PRE_CMD+0x4a>
20023048:	f994 5018 	ldrsb.w	r5, [r4, #24]
2002304c:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023050:	f994 2012 	ldrsb.w	r2, [r4, #18]
20023054:	f994 1011 	ldrsb.w	r1, [r4, #17]
20023058:	9504      	str	r5, [sp, #16]
2002305a:	f994 5017 	ldrsb.w	r5, [r4, #23]
2002305e:	9503      	str	r5, [sp, #12]
20023060:	f994 5016 	ldrsb.w	r5, [r4, #22]
20023064:	9502      	str	r5, [sp, #8]
20023066:	f994 5015 	ldrsb.w	r5, [r4, #21]
2002306a:	9501      	str	r5, [sp, #4]
2002306c:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023070:	9400      	str	r4, [sp, #0]
20023072:	f7ff fdd0 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
20023076:	2000      	movs	r0, #0
20023078:	b007      	add	sp, #28
2002307a:	bd30      	pop	{r4, r5, pc}
2002307c:	2001      	movs	r0, #1
2002307e:	e7fb      	b.n	20023078 <HAL_FLASH_PRE_CMD+0x46>

20023080 <HAL_FLASH_ISSUE_CMD>:
20023080:	b5f0      	push	{r4, r5, r6, r7, lr}
20023082:	68c4      	ldr	r4, [r0, #12]
20023084:	4606      	mov	r6, r0
20023086:	4617      	mov	r7, r2
20023088:	b087      	sub	sp, #28
2002308a:	b354      	cbz	r4, 200230e2 <HAL_FLASH_ISSUE_CMD+0x62>
2002308c:	2938      	cmp	r1, #56	@ 0x38
2002308e:	d828      	bhi.n	200230e2 <HAL_FLASH_ISSUE_CMD+0x62>
20023090:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
20023094:	442c      	add	r4, r5
20023096:	7c23      	ldrb	r3, [r4, #16]
20023098:	b31b      	cbz	r3, 200230e2 <HAL_FLASH_ISSUE_CMD+0x62>
2002309a:	f994 c018 	ldrsb.w	ip, [r4, #24]
2002309e:	f994 3013 	ldrsb.w	r3, [r4, #19]
200230a2:	f994 2012 	ldrsb.w	r2, [r4, #18]
200230a6:	f994 1011 	ldrsb.w	r1, [r4, #17]
200230aa:	f8cd c010 	str.w	ip, [sp, #16]
200230ae:	f994 c017 	ldrsb.w	ip, [r4, #23]
200230b2:	f8cd c00c 	str.w	ip, [sp, #12]
200230b6:	f994 c016 	ldrsb.w	ip, [r4, #22]
200230ba:	f8cd c008 	str.w	ip, [sp, #8]
200230be:	f994 c015 	ldrsb.w	ip, [r4, #21]
200230c2:	f8cd c004 	str.w	ip, [sp, #4]
200230c6:	f994 4014 	ldrsb.w	r4, [r4, #20]
200230ca:	9400      	str	r4, [sp, #0]
200230cc:	f7ff fda3 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
200230d0:	68f3      	ldr	r3, [r6, #12]
200230d2:	463a      	mov	r2, r7
200230d4:	442b      	add	r3, r5
200230d6:	4630      	mov	r0, r6
200230d8:	7c19      	ldrb	r1, [r3, #16]
200230da:	f7ff fd57 	bl	20022b8c <HAL_FLASH_SET_CMD>
200230de:	b007      	add	sp, #28
200230e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200230e2:	2001      	movs	r0, #1
200230e4:	e7fb      	b.n	200230de <HAL_FLASH_ISSUE_CMD+0x5e>

200230e6 <HAL_FLASH_ISSUE_CMD_SEQ>:
200230e6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200230ea:	4690      	mov	r8, r2
200230ec:	68c2      	ldr	r2, [r0, #12]
200230ee:	4604      	mov	r4, r0
200230f0:	b086      	sub	sp, #24
200230f2:	2a00      	cmp	r2, #0
200230f4:	d072      	beq.n	200231dc <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230f6:	2938      	cmp	r1, #56	@ 0x38
200230f8:	d870      	bhi.n	200231dc <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
200230fa:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
200230fe:	19d6      	adds	r6, r2, r7
20023100:	7c31      	ldrb	r1, [r6, #16]
20023102:	2900      	cmp	r1, #0
20023104:	d06a      	beq.n	200231dc <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023106:	2b38      	cmp	r3, #56	@ 0x38
20023108:	d868      	bhi.n	200231dc <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
2002310a:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
2002310e:	442a      	add	r2, r5
20023110:	7c13      	ldrb	r3, [r2, #16]
20023112:	2b00      	cmp	r3, #0
20023114:	d062      	beq.n	200231dc <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023116:	f996 c018 	ldrsb.w	ip, [r6, #24]
2002311a:	f996 3013 	ldrsb.w	r3, [r6, #19]
2002311e:	f996 2012 	ldrsb.w	r2, [r6, #18]
20023122:	f996 1011 	ldrsb.w	r1, [r6, #17]
20023126:	f8cd c010 	str.w	ip, [sp, #16]
2002312a:	f996 c017 	ldrsb.w	ip, [r6, #23]
2002312e:	f8cd c00c 	str.w	ip, [sp, #12]
20023132:	f996 c016 	ldrsb.w	ip, [r6, #22]
20023136:	f8cd c008 	str.w	ip, [sp, #8]
2002313a:	f996 c015 	ldrsb.w	ip, [r6, #21]
2002313e:	f8cd c004 	str.w	ip, [sp, #4]
20023142:	f996 6014 	ldrsb.w	r6, [r6, #20]
20023146:	9600      	str	r6, [sp, #0]
20023148:	f7ff fd65 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
2002314c:	68e0      	ldr	r0, [r4, #12]
2002314e:	4428      	add	r0, r5
20023150:	f990 6018 	ldrsb.w	r6, [r0, #24]
20023154:	f990 3013 	ldrsb.w	r3, [r0, #19]
20023158:	f990 2012 	ldrsb.w	r2, [r0, #18]
2002315c:	f990 1011 	ldrsb.w	r1, [r0, #17]
20023160:	9604      	str	r6, [sp, #16]
20023162:	f990 6017 	ldrsb.w	r6, [r0, #23]
20023166:	9603      	str	r6, [sp, #12]
20023168:	f990 6016 	ldrsb.w	r6, [r0, #22]
2002316c:	9602      	str	r6, [sp, #8]
2002316e:	f990 6015 	ldrsb.w	r6, [r0, #21]
20023172:	9601      	str	r6, [sp, #4]
20023174:	f990 0014 	ldrsb.w	r0, [r0, #20]
20023178:	9000      	str	r0, [sp, #0]
2002317a:	4620      	mov	r0, r4
2002317c:	f7ff fd6c 	bl	20022c58 <HAL_FLASH_MANUAL_CMD2>
20023180:	2200      	movs	r2, #0
20023182:	6823      	ldr	r3, [r4, #0]
20023184:	2101      	movs	r1, #1
20023186:	67da      	str	r2, [r3, #124]	@ 0x7c
20023188:	68e3      	ldr	r3, [r4, #12]
2002318a:	6822      	ldr	r2, [r4, #0]
2002318c:	442b      	add	r3, r5
2002318e:	7c1b      	ldrb	r3, [r3, #16]
20023190:	4620      	mov	r0, r4
20023192:	62d3      	str	r3, [r2, #44]	@ 0x2c
20023194:	6823      	ldr	r3, [r4, #0]
20023196:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
20023198:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
2002319c:	f7ff fe01 	bl	20022da2 <HAL_FLASH_ENABLE_CMD2>
200231a0:	4620      	mov	r0, r4
200231a2:	f7ff fe0c 	bl	20022dbe <HAL_FLASH_STAUS_MATCH_CMD2>
200231a6:	6823      	ldr	r3, [r4, #0]
200231a8:	f8c3 801c 	str.w	r8, [r3, #28]
200231ac:	68e3      	ldr	r3, [r4, #12]
200231ae:	6822      	ldr	r2, [r4, #0]
200231b0:	443b      	add	r3, r7
200231b2:	7c1b      	ldrb	r3, [r3, #16]
200231b4:	6193      	str	r3, [r2, #24]
200231b6:	4620      	mov	r0, r4
200231b8:	f7ff fd0a 	bl	20022bd0 <HAL_FLASH_STATUS_MATCH>
200231bc:	2800      	cmp	r0, #0
200231be:	d0fa      	beq.n	200231b6 <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
200231c0:	2109      	movs	r1, #9
200231c2:	4620      	mov	r0, r4
200231c4:	f7ff fcfe 	bl	20022bc4 <HAL_FLASH_CLR_STATUS>
200231c8:	2100      	movs	r1, #0
200231ca:	f7ff fdea 	bl	20022da2 <HAL_FLASH_ENABLE_CMD2>
200231ce:	4620      	mov	r0, r4
200231d0:	f7ff fdf5 	bl	20022dbe <HAL_FLASH_STAUS_MATCH_CMD2>
200231d4:	4608      	mov	r0, r1
200231d6:	b006      	add	sp, #24
200231d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200231dc:	2001      	movs	r0, #1
200231de:	e7fa      	b.n	200231d6 <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

200231e0 <nor_qspi_switch>:
200231e0:	b570      	push	{r4, r5, r6, lr}
200231e2:	4604      	mov	r4, r0
200231e4:	b3e0      	cbz	r0, 20023260 <nor_qspi_switch+0x80>
200231e6:	68c3      	ldr	r3, [r0, #12]
200231e8:	b3d3      	cbz	r3, 20023260 <nor_qspi_switch+0x80>
200231ea:	b3c9      	cbz	r1, 20023260 <nor_qspi_switch+0x80>
200231ec:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
200231f0:	2101      	movs	r1, #1
200231f2:	b3b5      	cbz	r5, 20023262 <nor_qspi_switch+0x82>
200231f4:	f7ff fca5 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200231f8:	2200      	movs	r2, #0
200231fa:	2114      	movs	r1, #20
200231fc:	4620      	mov	r0, r4
200231fe:	f7ff ff3f 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023202:	4620      	mov	r0, r4
20023204:	f7ff fcf3 	bl	20022bee <HAL_FLASH_READ32>
20023208:	f010 0501 	ands.w	r5, r0, #1
2002320c:	d000      	beq.n	20023210 <nor_qspi_switch+0x30>
2002320e:	e7fe      	b.n	2002320e <nor_qspi_switch+0x2e>
20023210:	462a      	mov	r2, r5
20023212:	2115      	movs	r1, #21
20023214:	4620      	mov	r0, r4
20023216:	f7ff ff33 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002321a:	4606      	mov	r6, r0
2002321c:	b120      	cbz	r0, 20023228 <nor_qspi_switch+0x48>
2002321e:	462a      	mov	r2, r5
20023220:	4629      	mov	r1, r5
20023222:	4620      	mov	r0, r4
20023224:	f7ff ff2c 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023228:	2102      	movs	r1, #2
2002322a:	4620      	mov	r0, r4
2002322c:	f7ff fc82 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
20023230:	2101      	movs	r1, #1
20023232:	4620      	mov	r0, r4
20023234:	f7ff fc85 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023238:	2200      	movs	r2, #0
2002323a:	212b      	movs	r1, #43	@ 0x2b
2002323c:	4620      	mov	r0, r4
2002323e:	f7ff ff1f 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023242:	b16e      	cbz	r6, 20023260 <nor_qspi_switch+0x80>
20023244:	2101      	movs	r1, #1
20023246:	4620      	mov	r0, r4
20023248:	f7ff fc7b 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
2002324c:	2200      	movs	r2, #0
2002324e:	2102      	movs	r1, #2
20023250:	4620      	mov	r0, r4
20023252:	f7ff ff15 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023256:	4620      	mov	r0, r4
20023258:	f7ff fcc0 	bl	20022bdc <HAL_FLASH_IS_PROG_DONE>
2002325c:	2800      	cmp	r0, #0
2002325e:	d0f5      	beq.n	2002324c <nor_qspi_switch+0x6c>
20023260:	bd70      	pop	{r4, r5, r6, pc}
20023262:	f7ff fc6e 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023266:	462a      	mov	r2, r5
20023268:	2102      	movs	r1, #2
2002326a:	4620      	mov	r0, r4
2002326c:	f7ff ff08 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023270:	4620      	mov	r0, r4
20023272:	f7ff fcbc 	bl	20022bee <HAL_FLASH_READ32>
20023276:	462a      	mov	r2, r5
20023278:	2114      	movs	r1, #20
2002327a:	4620      	mov	r0, r4
2002327c:	f7ff ff00 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023280:	b910      	cbnz	r0, 20023288 <nor_qspi_switch+0xa8>
20023282:	4620      	mov	r0, r4
20023284:	f7ff fcb3 	bl	20022bee <HAL_FLASH_READ32>
20023288:	68e3      	ldr	r3, [r4, #12]
2002328a:	7a1b      	ldrb	r3, [r3, #8]
2002328c:	b3ab      	cbz	r3, 200232fa <nor_qspi_switch+0x11a>
2002328e:	2101      	movs	r1, #1
20023290:	f003 050f 	and.w	r5, r3, #15
20023294:	091b      	lsrs	r3, r3, #4
20023296:	fa01 f303 	lsl.w	r3, r1, r3
2002329a:	b2db      	uxtb	r3, r3
2002329c:	b10d      	cbz	r5, 200232a2 <nor_qspi_switch+0xc2>
2002329e:	461d      	mov	r5, r3
200232a0:	2300      	movs	r3, #0
200232a2:	2200      	movs	r2, #0
200232a4:	2115      	movs	r1, #21
200232a6:	4620      	mov	r0, r4
200232a8:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
200232ac:	f7ff fee8 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200232b0:	4606      	mov	r6, r0
200232b2:	b120      	cbz	r0, 200232be <nor_qspi_switch+0xde>
200232b4:	2200      	movs	r2, #0
200232b6:	4620      	mov	r0, r4
200232b8:	4611      	mov	r1, r2
200232ba:	f7ff fee1 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200232be:	4629      	mov	r1, r5
200232c0:	4620      	mov	r0, r4
200232c2:	f7ff fc37 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
200232c6:	2102      	movs	r1, #2
200232c8:	4620      	mov	r0, r4
200232ca:	f7ff fc3a 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200232ce:	2200      	movs	r2, #0
200232d0:	2103      	movs	r1, #3
200232d2:	4620      	mov	r0, r4
200232d4:	f7ff fed4 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200232d8:	2e00      	cmp	r6, #0
200232da:	d0c1      	beq.n	20023260 <nor_qspi_switch+0x80>
200232dc:	2101      	movs	r1, #1
200232de:	4620      	mov	r0, r4
200232e0:	f7ff fc2f 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200232e4:	2200      	movs	r2, #0
200232e6:	2102      	movs	r1, #2
200232e8:	4620      	mov	r0, r4
200232ea:	f7ff fec9 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200232ee:	4620      	mov	r0, r4
200232f0:	f7ff fc74 	bl	20022bdc <HAL_FLASH_IS_PROG_DONE>
200232f4:	2800      	cmp	r0, #0
200232f6:	d0f5      	beq.n	200232e4 <nor_qspi_switch+0x104>
200232f8:	e7b2      	b.n	20023260 <nor_qspi_switch+0x80>
200232fa:	2502      	movs	r5, #2
200232fc:	e7d1      	b.n	200232a2 <nor_qspi_switch+0xc2>

200232fe <HAL_FLASH_SET_QUAL_SPI>:
200232fe:	b538      	push	{r3, r4, r5, lr}
20023300:	4604      	mov	r4, r0
20023302:	460d      	mov	r5, r1
20023304:	f7ff ff6c 	bl	200231e0 <nor_qspi_switch>
20023308:	4629      	mov	r1, r5
2002330a:	4620      	mov	r0, r4
2002330c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023310:	f7ff be0e 	b.w	20022f30 <HAL_FLASH_CONFIG_AHB_READ>

20023314 <HAL_FLASH_FADDR_SET_QSPI>:
20023314:	b538      	push	{r3, r4, r5, lr}
20023316:	4604      	mov	r4, r0
20023318:	460d      	mov	r5, r1
2002331a:	f7ff ff61 	bl	200231e0 <nor_qspi_switch>
2002331e:	4629      	mov	r1, r5
20023320:	4620      	mov	r0, r4
20023322:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023326:	f7ff be47 	b.w	20022fb8 <HAL_FLASH_CONFIG_FULL_AHB_READ>

2002332a <HAL_FLASH_GET_NOR_ID>:
2002332a:	b510      	push	{r4, lr}
2002332c:	4604      	mov	r4, r0
2002332e:	b140      	cbz	r0, 20023342 <HAL_FLASH_GET_NOR_ID+0x18>
20023330:	6802      	ldr	r2, [r0, #0]
20023332:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20023334:	f36f 0315 	bfc	r3, #0, #22
20023338:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
2002333c:	f043 0301 	orr.w	r3, r3, #1
20023340:	6293      	str	r3, [r2, #40]	@ 0x28
20023342:	2103      	movs	r1, #3
20023344:	4620      	mov	r0, r4
20023346:	f7ff fbfc 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
2002334a:	2200      	movs	r2, #0
2002334c:	219f      	movs	r1, #159	@ 0x9f
2002334e:	4620      	mov	r0, r4
20023350:	f7ff fc1c 	bl	20022b8c <HAL_FLASH_SET_CMD>
20023354:	4620      	mov	r0, r4
20023356:	f7ff fc4a 	bl	20022bee <HAL_FLASH_READ32>
2002335a:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002335e:	bd10      	pop	{r4, pc}

20023360 <HAL_FLASH_CLR_PROTECT>:
20023360:	b570      	push	{r4, r5, r6, lr}
20023362:	4604      	mov	r4, r0
20023364:	2800      	cmp	r0, #0
20023366:	d03e      	beq.n	200233e6 <HAL_FLASH_CLR_PROTECT+0x86>
20023368:	68c3      	ldr	r3, [r0, #12]
2002336a:	2101      	movs	r1, #1
2002336c:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023370:	2d00      	cmp	r5, #0
20023372:	d03b      	beq.n	200233ec <HAL_FLASH_CLR_PROTECT+0x8c>
20023374:	f7ff fbe5 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023378:	2200      	movs	r2, #0
2002337a:	2102      	movs	r1, #2
2002337c:	4620      	mov	r0, r4
2002337e:	f7ff fe7f 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023382:	bb88      	cbnz	r0, 200233e8 <HAL_FLASH_CLR_PROTECT+0x88>
20023384:	4620      	mov	r0, r4
20023386:	f7ff fc32 	bl	20022bee <HAL_FLASH_READ32>
2002338a:	b2c0      	uxtb	r0, r0
2002338c:	68e3      	ldr	r3, [r4, #12]
2002338e:	79dd      	ldrb	r5, [r3, #7]
20023390:	b10d      	cbz	r5, 20023396 <HAL_FLASH_CLR_PROTECT+0x36>
20023392:	ea20 0505 	bic.w	r5, r0, r5
20023396:	2200      	movs	r2, #0
20023398:	2115      	movs	r1, #21
2002339a:	4620      	mov	r0, r4
2002339c:	f7ff fe70 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200233a0:	4606      	mov	r6, r0
200233a2:	b120      	cbz	r0, 200233ae <HAL_FLASH_CLR_PROTECT+0x4e>
200233a4:	2200      	movs	r2, #0
200233a6:	4620      	mov	r0, r4
200233a8:	4611      	mov	r1, r2
200233aa:	f7ff fe69 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200233ae:	4629      	mov	r1, r5
200233b0:	4620      	mov	r0, r4
200233b2:	f7ff fbbf 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
200233b6:	2101      	movs	r1, #1
200233b8:	4620      	mov	r0, r4
200233ba:	f7ff fbc2 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200233be:	2200      	movs	r2, #0
200233c0:	2103      	movs	r1, #3
200233c2:	4620      	mov	r0, r4
200233c4:	f7ff fe5c 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200233c8:	b16e      	cbz	r6, 200233e6 <HAL_FLASH_CLR_PROTECT+0x86>
200233ca:	2101      	movs	r1, #1
200233cc:	4620      	mov	r0, r4
200233ce:	f7ff fbb8 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200233d2:	2200      	movs	r2, #0
200233d4:	2102      	movs	r1, #2
200233d6:	4620      	mov	r0, r4
200233d8:	f7ff fe52 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200233dc:	4620      	mov	r0, r4
200233de:	f7ff fbfd 	bl	20022bdc <HAL_FLASH_IS_PROG_DONE>
200233e2:	2800      	cmp	r0, #0
200233e4:	d0f5      	beq.n	200233d2 <HAL_FLASH_CLR_PROTECT+0x72>
200233e6:	bd70      	pop	{r4, r5, r6, pc}
200233e8:	2000      	movs	r0, #0
200233ea:	e7cf      	b.n	2002338c <HAL_FLASH_CLR_PROTECT+0x2c>
200233ec:	f7ff fba9 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200233f0:	462a      	mov	r2, r5
200233f2:	2102      	movs	r1, #2
200233f4:	4620      	mov	r0, r4
200233f6:	f7ff fe43 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200233fa:	2800      	cmp	r0, #0
200233fc:	d13e      	bne.n	2002347c <HAL_FLASH_CLR_PROTECT+0x11c>
200233fe:	4620      	mov	r0, r4
20023400:	f7ff fbf5 	bl	20022bee <HAL_FLASH_READ32>
20023404:	b2c6      	uxtb	r6, r0
20023406:	2200      	movs	r2, #0
20023408:	2114      	movs	r1, #20
2002340a:	4620      	mov	r0, r4
2002340c:	f7ff fe38 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023410:	b918      	cbnz	r0, 2002341a <HAL_FLASH_CLR_PROTECT+0xba>
20023412:	4620      	mov	r0, r4
20023414:	f7ff fbeb 	bl	20022bee <HAL_FLASH_READ32>
20023418:	b2c5      	uxtb	r5, r0
2002341a:	68e3      	ldr	r3, [r4, #12]
2002341c:	79d9      	ldrb	r1, [r3, #7]
2002341e:	b109      	cbz	r1, 20023424 <HAL_FLASH_CLR_PROTECT+0xc4>
20023420:	ea26 0101 	bic.w	r1, r6, r1
20023424:	2200      	movs	r2, #0
20023426:	4620      	mov	r0, r4
20023428:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
2002342c:	2115      	movs	r1, #21
2002342e:	f7ff fe27 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023432:	4606      	mov	r6, r0
20023434:	b120      	cbz	r0, 20023440 <HAL_FLASH_CLR_PROTECT+0xe0>
20023436:	2200      	movs	r2, #0
20023438:	4620      	mov	r0, r4
2002343a:	4611      	mov	r1, r2
2002343c:	f7ff fe20 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023440:	4629      	mov	r1, r5
20023442:	4620      	mov	r0, r4
20023444:	f7ff fb76 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
20023448:	2102      	movs	r1, #2
2002344a:	4620      	mov	r0, r4
2002344c:	f7ff fb79 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023450:	2200      	movs	r2, #0
20023452:	2103      	movs	r1, #3
20023454:	4620      	mov	r0, r4
20023456:	f7ff fe13 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002345a:	2e00      	cmp	r6, #0
2002345c:	d0c3      	beq.n	200233e6 <HAL_FLASH_CLR_PROTECT+0x86>
2002345e:	2101      	movs	r1, #1
20023460:	4620      	mov	r0, r4
20023462:	f7ff fb6e 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023466:	2200      	movs	r2, #0
20023468:	2102      	movs	r1, #2
2002346a:	4620      	mov	r0, r4
2002346c:	f7ff fe08 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023470:	4620      	mov	r0, r4
20023472:	f7ff fbb3 	bl	20022bdc <HAL_FLASH_IS_PROG_DONE>
20023476:	2800      	cmp	r0, #0
20023478:	d0f5      	beq.n	20023466 <HAL_FLASH_CLR_PROTECT+0x106>
2002347a:	e7b4      	b.n	200233e6 <HAL_FLASH_CLR_PROTECT+0x86>
2002347c:	462e      	mov	r6, r5
2002347e:	e7c2      	b.n	20023406 <HAL_FLASH_CLR_PROTECT+0xa6>

20023480 <HAL_QSPI_SET_CLK_INV>:
20023480:	b160      	cbz	r0, 2002349c <HAL_QSPI_SET_CLK_INV+0x1c>
20023482:	6800      	ldr	r0, [r0, #0]
20023484:	b150      	cbz	r0, 2002349c <HAL_QSPI_SET_CLK_INV+0x1c>
20023486:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20023488:	0609      	lsls	r1, r1, #24
2002348a:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
2002348e:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
20023492:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20023496:	4311      	orrs	r1, r2
20023498:	4319      	orrs	r1, r3
2002349a:	6581      	str	r1, [r0, #88]	@ 0x58
2002349c:	4770      	bx	lr

2002349e <HAL_FLASH_RELEASE_DPD>:
2002349e:	b538      	push	{r3, r4, r5, lr}
200234a0:	4604      	mov	r4, r0
200234a2:	b1d0      	cbz	r0, 200234da <HAL_FLASH_RELEASE_DPD+0x3c>
200234a4:	6803      	ldr	r3, [r0, #0]
200234a6:	21ab      	movs	r1, #171	@ 0xab
200234a8:	681d      	ldr	r5, [r3, #0]
200234aa:	f015 0501 	ands.w	r5, r5, #1
200234ae:	bf02      	ittt	eq
200234b0:	681a      	ldreq	r2, [r3, #0]
200234b2:	f042 0201 	orreq.w	r2, r2, #1
200234b6:	601a      	streq	r2, [r3, #0]
200234b8:	6802      	ldr	r2, [r0, #0]
200234ba:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200234bc:	f36f 0315 	bfc	r3, #0, #22
200234c0:	f043 0301 	orr.w	r3, r3, #1
200234c4:	6293      	str	r3, [r2, #40]	@ 0x28
200234c6:	2200      	movs	r2, #0
200234c8:	f7ff fb60 	bl	20022b8c <HAL_FLASH_SET_CMD>
200234cc:	b925      	cbnz	r5, 200234d8 <HAL_FLASH_RELEASE_DPD+0x3a>
200234ce:	6822      	ldr	r2, [r4, #0]
200234d0:	6813      	ldr	r3, [r2, #0]
200234d2:	f023 0301 	bic.w	r3, r3, #1
200234d6:	6013      	str	r3, [r2, #0]
200234d8:	bd38      	pop	{r3, r4, r5, pc}
200234da:	2001      	movs	r0, #1
200234dc:	e7fc      	b.n	200234d8 <HAL_FLASH_RELEASE_DPD+0x3a>

200234de <flash_handle_valid>:
200234de:	b118      	cbz	r0, 200234e8 <flash_handle_valid+0xa>
200234e0:	68c0      	ldr	r0, [r0, #12]
200234e2:	3800      	subs	r0, #0
200234e4:	bf18      	it	ne
200234e6:	2001      	movne	r0, #1
200234e8:	4770      	bx	lr

200234ea <HAL_GET_FLASH_MID>:
200234ea:	2000      	movs	r0, #0
200234ec:	4770      	bx	lr

200234ee <HAL_FLASH_DMA_START>:
200234ee:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200234f2:	4688      	mov	r8, r1
200234f4:	4699      	mov	r9, r3
200234f6:	4604      	mov	r4, r0
200234f8:	2800      	cmp	r0, #0
200234fa:	d045      	beq.n	20023588 <HAL_FLASH_DMA_START+0x9a>
200234fc:	6883      	ldr	r3, [r0, #8]
200234fe:	2b00      	cmp	r3, #0
20023500:	d042      	beq.n	20023588 <HAL_FLASH_DMA_START+0x9a>
20023502:	f1b9 0f00 	cmp.w	r9, #0
20023506:	d03f      	beq.n	20023588 <HAL_FLASH_DMA_START+0x9a>
20023508:	6801      	ldr	r1, [r0, #0]
2002350a:	680f      	ldr	r7, [r1, #0]
2002350c:	b332      	cbz	r2, 2002355c <HAL_FLASH_DMA_START+0x6e>
2002350e:	2210      	movs	r2, #16
20023510:	609a      	str	r2, [r3, #8]
20023512:	2300      	movs	r3, #0
20023514:	6882      	ldr	r2, [r0, #8]
20023516:	464e      	mov	r6, r9
20023518:	6153      	str	r3, [r2, #20]
2002351a:	6882      	ldr	r2, [r0, #8]
2002351c:	6193      	str	r3, [r2, #24]
2002351e:	6882      	ldr	r2, [r0, #8]
20023520:	60d3      	str	r3, [r2, #12]
20023522:	2280      	movs	r2, #128	@ 0x80
20023524:	6883      	ldr	r3, [r0, #8]
20023526:	611a      	str	r2, [r3, #16]
20023528:	6805      	ldr	r5, [r0, #0]
2002352a:	3504      	adds	r5, #4
2002352c:	68a0      	ldr	r0, [r4, #8]
2002352e:	f7ff f84b 	bl	200225c8 <HAL_DMA_DeInit>
20023532:	bb50      	cbnz	r0, 2002358a <HAL_FLASH_DMA_START+0x9c>
20023534:	68a0      	ldr	r0, [r4, #8]
20023536:	f7fe ffe3 	bl	20022500 <HAL_DMA_Init>
2002353a:	bb30      	cbnz	r0, 2002358a <HAL_FLASH_DMA_START+0x9c>
2002353c:	6823      	ldr	r3, [r4, #0]
2002353e:	f047 0720 	orr.w	r7, r7, #32
20023542:	601f      	str	r7, [r3, #0]
20023544:	6822      	ldr	r2, [r4, #0]
20023546:	f109 33ff 	add.w	r3, r9, #4294967295
2002354a:	6253      	str	r3, [r2, #36]	@ 0x24
2002354c:	4641      	mov	r1, r8
2002354e:	4633      	mov	r3, r6
20023550:	462a      	mov	r2, r5
20023552:	68a0      	ldr	r0, [r4, #8]
20023554:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20023558:	f7ff b994 	b.w	20022884 <HAL_DMA_Start>
2002355c:	f44f 7100 	mov.w	r1, #512	@ 0x200
20023560:	609a      	str	r2, [r3, #8]
20023562:	6883      	ldr	r3, [r0, #8]
20023564:	f109 0603 	add.w	r6, r9, #3
20023568:	6159      	str	r1, [r3, #20]
2002356a:	f44f 6100 	mov.w	r1, #2048	@ 0x800
2002356e:	6883      	ldr	r3, [r0, #8]
20023570:	4645      	mov	r5, r8
20023572:	6199      	str	r1, [r3, #24]
20023574:	6883      	ldr	r3, [r0, #8]
20023576:	08b6      	lsrs	r6, r6, #2
20023578:	60da      	str	r2, [r3, #12]
2002357a:	2280      	movs	r2, #128	@ 0x80
2002357c:	6883      	ldr	r3, [r0, #8]
2002357e:	611a      	str	r2, [r3, #16]
20023580:	6803      	ldr	r3, [r0, #0]
20023582:	f103 0804 	add.w	r8, r3, #4
20023586:	e7d1      	b.n	2002352c <HAL_FLASH_DMA_START+0x3e>
20023588:	2001      	movs	r0, #1
2002358a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

2002358e <HAL_FLASH_DMA_WAIT_DONE>:
2002358e:	b510      	push	{r4, lr}
20023590:	460a      	mov	r2, r1
20023592:	4604      	mov	r4, r0
20023594:	b170      	cbz	r0, 200235b4 <HAL_FLASH_DMA_WAIT_DONE+0x26>
20023596:	6880      	ldr	r0, [r0, #8]
20023598:	b160      	cbz	r0, 200235b4 <HAL_FLASH_DMA_WAIT_DONE+0x26>
2002359a:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
2002359c:	b111      	cbz	r1, 200235a4 <HAL_FLASH_DMA_WAIT_DONE+0x16>
2002359e:	f04f 32ff 	mov.w	r2, #4294967295
200235a2:	2100      	movs	r1, #0
200235a4:	f7ff f870 	bl	20022688 <HAL_DMA_PollForTransfer>
200235a8:	6822      	ldr	r2, [r4, #0]
200235aa:	6813      	ldr	r3, [r2, #0]
200235ac:	f023 0320 	bic.w	r3, r3, #32
200235b0:	6013      	str	r3, [r2, #0]
200235b2:	bd10      	pop	{r4, pc}
200235b4:	2001      	movs	r0, #1
200235b6:	e7fc      	b.n	200235b2 <HAL_FLASH_DMA_WAIT_DONE+0x24>

200235b8 <HAL_FLASH_ALIAS_CFG>:
200235b8:	b538      	push	{r3, r4, r5, lr}
200235ba:	461d      	mov	r5, r3
200235bc:	4604      	mov	r4, r0
200235be:	b158      	cbz	r0, 200235d8 <HAL_FLASH_ALIAS_CFG+0x20>
200235c0:	6903      	ldr	r3, [r0, #16]
200235c2:	428b      	cmp	r3, r1
200235c4:	bf98      	it	ls
200235c6:	1ac9      	subls	r1, r1, r3
200235c8:	f7ff fb68 	bl	20022c9c <HAL_FLASH_SET_ALIAS_RANGE>
200235cc:	4629      	mov	r1, r5
200235ce:	4620      	mov	r0, r4
200235d0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200235d4:	f7ff bb74 	b.w	20022cc0 <HAL_FLASH_SET_ALIAS_OFFSET>
200235d8:	bd38      	pop	{r3, r4, r5, pc}

200235da <HAL_FLASH_NONCE_CFG>:
200235da:	b570      	push	{r4, r5, r6, lr}
200235dc:	460c      	mov	r4, r1
200235de:	4615      	mov	r5, r2
200235e0:	4619      	mov	r1, r3
200235e2:	4606      	mov	r6, r0
200235e4:	b180      	cbz	r0, 20023608 <HAL_FLASH_NONCE_CFG+0x2e>
200235e6:	b17b      	cbz	r3, 20023608 <HAL_FLASH_NONCE_CFG+0x2e>
200235e8:	f7ff fb86 	bl	20022cf8 <HAL_FLASH_SET_NONCE>
200235ec:	6933      	ldr	r3, [r6, #16]
200235ee:	4630      	mov	r0, r6
200235f0:	42a3      	cmp	r3, r4
200235f2:	bf98      	it	ls
200235f4:	1ae4      	subls	r4, r4, r3
200235f6:	42ab      	cmp	r3, r5
200235f8:	bf98      	it	ls
200235fa:	1aed      	subls	r5, r5, r3
200235fc:	462a      	mov	r2, r5
200235fe:	4621      	mov	r1, r4
20023600:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20023604:	f7ff bb66 	b.w	20022cd4 <HAL_FLASH_SET_CTR>
20023608:	bd70      	pop	{r4, r5, r6, pc}

2002360a <HAL_FLASH_AES_CFG>:
2002360a:	b510      	push	{r4, lr}
2002360c:	4604      	mov	r4, r0
2002360e:	b148      	cbz	r0, 20023624 <HAL_FLASH_AES_CFG+0x1a>
20023610:	b101      	cbz	r1, 20023614 <HAL_FLASH_AES_CFG+0xa>
20023612:	2101      	movs	r1, #1
20023614:	f7ff fb7e 	bl	20022d14 <HAL_FLASH_SET_AES>
20023618:	4620      	mov	r0, r4
2002361a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002361e:	2101      	movs	r1, #1
20023620:	f7ff bb87 	b.w	20022d32 <HAL_FLASH_ENABLE_AES>
20023624:	bd10      	pop	{r4, pc}

20023626 <nand_read_id>:
20023626:	b510      	push	{r4, lr}
20023628:	460b      	mov	r3, r1
2002362a:	4604      	mov	r4, r0
2002362c:	b086      	sub	sp, #24
2002362e:	b320      	cbz	r0, 2002367a <nand_read_id+0x54>
20023630:	2908      	cmp	r1, #8
20023632:	f04f 0100 	mov.w	r1, #0
20023636:	f04f 0201 	mov.w	r2, #1
2002363a:	bf83      	ittte	hi
2002363c:	460b      	movhi	r3, r1
2002363e:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
20023642:	e9cd 1100 	strdhi	r1, r1, [sp]
20023646:	e9cd 1102 	strdls	r1, r1, [sp, #8]
2002364a:	bf8e      	itee	hi
2002364c:	4619      	movhi	r1, r3
2002364e:	e9cd 1100 	strdls	r1, r1, [sp]
20023652:	b25b      	sxtbls	r3, r3
20023654:	9204      	str	r2, [sp, #16]
20023656:	f7ff fade 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
2002365a:	2103      	movs	r1, #3
2002365c:	4620      	mov	r0, r4
2002365e:	f7ff fa70 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023662:	2200      	movs	r2, #0
20023664:	219f      	movs	r1, #159	@ 0x9f
20023666:	4620      	mov	r0, r4
20023668:	f7ff fa90 	bl	20022b8c <HAL_FLASH_SET_CMD>
2002366c:	4620      	mov	r0, r4
2002366e:	f7ff fabe 	bl	20022bee <HAL_FLASH_READ32>
20023672:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
20023676:	b006      	add	sp, #24
20023678:	bd10      	pop	{r4, pc}
2002367a:	20ff      	movs	r0, #255	@ 0xff
2002367c:	e7fb      	b.n	20023676 <nand_read_id+0x50>

2002367e <HAL_NAND_CONF_ECC>:
2002367e:	b538      	push	{r3, r4, r5, lr}
20023680:	460d      	mov	r5, r1
20023682:	4604      	mov	r4, r0
20023684:	b398      	cbz	r0, 200236ee <HAL_NAND_CONF_ECC+0x70>
20023686:	68c3      	ldr	r3, [r0, #12]
20023688:	b38b      	cbz	r3, 200236ee <HAL_NAND_CONF_ECC+0x70>
2002368a:	799a      	ldrb	r2, [r3, #6]
2002368c:	b392      	cbz	r2, 200236f4 <HAL_NAND_CONF_ECC+0x76>
2002368e:	7a9b      	ldrb	r3, [r3, #10]
20023690:	b383      	cbz	r3, 200236f4 <HAL_NAND_CONF_ECC+0x76>
20023692:	2101      	movs	r1, #1
20023694:	f7ff fa55 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023698:	68e3      	ldr	r3, [r4, #12]
2002369a:	2102      	movs	r1, #2
2002369c:	799a      	ldrb	r2, [r3, #6]
2002369e:	4620      	mov	r0, r4
200236a0:	f7ff fcee 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200236a4:	4620      	mov	r0, r4
200236a6:	f7ff faa2 	bl	20022bee <HAL_FLASH_READ32>
200236aa:	68e3      	ldr	r3, [r4, #12]
200236ac:	7a9b      	ldrb	r3, [r3, #10]
200236ae:	b1dd      	cbz	r5, 200236e8 <HAL_NAND_CONF_ECC+0x6a>
200236b0:	ea43 0100 	orr.w	r1, r3, r0
200236b4:	4620      	mov	r0, r4
200236b6:	f7ff fa3d 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
200236ba:	2101      	movs	r1, #1
200236bc:	4620      	mov	r0, r4
200236be:	f7ff fa40 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200236c2:	68e3      	ldr	r3, [r4, #12]
200236c4:	2103      	movs	r1, #3
200236c6:	799a      	ldrb	r2, [r3, #6]
200236c8:	4620      	mov	r0, r4
200236ca:	f7ff fcd9 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200236ce:	68e3      	ldr	r3, [r4, #12]
200236d0:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
200236d4:	2102      	movs	r1, #2
200236d6:	799a      	ldrb	r2, [r3, #6]
200236d8:	4620      	mov	r0, r4
200236da:	f7ff fcd1 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200236de:	4620      	mov	r0, r4
200236e0:	f7ff fa85 	bl	20022bee <HAL_FLASH_READ32>
200236e4:	2000      	movs	r0, #0
200236e6:	bd38      	pop	{r3, r4, r5, pc}
200236e8:	ea20 0103 	bic.w	r1, r0, r3
200236ec:	e7e2      	b.n	200236b4 <HAL_NAND_CONF_ECC+0x36>
200236ee:	f04f 30ff 	mov.w	r0, #4294967295
200236f2:	e7f8      	b.n	200236e6 <HAL_NAND_CONF_ECC+0x68>
200236f4:	f06f 0001 	mvn.w	r0, #1
200236f8:	e7f5      	b.n	200236e6 <HAL_NAND_CONF_ECC+0x68>

200236fa <HAL_NAND_GET_ECC_STATUS>:
200236fa:	b510      	push	{r4, lr}
200236fc:	4604      	mov	r4, r0
200236fe:	b320      	cbz	r0, 2002374a <HAL_NAND_GET_ECC_STATUS+0x50>
20023700:	68c2      	ldr	r2, [r0, #12]
20023702:	b31a      	cbz	r2, 2002374c <HAL_NAND_GET_ECC_STATUS+0x52>
20023704:	7913      	ldrb	r3, [r2, #4]
20023706:	b31b      	cbz	r3, 20023750 <HAL_NAND_GET_ECC_STATUS+0x56>
20023708:	79d3      	ldrb	r3, [r2, #7]
2002370a:	b30b      	cbz	r3, 20023750 <HAL_NAND_GET_ECC_STATUS+0x56>
2002370c:	2101      	movs	r1, #1
2002370e:	f7ff fa18 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023712:	68e3      	ldr	r3, [r4, #12]
20023714:	2102      	movs	r1, #2
20023716:	791a      	ldrb	r2, [r3, #4]
20023718:	4620      	mov	r0, r4
2002371a:	f7ff fcb1 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002371e:	4620      	mov	r0, r4
20023720:	f7ff fa65 	bl	20022bee <HAL_FLASH_READ32>
20023724:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
20023728:	2a3f      	cmp	r2, #63	@ 0x3f
2002372a:	ea4f 1312 	mov.w	r3, r2, lsr #4
2002372e:	d804      	bhi.n	2002373a <HAL_NAND_GET_ECC_STATUS+0x40>
20023730:	2b01      	cmp	r3, #1
20023732:	d808      	bhi.n	20023746 <HAL_NAND_GET_ECC_STATUS+0x4c>
20023734:	f000 0030 	and.w	r0, r0, #48	@ 0x30
20023738:	e007      	b.n	2002374a <HAL_NAND_GET_ECC_STATUS+0x50>
2002373a:	3b04      	subs	r3, #4
2002373c:	2b01      	cmp	r3, #1
2002373e:	d8f9      	bhi.n	20023734 <HAL_NAND_GET_ECC_STATUS+0x3a>
20023740:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
20023744:	e001      	b.n	2002374a <HAL_NAND_GET_ECC_STATUS+0x50>
20023746:	f000 0070 	and.w	r0, r0, #112	@ 0x70
2002374a:	bd10      	pop	{r4, pc}
2002374c:	4610      	mov	r0, r2
2002374e:	e7fc      	b.n	2002374a <HAL_NAND_GET_ECC_STATUS+0x50>
20023750:	4618      	mov	r0, r3
20023752:	e7fa      	b.n	2002374a <HAL_NAND_GET_ECC_STATUS+0x50>

20023754 <HAL_NAND_CHECK_ECC>:
20023754:	4603      	mov	r3, r0
20023756:	1108      	asrs	r0, r1, #4
20023758:	b172      	cbz	r2, 20023778 <HAL_NAND_CHECK_ECC+0x24>
2002375a:	2b06      	cmp	r3, #6
2002375c:	d80c      	bhi.n	20023778 <HAL_NAND_CHECK_ECC+0x24>
2002375e:	e8df f003 	tbb	[pc, r3]
20023762:	0d04      	.short	0x0d04
20023764:	3f352e18 	.word	0x3f352e18
20023768:	47          	.byte	0x47
20023769:	00          	.byte	0x00
2002376a:	b128      	cbz	r0, 20023778 <HAL_NAND_CHECK_ECC+0x24>
2002376c:	2801      	cmp	r0, #1
2002376e:	6813      	ldr	r3, [r2, #0]
20023770:	d10a      	bne.n	20023788 <HAL_NAND_CHECK_ECC+0x34>
20023772:	f043 0301 	orr.w	r3, r3, #1
20023776:	6013      	str	r3, [r2, #0]
20023778:	2000      	movs	r0, #0
2002377a:	4770      	bx	lr
2002377c:	f020 0302 	bic.w	r3, r0, #2
20023780:	2b01      	cmp	r3, #1
20023782:	d003      	beq.n	2002378c <HAL_NAND_CHECK_ECC+0x38>
20023784:	b1d0      	cbz	r0, 200237bc <HAL_NAND_CHECK_ECC+0x68>
20023786:	6813      	ldr	r3, [r2, #0]
20023788:	4303      	orrs	r3, r0
2002378a:	e016      	b.n	200237ba <HAL_NAND_CHECK_ECC+0x66>
2002378c:	6813      	ldr	r3, [r2, #0]
2002378e:	4303      	orrs	r3, r0
20023790:	e7f1      	b.n	20023776 <HAL_NAND_CHECK_ECC+0x22>
20023792:	2805      	cmp	r0, #5
20023794:	d8f7      	bhi.n	20023786 <HAL_NAND_CHECK_ECC+0x32>
20023796:	a301      	add	r3, pc, #4	@ (adr r3, 2002379c <HAL_NAND_CHECK_ECC+0x48>)
20023798:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
2002379c:	20023779 	.word	0x20023779
200237a0:	2002378d 	.word	0x2002378d
200237a4:	200237b5 	.word	0x200237b5
200237a8:	2002378d 	.word	0x2002378d
200237ac:	20023787 	.word	0x20023787
200237b0:	2002378d 	.word	0x2002378d
200237b4:	6813      	ldr	r3, [r2, #0]
200237b6:	f043 0302 	orr.w	r3, r3, #2
200237ba:	6013      	str	r3, [r2, #0]
200237bc:	4770      	bx	lr
200237be:	2800      	cmp	r0, #0
200237c0:	d0da      	beq.n	20023778 <HAL_NAND_CHECK_ECC+0x24>
200237c2:	1e43      	subs	r3, r0, #1
200237c4:	2b05      	cmp	r3, #5
200237c6:	6813      	ldr	r3, [r2, #0]
200237c8:	d9e1      	bls.n	2002378e <HAL_NAND_CHECK_ECC+0x3a>
200237ca:	e7dd      	b.n	20023788 <HAL_NAND_CHECK_ECC+0x34>
200237cc:	07c3      	lsls	r3, r0, #31
200237ce:	f000 0103 	and.w	r1, r0, #3
200237d2:	d402      	bmi.n	200237da <HAL_NAND_CHECK_ECC+0x86>
200237d4:	2900      	cmp	r1, #0
200237d6:	d0cf      	beq.n	20023778 <HAL_NAND_CHECK_ECC+0x24>
200237d8:	e7d5      	b.n	20023786 <HAL_NAND_CHECK_ECC+0x32>
200237da:	6813      	ldr	r3, [r2, #0]
200237dc:	430b      	orrs	r3, r1
200237de:	e7ca      	b.n	20023776 <HAL_NAND_CHECK_ECC+0x22>
200237e0:	2800      	cmp	r0, #0
200237e2:	d0c9      	beq.n	20023778 <HAL_NAND_CHECK_ECC+0x24>
200237e4:	6813      	ldr	r3, [r2, #0]
200237e6:	2808      	cmp	r0, #8
200237e8:	ea43 0300 	orr.w	r3, r3, r0
200237ec:	dce5      	bgt.n	200237ba <HAL_NAND_CHECK_ECC+0x66>
200237ee:	e7c2      	b.n	20023776 <HAL_NAND_CHECK_ECC+0x22>
200237f0:	2800      	cmp	r0, #0
200237f2:	d0c1      	beq.n	20023778 <HAL_NAND_CHECK_ECC+0x24>
200237f4:	1e43      	subs	r3, r0, #1
200237f6:	2b01      	cmp	r3, #1
200237f8:	e7e5      	b.n	200237c6 <HAL_NAND_CHECK_ECC+0x72>
200237fa:	bf00      	nop

200237fc <HAL_NAND_GET_ECC_RESULT>:
200237fc:	b510      	push	{r4, lr}
200237fe:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
20023802:	4604      	mov	r4, r0
20023804:	b183      	cbz	r3, 20023828 <HAL_NAND_GET_ECC_RESULT+0x2c>
20023806:	f7ff ff78 	bl	200236fa <HAL_NAND_GET_ECC_STATUS>
2002380a:	4601      	mov	r1, r0
2002380c:	b160      	cbz	r0, 20023828 <HAL_NAND_GET_ECC_RESULT+0x2c>
2002380e:	4622      	mov	r2, r4
20023810:	6863      	ldr	r3, [r4, #4]
20023812:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
20023816:	f842 3f04 	str.w	r3, [r2, #4]!
2002381a:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
2002381e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023822:	0900      	lsrs	r0, r0, #4
20023824:	f7ff bf96 	b.w	20023754 <HAL_NAND_CHECK_ECC>
20023828:	2000      	movs	r0, #0
2002382a:	bd10      	pop	{r4, pc}

2002382c <HAL_NAND_EN_QUAL>:
2002382c:	b538      	push	{r3, r4, r5, lr}
2002382e:	460d      	mov	r5, r1
20023830:	4604      	mov	r4, r0
20023832:	b348      	cbz	r0, 20023888 <HAL_NAND_EN_QUAL+0x5c>
20023834:	68c3      	ldr	r3, [r0, #12]
20023836:	b33b      	cbz	r3, 20023888 <HAL_NAND_EN_QUAL+0x5c>
20023838:	799a      	ldrb	r2, [r3, #6]
2002383a:	b10a      	cbz	r2, 20023840 <HAL_NAND_EN_QUAL+0x14>
2002383c:	7a1b      	ldrb	r3, [r3, #8]
2002383e:	b90b      	cbnz	r3, 20023844 <HAL_NAND_EN_QUAL+0x18>
20023840:	2000      	movs	r0, #0
20023842:	bd38      	pop	{r3, r4, r5, pc}
20023844:	2101      	movs	r1, #1
20023846:	f7ff f97c 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
2002384a:	68e3      	ldr	r3, [r4, #12]
2002384c:	2102      	movs	r1, #2
2002384e:	799a      	ldrb	r2, [r3, #6]
20023850:	4620      	mov	r0, r4
20023852:	f7ff fc15 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023856:	4620      	mov	r0, r4
20023858:	f7ff f9c9 	bl	20022bee <HAL_FLASH_READ32>
2002385c:	68e3      	ldr	r3, [r4, #12]
2002385e:	7a1b      	ldrb	r3, [r3, #8]
20023860:	b17d      	cbz	r5, 20023882 <HAL_NAND_EN_QUAL+0x56>
20023862:	ea43 0100 	orr.w	r1, r3, r0
20023866:	4620      	mov	r0, r4
20023868:	f7ff f964 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
2002386c:	2101      	movs	r1, #1
2002386e:	4620      	mov	r0, r4
20023870:	f7ff f967 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023874:	68e3      	ldr	r3, [r4, #12]
20023876:	2103      	movs	r1, #3
20023878:	4620      	mov	r0, r4
2002387a:	799a      	ldrb	r2, [r3, #6]
2002387c:	f7ff fc00 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023880:	e7de      	b.n	20023840 <HAL_NAND_EN_QUAL+0x14>
20023882:	ea20 0103 	bic.w	r1, r0, r3
20023886:	e7ee      	b.n	20023866 <HAL_NAND_EN_QUAL+0x3a>
20023888:	f04f 30ff 	mov.w	r0, #4294967295
2002388c:	e7d9      	b.n	20023842 <HAL_NAND_EN_QUAL+0x16>

2002388e <nand_clear_status>:
2002388e:	b510      	push	{r4, lr}
20023890:	4604      	mov	r4, r0
20023892:	2101      	movs	r1, #1
20023894:	f7ff f955 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023898:	2102      	movs	r1, #2
2002389a:	4620      	mov	r0, r4
2002389c:	f7ff f94a 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
200238a0:	68e3      	ldr	r3, [r4, #12]
200238a2:	2103      	movs	r1, #3
200238a4:	795a      	ldrb	r2, [r3, #5]
200238a6:	4620      	mov	r0, r4
200238a8:	f7ff fbea 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200238ac:	2100      	movs	r1, #0
200238ae:	4620      	mov	r0, r4
200238b0:	f7ff f940 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
200238b4:	68e3      	ldr	r3, [r4, #12]
200238b6:	2103      	movs	r1, #3
200238b8:	4620      	mov	r0, r4
200238ba:	795a      	ldrb	r2, [r3, #5]
200238bc:	f7ff fbe0 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
200238c0:	2000      	movs	r0, #0
200238c2:	bd10      	pop	{r4, pc}

200238c4 <HAL_NAND_PAGE_SIZE>:
200238c4:	b140      	cbz	r0, 200238d8 <HAL_NAND_PAGE_SIZE+0x14>
200238c6:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
200238ca:	f013 0f01 	tst.w	r3, #1
200238ce:	bf14      	ite	ne
200238d0:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
200238d4:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
200238d8:	4770      	bx	lr

200238da <HAL_NAND_READ_WITHOOB>:
200238da:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200238de:	b085      	sub	sp, #20
200238e0:	460e      	mov	r6, r1
200238e2:	4691      	mov	r9, r2
200238e4:	461d      	mov	r5, r3
200238e6:	4604      	mov	r4, r0
200238e8:	9f0f      	ldr	r7, [sp, #60]	@ 0x3c
200238ea:	b1b0      	cbz	r0, 2002391a <HAL_NAND_READ_WITHOOB+0x40>
200238ec:	68c3      	ldr	r3, [r0, #12]
200238ee:	b1a3      	cbz	r3, 2002391a <HAL_NAND_READ_WITHOOB+0x40>
200238f0:	69c3      	ldr	r3, [r0, #28]
200238f2:	b193      	cbz	r3, 2002391a <HAL_NAND_READ_WITHOOB+0x40>
200238f4:	2f80      	cmp	r7, #128	@ 0x80
200238f6:	d810      	bhi.n	2002391a <HAL_NAND_READ_WITHOOB+0x40>
200238f8:	f7ff ffe4 	bl	200238c4 <HAL_NAND_PAGE_SIZE>
200238fc:	f100 3aff 	add.w	sl, r0, #4294967295
20023900:	ea0a 0a01 	and.w	sl, sl, r1
20023904:	eb0a 0305 	add.w	r3, sl, r5
20023908:	4283      	cmp	r3, r0
2002390a:	4680      	mov	r8, r0
2002390c:	d907      	bls.n	2002391e <HAL_NAND_READ_WITHOOB+0x44>
2002390e:	2002      	movs	r0, #2
20023910:	6060      	str	r0, [r4, #4]
20023912:	2000      	movs	r0, #0
20023914:	b005      	add	sp, #20
20023916:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002391a:	2001      	movs	r0, #1
2002391c:	e7f8      	b.n	20023910 <HAL_NAND_READ_WITHOOB+0x36>
2002391e:	2300      	movs	r3, #0
20023920:	6063      	str	r3, [r4, #4]
20023922:	6923      	ldr	r3, [r4, #16]
20023924:	f04f 0b00 	mov.w	fp, #0
20023928:	428b      	cmp	r3, r1
2002392a:	bf98      	it	ls
2002392c:	1ace      	subls	r6, r1, r3
2002392e:	fbb6 f2f0 	udiv	r2, r6, r0
20023932:	2104      	movs	r1, #4
20023934:	4620      	mov	r0, r4
20023936:	f7ff fba3 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002393a:	2014      	movs	r0, #20
2002393c:	f7fe fada 	bl	20021ef4 <HAL_Delay_us_>
20023940:	2101      	movs	r1, #1
20023942:	4620      	mov	r0, r4
20023944:	f7ff f8fd 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023948:	2005      	movs	r0, #5
2002394a:	f7fe fad3 	bl	20021ef4 <HAL_Delay_us_>
2002394e:	68e2      	ldr	r2, [r4, #12]
20023950:	2102      	movs	r1, #2
20023952:	7912      	ldrb	r2, [r2, #4]
20023954:	4620      	mov	r0, r4
20023956:	f7ff fb93 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002395a:	4620      	mov	r0, r4
2002395c:	f7ff f947 	bl	20022bee <HAL_FLASH_READ32>
20023960:	07c1      	lsls	r1, r0, #31
20023962:	d4f1      	bmi.n	20023948 <HAL_NAND_READ_WITHOOB+0x6e>
20023964:	f1bb 0f00 	cmp.w	fp, #0
20023968:	d102      	bne.n	20023970 <HAL_NAND_READ_WITHOOB+0x96>
2002396a:	f04f 0b01 	mov.w	fp, #1
2002396e:	e7eb      	b.n	20023948 <HAL_NAND_READ_WITHOOB+0x6e>
20023970:	4620      	mov	r0, r4
20023972:	f7ff ff43 	bl	200237fc <HAL_NAND_GET_ECC_RESULT>
20023976:	b110      	cbz	r0, 2002397e <HAL_NAND_READ_WITHOOB+0xa4>
20023978:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
2002397c:	e7c8      	b.n	20023910 <HAL_NAND_READ_WITHOOB+0x36>
2002397e:	f894 2020 	ldrb.w	r2, [r4, #32]
20023982:	68e3      	ldr	r3, [r4, #12]
20023984:	bbb2      	cbnz	r2, 200239f4 <HAL_NAND_READ_WITHOOB+0x11a>
20023986:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
2002398a:	4620      	mov	r0, r4
2002398c:	f7ff f881 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
20023990:	68e0      	ldr	r0, [r4, #12]
20023992:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023996:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
2002399a:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
2002399e:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
200239a2:	f8cd c00c 	str.w	ip, [sp, #12]
200239a6:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
200239aa:	f8cd c008 	str.w	ip, [sp, #8]
200239ae:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
200239b2:	f8cd c004 	str.w	ip, [sp, #4]
200239b6:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
200239ba:	9000      	str	r0, [sp, #0]
200239bc:	4620      	mov	r0, r4
200239be:	f7ff f873 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
200239c2:	03b2      	lsls	r2, r6, #14
200239c4:	f8d4 b010 	ldr.w	fp, [r4, #16]
200239c8:	d504      	bpl.n	200239d4 <HAL_NAND_READ_WITHOOB+0xfa>
200239ca:	f894 2027 	ldrb.w	r2, [r4, #39]	@ 0x27
200239ce:	b10a      	cbz	r2, 200239d4 <HAL_NAND_READ_WITHOOB+0xfa>
200239d0:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
200239d4:	ea49 0205 	orr.w	r2, r9, r5
200239d8:	ea42 020a 	orr.w	r2, r2, sl
200239dc:	0793      	lsls	r3, r2, #30
200239de:	d102      	bne.n	200239e6 <HAL_NAND_READ_WITHOOB+0x10c>
200239e0:	1e6a      	subs	r2, r5, #1
200239e2:	2afe      	cmp	r2, #254	@ 0xfe
200239e4:	d821      	bhi.n	20023a2a <HAL_NAND_READ_WITHOOB+0x150>
200239e6:	462a      	mov	r2, r5
200239e8:	4648      	mov	r0, r9
200239ea:	eb0b 010a 	add.w	r1, fp, sl
200239ee:	f006 fee7 	bl	2002a7c0 <memcpy>
200239f2:	e01d      	b.n	20023a30 <HAL_NAND_READ_WITHOOB+0x156>
200239f4:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
200239f8:	4620      	mov	r0, r4
200239fa:	f7ff f84a 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
200239fe:	68e0      	ldr	r0, [r4, #12]
20023a00:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023a04:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023a08:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
20023a0c:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
20023a10:	f8cd c00c 	str.w	ip, [sp, #12]
20023a14:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023a18:	f8cd c008 	str.w	ip, [sp, #8]
20023a1c:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
20023a20:	f8cd c004 	str.w	ip, [sp, #4]
20023a24:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023a28:	e7c7      	b.n	200239ba <HAL_NAND_READ_WITHOOB+0xe0>
20023a2a:	f1b9 0f00 	cmp.w	r9, #0
20023a2e:	d1da      	bne.n	200239e6 <HAL_NAND_READ_WITHOOB+0x10c>
20023a30:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
20023a32:	b12b      	cbz	r3, 20023a40 <HAL_NAND_READ_WITHOOB+0x166>
20023a34:	463a      	mov	r2, r7
20023a36:	4618      	mov	r0, r3
20023a38:	eb0b 0108 	add.w	r1, fp, r8
20023a3c:	f006 fec0 	bl	2002a7c0 <memcpy>
20023a40:	1978      	adds	r0, r7, r5
20023a42:	e767      	b.n	20023914 <HAL_NAND_READ_WITHOOB+0x3a>

20023a44 <HAL_NAND_BLOCK_SIZE>:
20023a44:	b508      	push	{r3, lr}
20023a46:	4602      	mov	r2, r0
20023a48:	f7ff ff3c 	bl	200238c4 <HAL_NAND_PAGE_SIZE>
20023a4c:	b128      	cbz	r0, 20023a5a <HAL_NAND_BLOCK_SIZE+0x16>
20023a4e:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023a52:	079b      	lsls	r3, r3, #30
20023a54:	bf4c      	ite	mi
20023a56:	01c0      	lslmi	r0, r0, #7
20023a58:	0180      	lslpl	r0, r0, #6
20023a5a:	bd08      	pop	{r3, pc}

20023a5c <HAL_NAND_GET_BADBLK>:
20023a5c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023a5e:	4604      	mov	r4, r0
20023a60:	b910      	cbnz	r0, 20023a68 <HAL_NAND_GET_BADBLK+0xc>
20023a62:	2000      	movs	r0, #0
20023a64:	b004      	add	sp, #16
20023a66:	bd10      	pop	{r4, pc}
20023a68:	69c3      	ldr	r3, [r0, #28]
20023a6a:	2b00      	cmp	r3, #0
20023a6c:	d0f9      	beq.n	20023a62 <HAL_NAND_GET_BADBLK+0x6>
20023a6e:	f7ff ffe9 	bl	20023a44 <HAL_NAND_BLOCK_SIZE>
20023a72:	2304      	movs	r3, #4
20023a74:	9301      	str	r3, [sp, #4]
20023a76:	ab03      	add	r3, sp, #12
20023a78:	9300      	str	r3, [sp, #0]
20023a7a:	2300      	movs	r3, #0
20023a7c:	4341      	muls	r1, r0
20023a7e:	461a      	mov	r2, r3
20023a80:	4620      	mov	r0, r4
20023a82:	f7ff ff2a 	bl	200238da <HAL_NAND_READ_WITHOOB>
20023a86:	b140      	cbz	r0, 20023a9a <HAL_NAND_GET_BADBLK+0x3e>
20023a88:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023a8c:	2bff      	cmp	r3, #255	@ 0xff
20023a8e:	d0e8      	beq.n	20023a62 <HAL_NAND_GET_BADBLK+0x6>
20023a90:	9803      	ldr	r0, [sp, #12]
20023a92:	2800      	cmp	r0, #0
20023a94:	bf08      	it	eq
20023a96:	2001      	moveq	r0, #1
20023a98:	e7e4      	b.n	20023a64 <HAL_NAND_GET_BADBLK+0x8>
20023a9a:	2001      	movs	r0, #1
20023a9c:	e7e2      	b.n	20023a64 <HAL_NAND_GET_BADBLK+0x8>

20023a9e <HAL_QSPIEX_WRITE_PAGE>:
20023a9e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023aa2:	b099      	sub	sp, #100	@ 0x64
20023aa4:	4604      	mov	r4, r0
20023aa6:	460e      	mov	r6, r1
20023aa8:	4691      	mov	r9, r2
20023aaa:	f7ff fd18 	bl	200234de <flash_handle_valid>
20023aae:	b318      	cbz	r0, 20023af8 <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023ab0:	2b00      	cmp	r3, #0
20023ab2:	f000 80d7 	beq.w	20023c64 <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023ab6:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023aba:	bf28      	it	cs
20023abc:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023ac0:	68a1      	ldr	r1, [r4, #8]
20023ac2:	461d      	mov	r5, r3
20023ac4:	6962      	ldr	r2, [r4, #20]
20023ac6:	f894 3020 	ldrb.w	r3, [r4, #32]
20023aca:	2900      	cmp	r1, #0
20023acc:	d03b      	beq.n	20023b46 <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023ace:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023ad2:	d914      	bls.n	20023afe <HAL_QSPIEX_WRITE_PAGE+0x60>
20023ad4:	2b02      	cmp	r3, #2
20023ad6:	bf14      	ite	ne
20023ad8:	2727      	movne	r7, #39	@ 0x27
20023ada:	2728      	moveq	r7, #40	@ 0x28
20023adc:	4639      	mov	r1, r7
20023ade:	4620      	mov	r0, r4
20023ae0:	f7ff faa7 	bl	20023032 <HAL_FLASH_PRE_CMD>
20023ae4:	4649      	mov	r1, r9
20023ae6:	462b      	mov	r3, r5
20023ae8:	2201      	movs	r2, #1
20023aea:	4620      	mov	r0, r4
20023aec:	f7ff fcff 	bl	200234ee <HAL_FLASH_DMA_START>
20023af0:	4601      	mov	r1, r0
20023af2:	b148      	cbz	r0, 20023b08 <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023af4:	2500      	movs	r5, #0
20023af6:	4628      	mov	r0, r5
20023af8:	b019      	add	sp, #100	@ 0x64
20023afa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023afe:	2b02      	cmp	r3, #2
20023b00:	bf14      	ite	ne
20023b02:	2716      	movne	r7, #22
20023b04:	2717      	moveq	r7, #23
20023b06:	e7e9      	b.n	20023adc <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023b08:	4632      	mov	r2, r6
20023b0a:	4620      	mov	r0, r4
20023b0c:	f7ff fab8 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023b10:	2101      	movs	r1, #1
20023b12:	4620      	mov	r0, r4
20023b14:	f7ff f81f 	bl	20022b56 <HAL_FLASH_WRITE_DLEN2>
20023b18:	2301      	movs	r3, #1
20023b1a:	4632      	mov	r2, r6
20023b1c:	9300      	str	r3, [sp, #0]
20023b1e:	4639      	mov	r1, r7
20023b20:	2302      	movs	r3, #2
20023b22:	4620      	mov	r0, r4
20023b24:	f7ff fadf 	bl	200230e6 <HAL_FLASH_ISSUE_CMD_SEQ>
20023b28:	2800      	cmp	r0, #0
20023b2a:	d1e3      	bne.n	20023af4 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023b2c:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023b30:	4620      	mov	r0, r4
20023b32:	f7ff fd2c 	bl	2002358e <HAL_FLASH_DMA_WAIT_DONE>
20023b36:	2800      	cmp	r0, #0
20023b38:	d1dc      	bne.n	20023af4 <HAL_QSPIEX_WRITE_PAGE+0x56>
20023b3a:	6822      	ldr	r2, [r4, #0]
20023b3c:	6813      	ldr	r3, [r2, #0]
20023b3e:	f023 0320 	bic.w	r3, r3, #32
20023b42:	6013      	str	r3, [r2, #0]
20023b44:	e7d7      	b.n	20023af6 <HAL_QSPIEX_WRITE_PAGE+0x58>
20023b46:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023b4a:	f240 8082 	bls.w	20023c52 <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023b4e:	2b02      	cmp	r3, #2
20023b50:	bf14      	ite	ne
20023b52:	2327      	movne	r3, #39	@ 0x27
20023b54:	2328      	moveq	r3, #40	@ 0x28
20023b56:	462f      	mov	r7, r5
20023b58:	f04f 0800 	mov.w	r8, #0
20023b5c:	9303      	str	r3, [sp, #12]
20023b5e:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023b62:	2f40      	cmp	r7, #64	@ 0x40
20023b64:	bfd4      	ite	le
20023b66:	ea0a 0a07 	andle.w	sl, sl, r7
20023b6a:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023b6e:	f1ba 0f00 	cmp.w	sl, #0
20023b72:	d03f      	beq.n	20023bf4 <HAL_QSPIEX_WRITE_PAGE+0x156>
20023b74:	2200      	movs	r2, #0
20023b76:	4620      	mov	r0, r4
20023b78:	4611      	mov	r1, r2
20023b7a:	f7ff fa81 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023b7e:	eb09 0308 	add.w	r3, r9, r8
20023b82:	f10d 0c20 	add.w	ip, sp, #32
20023b86:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023b8a:	4662      	mov	r2, ip
20023b8c:	6818      	ldr	r0, [r3, #0]
20023b8e:	6859      	ldr	r1, [r3, #4]
20023b90:	3308      	adds	r3, #8
20023b92:	c203      	stmia	r2!, {r0, r1}
20023b94:	4573      	cmp	r3, lr
20023b96:	4694      	mov	ip, r2
20023b98:	d1f7      	bne.n	20023b8a <HAL_QSPIEX_WRITE_PAGE+0xec>
20023b9a:	f04f 0b00 	mov.w	fp, #0
20023b9e:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023ba2:	ab08      	add	r3, sp, #32
20023ba4:	f853 1b04 	ldr.w	r1, [r3], #4
20023ba8:	4620      	mov	r0, r4
20023baa:	9205      	str	r2, [sp, #20]
20023bac:	9304      	str	r3, [sp, #16]
20023bae:	f7fe ffc1 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
20023bb2:	9a05      	ldr	r2, [sp, #20]
20023bb4:	f10b 0b01 	add.w	fp, fp, #1
20023bb8:	4593      	cmp	fp, r2
20023bba:	9b04      	ldr	r3, [sp, #16]
20023bbc:	d1f2      	bne.n	20023ba4 <HAL_QSPIEX_WRITE_PAGE+0x106>
20023bbe:	4651      	mov	r1, sl
20023bc0:	4620      	mov	r0, r4
20023bc2:	f7fe ffbe 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023bc6:	4620      	mov	r0, r4
20023bc8:	9903      	ldr	r1, [sp, #12]
20023bca:	eb06 0208 	add.w	r2, r6, r8
20023bce:	f7ff fa57 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023bd2:	2101      	movs	r1, #1
20023bd4:	4620      	mov	r0, r4
20023bd6:	f7fe ffb4 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023bda:	2200      	movs	r2, #0
20023bdc:	2102      	movs	r1, #2
20023bde:	4620      	mov	r0, r4
20023be0:	f7ff fa4e 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023be4:	4620      	mov	r0, r4
20023be6:	f7fe fff9 	bl	20022bdc <HAL_FLASH_IS_PROG_DONE>
20023bea:	2800      	cmp	r0, #0
20023bec:	d0f1      	beq.n	20023bd2 <HAL_QSPIEX_WRITE_PAGE+0x134>
20023bee:	eba7 070a 	sub.w	r7, r7, sl
20023bf2:	44d0      	add	r8, sl
20023bf4:	1e7b      	subs	r3, r7, #1
20023bf6:	2b02      	cmp	r3, #2
20023bf8:	d830      	bhi.n	20023c5c <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023bfa:	6923      	ldr	r3, [r4, #16]
20023bfc:	4446      	add	r6, r8
20023bfe:	4333      	orrs	r3, r6
20023c00:	681b      	ldr	r3, [r3, #0]
20023c02:	463a      	mov	r2, r7
20023c04:	eb09 0108 	add.w	r1, r9, r8
20023c08:	a807      	add	r0, sp, #28
20023c0a:	9307      	str	r3, [sp, #28]
20023c0c:	f006 fdd8 	bl	2002a7c0 <memcpy>
20023c10:	2200      	movs	r2, #0
20023c12:	4620      	mov	r0, r4
20023c14:	4611      	mov	r1, r2
20023c16:	f7ff fa33 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023c1a:	9907      	ldr	r1, [sp, #28]
20023c1c:	4620      	mov	r0, r4
20023c1e:	f7fe ff89 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
20023c22:	2104      	movs	r1, #4
20023c24:	4620      	mov	r0, r4
20023c26:	f7fe ff8c 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023c2a:	4632      	mov	r2, r6
20023c2c:	4620      	mov	r0, r4
20023c2e:	9903      	ldr	r1, [sp, #12]
20023c30:	f7ff fa26 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023c34:	2101      	movs	r1, #1
20023c36:	4620      	mov	r0, r4
20023c38:	f7fe ff83 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20023c3c:	2200      	movs	r2, #0
20023c3e:	2102      	movs	r1, #2
20023c40:	4620      	mov	r0, r4
20023c42:	f7ff fa1d 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023c46:	4620      	mov	r0, r4
20023c48:	f7fe ffc8 	bl	20022bdc <HAL_FLASH_IS_PROG_DONE>
20023c4c:	2800      	cmp	r0, #0
20023c4e:	d0f1      	beq.n	20023c34 <HAL_QSPIEX_WRITE_PAGE+0x196>
20023c50:	e751      	b.n	20023af6 <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c52:	2b02      	cmp	r3, #2
20023c54:	bf14      	ite	ne
20023c56:	2316      	movne	r3, #22
20023c58:	2317      	moveq	r3, #23
20023c5a:	e77c      	b.n	20023b56 <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023c5c:	2f00      	cmp	r7, #0
20023c5e:	f73f af7e 	bgt.w	20023b5e <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023c62:	e748      	b.n	20023af6 <HAL_QSPIEX_WRITE_PAGE+0x58>
20023c64:	4618      	mov	r0, r3
20023c66:	e747      	b.n	20023af8 <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023c68 <HAL_QSPIEX_SECT_ERASE>:
20023c68:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023c6a:	4604      	mov	r4, r0
20023c6c:	460d      	mov	r5, r1
20023c6e:	f7ff fc36 	bl	200234de <flash_handle_valid>
20023c72:	b1e8      	cbz	r0, 20023cb0 <HAL_QSPIEX_SECT_ERASE+0x48>
20023c74:	6963      	ldr	r3, [r4, #20]
20023c76:	460a      	mov	r2, r1
20023c78:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023c7c:	f04f 0100 	mov.w	r1, #0
20023c80:	4620      	mov	r0, r4
20023c82:	bf94      	ite	ls
20023c84:	261b      	movls	r6, #27
20023c86:	2629      	movhi	r6, #41	@ 0x29
20023c88:	f7ff f9fa 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
20023c8c:	2101      	movs	r1, #1
20023c8e:	4620      	mov	r0, r4
20023c90:	f7fe ff61 	bl	20022b56 <HAL_FLASH_WRITE_DLEN2>
20023c94:	2301      	movs	r3, #1
20023c96:	462a      	mov	r2, r5
20023c98:	9300      	str	r3, [sp, #0]
20023c9a:	4631      	mov	r1, r6
20023c9c:	2302      	movs	r3, #2
20023c9e:	4620      	mov	r0, r4
20023ca0:	f7ff fa21 	bl	200230e6 <HAL_FLASH_ISSUE_CMD_SEQ>
20023ca4:	3800      	subs	r0, #0
20023ca6:	bf18      	it	ne
20023ca8:	2001      	movne	r0, #1
20023caa:	4240      	negs	r0, r0
20023cac:	b002      	add	sp, #8
20023cae:	bd70      	pop	{r4, r5, r6, pc}
20023cb0:	f04f 30ff 	mov.w	r0, #4294967295
20023cb4:	e7fa      	b.n	20023cac <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023cb8 <HAL_QSPI_GET_SRC_CLK>:
20023cb8:	b508      	push	{r3, lr}
20023cba:	b1e8      	cbz	r0, 20023cf8 <HAL_QSPI_GET_SRC_CLK+0x40>
20023cbc:	6803      	ldr	r3, [r0, #0]
20023cbe:	4a0f      	ldr	r2, [pc, #60]	@ (20023cfc <HAL_QSPI_GET_SRC_CLK+0x44>)
20023cc0:	4293      	cmp	r3, r2
20023cc2:	d00c      	beq.n	20023cde <HAL_QSPI_GET_SRC_CLK+0x26>
20023cc4:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023cc8:	4293      	cmp	r3, r2
20023cca:	d115      	bne.n	20023cf8 <HAL_QSPI_GET_SRC_CLK+0x40>
20023ccc:	2006      	movs	r0, #6
20023cce:	f001 f885 	bl	20024ddc <HAL_RCC_HCPU_GetClockSrc>
20023cd2:	2802      	cmp	r0, #2
20023cd4:	d105      	bne.n	20023ce2 <HAL_QSPI_GET_SRC_CLK+0x2a>
20023cd6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023cda:	f001 b8b4 	b.w	20024e46 <HAL_RCC_HCPU_GetDLL2Freq>
20023cde:	2004      	movs	r0, #4
20023ce0:	e7f5      	b.n	20023cce <HAL_QSPI_GET_SRC_CLK+0x16>
20023ce2:	2803      	cmp	r0, #3
20023ce4:	d103      	bne.n	20023cee <HAL_QSPI_GET_SRC_CLK+0x36>
20023ce6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023cea:	f001 b8af 	b.w	20024e4c <HAL_RCC_HCPU_GetDLL3Freq>
20023cee:	2001      	movs	r0, #1
20023cf0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023cf4:	f001 b90e 	b.w	20024f14 <HAL_RCC_GetSysCLKFreq>
20023cf8:	2000      	movs	r0, #0
20023cfa:	bd08      	pop	{r3, pc}
20023cfc:	50041000 	.word	0x50041000

20023d00 <HAL_QSPI_GET_CLK>:
20023d00:	b538      	push	{r3, r4, r5, lr}
20023d02:	4605      	mov	r5, r0
20023d04:	b908      	cbnz	r0, 20023d0a <HAL_QSPI_GET_CLK+0xa>
20023d06:	2000      	movs	r0, #0
20023d08:	bd38      	pop	{r3, r4, r5, pc}
20023d0a:	f7fe ff7f 	bl	20022c0c <HAL_FLASH_GET_DIV>
20023d0e:	4604      	mov	r4, r0
20023d10:	2800      	cmp	r0, #0
20023d12:	d0f8      	beq.n	20023d06 <HAL_QSPI_GET_CLK+0x6>
20023d14:	4628      	mov	r0, r5
20023d16:	f7ff ffcf 	bl	20023cb8 <HAL_QSPI_GET_SRC_CLK>
20023d1a:	fbb0 f0f4 	udiv	r0, r0, r4
20023d1e:	e7f3      	b.n	20023d08 <HAL_QSPI_GET_CLK+0x8>

20023d20 <HAL_QSPI_READ_ID>:
20023d20:	b138      	cbz	r0, 20023d32 <HAL_QSPI_READ_ID+0x12>
20023d22:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023d26:	b113      	cbz	r3, 20023d2e <HAL_QSPI_READ_ID+0xe>
20023d28:	2100      	movs	r1, #0
20023d2a:	f7ff bc7c 	b.w	20023626 <nand_read_id>
20023d2e:	f7ff bafc 	b.w	2002332a <HAL_FLASH_GET_NOR_ID>
20023d32:	20ff      	movs	r0, #255	@ 0xff
20023d34:	4770      	bx	lr

20023d36 <HAL_NOR_CFG_DTR>:
20023d36:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023d38:	4604      	mov	r4, r0
20023d3a:	460a      	mov	r2, r1
20023d3c:	b351      	cbz	r1, 20023d94 <HAL_NOR_CFG_DTR+0x5e>
20023d3e:	68c5      	ldr	r5, [r0, #12]
20023d40:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023d44:	2b00      	cmp	r3, #0
20023d46:	d03b      	beq.n	20023dc0 <HAL_NOR_CFG_DTR+0x8a>
20023d48:	f890 3020 	ldrb.w	r3, [r0, #32]
20023d4c:	b3c3      	cbz	r3, 20023dc0 <HAL_NOR_CFG_DTR+0x8a>
20023d4e:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023d52:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023d56:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023d5a:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023d5e:	9603      	str	r6, [sp, #12]
20023d60:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023d64:	9602      	str	r6, [sp, #8]
20023d66:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023d6a:	9601      	str	r6, [sp, #4]
20023d6c:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023d70:	9500      	str	r5, [sp, #0]
20023d72:	f7fe fe99 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20023d76:	68e3      	ldr	r3, [r4, #12]
20023d78:	4620      	mov	r0, r4
20023d7a:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023d7e:	f7fe fe88 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
20023d82:	2101      	movs	r1, #1
20023d84:	4620      	mov	r0, r4
20023d86:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
20023d8a:	f7ff f899 	bl	20022ec0 <HAL_MPI_CFG_DTR>
20023d8e:	2000      	movs	r0, #0
20023d90:	b004      	add	sp, #16
20023d92:	bd70      	pop	{r4, r5, r6, pc}
20023d94:	f7ff f894 	bl	20022ec0 <HAL_MPI_CFG_DTR>
20023d98:	6963      	ldr	r3, [r4, #20]
20023d9a:	f894 1020 	ldrb.w	r1, [r4, #32]
20023d9e:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023da2:	d906      	bls.n	20023db2 <HAL_NOR_CFG_DTR+0x7c>
20023da4:	b919      	cbnz	r1, 20023dae <HAL_NOR_CFG_DTR+0x78>
20023da6:	4620      	mov	r0, r4
20023da8:	f7ff f906 	bl	20022fb8 <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023dac:	e7ef      	b.n	20023d8e <HAL_NOR_CFG_DTR+0x58>
20023dae:	2101      	movs	r1, #1
20023db0:	e7f9      	b.n	20023da6 <HAL_NOR_CFG_DTR+0x70>
20023db2:	b919      	cbnz	r1, 20023dbc <HAL_NOR_CFG_DTR+0x86>
20023db4:	4620      	mov	r0, r4
20023db6:	f7ff f8bb 	bl	20022f30 <HAL_FLASH_CONFIG_AHB_READ>
20023dba:	e7e8      	b.n	20023d8e <HAL_NOR_CFG_DTR+0x58>
20023dbc:	2101      	movs	r1, #1
20023dbe:	e7f9      	b.n	20023db4 <HAL_NOR_CFG_DTR+0x7e>
20023dc0:	2001      	movs	r0, #1
20023dc2:	e7e5      	b.n	20023d90 <HAL_NOR_CFG_DTR+0x5a>

20023dc4 <HAL_NOR_DTR_CAL>:
20023dc4:	b510      	push	{r4, lr}
20023dc6:	4604      	mov	r4, r0
20023dc8:	b1f0      	cbz	r0, 20023e08 <HAL_NOR_DTR_CAL+0x44>
20023dca:	6802      	ldr	r2, [r0, #0]
20023dcc:	2014      	movs	r0, #20
20023dce:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023dd2:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023dd6:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023dda:	f7fe f8ea 	bl	20021fb2 <HAL_Delay_us>
20023dde:	6823      	ldr	r3, [r4, #0]
20023de0:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023de4:	05d2      	lsls	r2, r2, #23
20023de6:	d5fb      	bpl.n	20023de0 <HAL_NOR_DTR_CAL+0x1c>
20023de8:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20023dec:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023df0:	b2c0      	uxtb	r0, r0
20023df2:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20023df6:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
20023dfa:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
20023dfe:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20023e02:	4303      	orrs	r3, r0
20023e04:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
20023e08:	bd10      	pop	{r4, pc}
	...

20023e0c <HAL_FLASH_Init>:
20023e0c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20023e10:	460e      	mov	r6, r1
20023e12:	4690      	mov	r8, r2
20023e14:	461f      	mov	r7, r3
20023e16:	4604      	mov	r4, r0
20023e18:	b087      	sub	sp, #28
20023e1a:	2800      	cmp	r0, #0
20023e1c:	f000 80e5 	beq.w	20023fea <HAL_FLASH_Init+0x1de>
20023e20:	2900      	cmp	r1, #0
20023e22:	f000 80e2 	beq.w	20023fea <HAL_FLASH_Init+0x1de>
20023e26:	f7fe fe13 	bl	20022a50 <HAL_QSPI_Init>
20023e2a:	6820      	ldr	r0, [r4, #0]
20023e2c:	f7ff fb5d 	bl	200234ea <HAL_GET_FLASH_MID>
20023e30:	6933      	ldr	r3, [r6, #16]
20023e32:	2100      	movs	r1, #0
20023e34:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
20023e38:	68b3      	ldr	r3, [r6, #8]
20023e3a:	4605      	mov	r5, r0
20023e3c:	63a3      	str	r3, [r4, #56]	@ 0x38
20023e3e:	68f3      	ldr	r3, [r6, #12]
20023e40:	f884 1024 	strb.w	r1, [r4, #36]	@ 0x24
20023e44:	051b      	lsls	r3, r3, #20
20023e46:	63e3      	str	r3, [r4, #60]	@ 0x3c
20023e48:	2302      	movs	r3, #2
20023e4a:	f884 3036 	strb.w	r3, [r4, #54]	@ 0x36
20023e4e:	6933      	ldr	r3, [r6, #16]
20023e50:	f8c4 8008 	str.w	r8, [r4, #8]
20023e54:	1e5a      	subs	r2, r3, #1
20023e56:	4253      	negs	r3, r2
20023e58:	4153      	adcs	r3, r2
20023e5a:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20023e5e:	f1b8 0f00 	cmp.w	r8, #0
20023e62:	d058      	beq.n	20023f16 <HAL_FLASH_Init+0x10a>
20023e64:	2f00      	cmp	r7, #0
20023e66:	d056      	beq.n	20023f16 <HAL_FLASH_Init+0x10a>
20023e68:	683b      	ldr	r3, [r7, #0]
20023e6a:	f8c8 3000 	str.w	r3, [r8]
20023e6e:	68a3      	ldr	r3, [r4, #8]
20023e70:	68fa      	ldr	r2, [r7, #12]
20023e72:	605a      	str	r2, [r3, #4]
20023e74:	2210      	movs	r2, #16
20023e76:	68a3      	ldr	r3, [r4, #8]
20023e78:	609a      	str	r2, [r3, #8]
20023e7a:	2280      	movs	r2, #128	@ 0x80
20023e7c:	68a3      	ldr	r3, [r4, #8]
20023e7e:	60d9      	str	r1, [r3, #12]
20023e80:	68a3      	ldr	r3, [r4, #8]
20023e82:	611a      	str	r2, [r3, #16]
20023e84:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20023e88:	68a3      	ldr	r3, [r4, #8]
20023e8a:	6159      	str	r1, [r3, #20]
20023e8c:	68a3      	ldr	r3, [r4, #8]
20023e8e:	6199      	str	r1, [r3, #24]
20023e90:	68a3      	ldr	r3, [r4, #8]
20023e92:	61d9      	str	r1, [r3, #28]
20023e94:	68a3      	ldr	r3, [r4, #8]
20023e96:	621a      	str	r2, [r3, #32]
20023e98:	68a3      	ldr	r3, [r4, #8]
20023e9a:	6259      	str	r1, [r3, #36]	@ 0x24
20023e9c:	b1c0      	cbz	r0, 20023ed0 <HAL_FLASH_Init+0xc4>
20023e9e:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023ea2:	4298      	cmp	r0, r3
20023ea4:	d014      	beq.n	20023ed0 <HAL_FLASH_Init+0xc4>
20023ea6:	2601      	movs	r6, #1
20023ea8:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023eac:	2b00      	cmp	r3, #0
20023eae:	d13d      	bne.n	20023f2c <HAL_FLASH_Init+0x120>
20023eb0:	2e00      	cmp	r6, #0
20023eb2:	d15a      	bne.n	20023f6a <HAL_FLASH_Init+0x15e>
20023eb4:	4620      	mov	r0, r4
20023eb6:	f7ff faf2 	bl	2002349e <HAL_FLASH_RELEASE_DPD>
20023eba:	4630      	mov	r0, r6
20023ebc:	f7fe f879 	bl	20021fb2 <HAL_Delay_us>
20023ec0:	2032      	movs	r0, #50	@ 0x32
20023ec2:	f7fe f876 	bl	20021fb2 <HAL_Delay_us>
20023ec6:	4620      	mov	r0, r4
20023ec8:	f7ff ff2a 	bl	20023d20 <HAL_QSPI_READ_ID>
20023ecc:	4605      	mov	r5, r0
20023ece:	e04c      	b.n	20023f6a <HAL_FLASH_Init+0x15e>
20023ed0:	2101      	movs	r1, #1
20023ed2:	4620      	mov	r0, r4
20023ed4:	f7fe fe8f 	bl	20022bf6 <HAL_FLASH_SET_TXSLOT>
20023ed8:	4ba7      	ldr	r3, [pc, #668]	@ (20024178 <HAL_FLASH_Init+0x36c>)
20023eda:	69a2      	ldr	r2, [r4, #24]
20023edc:	4620      	mov	r0, r4
20023ede:	429a      	cmp	r2, r3
20023ee0:	f04f 0200 	mov.w	r2, #0
20023ee4:	bf8c      	ite	hi
20023ee6:	2101      	movhi	r1, #1
20023ee8:	4611      	movls	r1, r2
20023eea:	f7ff fac9 	bl	20023480 <HAL_QSPI_SET_CLK_INV>
20023eee:	4620      	mov	r0, r4
20023ef0:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
20023ef4:	f7fe fe86 	bl	20022c04 <HAL_FLASH_SET_CLK_rom>
20023ef8:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
20023efc:	b12b      	cbz	r3, 20023f0a <HAL_FLASH_Init+0xfe>
20023efe:	2b01      	cmp	r3, #1
20023f00:	d110      	bne.n	20023f24 <HAL_FLASH_Init+0x118>
20023f02:	2100      	movs	r1, #0
20023f04:	4620      	mov	r0, r4
20023f06:	f7fe ff95 	bl	20022e34 <HAL_FLASH_SET_DUAL_MODE>
20023f0a:	2101      	movs	r1, #1
20023f0c:	4620      	mov	r0, r4
20023f0e:	f7fe ff1e 	bl	20022d4e <HAL_FLASH_ENABLE_QSPI>
20023f12:	2600      	movs	r6, #0
20023f14:	e7c8      	b.n	20023ea8 <HAL_FLASH_Init+0x9c>
20023f16:	2d00      	cmp	r5, #0
20023f18:	d0de      	beq.n	20023ed8 <HAL_FLASH_Init+0xcc>
20023f1a:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
20023f1e:	429d      	cmp	r5, r3
20023f20:	d1c1      	bne.n	20023ea6 <HAL_FLASH_Init+0x9a>
20023f22:	e7d9      	b.n	20023ed8 <HAL_FLASH_Init+0xcc>
20023f24:	2b02      	cmp	r3, #2
20023f26:	d1f0      	bne.n	20023f0a <HAL_FLASH_Init+0xfe>
20023f28:	2101      	movs	r1, #1
20023f2a:	e7eb      	b.n	20023f04 <HAL_FLASH_Init+0xf8>
20023f2c:	6822      	ldr	r2, [r4, #0]
20023f2e:	2700      	movs	r7, #0
20023f30:	6893      	ldr	r3, [r2, #8]
20023f32:	4639      	mov	r1, r7
20023f34:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
20023f38:	6093      	str	r3, [r2, #8]
20023f3a:	2301      	movs	r3, #1
20023f3c:	463a      	mov	r2, r7
20023f3e:	4620      	mov	r0, r4
20023f40:	e9cd 7303 	strd	r7, r3, [sp, #12]
20023f44:	e9cd 7701 	strd	r7, r7, [sp, #4]
20023f48:	463b      	mov	r3, r7
20023f4a:	9700      	str	r7, [sp, #0]
20023f4c:	f7fe fe63 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
20023f50:	463a      	mov	r2, r7
20023f52:	21ff      	movs	r1, #255	@ 0xff
20023f54:	4620      	mov	r0, r4
20023f56:	f7fe fe19 	bl	20022b8c <HAL_FLASH_SET_CMD>
20023f5a:	4638      	mov	r0, r7
20023f5c:	f7fe f829 	bl	20021fb2 <HAL_Delay_us>
20023f60:	20c8      	movs	r0, #200	@ 0xc8
20023f62:	f7fe f826 	bl	20021fb2 <HAL_Delay_us>
20023f66:	2e00      	cmp	r6, #0
20023f68:	d0ad      	beq.n	20023ec6 <HAL_FLASH_Init+0xba>
20023f6a:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023f6e:	b2ef      	uxtb	r7, r5
20023f70:	f3c5 2807 	ubfx	r8, r5, #8, #8
20023f74:	6325      	str	r5, [r4, #48]	@ 0x30
20023f76:	f3c5 4507 	ubfx	r5, r5, #16, #8
20023f7a:	4642      	mov	r2, r8
20023f7c:	4629      	mov	r1, r5
20023f7e:	4638      	mov	r0, r7
20023f80:	b3ab      	cbz	r3, 20023fee <HAL_FLASH_Init+0x1e2>
20023f82:	f001 f9cf 	bl	20025324 <spi_nand_get_cmd_by_id>
20023f86:	60e0      	str	r0, [r4, #12]
20023f88:	bba0      	cbnz	r0, 20023ff4 <HAL_FLASH_Init+0x1e8>
20023f8a:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023f8e:	b32b      	cbz	r3, 20023fdc <HAL_FLASH_Init+0x1d0>
20023f90:	2108      	movs	r1, #8
20023f92:	4620      	mov	r0, r4
20023f94:	f7ff fb47 	bl	20023626 <nand_read_id>
20023f98:	f3c0 2807 	ubfx	r8, r0, #8, #8
20023f9c:	f3c0 4507 	ubfx	r5, r0, #16, #8
20023fa0:	b2c7      	uxtb	r7, r0
20023fa2:	6320      	str	r0, [r4, #48]	@ 0x30
20023fa4:	4642      	mov	r2, r8
20023fa6:	4629      	mov	r1, r5
20023fa8:	4638      	mov	r0, r7
20023faa:	f001 f9bb 	bl	20025324 <spi_nand_get_cmd_by_id>
20023fae:	60e0      	str	r0, [r4, #12]
20023fb0:	bb00      	cbnz	r0, 20023ff4 <HAL_FLASH_Init+0x1e8>
20023fb2:	210f      	movs	r1, #15
20023fb4:	4620      	mov	r0, r4
20023fb6:	f7ff fb36 	bl	20023626 <nand_read_id>
20023fba:	f3c0 2807 	ubfx	r8, r0, #8, #8
20023fbe:	f3c0 4507 	ubfx	r5, r0, #16, #8
20023fc2:	b2c7      	uxtb	r7, r0
20023fc4:	6320      	str	r0, [r4, #48]	@ 0x30
20023fc6:	4642      	mov	r2, r8
20023fc8:	4629      	mov	r1, r5
20023fca:	4638      	mov	r0, r7
20023fcc:	f001 f9aa 	bl	20025324 <spi_nand_get_cmd_by_id>
20023fd0:	60e0      	str	r0, [r4, #12]
20023fd2:	b978      	cbnz	r0, 20023ff4 <HAL_FLASH_Init+0x1e8>
20023fd4:	f001 f9bc 	bl	20025350 <spi_nand_get_default_ctable>
20023fd8:	60e0      	str	r0, [r4, #12]
20023fda:	b958      	cbnz	r0, 20023ff4 <HAL_FLASH_Init+0x1e8>
20023fdc:	2100      	movs	r1, #0
20023fde:	4620      	mov	r0, r4
20023fe0:	f7fe feb5 	bl	20022d4e <HAL_FLASH_ENABLE_QSPI>
20023fe4:	2300      	movs	r3, #0
20023fe6:	e9c4 330e 	strd	r3, r3, [r4, #56]	@ 0x38
20023fea:	2001      	movs	r0, #1
20023fec:	e04c      	b.n	20024088 <HAL_FLASH_Init+0x27c>
20023fee:	f001 f951 	bl	20025294 <spi_flash_get_cmd_by_id>
20023ff2:	e7c8      	b.n	20023f86 <HAL_FLASH_Init+0x17a>
20023ff4:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20023ff8:	4642      	mov	r2, r8
20023ffa:	4629      	mov	r1, r5
20023ffc:	4638      	mov	r0, r7
20023ffe:	2b00      	cmp	r3, #0
20024000:	d045      	beq.n	2002408e <HAL_FLASH_Init+0x282>
20024002:	f001 f9b3 	bl	2002536c <spi_nand_get_size_by_id>
20024006:	4642      	mov	r2, r8
20024008:	4629      	mov	r1, r5
2002400a:	4681      	mov	r9, r0
2002400c:	4638      	mov	r0, r7
2002400e:	f001 f9b7 	bl	20025380 <spi_nand_get_plane_select_flag>
20024012:	4642      	mov	r2, r8
20024014:	4629      	mov	r1, r5
20024016:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
2002401a:	4638      	mov	r0, r7
2002401c:	f001 f9b9 	bl	20025392 <spi_nand_get_big_page_flag>
20024020:	4642      	mov	r2, r8
20024022:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
20024026:	4629      	mov	r1, r5
20024028:	4638      	mov	r0, r7
2002402a:	f001 f9bb 	bl	200253a4 <spi_nand_get_ecc_mode>
2002402e:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
20024032:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
20024036:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
2002403a:	f1b9 0f00 	cmp.w	r9, #0
2002403e:	d003      	beq.n	20024048 <HAL_FLASH_Init+0x23c>
20024040:	f8c4 903c 	str.w	r9, [r4, #60]	@ 0x3c
20024044:	f8c4 9014 	str.w	r9, [r4, #20]
20024048:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
2002404c:	2b00      	cmp	r3, #0
2002404e:	d173      	bne.n	20024138 <HAL_FLASH_Init+0x32c>
20024050:	2e00      	cmp	r6, #0
20024052:	d16e      	bne.n	20024132 <HAL_FLASH_Init+0x326>
20024054:	4620      	mov	r0, r4
20024056:	f7ff f983 	bl	20023360 <HAL_FLASH_CLR_PROTECT>
2002405a:	6963      	ldr	r3, [r4, #20]
2002405c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20024060:	d938      	bls.n	200240d4 <HAL_FLASH_Init+0x2c8>
20024062:	4632      	mov	r2, r6
20024064:	2121      	movs	r1, #33	@ 0x21
20024066:	4620      	mov	r0, r4
20024068:	f7ff f80a 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002406c:	f894 3020 	ldrb.w	r3, [r4, #32]
20024070:	b98b      	cbnz	r3, 20024096 <HAL_FLASH_Init+0x28a>
20024072:	4631      	mov	r1, r6
20024074:	4620      	mov	r0, r4
20024076:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002407a:	f7ff f94b 	bl	20023314 <HAL_FLASH_FADDR_SET_QSPI>
2002407e:	2107      	movs	r1, #7
20024080:	4620      	mov	r0, r4
20024082:	f7fe febf 	bl	20022e04 <HAL_FLASH_SET_ROW_BOUNDARY>
20024086:	2000      	movs	r0, #0
20024088:	b007      	add	sp, #28
2002408a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
2002408e:	f001 f915 	bl	200252bc <spi_flash_get_size_by_id>
20024092:	4681      	mov	r9, r0
20024094:	e7d1      	b.n	2002403a <HAL_FLASH_Init+0x22e>
20024096:	2101      	movs	r1, #1
20024098:	4620      	mov	r0, r4
2002409a:	f7ff f93b 	bl	20023314 <HAL_FLASH_FADDR_SET_QSPI>
2002409e:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200240a2:	f1b9 0f01 	cmp.w	r9, #1
200240a6:	d1ea      	bne.n	2002407e <HAL_FLASH_Init+0x272>
200240a8:	4642      	mov	r2, r8
200240aa:	4629      	mov	r1, r5
200240ac:	4638      	mov	r0, r7
200240ae:	f001 f90f 	bl	200252d0 <spi_flash_is_support_dtr>
200240b2:	b138      	cbz	r0, 200240c4 <HAL_FLASH_Init+0x2b8>
200240b4:	4620      	mov	r0, r4
200240b6:	f7ff fe85 	bl	20023dc4 <HAL_NOR_DTR_CAL>
200240ba:	4649      	mov	r1, r9
200240bc:	4620      	mov	r0, r4
200240be:	f7ff fe3a 	bl	20023d36 <HAL_NOR_CFG_DTR>
200240c2:	e7dc      	b.n	2002407e <HAL_FLASH_Init+0x272>
200240c4:	4632      	mov	r2, r6
200240c6:	4631      	mov	r1, r6
200240c8:	4620      	mov	r0, r4
200240ca:	f7fe fef9 	bl	20022ec0 <HAL_MPI_CFG_DTR>
200240ce:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200240d2:	e7d4      	b.n	2002407e <HAL_FLASH_Init+0x272>
200240d4:	f894 3020 	ldrb.w	r3, [r4, #32]
200240d8:	b933      	cbnz	r3, 200240e8 <HAL_FLASH_Init+0x2dc>
200240da:	4631      	mov	r1, r6
200240dc:	4620      	mov	r0, r4
200240de:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200240e2:	f7ff f90c 	bl	200232fe <HAL_FLASH_SET_QUAL_SPI>
200240e6:	e7ce      	b.n	20024086 <HAL_FLASH_Init+0x27a>
200240e8:	2101      	movs	r1, #1
200240ea:	4620      	mov	r0, r4
200240ec:	f7ff f907 	bl	200232fe <HAL_FLASH_SET_QUAL_SPI>
200240f0:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
200240f4:	f1b9 0f01 	cmp.w	r9, #1
200240f8:	d115      	bne.n	20024126 <HAL_FLASH_Init+0x31a>
200240fa:	4642      	mov	r2, r8
200240fc:	4629      	mov	r1, r5
200240fe:	4638      	mov	r0, r7
20024100:	f001 f8e6 	bl	200252d0 <spi_flash_is_support_dtr>
20024104:	b138      	cbz	r0, 20024116 <HAL_FLASH_Init+0x30a>
20024106:	4620      	mov	r0, r4
20024108:	f7ff fe5c 	bl	20023dc4 <HAL_NOR_DTR_CAL>
2002410c:	4649      	mov	r1, r9
2002410e:	4620      	mov	r0, r4
20024110:	f7ff fe11 	bl	20023d36 <HAL_NOR_CFG_DTR>
20024114:	e7b7      	b.n	20024086 <HAL_FLASH_Init+0x27a>
20024116:	4632      	mov	r2, r6
20024118:	4631      	mov	r1, r6
2002411a:	4620      	mov	r0, r4
2002411c:	f7fe fed0 	bl	20022ec0 <HAL_MPI_CFG_DTR>
20024120:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024124:	e7af      	b.n	20024086 <HAL_FLASH_Init+0x27a>
20024126:	4632      	mov	r2, r6
20024128:	4631      	mov	r1, r6
2002412a:	4620      	mov	r0, r4
2002412c:	f7fe fec8 	bl	20022ec0 <HAL_MPI_CFG_DTR>
20024130:	e7a9      	b.n	20024086 <HAL_FLASH_Init+0x27a>
20024132:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
20024136:	e7a6      	b.n	20024086 <HAL_FLASH_Init+0x27a>
20024138:	2101      	movs	r1, #1
2002413a:	4620      	mov	r0, r4
2002413c:	f7fe fd01 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20024140:	68e3      	ldr	r3, [r4, #12]
20024142:	2102      	movs	r1, #2
20024144:	791a      	ldrb	r2, [r3, #4]
20024146:	4620      	mov	r0, r4
20024148:	f7fe ff9a 	bl	20023080 <HAL_FLASH_ISSUE_CMD>
2002414c:	4620      	mov	r0, r4
2002414e:	f7fe fd4e 	bl	20022bee <HAL_FLASH_READ32>
20024152:	4605      	mov	r5, r0
20024154:	200a      	movs	r0, #10
20024156:	f7fd ff2c 	bl	20021fb2 <HAL_Delay_us>
2002415a:	07eb      	lsls	r3, r5, #31
2002415c:	d4ec      	bmi.n	20024138 <HAL_FLASH_Init+0x32c>
2002415e:	4620      	mov	r0, r4
20024160:	f7ff fb95 	bl	2002388e <nand_clear_status>
20024164:	f894 3020 	ldrb.w	r3, [r4, #32]
20024168:	2b02      	cmp	r3, #2
2002416a:	d18c      	bne.n	20024086 <HAL_FLASH_Init+0x27a>
2002416c:	2101      	movs	r1, #1
2002416e:	4620      	mov	r0, r4
20024170:	f7ff fb5c 	bl	2002382c <HAL_NAND_EN_QUAL>
20024174:	e787      	b.n	20024086 <HAL_FLASH_Init+0x27a>
20024176:	bf00      	nop
20024178:	05f5e100 	.word	0x05f5e100

2002417c <HAL_Delay_us_psram>:
2002417c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002417e:	9001      	str	r0, [sp, #4]
20024180:	9b01      	ldr	r3, [sp, #4]
20024182:	4c11      	ldr	r4, [pc, #68]	@ (200241c8 <HAL_Delay_us_psram+0x4c>)
20024184:	b10b      	cbz	r3, 2002418a <HAL_Delay_us_psram+0xe>
20024186:	6820      	ldr	r0, [r4, #0]
20024188:	b940      	cbnz	r0, 2002419c <HAL_Delay_us_psram+0x20>
2002418a:	2000      	movs	r0, #0
2002418c:	f000 fed2 	bl	20024f34 <HAL_RCC_GetHCLKFreq>
20024190:	4b0e      	ldr	r3, [pc, #56]	@ (200241cc <HAL_Delay_us_psram+0x50>)
20024192:	fbb0 f0f3 	udiv	r0, r0, r3
20024196:	9b01      	ldr	r3, [sp, #4]
20024198:	6020      	str	r0, [r4, #0]
2002419a:	b19b      	cbz	r3, 200241c4 <HAL_Delay_us_psram+0x48>
2002419c:	2830      	cmp	r0, #48	@ 0x30
2002419e:	bf82      	ittt	hi
200241a0:	9b01      	ldrhi	r3, [sp, #4]
200241a2:	f103 33ff 	addhi.w	r3, r3, #4294967295
200241a6:	9301      	strhi	r3, [sp, #4]
200241a8:	9b01      	ldr	r3, [sp, #4]
200241aa:	b15b      	cbz	r3, 200241c4 <HAL_Delay_us_psram+0x48>
200241ac:	2205      	movs	r2, #5
200241ae:	9b01      	ldr	r3, [sp, #4]
200241b0:	3b01      	subs	r3, #1
200241b2:	4343      	muls	r3, r0
200241b4:	fbb3 f3f2 	udiv	r3, r3, r2
200241b8:	9303      	str	r3, [sp, #12]
200241ba:	9b03      	ldr	r3, [sp, #12]
200241bc:	1e5a      	subs	r2, r3, #1
200241be:	9203      	str	r2, [sp, #12]
200241c0:	2b00      	cmp	r3, #0
200241c2:	d1fa      	bne.n	200241ba <HAL_Delay_us_psram+0x3e>
200241c4:	b004      	add	sp, #16
200241c6:	bd10      	pop	{r4, pc}
200241c8:	2004cbb4 	.word	0x2004cbb4
200241cc:	000f4240 	.word	0x000f4240

200241d0 <HAL_MPI_OPSRAM_CAL_DELAY>:
200241d0:	b570      	push	{r4, r5, r6, lr}
200241d2:	460e      	mov	r6, r1
200241d4:	4615      	mov	r5, r2
200241d6:	4604      	mov	r4, r0
200241d8:	b358      	cbz	r0, 20024232 <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
200241da:	2202      	movs	r2, #2
200241dc:	6803      	ldr	r3, [r0, #0]
200241de:	60da      	str	r2, [r3, #12]
200241e0:	6802      	ldr	r2, [r0, #0]
200241e2:	6d93      	ldr	r3, [r2, #88]	@ 0x58
200241e4:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
200241e8:	6593      	str	r3, [r2, #88]	@ 0x58
200241ea:	6802      	ldr	r2, [r0, #0]
200241ec:	2000      	movs	r0, #0
200241ee:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
200241f2:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
200241f6:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
200241fa:	f7ff ffbf 	bl	2002417c <HAL_Delay_us_psram>
200241fe:	2014      	movs	r0, #20
20024200:	f7ff ffbc 	bl	2002417c <HAL_Delay_us_psram>
20024204:	6820      	ldr	r0, [r4, #0]
20024206:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
2002420a:	05db      	lsls	r3, r3, #23
2002420c:	d5fb      	bpl.n	20024206 <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
2002420e:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
20024212:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
20024216:	b2db      	uxtb	r3, r3
20024218:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
2002421c:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
20024220:	1e5a      	subs	r2, r3, #1
20024222:	7032      	strb	r2, [r6, #0]
20024224:	2201      	movs	r2, #1
20024226:	2000      	movs	r0, #0
20024228:	3b04      	subs	r3, #4
2002422a:	702b      	strb	r3, [r5, #0]
2002422c:	6823      	ldr	r3, [r4, #0]
2002422e:	60da      	str	r2, [r3, #12]
20024230:	bd70      	pop	{r4, r5, r6, pc}
20024232:	2001      	movs	r0, #1
20024234:	e7fc      	b.n	20024230 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

20024238 <HAL_SPI_PSRAM_Init>:
20024238:	b537      	push	{r0, r1, r2, r4, r5, lr}
2002423a:	4614      	mov	r4, r2
2002423c:	4605      	mov	r5, r0
2002423e:	2800      	cmp	r0, #0
20024240:	d043      	beq.n	200242ca <HAL_SPI_PSRAM_Init+0x92>
20024242:	2900      	cmp	r1, #0
20024244:	d041      	beq.n	200242ca <HAL_SPI_PSRAM_Init+0x92>
20024246:	f7fe fc03 	bl	20022a50 <HAL_QSPI_Init>
2002424a:	4628      	mov	r0, r5
2002424c:	b2e1      	uxtb	r1, r4
2002424e:	f7fe fcd9 	bl	20022c04 <HAL_FLASH_SET_CLK_rom>
20024252:	4628      	mov	r0, r5
20024254:	f7ff fd54 	bl	20023d00 <HAL_QSPI_GET_CLK>
20024258:	4b1d      	ldr	r3, [pc, #116]	@ (200242d0 <HAL_SPI_PSRAM_Init+0x98>)
2002425a:	4298      	cmp	r0, r3
2002425c:	d930      	bls.n	200242c0 <HAL_SPI_PSRAM_Init+0x88>
2002425e:	4b1d      	ldr	r3, [pc, #116]	@ (200242d4 <HAL_SPI_PSRAM_Init+0x9c>)
20024260:	4298      	cmp	r0, r3
20024262:	d92f      	bls.n	200242c4 <HAL_SPI_PSRAM_Init+0x8c>
20024264:	4b1c      	ldr	r3, [pc, #112]	@ (200242d8 <HAL_SPI_PSRAM_Init+0xa0>)
20024266:	4298      	cmp	r0, r3
20024268:	d922      	bls.n	200242b0 <HAL_SPI_PSRAM_Init+0x78>
2002426a:	f240 34b6 	movw	r4, #950	@ 0x3b6
2002426e:	f240 4374 	movw	r3, #1140	@ 0x474
20024272:	4a1a      	ldr	r2, [pc, #104]	@ (200242dc <HAL_SPI_PSRAM_Init+0xa4>)
20024274:	4290      	cmp	r0, r2
20024276:	bf88      	it	hi
20024278:	461c      	movhi	r4, r3
2002427a:	2200      	movs	r2, #0
2002427c:	2101      	movs	r1, #1
2002427e:	4628      	mov	r0, r5
20024280:	f7ff f8fe 	bl	20023480 <HAL_QSPI_SET_CLK_INV>
20024284:	2100      	movs	r1, #0
20024286:	4622      	mov	r2, r4
20024288:	2302      	movs	r3, #2
2002428a:	4628      	mov	r0, r5
2002428c:	9100      	str	r1, [sp, #0]
2002428e:	f7fe fda4 	bl	20022dda <HAL_FLASH_SET_CS_TIME>
20024292:	4604      	mov	r4, r0
20024294:	b948      	cbnz	r0, 200242aa <HAL_SPI_PSRAM_Init+0x72>
20024296:	2106      	movs	r1, #6
20024298:	4628      	mov	r0, r5
2002429a:	f7fe fdb3 	bl	20022e04 <HAL_FLASH_SET_ROW_BOUNDARY>
2002429e:	4604      	mov	r4, r0
200242a0:	b918      	cbnz	r0, 200242aa <HAL_SPI_PSRAM_Init+0x72>
200242a2:	2101      	movs	r1, #1
200242a4:	4628      	mov	r0, r5
200242a6:	f7fe fd52 	bl	20022d4e <HAL_FLASH_ENABLE_QSPI>
200242aa:	4620      	mov	r0, r4
200242ac:	b003      	add	sp, #12
200242ae:	bd30      	pop	{r4, r5, pc}
200242b0:	4b0b      	ldr	r3, [pc, #44]	@ (200242e0 <HAL_SPI_PSRAM_Init+0xa8>)
200242b2:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
200242b6:	4298      	cmp	r0, r3
200242b8:	d8df      	bhi.n	2002427a <HAL_SPI_PSRAM_Init+0x42>
200242ba:	2200      	movs	r2, #0
200242bc:	4611      	mov	r1, r2
200242be:	e7de      	b.n	2002427e <HAL_SPI_PSRAM_Init+0x46>
200242c0:	24b4      	movs	r4, #180	@ 0xb4
200242c2:	e7fa      	b.n	200242ba <HAL_SPI_PSRAM_Init+0x82>
200242c4:	f44f 74be 	mov.w	r4, #380	@ 0x17c
200242c8:	e7f7      	b.n	200242ba <HAL_SPI_PSRAM_Init+0x82>
200242ca:	2401      	movs	r4, #1
200242cc:	e7ed      	b.n	200242aa <HAL_SPI_PSRAM_Init+0x72>
200242ce:	bf00      	nop
200242d0:	016e3600 	.word	0x016e3600
200242d4:	02dc6c00 	.word	0x02dc6c00
200242d8:	05b8d800 	.word	0x05b8d800
200242dc:	07270e00 	.word	0x07270e00
200242e0:	03938700 	.word	0x03938700

200242e4 <HAL_MPI_MR_WRITE>:
200242e4:	b5f0      	push	{r4, r5, r6, r7, lr}
200242e6:	460e      	mov	r6, r1
200242e8:	4617      	mov	r7, r2
200242ea:	4605      	mov	r5, r0
200242ec:	b087      	sub	sp, #28
200242ee:	b1d8      	cbz	r0, 20024328 <HAL_MPI_MR_WRITE+0x44>
200242f0:	2207      	movs	r2, #7
200242f2:	2400      	movs	r4, #0
200242f4:	2303      	movs	r3, #3
200242f6:	e9cd 2203 	strd	r2, r2, [sp, #12]
200242fa:	2101      	movs	r1, #1
200242fc:	e9cd 4301 	strd	r4, r3, [sp, #4]
20024300:	9400      	str	r4, [sp, #0]
20024302:	4623      	mov	r3, r4
20024304:	f7fe fc87 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
20024308:	2102      	movs	r1, #2
2002430a:	4628      	mov	r0, r5
2002430c:	f7fe fc19 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20024310:	4639      	mov	r1, r7
20024312:	4628      	mov	r0, r5
20024314:	f7fe fc0e 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
20024318:	4632      	mov	r2, r6
2002431a:	21c0      	movs	r1, #192	@ 0xc0
2002431c:	4628      	mov	r0, r5
2002431e:	f7fe fc35 	bl	20022b8c <HAL_FLASH_SET_CMD>
20024322:	4620      	mov	r0, r4
20024324:	b007      	add	sp, #28
20024326:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024328:	2001      	movs	r0, #1
2002432a:	e7fb      	b.n	20024324 <HAL_MPI_MR_WRITE+0x40>

2002432c <HAL_MPI_SET_FIXLAT>:
2002432c:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
20024330:	460c      	mov	r4, r1
20024332:	4616      	mov	r6, r2
20024334:	461f      	mov	r7, r3
20024336:	4605      	mov	r5, r0
20024338:	2800      	cmp	r0, #0
2002433a:	d040      	beq.n	200243be <HAL_MPI_SET_FIXLAT+0x92>
2002433c:	466b      	mov	r3, sp
2002433e:	4a21      	ldr	r2, [pc, #132]	@ (200243c4 <HAL_MPI_SET_FIXLAT+0x98>)
20024340:	6810      	ldr	r0, [r2, #0]
20024342:	6851      	ldr	r1, [r2, #4]
20024344:	c303      	stmia	r3!, {r0, r1}
20024346:	6890      	ldr	r0, [r2, #8]
20024348:	68d1      	ldr	r1, [r2, #12]
2002434a:	c303      	stmia	r3!, {r0, r1}
2002434c:	4628      	mov	r0, r5
2002434e:	b2e1      	uxtb	r1, r4
20024350:	f7fe fd7e 	bl	20022e50 <HAL_MPI_EN_FIXLAT>
20024354:	f107 0310 	add.w	r3, r7, #16
20024358:	446b      	add	r3, sp
2002435a:	f813 8c08 	ldrb.w	r8, [r3, #-8]
2002435e:	ea4f 1848 	mov.w	r8, r8, lsl #5
20024362:	fa5f f888 	uxtb.w	r8, r8
20024366:	b30c      	cbz	r4, 200243ac <HAL_MPI_SET_FIXLAT+0x80>
20024368:	ab04      	add	r3, sp, #16
2002436a:	eb03 0356 	add.w	r3, r3, r6, lsr #1
2002436e:	f813 4c10 	ldrb.w	r4, [r3, #-16]
20024372:	00a4      	lsls	r4, r4, #2
20024374:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
20024378:	b264      	sxtb	r4, r4
2002437a:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
2002437e:	2100      	movs	r1, #0
20024380:	4628      	mov	r0, r5
20024382:	f7ff ffaf 	bl	200242e4 <HAL_MPI_MR_WRITE>
20024386:	1e71      	subs	r1, r6, #1
20024388:	4628      	mov	r0, r5
2002438a:	b249      	sxtb	r1, r1
2002438c:	f7fe fdbe 	bl	20022f0c <HAL_MPI_MODIFY_RCMD_DELAY>
20024390:	4642      	mov	r2, r8
20024392:	2104      	movs	r1, #4
20024394:	4628      	mov	r0, r5
20024396:	f7ff ffa5 	bl	200242e4 <HAL_MPI_MR_WRITE>
2002439a:	1e79      	subs	r1, r7, #1
2002439c:	4628      	mov	r0, r5
2002439e:	b249      	sxtb	r1, r1
200243a0:	f7fe fdbd 	bl	20022f1e <HAL_MPI_MODIFY_WCMD_DELAY>
200243a4:	2000      	movs	r0, #0
200243a6:	b004      	add	sp, #16
200243a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200243ac:	f106 0310 	add.w	r3, r6, #16
200243b0:	446b      	add	r3, sp
200243b2:	f813 4c10 	ldrb.w	r4, [r3, #-16]
200243b6:	00a4      	lsls	r4, r4, #2
200243b8:	f044 0401 	orr.w	r4, r4, #1
200243bc:	e7dc      	b.n	20024378 <HAL_MPI_SET_FIXLAT+0x4c>
200243be:	2001      	movs	r0, #1
200243c0:	e7f1      	b.n	200243a6 <HAL_MPI_SET_FIXLAT+0x7a>
200243c2:	bf00      	nop
200243c4:	2002b7b8 	.word	0x2002b7b8

200243c8 <HAL_LEGACY_MR_WRITE>:
200243c8:	b5f0      	push	{r4, r5, r6, r7, lr}
200243ca:	460e      	mov	r6, r1
200243cc:	4617      	mov	r7, r2
200243ce:	4605      	mov	r5, r0
200243d0:	b087      	sub	sp, #28
200243d2:	b1d8      	cbz	r0, 2002440c <HAL_LEGACY_MR_WRITE+0x44>
200243d4:	2207      	movs	r2, #7
200243d6:	2400      	movs	r4, #0
200243d8:	2302      	movs	r3, #2
200243da:	e9cd 2203 	strd	r2, r2, [sp, #12]
200243de:	2101      	movs	r1, #1
200243e0:	e9cd 4301 	strd	r4, r3, [sp, #4]
200243e4:	9400      	str	r4, [sp, #0]
200243e6:	4623      	mov	r3, r4
200243e8:	f7fe fc15 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
200243ec:	2104      	movs	r1, #4
200243ee:	4628      	mov	r0, r5
200243f0:	f7fe fba7 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
200243f4:	4639      	mov	r1, r7
200243f6:	4628      	mov	r0, r5
200243f8:	f7fe fb9c 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
200243fc:	4632      	mov	r2, r6
200243fe:	21c0      	movs	r1, #192	@ 0xc0
20024400:	4628      	mov	r0, r5
20024402:	f7fe fbc3 	bl	20022b8c <HAL_FLASH_SET_CMD>
20024406:	4620      	mov	r0, r4
20024408:	b007      	add	sp, #28
2002440a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002440c:	2001      	movs	r0, #1
2002440e:	e7fb      	b.n	20024408 <HAL_LEGACY_MR_WRITE+0x40>

20024410 <HAL_LEGACY_CFG_READ>:
20024410:	b530      	push	{r4, r5, lr}
20024412:	4605      	mov	r5, r0
20024414:	b085      	sub	sp, #20
20024416:	b1a0      	cbz	r0, 20024442 <HAL_LEGACY_CFG_READ+0x32>
20024418:	2400      	movs	r4, #0
2002441a:	2107      	movs	r1, #7
2002441c:	2302      	movs	r3, #2
2002441e:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
20024422:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024426:	0052      	lsls	r2, r2, #1
20024428:	e9cd 4300 	strd	r4, r3, [sp]
2002442c:	b252      	sxtb	r2, r2
2002442e:	4623      	mov	r3, r4
20024430:	f7fe fb3a 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20024434:	4621      	mov	r1, r4
20024436:	4628      	mov	r0, r5
20024438:	f7fe fb2b 	bl	20022a92 <HAL_FLASH_SET_AHB_RCMD>
2002443c:	4620      	mov	r0, r4
2002443e:	b005      	add	sp, #20
20024440:	bd30      	pop	{r4, r5, pc}
20024442:	2001      	movs	r0, #1
20024444:	e7fb      	b.n	2002443e <HAL_LEGACY_CFG_READ+0x2e>

20024446 <HAL_LEGACY_CFG_WRITE>:
20024446:	b530      	push	{r4, r5, lr}
20024448:	4605      	mov	r5, r0
2002444a:	b085      	sub	sp, #20
2002444c:	b190      	cbz	r0, 20024474 <HAL_LEGACY_CFG_WRITE+0x2e>
2002444e:	2107      	movs	r1, #7
20024450:	2400      	movs	r4, #0
20024452:	2302      	movs	r3, #2
20024454:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024458:	e9cd 4300 	strd	r4, r3, [sp]
2002445c:	4623      	mov	r3, r4
2002445e:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
20024462:	f7fe fb4a 	bl	20022afa <HAL_FLASH_CFG_AHB_WCMD>
20024466:	2180      	movs	r1, #128	@ 0x80
20024468:	4628      	mov	r0, r5
2002446a:	f7fe fb3a 	bl	20022ae2 <HAL_FLASH_SET_AHB_WCMD>
2002446e:	4620      	mov	r0, r4
20024470:	b005      	add	sp, #20
20024472:	bd30      	pop	{r4, r5, pc}
20024474:	2001      	movs	r0, #1
20024476:	e7fb      	b.n	20024470 <HAL_LEGACY_CFG_WRITE+0x2a>

20024478 <HAL_PSRAM_RESET>:
20024478:	b5f0      	push	{r4, r5, r6, r7, lr}
2002447a:	4604      	mov	r4, r0
2002447c:	b087      	sub	sp, #28
2002447e:	2800      	cmp	r0, #0
20024480:	d03b      	beq.n	200244fa <HAL_PSRAM_RESET+0x82>
20024482:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20024486:	2b05      	cmp	r3, #5
20024488:	d034      	beq.n	200244f4 <HAL_PSRAM_RESET+0x7c>
2002448a:	3b03      	subs	r3, #3
2002448c:	2b01      	cmp	r3, #1
2002448e:	d82e      	bhi.n	200244ee <HAL_PSRAM_RESET+0x76>
20024490:	2601      	movs	r6, #1
20024492:	2703      	movs	r7, #3
20024494:	2300      	movs	r3, #0
20024496:	2507      	movs	r5, #7
20024498:	b276      	sxtb	r6, r6
2002449a:	b27f      	sxtb	r7, r7
2002449c:	461a      	mov	r2, r3
2002449e:	2101      	movs	r1, #1
200244a0:	4620      	mov	r0, r4
200244a2:	e9cd 5503 	strd	r5, r5, [sp, #12]
200244a6:	e9cd 5701 	strd	r5, r7, [sp, #4]
200244aa:	9600      	str	r6, [sp, #0]
200244ac:	f7fe fbb3 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
200244b0:	2200      	movs	r2, #0
200244b2:	21ff      	movs	r1, #255	@ 0xff
200244b4:	4620      	mov	r0, r4
200244b6:	f7fe fb69 	bl	20022b8c <HAL_FLASH_SET_CMD>
200244ba:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200244be:	2b05      	cmp	r3, #5
200244c0:	d10f      	bne.n	200244e2 <HAL_PSRAM_RESET+0x6a>
200244c2:	2300      	movs	r3, #0
200244c4:	2101      	movs	r1, #1
200244c6:	461a      	mov	r2, r3
200244c8:	4620      	mov	r0, r4
200244ca:	e9cd 5503 	strd	r5, r5, [sp, #12]
200244ce:	e9cd 5701 	strd	r5, r7, [sp, #4]
200244d2:	9600      	str	r6, [sp, #0]
200244d4:	f7fe fb9f 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
200244d8:	2200      	movs	r2, #0
200244da:	21ff      	movs	r1, #255	@ 0xff
200244dc:	4620      	mov	r0, r4
200244de:	f7fe fb55 	bl	20022b8c <HAL_FLASH_SET_CMD>
200244e2:	2000      	movs	r0, #0
200244e4:	f7fd fd65 	bl	20021fb2 <HAL_Delay_us>
200244e8:	2003      	movs	r0, #3
200244ea:	f7fd fd62 	bl	20021fb2 <HAL_Delay_us>
200244ee:	2000      	movs	r0, #0
200244f0:	b007      	add	sp, #28
200244f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200244f4:	2603      	movs	r6, #3
200244f6:	2702      	movs	r7, #2
200244f8:	e7cc      	b.n	20024494 <HAL_PSRAM_RESET+0x1c>
200244fa:	2001      	movs	r0, #1
200244fc:	e7f8      	b.n	200244f0 <HAL_PSRAM_RESET+0x78>
	...

20024500 <HAL_OPI_PSRAM_Init>:
20024500:	b530      	push	{r4, r5, lr}
20024502:	4604      	mov	r4, r0
20024504:	b085      	sub	sp, #20
20024506:	2800      	cmp	r0, #0
20024508:	d06c      	beq.n	200245e4 <HAL_OPI_PSRAM_Init+0xe4>
2002450a:	2900      	cmp	r1, #0
2002450c:	d06a      	beq.n	200245e4 <HAL_OPI_PSRAM_Init+0xe4>
2002450e:	f7fe fa9f 	bl	20022a50 <HAL_QSPI_Init>
20024512:	6823      	ldr	r3, [r4, #0]
20024514:	f10d 020e 	add.w	r2, sp, #14
20024518:	f10d 010f 	add.w	r1, sp, #15
2002451c:	4620      	mov	r0, r4
2002451e:	681d      	ldr	r5, [r3, #0]
20024520:	f7ff fe56 	bl	200241d0 <HAL_MPI_OPSRAM_CAL_DELAY>
20024524:	2101      	movs	r1, #1
20024526:	4620      	mov	r0, r4
20024528:	f7fe fb6c 	bl	20022c04 <HAL_FLASH_SET_CLK_rom>
2002452c:	4620      	mov	r0, r4
2002452e:	f7ff fbe7 	bl	20023d00 <HAL_QSPI_GET_CLK>
20024532:	4b2d      	ldr	r3, [pc, #180]	@ (200245e8 <HAL_OPI_PSRAM_Init+0xe8>)
20024534:	f005 0501 	and.w	r5, r5, #1
20024538:	4298      	cmp	r0, r3
2002453a:	d93e      	bls.n	200245ba <HAL_OPI_PSRAM_Init+0xba>
2002453c:	f103 6337 	add.w	r3, r3, #191889408	@ 0xb700000
20024540:	f503 33d8 	add.w	r3, r3, #110592	@ 0x1b000
20024544:	4298      	cmp	r0, r3
20024546:	d93d      	bls.n	200245c4 <HAL_OPI_PSRAM_Init+0xc4>
20024548:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
2002454c:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20024550:	4298      	cmp	r0, r3
20024552:	d93d      	bls.n	200245d0 <HAL_OPI_PSRAM_Init+0xd0>
20024554:	2107      	movs	r1, #7
20024556:	2014      	movs	r0, #20
20024558:	2308      	movs	r3, #8
2002455a:	f240 5232 	movw	r2, #1330	@ 0x532
2002455e:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
20024562:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
20024566:	2106      	movs	r1, #6
20024568:	9000      	str	r0, [sp, #0]
2002456a:	4620      	mov	r0, r4
2002456c:	f7fe fc35 	bl	20022dda <HAL_FLASH_SET_CS_TIME>
20024570:	2107      	movs	r1, #7
20024572:	4620      	mov	r0, r4
20024574:	f7fe fc46 	bl	20022e04 <HAL_FLASH_SET_ROW_BOUNDARY>
20024578:	2101      	movs	r1, #1
2002457a:	4620      	mov	r0, r4
2002457c:	f7fe fc76 	bl	20022e6c <HAL_MPI_ENABLE_DQS>
20024580:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024584:	4620      	mov	r0, r4
20024586:	f7fe fc7f 	bl	20022e88 <HAL_MPI_SET_DQS_DELAY>
2002458a:	2200      	movs	r2, #0
2002458c:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024590:	4620      	mov	r0, r4
20024592:	f7fe fc85 	bl	20022ea0 <HAL_MPI_SET_SCK>
20024596:	2101      	movs	r1, #1
20024598:	4620      	mov	r0, r4
2002459a:	f7fe fbd8 	bl	20022d4e <HAL_FLASH_ENABLE_QSPI>
2002459e:	2101      	movs	r1, #1
200245a0:	4620      	mov	r0, r4
200245a2:	f7fe fbe2 	bl	20022d6a <HAL_FLASH_ENABLE_OPI>
200245a6:	b92d      	cbnz	r5, 200245b4 <HAL_OPI_PSRAM_Init+0xb4>
200245a8:	4b10      	ldr	r3, [pc, #64]	@ (200245ec <HAL_OPI_PSRAM_Init+0xec>)
200245aa:	681b      	ldr	r3, [r3, #0]
200245ac:	f003 0303 	and.w	r3, r3, #3
200245b0:	2b03      	cmp	r3, #3
200245b2:	d113      	bne.n	200245dc <HAL_OPI_PSRAM_Init+0xdc>
200245b4:	2000      	movs	r0, #0
200245b6:	b005      	add	sp, #20
200245b8:	bd30      	pop	{r4, r5, pc}
200245ba:	2103      	movs	r1, #3
200245bc:	2300      	movs	r3, #0
200245be:	4608      	mov	r0, r1
200245c0:	22b4      	movs	r2, #180	@ 0xb4
200245c2:	e7cc      	b.n	2002455e <HAL_OPI_PSRAM_Init+0x5e>
200245c4:	2105      	movs	r1, #5
200245c6:	200e      	movs	r0, #14
200245c8:	2303      	movs	r3, #3
200245ca:	f240 32b6 	movw	r2, #950	@ 0x3b6
200245ce:	e7c6      	b.n	2002455e <HAL_OPI_PSRAM_Init+0x5e>
200245d0:	2106      	movs	r1, #6
200245d2:	2011      	movs	r0, #17
200245d4:	2305      	movs	r3, #5
200245d6:	f240 4274 	movw	r2, #1140	@ 0x474
200245da:	e7c0      	b.n	2002455e <HAL_OPI_PSRAM_Init+0x5e>
200245dc:	4620      	mov	r0, r4
200245de:	f7ff ff4b 	bl	20024478 <HAL_PSRAM_RESET>
200245e2:	e7e7      	b.n	200245b4 <HAL_OPI_PSRAM_Init+0xb4>
200245e4:	2001      	movs	r0, #1
200245e6:	e7e6      	b.n	200245b6 <HAL_OPI_PSRAM_Init+0xb6>
200245e8:	02dc6c01 	.word	0x02dc6c01
200245ec:	500c0000 	.word	0x500c0000

200245f0 <HAL_LEGACY_PSRAM_Init>:
200245f0:	b5f0      	push	{r4, r5, r6, r7, lr}
200245f2:	4604      	mov	r4, r0
200245f4:	b085      	sub	sp, #20
200245f6:	2800      	cmp	r0, #0
200245f8:	f000 8091 	beq.w	2002471e <HAL_LEGACY_PSRAM_Init+0x12e>
200245fc:	2900      	cmp	r1, #0
200245fe:	f000 808e 	beq.w	2002471e <HAL_LEGACY_PSRAM_Init+0x12e>
20024602:	f7fe fa25 	bl	20022a50 <HAL_QSPI_Init>
20024606:	6823      	ldr	r3, [r4, #0]
20024608:	f10d 020e 	add.w	r2, sp, #14
2002460c:	f10d 010f 	add.w	r1, sp, #15
20024610:	4620      	mov	r0, r4
20024612:	681e      	ldr	r6, [r3, #0]
20024614:	f7ff fddc 	bl	200241d0 <HAL_MPI_OPSRAM_CAL_DELAY>
20024618:	2101      	movs	r1, #1
2002461a:	4620      	mov	r0, r4
2002461c:	f7fe faf2 	bl	20022c04 <HAL_FLASH_SET_CLK_rom>
20024620:	4620      	mov	r0, r4
20024622:	f7ff fb6d 	bl	20023d00 <HAL_QSPI_GET_CLK>
20024626:	4b3f      	ldr	r3, [pc, #252]	@ (20024724 <HAL_LEGACY_PSRAM_Init+0x134>)
20024628:	4605      	mov	r5, r0
2002462a:	4298      	cmp	r0, r3
2002462c:	4f3e      	ldr	r7, [pc, #248]	@ (20024728 <HAL_LEGACY_PSRAM_Init+0x138>)
2002462e:	f006 0601 	and.w	r6, r6, #1
20024632:	d957      	bls.n	200246e4 <HAL_LEGACY_PSRAM_Init+0xf4>
20024634:	42b8      	cmp	r0, r7
20024636:	d959      	bls.n	200246ec <HAL_LEGACY_PSRAM_Init+0xfc>
20024638:	4b3c      	ldr	r3, [pc, #240]	@ (2002472c <HAL_LEGACY_PSRAM_Init+0x13c>)
2002463a:	4298      	cmp	r0, r3
2002463c:	d95b      	bls.n	200246f6 <HAL_LEGACY_PSRAM_Init+0x106>
2002463e:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20024642:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20024646:	4298      	cmp	r0, r3
20024648:	d85a      	bhi.n	20024700 <HAL_LEGACY_PSRAM_Init+0x110>
2002464a:	2114      	movs	r1, #20
2002464c:	2308      	movs	r3, #8
2002464e:	f240 5232 	movw	r2, #1330	@ 0x532
20024652:	9100      	str	r1, [sp, #0]
20024654:	4620      	mov	r0, r4
20024656:	2106      	movs	r1, #6
20024658:	f7fe fbbf 	bl	20022dda <HAL_FLASH_SET_CS_TIME>
2002465c:	2107      	movs	r1, #7
2002465e:	4620      	mov	r0, r4
20024660:	f7fe fbd0 	bl	20022e04 <HAL_FLASH_SET_ROW_BOUNDARY>
20024664:	2101      	movs	r1, #1
20024666:	4620      	mov	r0, r4
20024668:	f7fe fc00 	bl	20022e6c <HAL_MPI_ENABLE_DQS>
2002466c:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024670:	4620      	mov	r0, r4
20024672:	f7fe fc09 	bl	20022e88 <HAL_MPI_SET_DQS_DELAY>
20024676:	2200      	movs	r2, #0
20024678:	f89d 100f 	ldrb.w	r1, [sp, #15]
2002467c:	4620      	mov	r0, r4
2002467e:	f7fe fc0f 	bl	20022ea0 <HAL_MPI_SET_SCK>
20024682:	2101      	movs	r1, #1
20024684:	4620      	mov	r0, r4
20024686:	f7fe fbc7 	bl	20022e18 <HAL_FLASH_SET_LEGACY>
2002468a:	2101      	movs	r1, #1
2002468c:	4620      	mov	r0, r4
2002468e:	f7fe fb5e 	bl	20022d4e <HAL_FLASH_ENABLE_QSPI>
20024692:	2101      	movs	r1, #1
20024694:	4620      	mov	r0, r4
20024696:	f7fe fb68 	bl	20022d6a <HAL_FLASH_ENABLE_OPI>
2002469a:	b92e      	cbnz	r6, 200246a8 <HAL_LEGACY_PSRAM_Init+0xb8>
2002469c:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200246a0:	b913      	cbnz	r3, 200246a8 <HAL_LEGACY_PSRAM_Init+0xb8>
200246a2:	4620      	mov	r0, r4
200246a4:	f7ff fee8 	bl	20024478 <HAL_PSRAM_RESET>
200246a8:	42bd      	cmp	r5, r7
200246aa:	d92e      	bls.n	2002470a <HAL_LEGACY_PSRAM_Init+0x11a>
200246ac:	4b1f      	ldr	r3, [pc, #124]	@ (2002472c <HAL_LEGACY_PSRAM_Init+0x13c>)
200246ae:	429d      	cmp	r5, r3
200246b0:	d930      	bls.n	20024714 <HAL_LEGACY_PSRAM_Init+0x124>
200246b2:	2206      	movs	r2, #6
200246b4:	2302      	movs	r3, #2
200246b6:	2588      	movs	r5, #136	@ 0x88
200246b8:	263b      	movs	r6, #59	@ 0x3b
200246ba:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
200246be:	2101      	movs	r1, #1
200246c0:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
200246c4:	4620      	mov	r0, r4
200246c6:	f7fe fbc3 	bl	20022e50 <HAL_MPI_EN_FIXLAT>
200246ca:	4632      	mov	r2, r6
200246cc:	2100      	movs	r1, #0
200246ce:	4620      	mov	r0, r4
200246d0:	f7ff fe7a 	bl	200243c8 <HAL_LEGACY_MR_WRITE>
200246d4:	462a      	mov	r2, r5
200246d6:	2104      	movs	r1, #4
200246d8:	4620      	mov	r0, r4
200246da:	f7ff fe75 	bl	200243c8 <HAL_LEGACY_MR_WRITE>
200246de:	2000      	movs	r0, #0
200246e0:	b005      	add	sp, #20
200246e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200246e4:	2103      	movs	r1, #3
200246e6:	2300      	movs	r3, #0
200246e8:	22b4      	movs	r2, #180	@ 0xb4
200246ea:	e7b2      	b.n	20024652 <HAL_LEGACY_PSRAM_Init+0x62>
200246ec:	210e      	movs	r1, #14
200246ee:	2303      	movs	r3, #3
200246f0:	f240 32b6 	movw	r2, #950	@ 0x3b6
200246f4:	e7ad      	b.n	20024652 <HAL_LEGACY_PSRAM_Init+0x62>
200246f6:	2111      	movs	r1, #17
200246f8:	2305      	movs	r3, #5
200246fa:	f240 4274 	movw	r2, #1140	@ 0x474
200246fe:	e7a8      	b.n	20024652 <HAL_LEGACY_PSRAM_Init+0x62>
20024700:	2117      	movs	r1, #23
20024702:	2309      	movs	r3, #9
20024704:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
20024708:	e7a3      	b.n	20024652 <HAL_LEGACY_PSRAM_Init+0x62>
2002470a:	2204      	movs	r2, #4
2002470c:	2300      	movs	r3, #0
2002470e:	2508      	movs	r5, #8
20024710:	2633      	movs	r6, #51	@ 0x33
20024712:	e7d2      	b.n	200246ba <HAL_LEGACY_PSRAM_Init+0xca>
20024714:	2205      	movs	r2, #5
20024716:	2300      	movs	r3, #0
20024718:	2508      	movs	r5, #8
2002471a:	2637      	movs	r6, #55	@ 0x37
2002471c:	e7cd      	b.n	200246ba <HAL_LEGACY_PSRAM_Init+0xca>
2002471e:	2001      	movs	r0, #1
20024720:	e7de      	b.n	200246e0 <HAL_LEGACY_PSRAM_Init+0xf0>
20024722:	bf00      	nop
20024724:	02dc6c01 	.word	0x02dc6c01
20024728:	0e4e1c01 	.word	0x0e4e1c01
2002472c:	112a8801 	.word	0x112a8801

20024730 <HAL_HYPER_PSRAM_WriteCR>:
20024730:	b570      	push	{r4, r5, r6, lr}
20024732:	460e      	mov	r6, r1
20024734:	4615      	mov	r5, r2
20024736:	4604      	mov	r4, r0
20024738:	b086      	sub	sp, #24
2002473a:	b1f8      	cbz	r0, 2002477c <HAL_HYPER_PSRAM_WriteCR+0x4c>
2002473c:	2207      	movs	r2, #7
2002473e:	2303      	movs	r3, #3
20024740:	e9cd 2301 	strd	r2, r3, [sp, #4]
20024744:	2300      	movs	r3, #0
20024746:	e9cd 2203 	strd	r2, r2, [sp, #12]
2002474a:	9300      	str	r3, [sp, #0]
2002474c:	2101      	movs	r1, #1
2002474e:	f7fe fa62 	bl	20022c16 <HAL_FLASH_MANUAL_CMD>
20024752:	4631      	mov	r1, r6
20024754:	4620      	mov	r0, r4
20024756:	f7fe fa08 	bl	20022b6a <HAL_FLASH_WRITE_ABYTE>
2002475a:	2102      	movs	r1, #2
2002475c:	4620      	mov	r0, r4
2002475e:	f7fe f9f0 	bl	20022b42 <HAL_FLASH_WRITE_DLEN>
20024762:	4629      	mov	r1, r5
20024764:	4620      	mov	r0, r4
20024766:	f7fe f9e5 	bl	20022b34 <HAL_FLASH_WRITE_WORD>
2002476a:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
2002476e:	2160      	movs	r1, #96	@ 0x60
20024770:	4620      	mov	r0, r4
20024772:	b006      	add	sp, #24
20024774:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20024778:	f7fe ba08 	b.w	20022b8c <HAL_FLASH_SET_CMD>
2002477c:	b006      	add	sp, #24
2002477e:	bd70      	pop	{r4, r5, r6, pc}

20024780 <HAL_HYPER_PSRAM_Init>:
20024780:	b538      	push	{r3, r4, r5, lr}
20024782:	4604      	mov	r4, r0
20024784:	2201      	movs	r2, #1
20024786:	f7ff febb 	bl	20024500 <HAL_OPI_PSRAM_Init>
2002478a:	4620      	mov	r0, r4
2002478c:	f7ff fab8 	bl	20023d00 <HAL_QSPI_GET_CLK>
20024790:	4b15      	ldr	r3, [pc, #84]	@ (200247e8 <HAL_HYPER_PSRAM_Init+0x68>)
20024792:	4298      	cmp	r0, r3
20024794:	d91f      	bls.n	200247d6 <HAL_HYPER_PSRAM_Init+0x56>
20024796:	4b15      	ldr	r3, [pc, #84]	@ (200247ec <HAL_HYPER_PSRAM_Init+0x6c>)
20024798:	4298      	cmp	r0, r3
2002479a:	d91f      	bls.n	200247dc <HAL_HYPER_PSRAM_Init+0x5c>
2002479c:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
200247a0:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
200247a4:	4298      	cmp	r0, r3
200247a6:	d91c      	bls.n	200247e2 <HAL_HYPER_PSRAM_Init+0x62>
200247a8:	f242 758f 	movw	r5, #10127	@ 0x278f
200247ac:	f241 738f 	movw	r3, #6031	@ 0x178f
200247b0:	4a0f      	ldr	r2, [pc, #60]	@ (200247f0 <HAL_HYPER_PSRAM_Init+0x70>)
200247b2:	4290      	cmp	r0, r2
200247b4:	bf98      	it	ls
200247b6:	461d      	movls	r5, r3
200247b8:	2101      	movs	r1, #1
200247ba:	4620      	mov	r0, r4
200247bc:	f7fe fae3 	bl	20022d86 <HAL_FLASH_ENABLE_HYPER>
200247c0:	462a      	mov	r2, r5
200247c2:	4620      	mov	r0, r4
200247c4:	2100      	movs	r1, #0
200247c6:	f7ff ffb3 	bl	20024730 <HAL_HYPER_PSRAM_WriteCR>
200247ca:	2101      	movs	r1, #1
200247cc:	4620      	mov	r0, r4
200247ce:	f7fe fb3f 	bl	20022e50 <HAL_MPI_EN_FIXLAT>
200247d2:	2000      	movs	r0, #0
200247d4:	bd38      	pop	{r3, r4, r5, pc}
200247d6:	f24e 758f 	movw	r5, #59279	@ 0xe78f
200247da:	e7ed      	b.n	200247b8 <HAL_HYPER_PSRAM_Init+0x38>
200247dc:	f24f 758f 	movw	r5, #63375	@ 0xf78f
200247e0:	e7ea      	b.n	200247b8 <HAL_HYPER_PSRAM_Init+0x38>
200247e2:	f240 758f 	movw	r5, #1935	@ 0x78f
200247e6:	e7e7      	b.n	200247b8 <HAL_HYPER_PSRAM_Init+0x38>
200247e8:	0a21fe81 	.word	0x0a21fe81
200247ec:	0c65d401 	.word	0x0c65d401
200247f0:	112a8801 	.word	0x112a8801

200247f4 <HAL_HYPER_CFG_READ>:
200247f4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200247f6:	b160      	cbz	r0, 20024812 <HAL_HYPER_CFG_READ+0x1e>
200247f8:	2107      	movs	r1, #7
200247fa:	2303      	movs	r3, #3
200247fc:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
20024800:	e9cd 1300 	strd	r1, r3, [sp]
20024804:	3a01      	subs	r2, #1
20024806:	2300      	movs	r3, #0
20024808:	e9cd 1102 	strd	r1, r1, [sp, #8]
2002480c:	b252      	sxtb	r2, r2
2002480e:	f7fe f94b 	bl	20022aa8 <HAL_FLASH_CFG_AHB_RCMD>
20024812:	b005      	add	sp, #20
20024814:	f85d fb04 	ldr.w	pc, [sp], #4

20024818 <HAL_HYPER_CFG_WRITE>:
20024818:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002481a:	b160      	cbz	r0, 20024836 <HAL_HYPER_CFG_WRITE+0x1e>
2002481c:	2107      	movs	r1, #7
2002481e:	2303      	movs	r3, #3
20024820:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
20024824:	e9cd 1300 	strd	r1, r3, [sp]
20024828:	3a01      	subs	r2, #1
2002482a:	2300      	movs	r3, #0
2002482c:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024830:	b252      	sxtb	r2, r2
20024832:	f7fe f962 	bl	20022afa <HAL_FLASH_CFG_AHB_WCMD>
20024836:	b005      	add	sp, #20
20024838:	f85d fb04 	ldr.w	pc, [sp], #4

2002483c <HAL_PIN_SetUartFunc.part.0>:
2002483c:	108b      	asrs	r3, r1, #2
2002483e:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20024842:	b5f0      	push	{r4, r5, r6, r7, lr}
20024844:	b2d6      	uxtb	r6, r2
20024846:	2e04      	cmp	r6, #4
20024848:	d849      	bhi.n	200248de <HAL_PIN_SetUartFunc.part.0+0xa2>
2002484a:	2e02      	cmp	r6, #2
2002484c:	d810      	bhi.n	20024870 <HAL_PIN_SetUartFunc.part.0+0x34>
2002484e:	4d25      	ldr	r5, [pc, #148]	@ (200248e4 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20024850:	240e      	movs	r4, #14
20024852:	eb05 0582 	add.w	r5, r5, r2, lsl #2
20024856:	f240 22b2 	movw	r2, #690	@ 0x2b2
2002485a:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
2002485e:	b29b      	uxth	r3, r3
20024860:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20024864:	2b03      	cmp	r3, #3
20024866:	d83a      	bhi.n	200248de <HAL_PIN_SetUartFunc.part.0+0xa2>
20024868:	e8df f003 	tbb	[pc, r3]
2002486c:	20271a09 	.word	0x20271a09
20024870:	4d1d      	ldr	r5, [pc, #116]	@ (200248e8 <HAL_PIN_SetUartFunc.part.0+0xac>)
20024872:	009b      	lsls	r3, r3, #2
20024874:	243d      	movs	r4, #61	@ 0x3d
20024876:	f240 3221 	movw	r2, #801	@ 0x321
2002487a:	441d      	add	r5, r3
2002487c:	e7ed      	b.n	2002485a <HAL_PIN_SetUartFunc.part.0+0x1e>
2002487e:	2c0e      	cmp	r4, #14
20024880:	f04f 0608 	mov.w	r6, #8
20024884:	d120      	bne.n	200248c8 <HAL_PIN_SetUartFunc.part.0+0x8c>
20024886:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
2002488a:	682f      	ldr	r7, [r5, #0]
2002488c:	1b03      	subs	r3, r0, r4
2002488e:	40b3      	lsls	r3, r6
20024890:	407b      	eors	r3, r7
20024892:	400b      	ands	r3, r1
20024894:	4410      	add	r0, r2
20024896:	407b      	eors	r3, r7
20024898:	1b00      	subs	r0, r0, r4
2002489a:	602b      	str	r3, [r5, #0]
2002489c:	b280      	uxth	r0, r0
2002489e:	bdf0      	pop	{r4, r5, r6, r7, pc}
200248a0:	2c0e      	cmp	r4, #14
200248a2:	f04f 0600 	mov.w	r6, #0
200248a6:	d112      	bne.n	200248ce <HAL_PIN_SetUartFunc.part.0+0x92>
200248a8:	213f      	movs	r1, #63	@ 0x3f
200248aa:	e7ee      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248ac:	2c0e      	cmp	r4, #14
200248ae:	f04f 0610 	mov.w	r6, #16
200248b2:	d10e      	bne.n	200248d2 <HAL_PIN_SetUartFunc.part.0+0x96>
200248b4:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
200248b8:	e7e7      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248ba:	2c0e      	cmp	r4, #14
200248bc:	f04f 0618 	mov.w	r6, #24
200248c0:	d10a      	bne.n	200248d8 <HAL_PIN_SetUartFunc.part.0+0x9c>
200248c2:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
200248c6:	e7e0      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248c8:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
200248cc:	e7dd      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248ce:	2107      	movs	r1, #7
200248d0:	e7db      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248d2:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
200248d6:	e7d8      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248d8:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
200248dc:	e7d5      	b.n	2002488a <HAL_PIN_SetUartFunc.part.0+0x4e>
200248de:	2000      	movs	r0, #0
200248e0:	e7dd      	b.n	2002489e <HAL_PIN_SetUartFunc.part.0+0x62>
200248e2:	bf00      	nop
200248e4:	5000b058 	.word	0x5000b058
200248e8:	4000ef0c 	.word	0x4000ef0c

200248ec <HAL_PIN_SetAonPE>:
200248ec:	2a00      	cmp	r2, #0
200248ee:	d031      	beq.n	20024954 <HAL_PIN_SetAonPE+0x68>
200248f0:	282f      	cmp	r0, #47	@ 0x2f
200248f2:	dd16      	ble.n	20024922 <HAL_PIN_SetAonPE+0x36>
200248f4:	283a      	cmp	r0, #58	@ 0x3a
200248f6:	dc2d      	bgt.n	20024954 <HAL_PIN_SetAonPE+0x68>
200248f8:	2301      	movs	r3, #1
200248fa:	4a17      	ldr	r2, [pc, #92]	@ (20024958 <HAL_PIN_SetAonPE+0x6c>)
200248fc:	382a      	subs	r0, #42	@ 0x2a
200248fe:	4083      	lsls	r3, r0
20024900:	6f10      	ldr	r0, [r2, #112]	@ 0x70
20024902:	f011 0f20 	tst.w	r1, #32
20024906:	bf14      	ite	ne
20024908:	4318      	orrne	r0, r3
2002490a:	4398      	biceq	r0, r3
2002490c:	6710      	str	r0, [r2, #112]	@ 0x70
2002490e:	4a12      	ldr	r2, [pc, #72]	@ (20024958 <HAL_PIN_SetAonPE+0x6c>)
20024910:	f011 0f10 	tst.w	r1, #16
20024914:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20024916:	bf14      	ite	ne
20024918:	430b      	orrne	r3, r1
2002491a:	ea21 0303 	biceq.w	r3, r1, r3
2002491e:	66d3      	str	r3, [r2, #108]	@ 0x6c
20024920:	4770      	bx	lr
20024922:	3826      	subs	r0, #38	@ 0x26
20024924:	2803      	cmp	r0, #3
20024926:	d815      	bhi.n	20024954 <HAL_PIN_SetAonPE+0x68>
20024928:	4b0c      	ldr	r3, [pc, #48]	@ (2002495c <HAL_PIN_SetAonPE+0x70>)
2002492a:	f011 0f20 	tst.w	r1, #32
2002492e:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024932:	bf14      	ite	ne
20024934:	f042 0210 	orrne.w	r2, r2, #16
20024938:	f022 0210 	biceq.w	r2, r2, #16
2002493c:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024940:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024944:	06c9      	lsls	r1, r1, #27
20024946:	bf4c      	ite	mi
20024948:	f042 0208 	orrmi.w	r2, r2, #8
2002494c:	f022 0208 	bicpl.w	r2, r2, #8
20024950:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024954:	4770      	bx	lr
20024956:	bf00      	nop
20024958:	500cb000 	.word	0x500cb000
2002495c:	500cb05c 	.word	0x500cb05c

20024960 <HAL_PIN_Get_Base>:
20024960:	b138      	cbz	r0, 20024972 <HAL_PIN_Get_Base+0x12>
20024962:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024966:	6893      	ldr	r3, [r2, #8]
20024968:	4806      	ldr	r0, [pc, #24]	@ (20024984 <HAL_PIN_Get_Base+0x24>)
2002496a:	f043 0304 	orr.w	r3, r3, #4
2002496e:	6093      	str	r3, [r2, #8]
20024970:	4770      	bx	lr
20024972:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20024976:	6853      	ldr	r3, [r2, #4]
20024978:	4803      	ldr	r0, [pc, #12]	@ (20024988 <HAL_PIN_Get_Base+0x28>)
2002497a:	f043 0308 	orr.w	r3, r3, #8
2002497e:	6053      	str	r3, [r2, #4]
20024980:	4770      	bx	lr
20024982:	bf00      	nop
20024984:	50003000 	.word	0x50003000
20024988:	40003000 	.word	0x40003000

2002498c <HAL_PIN_Func2Idx>:
2002498c:	283b      	cmp	r0, #59	@ 0x3b
2002498e:	bfc8      	it	gt
20024990:	383c      	subgt	r0, #60	@ 0x3c
20024992:	0143      	lsls	r3, r0, #5
20024994:	b152      	cbz	r2, 200249ac <HAL_PIN_Func2Idx+0x20>
20024996:	4a06      	ldr	r2, [pc, #24]	@ (200249b0 <HAL_PIN_Func2Idx+0x24>)
20024998:	2000      	movs	r0, #0
2002499a:	4413      	add	r3, r2
2002499c:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
200249a0:	428a      	cmp	r2, r1
200249a2:	d002      	beq.n	200249aa <HAL_PIN_Func2Idx+0x1e>
200249a4:	3001      	adds	r0, #1
200249a6:	2810      	cmp	r0, #16
200249a8:	d1f8      	bne.n	2002499c <HAL_PIN_Func2Idx+0x10>
200249aa:	4770      	bx	lr
200249ac:	4a01      	ldr	r2, [pc, #4]	@ (200249b4 <HAL_PIN_Func2Idx+0x28>)
200249ae:	e7f3      	b.n	20024998 <HAL_PIN_Func2Idx+0xc>
200249b0:	2002b054 	.word	0x2002b054
200249b4:	2002afb4 	.word	0x2002afb4

200249b8 <HAL_PIN_Set>:
200249b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200249bc:	4615      	mov	r5, r2
200249be:	4604      	mov	r4, r0
200249c0:	b918      	cbnz	r0, 200249ca <HAL_PIN_Set+0x12>
200249c2:	f04f 30ff 	mov.w	r0, #4294967295
200249c6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200249ca:	283a      	cmp	r0, #58	@ 0x3a
200249cc:	bfcd      	iteet	gt
200249ce:	2700      	movgt	r7, #0
200249d0:	2701      	movle	r7, #1
200249d2:	4606      	movle	r6, r0
200249d4:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
200249d8:	4638      	mov	r0, r7
200249da:	f7ff ffc1 	bl	20024960 <HAL_PIN_Get_Base>
200249de:	4680      	mov	r8, r0
200249e0:	2f00      	cmp	r7, #0
200249e2:	f000 815e 	beq.w	20024ca2 <HAL_PIN_Set+0x2ea>
200249e6:	f1a4 0026 	sub.w	r0, r4, #38	@ 0x26
200249ea:	2803      	cmp	r0, #3
200249ec:	d80a      	bhi.n	20024a04 <HAL_PIN_Set+0x4c>
200249ee:	f8df c30c 	ldr.w	ip, [pc, #780]	@ 20024cfc <HAL_PIN_Set+0x344>
200249f2:	f104 4380 	add.w	r3, r4, #1073741824	@ 0x40000000
200249f6:	3b26      	subs	r3, #38	@ 0x26
200249f8:	f85c 2023 	ldr.w	r2, [ip, r3, lsl #2]
200249fc:	f022 0202 	bic.w	r2, r2, #2
20024a00:	f84c 2023 	str.w	r2, [ip, r3, lsl #2]
20024a04:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024a08:	b29b      	uxth	r3, r3
20024a0a:	2b0b      	cmp	r3, #11
20024a0c:	d804      	bhi.n	20024a18 <HAL_PIN_Set+0x60>
20024a0e:	4620      	mov	r0, r4
20024a10:	f7ff ff14 	bl	2002483c <HAL_PIN_SetUartFunc.part.0>
20024a14:	4601      	mov	r1, r0
20024a16:	e025      	b.n	20024a64 <HAL_PIN_Set+0xac>
20024a18:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024a1c:	b29b      	uxth	r3, r3
20024a1e:	2b07      	cmp	r3, #7
20024a20:	d850      	bhi.n	20024ac4 <HAL_PIN_Set+0x10c>
20024a22:	104a      	asrs	r2, r1, #1
20024a24:	3a9c      	subs	r2, #156	@ 0x9c
20024a26:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024a2a:	b289      	uxth	r1, r1
20024a2c:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024a30:	d043      	beq.n	20024aba <HAL_PIN_Set+0x102>
20024a32:	f240 1339 	movw	r3, #313	@ 0x139
20024a36:	4299      	cmp	r1, r3
20024a38:	f040 813a 	bne.w	20024cb0 <HAL_PIN_Set+0x2f8>
20024a3c:	f04f 0e08 	mov.w	lr, #8
20024a40:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024a44:	49a5      	ldr	r1, [pc, #660]	@ (20024cdc <HAL_PIN_Set+0x324>)
20024a46:	f1a4 030e 	sub.w	r3, r4, #14
20024a4a:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024a4e:	fa03 f30e 	lsl.w	r3, r3, lr
20024a52:	4043      	eors	r3, r0
20024a54:	ea03 030c 	and.w	r3, r3, ip
20024a58:	4043      	eors	r3, r0
20024a5a:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024a5e:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024a62:	b289      	uxth	r1, r1
20024a64:	463a      	mov	r2, r7
20024a66:	4620      	mov	r0, r4
20024a68:	f7ff ff90 	bl	2002498c <HAL_PIN_Func2Idx>
20024a6c:	280f      	cmp	r0, #15
20024a6e:	4681      	mov	r9, r0
20024a70:	dca7      	bgt.n	200249c2 <HAL_PIN_Set+0xa>
20024a72:	463a      	mov	r2, r7
20024a74:	4629      	mov	r1, r5
20024a76:	4620      	mov	r0, r4
20024a78:	f7ff ff38 	bl	200248ec <HAL_PIN_SetAonPE>
20024a7c:	2f00      	cmp	r7, #0
20024a7e:	f040 8119 	bne.w	20024cb4 <HAL_PIN_Set+0x2fc>
20024a82:	2c40      	cmp	r4, #64	@ 0x40
20024a84:	f340 8116 	ble.w	20024cb4 <HAL_PIN_Set+0x2fc>
20024a88:	4a95      	ldr	r2, [pc, #596]	@ (20024ce0 <HAL_PIN_Set+0x328>)
20024a8a:	06e8      	lsls	r0, r5, #27
20024a8c:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024a90:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024a94:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024a98:	f023 0318 	bic.w	r3, r3, #24
20024a9c:	bf48      	it	mi
20024a9e:	f043 0308 	orrmi.w	r3, r3, #8
20024aa2:	06a9      	lsls	r1, r5, #26
20024aa4:	bf48      	it	mi
20024aa6:	f043 0310 	orrmi.w	r3, r3, #16
20024aaa:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024aae:	ea49 0303 	orr.w	r3, r9, r3
20024ab2:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024ab6:	2000      	movs	r0, #0
20024ab8:	e785      	b.n	200249c6 <HAL_PIN_Set+0xe>
20024aba:	f04f 0e00 	mov.w	lr, #0
20024abe:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024ac2:	e7bf      	b.n	20024a44 <HAL_PIN_Set+0x8c>
20024ac4:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024ac8:	b29a      	uxth	r2, r3
20024aca:	2a09      	cmp	r2, #9
20024acc:	d837      	bhi.n	20024b3e <HAL_PIN_Set+0x186>
20024ace:	2205      	movs	r2, #5
20024ad0:	fbb3 f3f2 	udiv	r3, r3, r2
20024ad4:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024ad8:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024adc:	440a      	add	r2, r1
20024ade:	b292      	uxth	r2, r2
20024ae0:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024ae4:	b288      	uxth	r0, r1
20024ae6:	2803      	cmp	r0, #3
20024ae8:	d814      	bhi.n	20024b14 <HAL_PIN_Set+0x15c>
20024aea:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024aee:	487d      	ldr	r0, [pc, #500]	@ (20024ce4 <HAL_PIN_Set+0x32c>)
20024af0:	00c9      	lsls	r1, r1, #3
20024af2:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024af6:	f1a4 020e 	sub.w	r2, r4, #14
20024afa:	408a      	lsls	r2, r1
20024afc:	ea82 020c 	eor.w	r2, r2, ip
20024b00:	fa0e f101 	lsl.w	r1, lr, r1
20024b04:	400a      	ands	r2, r1
20024b06:	ea82 020c 	eor.w	r2, r2, ip
20024b0a:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024b0e:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024b12:	e7a6      	b.n	20024a62 <HAL_PIN_Set+0xaa>
20024b14:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024b18:	f040 80ca 	bne.w	20024cb0 <HAL_PIN_Set+0x2f8>
20024b1c:	213f      	movs	r1, #63	@ 0x3f
20024b1e:	4872      	ldr	r0, [pc, #456]	@ (20024ce8 <HAL_PIN_Set+0x330>)
20024b20:	00da      	lsls	r2, r3, #3
20024b22:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024b26:	f1a4 030e 	sub.w	r3, r4, #14
20024b2a:	4093      	lsls	r3, r2
20024b2c:	ea83 030c 	eor.w	r3, r3, ip
20024b30:	fa01 f202 	lsl.w	r2, r1, r2
20024b34:	4013      	ands	r3, r2
20024b36:	ea83 030c 	eor.w	r3, r3, ip
20024b3a:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024b3c:	e7e7      	b.n	20024b0e <HAL_PIN_Set+0x156>
20024b3e:	f46f 7a01 	mvn.w	sl, #516	@ 0x204
20024b42:	eb01 020a 	add.w	r2, r1, sl
20024b46:	b293      	uxth	r3, r2
20024b48:	2b05      	cmp	r3, #5
20024b4a:	d828      	bhi.n	20024b9e <HAL_PIN_Set+0x1e6>
20024b4c:	2303      	movs	r3, #3
20024b4e:	fbb2 f2f3 	udiv	r2, r2, r3
20024b52:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024b56:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024b5a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024b5e:	440b      	add	r3, r1
20024b60:	b29b      	uxth	r3, r3
20024b62:	eb03 0c09 	add.w	ip, r3, r9
20024b66:	fa1f fc8c 	uxth.w	ip, ip
20024b6a:	f1bc 0f02 	cmp.w	ip, #2
20024b6e:	f200 809f 	bhi.w	20024cb0 <HAL_PIN_Set+0x2f8>
20024b72:	00db      	lsls	r3, r3, #3
20024b74:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024b78:	495c      	ldr	r1, [pc, #368]	@ (20024cec <HAL_PIN_Set+0x334>)
20024b7a:	f1a4 0e0e 	sub.w	lr, r4, #14
20024b7e:	3b08      	subs	r3, #8
20024b80:	fa0e f303 	lsl.w	r3, lr, r3
20024b84:	f8df e178 	ldr.w	lr, [pc, #376]	@ 20024d00 <HAL_PIN_Set+0x348>
20024b88:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024b8c:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024b90:	4043      	eors	r3, r0
20024b92:	ea03 030c 	and.w	r3, r3, ip
20024b96:	4043      	eors	r3, r0
20024b98:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024b9c:	e7b7      	b.n	20024b0e <HAL_PIN_Set+0x156>
20024b9e:	f46f 7ef8 	mvn.w	lr, #496	@ 0x1f0
20024ba2:	eb01 030e 	add.w	r3, r1, lr
20024ba6:	b29a      	uxth	r2, r3
20024ba8:	2a09      	cmp	r2, #9
20024baa:	d82a      	bhi.n	20024c02 <HAL_PIN_Set+0x24a>
20024bac:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024bb0:	d216      	bcs.n	20024be0 <HAL_PIN_Set+0x228>
20024bb2:	0859      	lsrs	r1, r3, #1
20024bb4:	f013 0f01 	tst.w	r3, #1
20024bb8:	4b4d      	ldr	r3, [pc, #308]	@ (20024cf0 <HAL_PIN_Set+0x338>)
20024bba:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024bbe:	4a4d      	ldr	r2, [pc, #308]	@ (20024cf4 <HAL_PIN_Set+0x33c>)
20024bc0:	bf18      	it	ne
20024bc2:	461a      	movne	r2, r3
20024bc4:	00c9      	lsls	r1, r1, #3
20024bc6:	4088      	lsls	r0, r1
20024bc8:	f8d2 c000 	ldr.w	ip, [r2]
20024bcc:	f1a4 030e 	sub.w	r3, r4, #14
20024bd0:	408b      	lsls	r3, r1
20024bd2:	ea83 030c 	eor.w	r3, r3, ip
20024bd6:	4003      	ands	r3, r0
20024bd8:	ea83 030c 	eor.w	r3, r3, ip
20024bdc:	6013      	str	r3, [r2, #0]
20024bde:	e796      	b.n	20024b0e <HAL_PIN_Set+0x156>
20024be0:	d007      	beq.n	20024bf2 <HAL_PIN_Set+0x23a>
20024be2:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024be6:	4299      	cmp	r1, r3
20024be8:	d107      	bne.n	20024bfa <HAL_PIN_Set+0x242>
20024bea:	2100      	movs	r1, #0
20024bec:	203f      	movs	r0, #63	@ 0x3f
20024bee:	4a42      	ldr	r2, [pc, #264]	@ (20024cf8 <HAL_PIN_Set+0x340>)
20024bf0:	e7ea      	b.n	20024bc8 <HAL_PIN_Set+0x210>
20024bf2:	2110      	movs	r1, #16
20024bf4:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024bf8:	e7f9      	b.n	20024bee <HAL_PIN_Set+0x236>
20024bfa:	2108      	movs	r1, #8
20024bfc:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024c00:	e7f5      	b.n	20024bee <HAL_PIN_Set+0x236>
20024c02:	f46f 7c58 	mvn.w	ip, #864	@ 0x360
20024c06:	eb01 030c 	add.w	r3, r1, ip
20024c0a:	b29b      	uxth	r3, r3
20024c0c:	2b05      	cmp	r3, #5
20024c0e:	f63f af29 	bhi.w	20024a64 <HAL_PIN_Set+0xac>
20024c12:	2803      	cmp	r0, #3
20024c14:	d84c      	bhi.n	20024cb0 <HAL_PIN_Set+0x2f8>
20024c16:	f104 4380 	add.w	r3, r4, #1073741824	@ 0x40000000
20024c1a:	f2a1 3262 	subw	r2, r1, #866	@ 0x362
20024c1e:	f8df c0dc 	ldr.w	ip, [pc, #220]	@ 20024cfc <HAL_PIN_Set+0x344>
20024c22:	3b26      	subs	r3, #38	@ 0x26
20024c24:	2a04      	cmp	r2, #4
20024c26:	d815      	bhi.n	20024c54 <HAL_PIN_Set+0x29c>
20024c28:	e8df f002 	tbb	[pc, r2]
20024c2c:	31032a38 	.word	0x31032a38
20024c30:	23          	.byte	0x23
20024c31:	00          	.byte	0x00
20024c32:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
20024c36:	f04f 4ae0 	mov.w	sl, #1879048192	@ 0x70000000
20024c3a:	f04f 5e00 	mov.w	lr, #536870912	@ 0x20000000
20024c3e:	f8df 90c4 	ldr.w	r9, [pc, #196]	@ 20024d04 <HAL_PIN_Set+0x34c>
20024c42:	f8d9 0004 	ldr.w	r0, [r9, #4]
20024c46:	ea20 000a 	bic.w	r0, r0, sl
20024c4a:	ea40 000e 	orr.w	r0, r0, lr
20024c4e:	f8c9 0004 	str.w	r0, [r9, #4]
20024c52:	e000      	b.n	20024c56 <HAL_PIN_Set+0x29e>
20024c54:	2200      	movs	r2, #0
20024c56:	f85c 0023 	ldr.w	r0, [ip, r3, lsl #2]
20024c5a:	f420 40e0 	bic.w	r0, r0, #28672	@ 0x7000
20024c5e:	4302      	orrs	r2, r0
20024c60:	f84c 2023 	str.w	r2, [ip, r3, lsl #2]
20024c64:	f85c 2023 	ldr.w	r2, [ip, r3, lsl #2]
20024c68:	f042 0202 	orr.w	r2, r2, #2
20024c6c:	f84c 2023 	str.w	r2, [ip, r3, lsl #2]
20024c70:	e6f8      	b.n	20024a64 <HAL_PIN_Set+0xac>
20024c72:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
20024c76:	f04f 4ae0 	mov.w	sl, #1879048192	@ 0x70000000
20024c7a:	f04f 5e40 	mov.w	lr, #805306368	@ 0x30000000
20024c7e:	e7de      	b.n	20024c3e <HAL_PIN_Set+0x286>
20024c80:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
20024c84:	f04f 6a60 	mov.w	sl, #234881024	@ 0xe000000
20024c88:	f04f 6e80 	mov.w	lr, #67108864	@ 0x4000000
20024c8c:	e7d7      	b.n	20024c3e <HAL_PIN_Set+0x286>
20024c8e:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
20024c92:	f04f 6a60 	mov.w	sl, #234881024	@ 0xe000000
20024c96:	f04f 6ec0 	mov.w	lr, #100663296	@ 0x6000000
20024c9a:	e7d0      	b.n	20024c3e <HAL_PIN_Set+0x286>
20024c9c:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20024ca0:	e7d9      	b.n	20024c56 <HAL_PIN_Set+0x29e>
20024ca2:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024ca6:	b29b      	uxth	r3, r3
20024ca8:	2b07      	cmp	r3, #7
20024caa:	f63f aedb 	bhi.w	20024a64 <HAL_PIN_Set+0xac>
20024cae:	e6ae      	b.n	20024a0e <HAL_PIN_Set+0x56>
20024cb0:	2100      	movs	r1, #0
20024cb2:	e6d7      	b.n	20024a64 <HAL_PIN_Set+0xac>
20024cb4:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024cb8:	3e01      	subs	r6, #1
20024cba:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024cbe:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024cc2:	f009 090f 	and.w	r9, r9, #15
20024cc6:	ea45 0509 	orr.w	r5, r5, r9
20024cca:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024cce:	431d      	orrs	r5, r3
20024cd0:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024cd4:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024cd8:	e6ed      	b.n	20024ab6 <HAL_PIN_Set+0xfe>
20024cda:	bf00      	nop
20024cdc:	5000b048 	.word	0x5000b048
20024ce0:	500caf58 	.word	0x500caf58
20024ce4:	5000b064 	.word	0x5000b064
20024ce8:	5000b000 	.word	0x5000b000
20024cec:	5000b070 	.word	0x5000b070
20024cf0:	5000b07c 	.word	0x5000b07c
20024cf4:	5000b078 	.word	0x5000b078
20024cf8:	5000b080 	.word	0x5000b080
20024cfc:	500cb05c 	.word	0x500cb05c
20024d00:	2002b7c8 	.word	0x2002b7c8
20024d04:	500c0000 	.word	0x500c0000

20024d08 <HAL_PIN_Set_Analog>:
20024d08:	283a      	cmp	r0, #58	@ 0x3a
20024d0a:	b538      	push	{r3, r4, r5, lr}
20024d0c:	4604      	mov	r4, r0
20024d0e:	dd25      	ble.n	20024d5c <HAL_PIN_Set_Analog+0x54>
20024d10:	2840      	cmp	r0, #64	@ 0x40
20024d12:	dc16      	bgt.n	20024d42 <HAL_PIN_Set_Analog+0x3a>
20024d14:	2500      	movs	r5, #0
20024d16:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024d1a:	4628      	mov	r0, r5
20024d1c:	f7ff fe20 	bl	20024960 <HAL_PIN_Get_Base>
20024d20:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024d24:	3b01      	subs	r3, #1
20024d26:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024d2a:	462a      	mov	r2, r5
20024d2c:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024d30:	f041 010f 	orr.w	r1, r1, #15
20024d34:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024d38:	2100      	movs	r1, #0
20024d3a:	4620      	mov	r0, r4
20024d3c:	f7ff fdd6 	bl	200248ec <HAL_PIN_SetAonPE>
20024d40:	e00a      	b.n	20024d58 <HAL_PIN_Set_Analog+0x50>
20024d42:	4a08      	ldr	r2, [pc, #32]	@ (20024d64 <HAL_PIN_Set_Analog+0x5c>)
20024d44:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024d48:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024d4c:	f023 030e 	bic.w	r3, r3, #14
20024d50:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024d54:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024d58:	2000      	movs	r0, #0
20024d5a:	bd38      	pop	{r3, r4, r5, pc}
20024d5c:	4601      	mov	r1, r0
20024d5e:	2501      	movs	r5, #1
20024d60:	e7db      	b.n	20024d1a <HAL_PIN_Set_Analog+0x12>
20024d62:	bf00      	nop
20024d64:	500caf58 	.word	0x500caf58

20024d68 <HAL_PMU_EnableDLL>:
20024d68:	4b05      	ldr	r3, [pc, #20]	@ (20024d80 <HAL_PMU_EnableDLL+0x18>)
20024d6a:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024d6c:	b120      	cbz	r0, 20024d78 <HAL_PMU_EnableDLL+0x10>
20024d6e:	f042 0220 	orr.w	r2, r2, #32
20024d72:	2000      	movs	r0, #0
20024d74:	669a      	str	r2, [r3, #104]	@ 0x68
20024d76:	4770      	bx	lr
20024d78:	f022 0220 	bic.w	r2, r2, #32
20024d7c:	e7f9      	b.n	20024d72 <HAL_PMU_EnableDLL+0xa>
20024d7e:	bf00      	nop
20024d80:	500ca000 	.word	0x500ca000

20024d84 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024d84:	b507      	push	{r0, r1, r2, lr}
20024d86:	4a13      	ldr	r2, [pc, #76]	@ (20024dd4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024d88:	4913      	ldr	r1, [pc, #76]	@ (20024dd8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024d8a:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024d8e:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024d92:	7892      	ldrb	r2, [r2, #2]
20024d94:	2802      	cmp	r0, #2
20024d96:	f362 0303 	bfi	r3, r2, #0, #4
20024d9a:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024d9e:	f10d 0007 	add.w	r0, sp, #7
20024da2:	d111      	bne.n	20024dc8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024da4:	f007 fac6 	bl	2002c334 <HAL_PMU_GetHpsysVoutRef>
20024da8:	b110      	cbz	r0, 20024db0 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024daa:	230b      	movs	r3, #11
20024dac:	f88d 3007 	strb.w	r3, [sp, #7]
20024db0:	4a09      	ldr	r2, [pc, #36]	@ (20024dd8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024db2:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024db6:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024dba:	f361 0303 	bfi	r3, r1, #0, #4
20024dbe:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024dc2:	b003      	add	sp, #12
20024dc4:	f85d fb04 	ldr.w	pc, [sp], #4
20024dc8:	f007 fac0 	bl	2002c34c <HAL_PMU_GetHpsysVoutRef2>
20024dcc:	2800      	cmp	r0, #0
20024dce:	d0ef      	beq.n	20024db0 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024dd0:	230d      	movs	r3, #13
20024dd2:	e7eb      	b.n	20024dac <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024dd4:	2002b7e4 	.word	0x2002b7e4
20024dd8:	500ca000 	.word	0x500ca000

20024ddc <HAL_RCC_HCPU_GetClockSrc>:
20024ddc:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024de0:	280d      	cmp	r0, #13
20024de2:	6a1a      	ldr	r2, [r3, #32]
20024de4:	d80d      	bhi.n	20024e02 <HAL_RCC_HCPU_GetClockSrc+0x26>
20024de6:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024dea:	40c3      	lsrs	r3, r0
20024dec:	f013 0f01 	tst.w	r3, #1
20024df0:	bf0c      	ite	eq
20024df2:	2301      	moveq	r3, #1
20024df4:	2303      	movne	r3, #3
20024df6:	4083      	lsls	r3, r0
20024df8:	4013      	ands	r3, r2
20024dfa:	fa23 f000 	lsr.w	r0, r3, r0
20024dfe:	b2c0      	uxtb	r0, r0
20024e00:	4770      	bx	lr
20024e02:	2301      	movs	r3, #1
20024e04:	e7f7      	b.n	20024df6 <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20024e08 <HAL_RCC_HCPU_GetDLLFreq>:
20024e08:	2801      	cmp	r0, #1
20024e0a:	d003      	beq.n	20024e14 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20024e0c:	2802      	cmp	r0, #2
20024e0e:	d00e      	beq.n	20024e2e <HAL_RCC_HCPU_GetDLLFreq+0x26>
20024e10:	2000      	movs	r0, #0
20024e12:	4770      	bx	lr
20024e14:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e18:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20024e1a:	b163      	cbz	r3, 20024e36 <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20024e1c:	f013 0001 	ands.w	r0, r3, #1
20024e20:	d00a      	beq.n	20024e38 <HAL_RCC_HCPU_GetDLLFreq+0x30>
20024e22:	4806      	ldr	r0, [pc, #24]	@ (20024e3c <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20024e24:	f3c3 0383 	ubfx	r3, r3, #2, #4
20024e28:	fb03 0000 	mla	r0, r3, r0, r0
20024e2c:	4770      	bx	lr
20024e2e:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024e32:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20024e34:	e7f1      	b.n	20024e1a <HAL_RCC_HCPU_GetDLLFreq+0x12>
20024e36:	4618      	mov	r0, r3
20024e38:	4770      	bx	lr
20024e3a:	bf00      	nop
20024e3c:	016e3600 	.word	0x016e3600

20024e40 <HAL_RCC_HCPU_GetDLL1Freq>:
20024e40:	2001      	movs	r0, #1
20024e42:	f7ff bfe1 	b.w	20024e08 <HAL_RCC_HCPU_GetDLLFreq>

20024e46 <HAL_RCC_HCPU_GetDLL2Freq>:
20024e46:	2002      	movs	r0, #2
20024e48:	f7ff bfde 	b.w	20024e08 <HAL_RCC_HCPU_GetDLLFreq>

20024e4c <HAL_RCC_HCPU_GetDLL3Freq>:
20024e4c:	2000      	movs	r0, #0
20024e4e:	4770      	bx	lr

20024e50 <HAL_RCC_HCPU_EnableDLL>:
20024e50:	4b23      	ldr	r3, [pc, #140]	@ (20024ee0 <HAL_RCC_HCPU_EnableDLL+0x90>)
20024e52:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20024e56:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20024e5a:	4299      	cmp	r1, r3
20024e5c:	b510      	push	{r4, lr}
20024e5e:	d83c      	bhi.n	20024eda <HAL_RCC_HCPU_EnableDLL+0x8a>
20024e60:	2801      	cmp	r0, #1
20024e62:	d002      	beq.n	20024e6a <HAL_RCC_HCPU_EnableDLL+0x1a>
20024e64:	2802      	cmp	r0, #2
20024e66:	d036      	beq.n	20024ed6 <HAL_RCC_HCPU_EnableDLL+0x86>
20024e68:	e7fe      	b.n	20024e68 <HAL_RCC_HCPU_EnableDLL+0x18>
20024e6a:	4c1e      	ldr	r4, [pc, #120]	@ (20024ee4 <HAL_RCC_HCPU_EnableDLL+0x94>)
20024e6c:	4b1e      	ldr	r3, [pc, #120]	@ (20024ee8 <HAL_RCC_HCPU_EnableDLL+0x98>)
20024e6e:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024e72:	0790      	lsls	r0, r2, #30
20024e74:	bf58      	it	pl
20024e76:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024e7a:	f04f 0000 	mov.w	r0, #0
20024e7e:	bf5c      	itt	pl
20024e80:	f042 0202 	orrpl.w	r2, r2, #2
20024e84:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024e88:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024e8c:	07d2      	lsls	r2, r2, #31
20024e8e:	bf5e      	ittt	pl
20024e90:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024e94:	f042 0201 	orrpl.w	r2, r2, #1
20024e98:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024e9c:	4a13      	ldr	r2, [pc, #76]	@ (20024eec <HAL_RCC_HCPU_EnableDLL+0x9c>)
20024e9e:	6823      	ldr	r3, [r4, #0]
20024ea0:	fbb1 f1f2 	udiv	r1, r1, r2
20024ea4:	f023 0301 	bic.w	r3, r3, #1
20024ea8:	6023      	str	r3, [r4, #0]
20024eaa:	6823      	ldr	r3, [r4, #0]
20024eac:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20024eb0:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20024eb4:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20024eb8:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20024ebc:	f043 0301 	orr.w	r3, r3, #1
20024ec0:	6023      	str	r3, [r4, #0]
20024ec2:	f7fd f876 	bl	20021fb2 <HAL_Delay_us>
20024ec6:	200a      	movs	r0, #10
20024ec8:	f7fd f873 	bl	20021fb2 <HAL_Delay_us>
20024ecc:	6823      	ldr	r3, [r4, #0]
20024ece:	2b00      	cmp	r3, #0
20024ed0:	dafc      	bge.n	20024ecc <HAL_RCC_HCPU_EnableDLL+0x7c>
20024ed2:	2000      	movs	r0, #0
20024ed4:	bd10      	pop	{r4, pc}
20024ed6:	4c06      	ldr	r4, [pc, #24]	@ (20024ef0 <HAL_RCC_HCPU_EnableDLL+0xa0>)
20024ed8:	e7c8      	b.n	20024e6c <HAL_RCC_HCPU_EnableDLL+0x1c>
20024eda:	2001      	movs	r0, #1
20024edc:	e7fa      	b.n	20024ed4 <HAL_RCC_HCPU_EnableDLL+0x84>
20024ede:	bf00      	nop
20024ee0:	15752a00 	.word	0x15752a00
20024ee4:	5000002c 	.word	0x5000002c
20024ee8:	5000b000 	.word	0x5000b000
20024eec:	016e3600 	.word	0x016e3600
20024ef0:	50000030 	.word	0x50000030

20024ef4 <HAL_RCC_HCPU_EnableDLL1>:
20024ef4:	4601      	mov	r1, r0
20024ef6:	2001      	movs	r0, #1
20024ef8:	f7ff bfaa 	b.w	20024e50 <HAL_RCC_HCPU_EnableDLL>

20024efc <HAL_RCC_HCPU_EnableDLL2>:
20024efc:	4601      	mov	r1, r0
20024efe:	2002      	movs	r0, #2
20024f00:	f7ff bfa6 	b.w	20024e50 <HAL_RCC_HCPU_EnableDLL>

20024f04 <HAL_RCC_HCPU_DisableDLL1>:
20024f04:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024f08:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20024f0a:	2000      	movs	r0, #0
20024f0c:	f023 0301 	bic.w	r3, r3, #1
20024f10:	62d3      	str	r3, [r2, #44]	@ 0x2c
20024f12:	4770      	bx	lr

20024f14 <HAL_RCC_GetSysCLKFreq>:
20024f14:	2801      	cmp	r0, #1
20024f16:	d108      	bne.n	20024f2a <HAL_RCC_GetSysCLKFreq+0x16>
20024f18:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f1c:	6a1b      	ldr	r3, [r3, #32]
20024f1e:	f003 0303 	and.w	r3, r3, #3
20024f22:	2b03      	cmp	r3, #3
20024f24:	d101      	bne.n	20024f2a <HAL_RCC_GetSysCLKFreq+0x16>
20024f26:	f7ff bf8b 	b.w	20024e40 <HAL_RCC_HCPU_GetDLL1Freq>
20024f2a:	4801      	ldr	r0, [pc, #4]	@ (20024f30 <HAL_RCC_GetSysCLKFreq+0x1c>)
20024f2c:	4770      	bx	lr
20024f2e:	bf00      	nop
20024f30:	02dc6c00 	.word	0x02dc6c00

20024f34 <HAL_RCC_GetHCLKFreq>:
20024f34:	1e02      	subs	r2, r0, #0
20024f36:	bf08      	it	eq
20024f38:	2201      	moveq	r2, #1
20024f3a:	b508      	push	{r3, lr}
20024f3c:	4610      	mov	r0, r2
20024f3e:	f7ff ffe9 	bl	20024f14 <HAL_RCC_GetSysCLKFreq>
20024f42:	2a01      	cmp	r2, #1
20024f44:	d002      	beq.n	20024f4c <HAL_RCC_GetHCLKFreq+0x18>
20024f46:	2a02      	cmp	r2, #2
20024f48:	d00a      	beq.n	20024f60 <HAL_RCC_GetHCLKFreq+0x2c>
20024f4a:	e7fe      	b.n	20024f4a <HAL_RCC_GetHCLKFreq+0x16>
20024f4c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f50:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20024f52:	b2db      	uxtb	r3, r3
20024f54:	2b01      	cmp	r3, #1
20024f56:	bfb8      	it	lt
20024f58:	2301      	movlt	r3, #1
20024f5a:	fbb0 f0f3 	udiv	r0, r0, r3
20024f5e:	bd08      	pop	{r3, pc}
20024f60:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20024f64:	695b      	ldr	r3, [r3, #20]
20024f66:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20024f6a:	e7f3      	b.n	20024f54 <HAL_RCC_GetHCLKFreq+0x20>

20024f6c <HAL_RCC_HCPU_ClockSelect>:
20024f6c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f70:	b510      	push	{r4, lr}
20024f72:	280d      	cmp	r0, #13
20024f74:	6a1b      	ldr	r3, [r3, #32]
20024f76:	d818      	bhi.n	20024faa <HAL_RCC_HCPU_ClockSelect+0x3e>
20024f78:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20024f7c:	40c2      	lsrs	r2, r0
20024f7e:	f012 0f01 	tst.w	r2, #1
20024f82:	bf0c      	ite	eq
20024f84:	2201      	moveq	r2, #1
20024f86:	2203      	movne	r2, #3
20024f88:	fa02 f400 	lsl.w	r4, r2, r0
20024f8c:	4011      	ands	r1, r2
20024f8e:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024f92:	ea23 0304 	bic.w	r3, r3, r4
20024f96:	4081      	lsls	r1, r0
20024f98:	430b      	orrs	r3, r1
20024f9a:	6213      	str	r3, [r2, #32]
20024f9c:	b920      	cbnz	r0, 20024fa8 <HAL_RCC_HCPU_ClockSelect+0x3c>
20024f9e:	2001      	movs	r0, #1
20024fa0:	f7ff ffc8 	bl	20024f34 <HAL_RCC_GetHCLKFreq>
20024fa4:	4b02      	ldr	r3, [pc, #8]	@ (20024fb0 <HAL_RCC_HCPU_ClockSelect+0x44>)
20024fa6:	6018      	str	r0, [r3, #0]
20024fa8:	bd10      	pop	{r4, pc}
20024faa:	2201      	movs	r2, #1
20024fac:	e7ec      	b.n	20024f88 <HAL_RCC_HCPU_ClockSelect+0x1c>
20024fae:	bf00      	nop
20024fb0:	20042c10 	.word	0x20042c10

20024fb4 <HAL_RCC_HCPU_SetDiv>:
20024fb4:	2800      	cmp	r0, #0
20024fb6:	bfd8      	it	le
20024fb8:	2000      	movle	r0, #0
20024fba:	b508      	push	{r3, lr}
20024fbc:	bfcc      	ite	gt
20024fbe:	23ff      	movgt	r3, #255	@ 0xff
20024fc0:	4603      	movle	r3, r0
20024fc2:	2900      	cmp	r1, #0
20024fc4:	db12      	blt.n	20024fec <HAL_RCC_HCPU_SetDiv+0x38>
20024fc6:	2a00      	cmp	r2, #0
20024fc8:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20024fcc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20024fd0:	da0e      	bge.n	20024ff0 <HAL_RCC_HCPU_SetDiv+0x3c>
20024fd2:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
20024fd6:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
20024fd8:	ea22 0303 	bic.w	r3, r2, r3
20024fdc:	4303      	orrs	r3, r0
20024fde:	624b      	str	r3, [r1, #36]	@ 0x24
20024fe0:	2001      	movs	r0, #1
20024fe2:	f7ff ffa7 	bl	20024f34 <HAL_RCC_GetHCLKFreq>
20024fe6:	4b07      	ldr	r3, [pc, #28]	@ (20025004 <HAL_RCC_HCPU_SetDiv+0x50>)
20024fe8:	6018      	str	r0, [r3, #0]
20024fea:	bd08      	pop	{r3, pc}
20024fec:	2a00      	cmp	r2, #0
20024fee:	db04      	blt.n	20024ffa <HAL_RCC_HCPU_SetDiv+0x46>
20024ff0:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024ff4:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20024ff8:	e7eb      	b.n	20024fd2 <HAL_RCC_HCPU_SetDiv+0x1e>
20024ffa:	2b00      	cmp	r3, #0
20024ffc:	d0f0      	beq.n	20024fe0 <HAL_RCC_HCPU_SetDiv+0x2c>
20024ffe:	23ff      	movs	r3, #255	@ 0xff
20025000:	e7e7      	b.n	20024fd2 <HAL_RCC_HCPU_SetDiv+0x1e>
20025002:	bf00      	nop
20025004:	20042c10 	.word	0x20042c10

20025008 <HAL_RCC_HCPU_SwitchDvfsD2S>:
20025008:	b570      	push	{r4, r5, r6, lr}
2002500a:	460c      	mov	r4, r1
2002500c:	4d19      	ldr	r5, [pc, #100]	@ (20025074 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
2002500e:	4606      	mov	r6, r0
20025010:	f7ff feb8 	bl	20024d84 <HAL_RCC_HCPU_ConfigSxModeVolt>
20025014:	692b      	ldr	r3, [r5, #16]
20025016:	20fa      	movs	r0, #250	@ 0xfa
20025018:	f023 0304 	bic.w	r3, r3, #4
2002501c:	612b      	str	r3, [r5, #16]
2002501e:	f7fc ffc8 	bl	20021fb2 <HAL_Delay_us>
20025022:	2c30      	cmp	r4, #48	@ 0x30
20025024:	d80d      	bhi.n	20025042 <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20025026:	2100      	movs	r1, #0
20025028:	4608      	mov	r0, r1
2002502a:	f7ff ff9f 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
2002502e:	2030      	movs	r0, #48	@ 0x30
20025030:	2204      	movs	r2, #4
20025032:	2100      	movs	r1, #0
20025034:	fbb0 f0f4 	udiv	r0, r0, r4
20025038:	f7ff ffbc 	bl	20024fb4 <HAL_RCC_HCPU_SetDiv>
2002503c:	2400      	movs	r4, #0
2002503e:	4620      	mov	r0, r4
20025040:	bd70      	pop	{r4, r5, r6, pc}
20025042:	f7fd fcf1 	bl	20022a28 <HAL_HPAON_EnableXT48>
20025046:	480c      	ldr	r0, [pc, #48]	@ (20025078 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20025048:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
2002504c:	6843      	ldr	r3, [r0, #4]
2002504e:	480b      	ldr	r0, [pc, #44]	@ (2002507c <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
20025050:	61eb      	str	r3, [r5, #28]
20025052:	4360      	muls	r0, r4
20025054:	f7ff ff4e 	bl	20024ef4 <HAL_RCC_HCPU_EnableDLL1>
20025058:	4604      	mov	r4, r0
2002505a:	2800      	cmp	r0, #0
2002505c:	d1ef      	bne.n	2002503e <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
2002505e:	2101      	movs	r1, #1
20025060:	2206      	movs	r2, #6
20025062:	4608      	mov	r0, r1
20025064:	f7ff ffa6 	bl	20024fb4 <HAL_RCC_HCPU_SetDiv>
20025068:	2103      	movs	r1, #3
2002506a:	4620      	mov	r0, r4
2002506c:	f7ff ff7e 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20025070:	e7e4      	b.n	2002503c <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
20025072:	bf00      	nop
20025074:	5000b000 	.word	0x5000b000
20025078:	2002b7e4 	.word	0x2002b7e4
2002507c:	000f4240 	.word	0x000f4240

20025080 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
20025080:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20025084:	4c1d      	ldr	r4, [pc, #116]	@ (200250fc <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20025086:	4f1e      	ldr	r7, [pc, #120]	@ (20025100 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20025088:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
2002508c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
2002508e:	7892      	ldrb	r2, [r2, #2]
20025090:	4605      	mov	r5, r0
20025092:	f362 5317 	bfi	r3, r2, #20, #4
20025096:	ea4f 08c0 	mov.w	r8, r0, lsl #3
2002509a:	633b      	str	r3, [r7, #48]	@ 0x30
2002509c:	f10d 0007 	add.w	r0, sp, #7
200250a0:	460e      	mov	r6, r1
200250a2:	f007 f947 	bl	2002c334 <HAL_PMU_GetHpsysVoutRef>
200250a6:	b110      	cbz	r0, 200250ae <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
200250a8:	230b      	movs	r3, #11
200250aa:	f88d 3007 	strb.w	r3, [sp, #7]
200250ae:	f89d 1007 	ldrb.w	r1, [sp, #7]
200250b2:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
200250b6:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
200250b8:	440a      	add	r2, r1
200250ba:	2100      	movs	r1, #0
200250bc:	f362 0385 	bfi	r3, r2, #2, #4
200250c0:	4608      	mov	r0, r1
200250c2:	64fb      	str	r3, [r7, #76]	@ 0x4c
200250c4:	f7ff ff52 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
200250c8:	2e30      	cmp	r6, #48	@ 0x30
200250ca:	d900      	bls.n	200250ce <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
200250cc:	e7fe      	b.n	200250cc <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
200250ce:	2030      	movs	r0, #48	@ 0x30
200250d0:	2204      	movs	r2, #4
200250d2:	2100      	movs	r1, #0
200250d4:	fbb0 f0f6 	udiv	r0, r0, r6
200250d8:	f7ff ff6c 	bl	20024fb4 <HAL_RCC_HCPU_SetDiv>
200250dc:	f7ff ff12 	bl	20024f04 <HAL_RCC_HCPU_DisableDLL1>
200250e0:	f7fd fcae 	bl	20022a40 <HAL_HPAON_DisableXT48>
200250e4:	4444      	add	r4, r8
200250e6:	4b07      	ldr	r3, [pc, #28]	@ (20025104 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
200250e8:	6862      	ldr	r2, [r4, #4]
200250ea:	61da      	str	r2, [r3, #28]
200250ec:	691a      	ldr	r2, [r3, #16]
200250ee:	f042 0204 	orr.w	r2, r2, #4
200250f2:	611a      	str	r2, [r3, #16]
200250f4:	b002      	add	sp, #8
200250f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200250fa:	bf00      	nop
200250fc:	2002b7e4 	.word	0x2002b7e4
20025100:	500ca000 	.word	0x500ca000
20025104:	5000b000 	.word	0x5000b000

20025108 <HAL_RCC_HCPU_ConfigDvfs>:
20025108:	b570      	push	{r4, r5, r6, lr}
2002510a:	4e31      	ldr	r6, [pc, #196]	@ (200251d0 <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
2002510c:	4605      	mov	r5, r0
2002510e:	7833      	ldrb	r3, [r6, #0]
20025110:	460c      	mov	r4, r1
20025112:	2b01      	cmp	r3, #1
20025114:	d943      	bls.n	2002519e <HAL_RCC_HCPU_ConfigDvfs+0x96>
20025116:	3b02      	subs	r3, #2
20025118:	2b01      	cmp	r3, #1
2002511a:	d902      	bls.n	20025122 <HAL_RCC_HCPU_ConfigDvfs+0x1a>
2002511c:	2501      	movs	r5, #1
2002511e:	4628      	mov	r0, r5
20025120:	bd70      	pop	{r4, r5, r6, pc}
20025122:	4b2c      	ldr	r3, [pc, #176]	@ (200251d4 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20025124:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
20025128:	f7ff fe8d 	bl	20024e46 <HAL_RCC_HCPU_GetDLL2Freq>
2002512c:	4290      	cmp	r0, r2
2002512e:	d8f5      	bhi.n	2002511c <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025130:	2901      	cmp	r1, #1
20025132:	d805      	bhi.n	20025140 <HAL_RCC_HCPU_ConfigDvfs+0x38>
20025134:	4629      	mov	r1, r5
20025136:	4620      	mov	r0, r4
20025138:	f7ff ffa2 	bl	20025080 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
2002513c:	2500      	movs	r5, #0
2002513e:	e035      	b.n	200251ac <HAL_RCC_HCPU_ConfigDvfs+0xa4>
20025140:	2100      	movs	r1, #0
20025142:	4608      	mov	r0, r1
20025144:	f7ff ff12 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20025148:	4620      	mov	r0, r4
2002514a:	f7ff fe1b 	bl	20024d84 <HAL_RCC_HCPU_ConfigSxModeVolt>
2002514e:	20fa      	movs	r0, #250	@ 0xfa
20025150:	f7fc ff2f 	bl	20021fb2 <HAL_Delay_us>
20025154:	f7ff fed6 	bl	20024f04 <HAL_RCC_HCPU_DisableDLL1>
20025158:	2d30      	cmp	r5, #48	@ 0x30
2002515a:	d80d      	bhi.n	20025178 <HAL_RCC_HCPU_ConfigDvfs+0x70>
2002515c:	f7fd fc70 	bl	20022a40 <HAL_HPAON_DisableXT48>
20025160:	2100      	movs	r1, #0
20025162:	4608      	mov	r0, r1
20025164:	f7ff ff02 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
20025168:	2204      	movs	r2, #4
2002516a:	2100      	movs	r1, #0
2002516c:	2030      	movs	r0, #48	@ 0x30
2002516e:	fbb0 f0f5 	udiv	r0, r0, r5
20025172:	f7ff ff1f 	bl	20024fb4 <HAL_RCC_HCPU_SetDiv>
20025176:	e7e1      	b.n	2002513c <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025178:	f7fd fc56 	bl	20022a28 <HAL_HPAON_EnableXT48>
2002517c:	4816      	ldr	r0, [pc, #88]	@ (200251d8 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
2002517e:	4368      	muls	r0, r5
20025180:	f7ff feb8 	bl	20024ef4 <HAL_RCC_HCPU_EnableDLL1>
20025184:	4605      	mov	r5, r0
20025186:	2800      	cmp	r0, #0
20025188:	d1c8      	bne.n	2002511c <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002518a:	2101      	movs	r1, #1
2002518c:	2206      	movs	r2, #6
2002518e:	4608      	mov	r0, r1
20025190:	f7ff ff10 	bl	20024fb4 <HAL_RCC_HCPU_SetDiv>
20025194:	2103      	movs	r1, #3
20025196:	4628      	mov	r0, r5
20025198:	f7ff fee8 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
2002519c:	e7ce      	b.n	2002513c <HAL_RCC_HCPU_ConfigDvfs+0x34>
2002519e:	2901      	cmp	r1, #1
200251a0:	d909      	bls.n	200251b6 <HAL_RCC_HCPU_ConfigDvfs+0xae>
200251a2:	4601      	mov	r1, r0
200251a4:	4620      	mov	r0, r4
200251a6:	f7ff ff2f 	bl	20025008 <HAL_RCC_HCPU_SwitchDvfsD2S>
200251aa:	4605      	mov	r5, r0
200251ac:	2000      	movs	r0, #0
200251ae:	7034      	strb	r4, [r6, #0]
200251b0:	f7fc feff 	bl	20021fb2 <HAL_Delay_us>
200251b4:	e7b3      	b.n	2002511e <HAL_RCC_HCPU_ConfigDvfs+0x16>
200251b6:	428b      	cmp	r3, r1
200251b8:	d103      	bne.n	200251c2 <HAL_RCC_HCPU_ConfigDvfs+0xba>
200251ba:	f04f 32ff 	mov.w	r2, #4294967295
200251be:	4611      	mov	r1, r2
200251c0:	e7d4      	b.n	2002516c <HAL_RCC_HCPU_ConfigDvfs+0x64>
200251c2:	2190      	movs	r1, #144	@ 0x90
200251c4:	2002      	movs	r0, #2
200251c6:	f7ff ff1f 	bl	20025008 <HAL_RCC_HCPU_SwitchDvfsD2S>
200251ca:	2800      	cmp	r0, #0
200251cc:	d1a6      	bne.n	2002511c <HAL_RCC_HCPU_ConfigDvfs+0x14>
200251ce:	e7b1      	b.n	20025134 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
200251d0:	20042c14 	.word	0x20042c14
200251d4:	2002b7d4 	.word	0x2002b7d4
200251d8:	000f4240 	.word	0x000f4240

200251dc <HAL_RCC_Reset_and_Halt_LCPU>:
200251dc:	4a13      	ldr	r2, [pc, #76]	@ (2002522c <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
200251de:	6813      	ldr	r3, [r2, #0]
200251e0:	0759      	lsls	r1, r3, #29
200251e2:	d421      	bmi.n	20025228 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
200251e4:	6811      	ldr	r1, [r2, #0]
200251e6:	2800      	cmp	r0, #0
200251e8:	bf0c      	ite	eq
200251ea:	2301      	moveq	r3, #1
200251ec:	f04f 33ff 	movne.w	r3, #4294967295
200251f0:	f041 0104 	orr.w	r1, r1, #4
200251f4:	6011      	str	r1, [r2, #0]
200251f6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
200251fa:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
200251fe:	6013      	str	r3, [r2, #0]
20025200:	6811      	ldr	r1, [r2, #0]
20025202:	2900      	cmp	r1, #0
20025204:	d0fc      	beq.n	20025200 <HAL_RCC_Reset_and_Halt_LCPU+0x24>
20025206:	4a09      	ldr	r2, [pc, #36]	@ (2002522c <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20025208:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2002520a:	06c8      	lsls	r0, r1, #27
2002520c:	d506      	bpl.n	2002521c <HAL_RCC_Reset_and_Halt_LCPU+0x40>
2002520e:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025210:	f041 0102 	orr.w	r1, r1, #2
20025214:	6411      	str	r1, [r2, #64]	@ 0x40
20025216:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20025218:	06c9      	lsls	r1, r1, #27
2002521a:	d4fc      	bmi.n	20025216 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
2002521c:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
20025220:	680a      	ldr	r2, [r1, #0]
20025222:	ea22 0303 	bic.w	r3, r2, r3
20025226:	600b      	str	r3, [r1, #0]
20025228:	4770      	bx	lr
2002522a:	bf00      	nop
2002522c:	40040000 	.word	0x40040000

20025230 <HAL_RCC_HCPU_ConfigHCLK>:
20025230:	28f0      	cmp	r0, #240	@ 0xf0
20025232:	d80d      	bhi.n	20025250 <HAL_RCC_HCPU_ConfigHCLK+0x20>
20025234:	2890      	cmp	r0, #144	@ 0x90
20025236:	d807      	bhi.n	20025248 <HAL_RCC_HCPU_ConfigHCLK+0x18>
20025238:	2830      	cmp	r0, #48	@ 0x30
2002523a:	d807      	bhi.n	2002524c <HAL_RCC_HCPU_ConfigHCLK+0x1c>
2002523c:	2818      	cmp	r0, #24
2002523e:	bf94      	ite	ls
20025240:	2100      	movls	r1, #0
20025242:	2101      	movhi	r1, #1
20025244:	f7ff bf60 	b.w	20025108 <HAL_RCC_HCPU_ConfigDvfs>
20025248:	2103      	movs	r1, #3
2002524a:	e7fb      	b.n	20025244 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2002524c:	2102      	movs	r1, #2
2002524e:	e7f9      	b.n	20025244 <HAL_RCC_HCPU_ConfigHCLK+0x14>
20025250:	2001      	movs	r0, #1
20025252:	4770      	bx	lr

20025254 <spi_flash_get_rdid>:
20025254:	b5f0      	push	{r4, r5, r6, r7, lr}
20025256:	4605      	mov	r5, r0
20025258:	3801      	subs	r0, #1
2002525a:	b2c0      	uxtb	r0, r0
2002525c:	28fd      	cmp	r0, #253	@ 0xfd
2002525e:	d808      	bhi.n	20025272 <spi_flash_get_rdid+0x1e>
20025260:	2400      	movs	r4, #0
20025262:	4f0b      	ldr	r7, [pc, #44]	@ (20025290 <spi_flash_get_rdid+0x3c>)
20025264:	f857 0b04 	ldr.w	r0, [r7], #4
20025268:	7806      	ldrb	r6, [r0, #0]
2002526a:	b926      	cbnz	r6, 20025276 <spi_flash_get_rdid+0x22>
2002526c:	3401      	adds	r4, #1
2002526e:	2c06      	cmp	r4, #6
20025270:	d1f8      	bne.n	20025264 <spi_flash_get_rdid+0x10>
20025272:	2000      	movs	r0, #0
20025274:	e00b      	b.n	2002528e <spi_flash_get_rdid+0x3a>
20025276:	42ae      	cmp	r6, r5
20025278:	d105      	bne.n	20025286 <spi_flash_get_rdid+0x32>
2002527a:	7846      	ldrb	r6, [r0, #1]
2002527c:	4296      	cmp	r6, r2
2002527e:	d102      	bne.n	20025286 <spi_flash_get_rdid+0x32>
20025280:	7886      	ldrb	r6, [r0, #2]
20025282:	428e      	cmp	r6, r1
20025284:	d001      	beq.n	2002528a <spi_flash_get_rdid+0x36>
20025286:	3008      	adds	r0, #8
20025288:	e7ee      	b.n	20025268 <spi_flash_get_rdid+0x14>
2002528a:	b103      	cbz	r3, 2002528e <spi_flash_get_rdid+0x3a>
2002528c:	701c      	strb	r4, [r3, #0]
2002528e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025290:	20042c18 	.word	0x20042c18

20025294 <spi_flash_get_cmd_by_id>:
20025294:	b507      	push	{r0, r1, r2, lr}
20025296:	f10d 0307 	add.w	r3, sp, #7
2002529a:	f7ff ffdb 	bl	20025254 <spi_flash_get_rdid>
2002529e:	4b06      	ldr	r3, [pc, #24]	@ (200252b8 <spi_flash_get_cmd_by_id+0x24>)
200252a0:	b140      	cbz	r0, 200252b4 <spi_flash_get_cmd_by_id+0x20>
200252a2:	f44f 7105 	mov.w	r1, #532	@ 0x214
200252a6:	f89d 2007 	ldrb.w	r2, [sp, #7]
200252aa:	fb01 3002 	mla	r0, r1, r2, r3
200252ae:	b003      	add	sp, #12
200252b0:	f85d fb04 	ldr.w	pc, [sp], #4
200252b4:	4618      	mov	r0, r3
200252b6:	e7fa      	b.n	200252ae <spi_flash_get_cmd_by_id+0x1a>
200252b8:	20042e38 	.word	0x20042e38

200252bc <spi_flash_get_size_by_id>:
200252bc:	b508      	push	{r3, lr}
200252be:	2300      	movs	r3, #0
200252c0:	f7ff ffc8 	bl	20025254 <spi_flash_get_rdid>
200252c4:	b108      	cbz	r0, 200252ca <spi_flash_get_size_by_id+0xe>
200252c6:	6840      	ldr	r0, [r0, #4]
200252c8:	bd08      	pop	{r3, pc}
200252ca:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
200252ce:	e7fb      	b.n	200252c8 <spi_flash_get_size_by_id+0xc>

200252d0 <spi_flash_is_support_dtr>:
200252d0:	b508      	push	{r3, lr}
200252d2:	2300      	movs	r3, #0
200252d4:	f7ff ffbe 	bl	20025254 <spi_flash_get_rdid>
200252d8:	b110      	cbz	r0, 200252e0 <spi_flash_is_support_dtr+0x10>
200252da:	78c0      	ldrb	r0, [r0, #3]
200252dc:	f000 0001 	and.w	r0, r0, #1
200252e0:	bd08      	pop	{r3, pc}
	...

200252e4 <spi_nand_get_rdid>:
200252e4:	b5f0      	push	{r4, r5, r6, r7, lr}
200252e6:	4605      	mov	r5, r0
200252e8:	3801      	subs	r0, #1
200252ea:	b2c0      	uxtb	r0, r0
200252ec:	28fd      	cmp	r0, #253	@ 0xfd
200252ee:	d808      	bhi.n	20025302 <spi_nand_get_rdid+0x1e>
200252f0:	2400      	movs	r4, #0
200252f2:	4f0b      	ldr	r7, [pc, #44]	@ (20025320 <spi_nand_get_rdid+0x3c>)
200252f4:	f857 0b04 	ldr.w	r0, [r7], #4
200252f8:	7806      	ldrb	r6, [r0, #0]
200252fa:	b926      	cbnz	r6, 20025306 <spi_nand_get_rdid+0x22>
200252fc:	3401      	adds	r4, #1
200252fe:	2c06      	cmp	r4, #6
20025300:	d1f8      	bne.n	200252f4 <spi_nand_get_rdid+0x10>
20025302:	2000      	movs	r0, #0
20025304:	e00b      	b.n	2002531e <spi_nand_get_rdid+0x3a>
20025306:	42ae      	cmp	r6, r5
20025308:	d105      	bne.n	20025316 <spi_nand_get_rdid+0x32>
2002530a:	7846      	ldrb	r6, [r0, #1]
2002530c:	4296      	cmp	r6, r2
2002530e:	d102      	bne.n	20025316 <spi_nand_get_rdid+0x32>
20025310:	7886      	ldrb	r6, [r0, #2]
20025312:	428e      	cmp	r6, r1
20025314:	d001      	beq.n	2002531a <spi_nand_get_rdid+0x36>
20025316:	3008      	adds	r0, #8
20025318:	e7ee      	b.n	200252f8 <spi_nand_get_rdid+0x14>
2002531a:	b103      	cbz	r3, 2002531e <spi_nand_get_rdid+0x3a>
2002531c:	701c      	strb	r4, [r3, #0]
2002531e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025320:	20043ab0 	.word	0x20043ab0

20025324 <spi_nand_get_cmd_by_id>:
20025324:	b507      	push	{r0, r1, r2, lr}
20025326:	f10d 0307 	add.w	r3, sp, #7
2002532a:	f7ff ffdb 	bl	200252e4 <spi_nand_get_rdid>
2002532e:	b130      	cbz	r0, 2002533e <spi_nand_get_cmd_by_id+0x1a>
20025330:	f44f 7205 	mov.w	r2, #532	@ 0x214
20025334:	f89d 3007 	ldrb.w	r3, [sp, #7]
20025338:	4802      	ldr	r0, [pc, #8]	@ (20025344 <spi_nand_get_cmd_by_id+0x20>)
2002533a:	fb02 0003 	mla	r0, r2, r3, r0
2002533e:	b003      	add	sp, #12
20025340:	f85d fb04 	ldr.w	pc, [sp], #4
20025344:	20043cc8 	.word	0x20043cc8

20025348 <HAL_GET_FLASH_DEFAUT_INX>:
20025348:	f04f 30ff 	mov.w	r0, #4294967295
2002534c:	4770      	bx	lr
	...

20025350 <spi_nand_get_default_ctable>:
20025350:	b508      	push	{r3, lr}
20025352:	f7ff fff9 	bl	20025348 <HAL_GET_FLASH_DEFAUT_INX>
20025356:	1e03      	subs	r3, r0, #0
20025358:	bfa5      	ittet	ge
2002535a:	f44f 7205 	movge.w	r2, #532	@ 0x214
2002535e:	4802      	ldrge	r0, [pc, #8]	@ (20025368 <spi_nand_get_default_ctable+0x18>)
20025360:	2000      	movlt	r0, #0
20025362:	fb02 0003 	mlage	r0, r2, r3, r0
20025366:	bd08      	pop	{r3, pc}
20025368:	20043cc8 	.word	0x20043cc8

2002536c <spi_nand_get_size_by_id>:
2002536c:	b508      	push	{r3, lr}
2002536e:	2300      	movs	r3, #0
20025370:	f7ff ffb8 	bl	200252e4 <spi_nand_get_rdid>
20025374:	b108      	cbz	r0, 2002537a <spi_nand_get_size_by_id+0xe>
20025376:	6840      	ldr	r0, [r0, #4]
20025378:	bd08      	pop	{r3, pc}
2002537a:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
2002537e:	e7fb      	b.n	20025378 <spi_nand_get_size_by_id+0xc>

20025380 <spi_nand_get_plane_select_flag>:
20025380:	b508      	push	{r3, lr}
20025382:	2300      	movs	r3, #0
20025384:	f7ff ffae 	bl	200252e4 <spi_nand_get_rdid>
20025388:	b110      	cbz	r0, 20025390 <spi_nand_get_plane_select_flag+0x10>
2002538a:	78c0      	ldrb	r0, [r0, #3]
2002538c:	f3c0 0040 	ubfx	r0, r0, #1, #1
20025390:	bd08      	pop	{r3, pc}

20025392 <spi_nand_get_big_page_flag>:
20025392:	b508      	push	{r3, lr}
20025394:	2300      	movs	r3, #0
20025396:	f7ff ffa5 	bl	200252e4 <spi_nand_get_rdid>
2002539a:	b110      	cbz	r0, 200253a2 <spi_nand_get_big_page_flag+0x10>
2002539c:	78c0      	ldrb	r0, [r0, #3]
2002539e:	f3c0 0081 	ubfx	r0, r0, #2, #2
200253a2:	bd08      	pop	{r3, pc}

200253a4 <spi_nand_get_ecc_mode>:
200253a4:	b508      	push	{r3, lr}
200253a6:	2300      	movs	r3, #0
200253a8:	f7ff ff9c 	bl	200252e4 <spi_nand_get_rdid>
200253ac:	b108      	cbz	r0, 200253b2 <spi_nand_get_ecc_mode+0xe>
200253ae:	78c0      	ldrb	r0, [r0, #3]
200253b0:	0900      	lsrs	r0, r0, #4
200253b2:	bd08      	pop	{r3, pc}

200253b4 <bbm_map_check.part.0>:
200253b4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200253b6:	4b21      	ldr	r3, [pc, #132]	@ (2002543c <bbm_map_check.part.0+0x88>)
200253b8:	4606      	mov	r6, r0
200253ba:	681d      	ldr	r5, [r3, #0]
200253bc:	4b20      	ldr	r3, [pc, #128]	@ (20025440 <bbm_map_check.part.0+0x8c>)
200253be:	3d04      	subs	r5, #4
200253c0:	681f      	ldr	r7, [r3, #0]
200253c2:	2300      	movs	r3, #0
200253c4:	f100 0e1a 	add.w	lr, r0, #26
200253c8:	42ab      	cmp	r3, r5
200253ca:	db02      	blt.n	200253d2 <bbm_map_check.part.0+0x1e>
200253cc:	2000      	movs	r0, #0
200253ce:	b003      	add	sp, #12
200253d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200253d2:	8b31      	ldrh	r1, [r6, #24]
200253d4:	b321      	cbz	r1, 20025420 <bbm_map_check.part.0+0x6c>
200253d6:	8b72      	ldrh	r2, [r6, #26]
200253d8:	b33a      	cbz	r2, 2002542a <bbm_map_check.part.0+0x76>
200253da:	42b9      	cmp	r1, r7
200253dc:	d201      	bcs.n	200253e2 <bbm_map_check.part.0+0x2e>
200253de:	4297      	cmp	r7, r2
200253e0:	d905      	bls.n	200253ee <bbm_map_check.part.0+0x3a>
200253e2:	4b18      	ldr	r3, [pc, #96]	@ (20025444 <bbm_map_check.part.0+0x90>)
200253e4:	681b      	ldr	r3, [r3, #0]
200253e6:	b10b      	cbz	r3, 200253ec <bbm_map_check.part.0+0x38>
200253e8:	4817      	ldr	r0, [pc, #92]	@ (20025448 <bbm_map_check.part.0+0x94>)
200253ea:	4798      	blx	r3
200253ec:	e7fe      	b.n	200253ec <bbm_map_check.part.0+0x38>
200253ee:	3301      	adds	r3, #1
200253f0:	461c      	mov	r4, r3
200253f2:	42ac      	cmp	r4, r5
200253f4:	db01      	blt.n	200253fa <bbm_map_check.part.0+0x46>
200253f6:	3604      	adds	r6, #4
200253f8:	e7e6      	b.n	200253c8 <bbm_map_check.part.0+0x14>
200253fa:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
200253fe:	f1bc 0f00 	cmp.w	ip, #0
20025402:	d0f8      	beq.n	200253f6 <bbm_map_check.part.0+0x42>
20025404:	4562      	cmp	r2, ip
20025406:	d109      	bne.n	2002541c <bbm_map_check.part.0+0x68>
20025408:	4b0e      	ldr	r3, [pc, #56]	@ (20025444 <bbm_map_check.part.0+0x90>)
2002540a:	681d      	ldr	r5, [r3, #0]
2002540c:	b12d      	cbz	r5, 2002541a <bbm_map_check.part.0+0x66>
2002540e:	3406      	adds	r4, #6
20025410:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
20025414:	480d      	ldr	r0, [pc, #52]	@ (2002544c <bbm_map_check.part.0+0x98>)
20025416:	9200      	str	r2, [sp, #0]
20025418:	47a8      	blx	r5
2002541a:	e7fe      	b.n	2002541a <bbm_map_check.part.0+0x66>
2002541c:	3401      	adds	r4, #1
2002541e:	e7e8      	b.n	200253f2 <bbm_map_check.part.0+0x3e>
20025420:	eb00 0283 	add.w	r2, r0, r3, lsl #2
20025424:	8b52      	ldrh	r2, [r2, #26]
20025426:	2a00      	cmp	r2, #0
20025428:	d0d0      	beq.n	200253cc <bbm_map_check.part.0+0x18>
2002542a:	4a06      	ldr	r2, [pc, #24]	@ (20025444 <bbm_map_check.part.0+0x90>)
2002542c:	6814      	ldr	r4, [r2, #0]
2002542e:	b124      	cbz	r4, 2002543a <bbm_map_check.part.0+0x86>
20025430:	eb00 0383 	add.w	r3, r0, r3, lsl #2
20025434:	8b5a      	ldrh	r2, [r3, #26]
20025436:	4806      	ldr	r0, [pc, #24]	@ (20025450 <bbm_map_check.part.0+0x9c>)
20025438:	47a0      	blx	r4
2002543a:	e7fe      	b.n	2002543a <bbm_map_check.part.0+0x86>
2002543c:	2004cbd8 	.word	0x2004cbd8
20025440:	2004cbdc 	.word	0x2004cbdc
20025444:	2004cbc8 	.word	0x2004cbc8
20025448:	2002a974 	.word	0x2002a974
2002544c:	2002a991 	.word	0x2002a991
20025450:	2002a9de 	.word	0x2002a9de

20025454 <bbm_crc_check>:
20025454:	f04f 32ff 	mov.w	r2, #4294967295
20025458:	b510      	push	{r4, lr}
2002545a:	4c07      	ldr	r4, [pc, #28]	@ (20025478 <bbm_crc_check+0x24>)
2002545c:	4401      	add	r1, r0
2002545e:	4288      	cmp	r0, r1
20025460:	d101      	bne.n	20025466 <bbm_crc_check+0x12>
20025462:	43d0      	mvns	r0, r2
20025464:	bd10      	pop	{r4, pc}
20025466:	f810 3b01 	ldrb.w	r3, [r0], #1
2002546a:	4053      	eors	r3, r2
2002546c:	b2db      	uxtb	r3, r3
2002546e:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
20025472:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
20025476:	e7f2      	b.n	2002545e <bbm_crc_check+0xa>
20025478:	2002b804 	.word	0x2002b804

2002547c <bbm_get_phy_blk>:
2002547c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002547e:	4b14      	ldr	r3, [pc, #80]	@ (200254d0 <bbm_get_phy_blk+0x54>)
20025480:	4601      	mov	r1, r0
20025482:	681e      	ldr	r6, [r3, #0]
20025484:	42b0      	cmp	r0, r6
20025486:	d21e      	bcs.n	200254c6 <bbm_get_phy_blk+0x4a>
20025488:	b138      	cbz	r0, 2002549a <bbm_get_phy_blk+0x1e>
2002548a:	4b12      	ldr	r3, [pc, #72]	@ (200254d4 <bbm_get_phy_blk+0x58>)
2002548c:	2200      	movs	r2, #0
2002548e:	681c      	ldr	r4, [r3, #0]
20025490:	4b11      	ldr	r3, [pc, #68]	@ (200254d8 <bbm_get_phy_blk+0x5c>)
20025492:	3c04      	subs	r4, #4
20025494:	461d      	mov	r5, r3
20025496:	4294      	cmp	r4, r2
20025498:	dc00      	bgt.n	2002549c <bbm_get_phy_blk+0x20>
2002549a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002549c:	8b1f      	ldrh	r7, [r3, #24]
2002549e:	428f      	cmp	r7, r1
200254a0:	d10a      	bne.n	200254b8 <bbm_get_phy_blk+0x3c>
200254a2:	eb05 0582 	add.w	r5, r5, r2, lsl #2
200254a6:	8b6a      	ldrh	r2, [r5, #26]
200254a8:	4296      	cmp	r6, r2
200254aa:	dd0f      	ble.n	200254cc <bbm_get_phy_blk+0x50>
200254ac:	4b0b      	ldr	r3, [pc, #44]	@ (200254dc <bbm_get_phy_blk+0x60>)
200254ae:	681b      	ldr	r3, [r3, #0]
200254b0:	b10b      	cbz	r3, 200254b6 <bbm_get_phy_blk+0x3a>
200254b2:	480b      	ldr	r0, [pc, #44]	@ (200254e0 <bbm_get_phy_blk+0x64>)
200254b4:	4798      	blx	r3
200254b6:	e7fe      	b.n	200254b6 <bbm_get_phy_blk+0x3a>
200254b8:	b917      	cbnz	r7, 200254c0 <bbm_get_phy_blk+0x44>
200254ba:	8b5f      	ldrh	r7, [r3, #26]
200254bc:	2f00      	cmp	r7, #0
200254be:	d0ec      	beq.n	2002549a <bbm_get_phy_blk+0x1e>
200254c0:	3201      	adds	r2, #1
200254c2:	3304      	adds	r3, #4
200254c4:	e7e7      	b.n	20025496 <bbm_get_phy_blk+0x1a>
200254c6:	f04f 30ff 	mov.w	r0, #4294967295
200254ca:	e7e6      	b.n	2002549a <bbm_get_phy_blk+0x1e>
200254cc:	4610      	mov	r0, r2
200254ce:	e7e4      	b.n	2002549a <bbm_get_phy_blk+0x1e>
200254d0:	2004cbdc 	.word	0x2004cbdc
200254d4:	2004cbd8 	.word	0x2004cbd8
200254d8:	2004cbe0 	.word	0x2004cbe0
200254dc:	2004cbc8 	.word	0x2004cbc8
200254e0:	2002a9fc 	.word	0x2002a9fc

200254e4 <bbm_get_version_inblk>:
200254e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200254e8:	4607      	mov	r7, r0
200254ea:	4688      	mov	r8, r1
200254ec:	b087      	sub	sp, #28
200254ee:	2900      	cmp	r1, #0
200254f0:	d14b      	bne.n	2002558a <bbm_get_version_inblk+0xa6>
200254f2:	2500      	movs	r5, #0
200254f4:	4628      	mov	r0, r5
200254f6:	b007      	add	sp, #28
200254f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200254fc:	2200      	movs	r2, #0
200254fe:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025502:	4e26      	ldr	r6, [pc, #152]	@ (2002559c <bbm_get_version_inblk+0xb8>)
20025504:	9100      	str	r1, [sp, #0]
20025506:	4638      	mov	r0, r7
20025508:	4621      	mov	r1, r4
2002550a:	6833      	ldr	r3, [r6, #0]
2002550c:	f7fb fb3c 	bl	20020b88 <port_read_page>
20025510:	2800      	cmp	r0, #0
20025512:	dd32      	ble.n	2002557a <bbm_get_version_inblk+0x96>
20025514:	6832      	ldr	r2, [r6, #0]
20025516:	6813      	ldr	r3, [r2, #0]
20025518:	455b      	cmp	r3, fp
2002551a:	d123      	bne.n	20025564 <bbm_get_version_inblk+0x80>
2002551c:	6856      	ldr	r6, [r2, #4]
2002551e:	f3c6 061e 	ubfx	r6, r6, #0, #31
20025522:	42ae      	cmp	r6, r5
20025524:	dd15      	ble.n	20025552 <bbm_get_version_inblk+0x6e>
20025526:	4610      	mov	r0, r2
20025528:	2110      	movs	r1, #16
2002552a:	9205      	str	r2, [sp, #20]
2002552c:	f7ff ff92 	bl	20025454 <bbm_crc_check>
20025530:	9a05      	ldr	r2, [sp, #20]
20025532:	6913      	ldr	r3, [r2, #16]
20025534:	4283      	cmp	r3, r0
20025536:	d113      	bne.n	20025560 <bbm_get_version_inblk+0x7c>
20025538:	f8c8 4000 	str.w	r4, [r8]
2002553c:	4635      	mov	r5, r6
2002553e:	3401      	adds	r4, #1
20025540:	f8da 1000 	ldr.w	r1, [sl]
20025544:	f8d9 3000 	ldr.w	r3, [r9]
20025548:	fbb3 f3f1 	udiv	r3, r3, r1
2002554c:	42a3      	cmp	r3, r4
2002554e:	d8d5      	bhi.n	200254fc <bbm_get_version_inblk+0x18>
20025550:	e7d0      	b.n	200254f4 <bbm_get_version_inblk+0x10>
20025552:	4b13      	ldr	r3, [pc, #76]	@ (200255a0 <bbm_get_version_inblk+0xbc>)
20025554:	681b      	ldr	r3, [r3, #0]
20025556:	b11b      	cbz	r3, 20025560 <bbm_get_version_inblk+0x7c>
20025558:	4632      	mov	r2, r6
2002555a:	4629      	mov	r1, r5
2002555c:	4811      	ldr	r0, [pc, #68]	@ (200255a4 <bbm_get_version_inblk+0xc0>)
2002555e:	4798      	blx	r3
20025560:	462e      	mov	r6, r5
20025562:	e7eb      	b.n	2002553c <bbm_get_version_inblk+0x58>
20025564:	1c5a      	adds	r2, r3, #1
20025566:	d0c5      	beq.n	200254f4 <bbm_get_version_inblk+0x10>
20025568:	4a0d      	ldr	r2, [pc, #52]	@ (200255a0 <bbm_get_version_inblk+0xbc>)
2002556a:	6815      	ldr	r5, [r2, #0]
2002556c:	2d00      	cmp	r5, #0
2002556e:	d0c0      	beq.n	200254f2 <bbm_get_version_inblk+0xe>
20025570:	4622      	mov	r2, r4
20025572:	4639      	mov	r1, r7
20025574:	480c      	ldr	r0, [pc, #48]	@ (200255a8 <bbm_get_version_inblk+0xc4>)
20025576:	47a8      	blx	r5
20025578:	e7bb      	b.n	200254f2 <bbm_get_version_inblk+0xe>
2002557a:	4b09      	ldr	r3, [pc, #36]	@ (200255a0 <bbm_get_version_inblk+0xbc>)
2002557c:	681b      	ldr	r3, [r3, #0]
2002557e:	2b00      	cmp	r3, #0
20025580:	d0ee      	beq.n	20025560 <bbm_get_version_inblk+0x7c>
20025582:	4622      	mov	r2, r4
20025584:	4639      	mov	r1, r7
20025586:	4809      	ldr	r0, [pc, #36]	@ (200255ac <bbm_get_version_inblk+0xc8>)
20025588:	e7e9      	b.n	2002555e <bbm_get_version_inblk+0x7a>
2002558a:	2400      	movs	r4, #0
2002558c:	f8df a020 	ldr.w	sl, [pc, #32]	@ 200255b0 <bbm_get_version_inblk+0xcc>
20025590:	4625      	mov	r5, r4
20025592:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 200255b4 <bbm_get_version_inblk+0xd0>
20025596:	f8df b020 	ldr.w	fp, [pc, #32]	@ 200255b8 <bbm_get_version_inblk+0xd4>
2002559a:	e7d1      	b.n	20025540 <bbm_get_version_inblk+0x5c>
2002559c:	2004cbcc 	.word	0x2004cbcc
200255a0:	2004cbc8 	.word	0x2004cbc8
200255a4:	2002aa1b 	.word	0x2002aa1b
200255a8:	2002aa48 	.word	0x2002aa48
200255ac:	2002aa79 	.word	0x2002aa79
200255b0:	20044940 	.word	0x20044940
200255b4:	20044944 	.word	0x20044944
200255b8:	5366424d 	.word	0x5366424d

200255bc <bbm_get_map_table>:
200255bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200255c0:	2801      	cmp	r0, #1
200255c2:	4607      	mov	r7, r0
200255c4:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 20025724 <bbm_get_map_table+0x168>
200255c8:	b087      	sub	sp, #28
200255ca:	dd0a      	ble.n	200255e2 <bbm_get_map_table+0x26>
200255cc:	f8db 3000 	ldr.w	r3, [fp]
200255d0:	b91b      	cbnz	r3, 200255da <bbm_get_map_table+0x1e>
200255d2:	2000      	movs	r0, #0
200255d4:	b007      	add	sp, #28
200255d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200255da:	4601      	mov	r1, r0
200255dc:	4847      	ldr	r0, [pc, #284]	@ (200256fc <bbm_get_map_table+0x140>)
200255de:	4798      	blx	r3
200255e0:	e7f7      	b.n	200255d2 <bbm_get_map_table+0x16>
200255e2:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 20025728 <bbm_get_map_table+0x16c>
200255e6:	2800      	cmp	r0, #0
200255e8:	d163      	bne.n	200256b2 <bbm_get_map_table+0xf6>
200255ea:	f8b8 6000 	ldrh.w	r6, [r8]
200255ee:	f8b8 5002 	ldrh.w	r5, [r8, #2]
200255f2:	2e00      	cmp	r6, #0
200255f4:	d062      	beq.n	200256bc <bbm_get_map_table+0x100>
200255f6:	4630      	mov	r0, r6
200255f8:	a904      	add	r1, sp, #16
200255fa:	f7ff ff73 	bl	200254e4 <bbm_get_version_inblk>
200255fe:	4681      	mov	r9, r0
20025600:	2d00      	cmp	r5, #0
20025602:	d05d      	beq.n	200256c0 <bbm_get_map_table+0x104>
20025604:	4628      	mov	r0, r5
20025606:	a905      	add	r1, sp, #20
20025608:	f7ff ff6c 	bl	200254e4 <bbm_get_version_inblk>
2002560c:	4604      	mov	r4, r0
2002560e:	f8db a000 	ldr.w	sl, [fp]
20025612:	f1ba 0f00 	cmp.w	sl, #0
20025616:	d005      	beq.n	20025624 <bbm_get_map_table+0x68>
20025618:	4623      	mov	r3, r4
2002561a:	4632      	mov	r2, r6
2002561c:	4649      	mov	r1, r9
2002561e:	4838      	ldr	r0, [pc, #224]	@ (20025700 <bbm_get_map_table+0x144>)
20025620:	9500      	str	r5, [sp, #0]
20025622:	47d0      	blx	sl
20025624:	45a1      	cmp	r9, r4
20025626:	d0d4      	beq.n	200255d2 <bbm_get_map_table+0x16>
20025628:	f04f 0200 	mov.w	r2, #0
2002562c:	bf98      	it	ls
2002562e:	462e      	movls	r6, r5
20025630:	f107 0308 	add.w	r3, r7, #8
20025634:	bf94      	ite	ls
20025636:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
2002563a:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
2002563e:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025642:	4b30      	ldr	r3, [pc, #192]	@ (20025704 <bbm_get_map_table+0x148>)
20025644:	bf88      	it	hi
20025646:	f8dd a010 	ldrhi.w	sl, [sp, #16]
2002564a:	681b      	ldr	r3, [r3, #0]
2002564c:	bf98      	it	ls
2002564e:	f8dd a014 	ldrls.w	sl, [sp, #20]
20025652:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 2002572c <bbm_get_map_table+0x170>
20025656:	9300      	str	r3, [sp, #0]
20025658:	4651      	mov	r1, sl
2002565a:	4630      	mov	r0, r6
2002565c:	f8d8 3000 	ldr.w	r3, [r8]
20025660:	bf88      	it	hi
20025662:	464c      	movhi	r4, r9
20025664:	f7fb fa90 	bl	20020b88 <port_read_page>
20025668:	2800      	cmp	r0, #0
2002566a:	f8db 5000 	ldr.w	r5, [fp]
2002566e:	dd38      	ble.n	200256e2 <bbm_get_map_table+0x126>
20025670:	f8d8 8000 	ldr.w	r8, [r8]
20025674:	4b24      	ldr	r3, [pc, #144]	@ (20025708 <bbm_get_map_table+0x14c>)
20025676:	f8d8 2000 	ldr.w	r2, [r8]
2002567a:	429a      	cmp	r2, r3
2002567c:	d12b      	bne.n	200256d6 <bbm_get_map_table+0x11a>
2002567e:	2110      	movs	r1, #16
20025680:	4640      	mov	r0, r8
20025682:	f7ff fee7 	bl	20025454 <bbm_crc_check>
20025686:	f8d8 2010 	ldr.w	r2, [r8, #16]
2002568a:	4601      	mov	r1, r0
2002568c:	4282      	cmp	r2, r0
2002568e:	d11e      	bne.n	200256ce <bbm_get_map_table+0x112>
20025690:	f8d8 1004 	ldr.w	r1, [r8, #4]
20025694:	f3c1 011e 	ubfx	r1, r1, #0, #31
20025698:	42a1      	cmp	r1, r4
2002569a:	d113      	bne.n	200256c4 <bbm_get_map_table+0x108>
2002569c:	f44f 7202 	mov.w	r2, #520	@ 0x208
200256a0:	481a      	ldr	r0, [pc, #104]	@ (2002570c <bbm_get_map_table+0x150>)
200256a2:	4641      	mov	r1, r8
200256a4:	fb02 0007 	mla	r0, r2, r7, r0
200256a8:	f005 f88a 	bl	2002a7c0 <memcpy>
200256ac:	bb0d      	cbnz	r5, 200256f2 <bbm_get_map_table+0x136>
200256ae:	4620      	mov	r0, r4
200256b0:	e790      	b.n	200255d4 <bbm_get_map_table+0x18>
200256b2:	f8b8 6004 	ldrh.w	r6, [r8, #4]
200256b6:	f8b8 5006 	ldrh.w	r5, [r8, #6]
200256ba:	e79a      	b.n	200255f2 <bbm_get_map_table+0x36>
200256bc:	46b1      	mov	r9, r6
200256be:	e79f      	b.n	20025600 <bbm_get_map_table+0x44>
200256c0:	462c      	mov	r4, r5
200256c2:	e7a4      	b.n	2002560e <bbm_get_map_table+0x52>
200256c4:	b115      	cbz	r5, 200256cc <bbm_get_map_table+0x110>
200256c6:	4622      	mov	r2, r4
200256c8:	4811      	ldr	r0, [pc, #68]	@ (20025710 <bbm_get_map_table+0x154>)
200256ca:	47a8      	blx	r5
200256cc:	e7fe      	b.n	200256cc <bbm_get_map_table+0x110>
200256ce:	b10d      	cbz	r5, 200256d4 <bbm_get_map_table+0x118>
200256d0:	4810      	ldr	r0, [pc, #64]	@ (20025714 <bbm_get_map_table+0x158>)
200256d2:	47a8      	blx	r5
200256d4:	e7fe      	b.n	200256d4 <bbm_get_map_table+0x118>
200256d6:	b11d      	cbz	r5, 200256e0 <bbm_get_map_table+0x124>
200256d8:	4652      	mov	r2, sl
200256da:	4631      	mov	r1, r6
200256dc:	480e      	ldr	r0, [pc, #56]	@ (20025718 <bbm_get_map_table+0x15c>)
200256de:	47a8      	blx	r5
200256e0:	e7fe      	b.n	200256e0 <bbm_get_map_table+0x124>
200256e2:	2d00      	cmp	r5, #0
200256e4:	f43f af75 	beq.w	200255d2 <bbm_get_map_table+0x16>
200256e8:	4652      	mov	r2, sl
200256ea:	4631      	mov	r1, r6
200256ec:	480b      	ldr	r0, [pc, #44]	@ (2002571c <bbm_get_map_table+0x160>)
200256ee:	47a8      	blx	r5
200256f0:	e76f      	b.n	200255d2 <bbm_get_map_table+0x16>
200256f2:	4621      	mov	r1, r4
200256f4:	480a      	ldr	r0, [pc, #40]	@ (20025720 <bbm_get_map_table+0x164>)
200256f6:	47a8      	blx	r5
200256f8:	e7d9      	b.n	200256ae <bbm_get_map_table+0xf2>
200256fa:	bf00      	nop
200256fc:	2002aa97 	.word	0x2002aa97
20025700:	2002aaab 	.word	0x2002aaab
20025704:	20044940 	.word	0x20044940
20025708:	5366424d 	.word	0x5366424d
2002570c:	2004cbe0 	.word	0x2004cbe0
20025710:	2002aad1 	.word	0x2002aad1
20025714:	2002ab1b 	.word	0x2002ab1b
20025718:	2002ab2d 	.word	0x2002ab2d
2002571c:	2002ab62 	.word	0x2002ab62
20025720:	2002ab8e 	.word	0x2002ab8e
20025724:	2004cbc8 	.word	0x2004cbc8
20025728:	2004cff0 	.word	0x2004cff0
2002572c:	2004cbcc 	.word	0x2004cbcc

20025730 <bbm_get_page_num>:
20025730:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20025734:	4605      	mov	r5, r0
20025736:	2400      	movs	r4, #0
20025738:	4f13      	ldr	r7, [pc, #76]	@ (20025788 <bbm_get_page_num+0x58>)
2002573a:	4e14      	ldr	r6, [pc, #80]	@ (2002578c <bbm_get_page_num+0x5c>)
2002573c:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 20025790 <bbm_get_page_num+0x60>
20025740:	b085      	sub	sp, #20
20025742:	6839      	ldr	r1, [r7, #0]
20025744:	6833      	ldr	r3, [r6, #0]
20025746:	fbb3 f3f1 	udiv	r3, r3, r1
2002574a:	42a3      	cmp	r3, r4
2002574c:	d802      	bhi.n	20025754 <bbm_get_page_num+0x24>
2002574e:	f04f 34ff 	mov.w	r4, #4294967295
20025752:	e015      	b.n	20025780 <bbm_get_page_num+0x50>
20025754:	2200      	movs	r2, #0
20025756:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002575a:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 20025794 <bbm_get_page_num+0x64>
2002575e:	9100      	str	r1, [sp, #0]
20025760:	4628      	mov	r0, r5
20025762:	4621      	mov	r1, r4
20025764:	f8d9 3000 	ldr.w	r3, [r9]
20025768:	f7fb fa0e 	bl	20020b88 <port_read_page>
2002576c:	b120      	cbz	r0, 20025778 <bbm_get_page_num+0x48>
2002576e:	f8d9 3000 	ldr.w	r3, [r9]
20025772:	681b      	ldr	r3, [r3, #0]
20025774:	4543      	cmp	r3, r8
20025776:	d101      	bne.n	2002577c <bbm_get_page_num+0x4c>
20025778:	3401      	adds	r4, #1
2002577a:	e7e2      	b.n	20025742 <bbm_get_page_num+0x12>
2002577c:	3301      	adds	r3, #1
2002577e:	d1fb      	bne.n	20025778 <bbm_get_page_num+0x48>
20025780:	4620      	mov	r0, r4
20025782:	b005      	add	sp, #20
20025784:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025788:	20044940 	.word	0x20044940
2002578c:	20044944 	.word	0x20044944
20025790:	5366424d 	.word	0x5366424d
20025794:	2004cbcc 	.word	0x2004cbcc

20025798 <bbm_read_page>:
20025798:	b5f0      	push	{r4, r5, r6, r7, lr}
2002579a:	4604      	mov	r4, r0
2002579c:	b085      	sub	sp, #20
2002579e:	b280      	uxth	r0, r0
200257a0:	461f      	mov	r7, r3
200257a2:	460d      	mov	r5, r1
200257a4:	4616      	mov	r6, r2
200257a6:	f7ff fe69 	bl	2002547c <bbm_get_phy_blk>
200257aa:	1c43      	adds	r3, r0, #1
200257ac:	d108      	bne.n	200257c0 <bbm_read_page+0x28>
200257ae:	4b0a      	ldr	r3, [pc, #40]	@ (200257d8 <bbm_read_page+0x40>)
200257b0:	681b      	ldr	r3, [r3, #0]
200257b2:	b113      	cbz	r3, 200257ba <bbm_read_page+0x22>
200257b4:	4621      	mov	r1, r4
200257b6:	4809      	ldr	r0, [pc, #36]	@ (200257dc <bbm_read_page+0x44>)
200257b8:	4798      	blx	r3
200257ba:	2000      	movs	r0, #0
200257bc:	b005      	add	sp, #20
200257be:	bdf0      	pop	{r4, r5, r6, r7, pc}
200257c0:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200257c2:	4632      	mov	r2, r6
200257c4:	9302      	str	r3, [sp, #8]
200257c6:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200257c8:	4629      	mov	r1, r5
200257ca:	9301      	str	r3, [sp, #4]
200257cc:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200257ce:	9300      	str	r3, [sp, #0]
200257d0:	463b      	mov	r3, r7
200257d2:	f7fb f9d9 	bl	20020b88 <port_read_page>
200257d6:	e7f1      	b.n	200257bc <bbm_read_page+0x24>
200257d8:	2004cbc8 	.word	0x2004cbc8
200257dc:	2002aba1 	.word	0x2002aba1

200257e0 <port_write_page>:
200257e0:	4b01      	ldr	r3, [pc, #4]	@ (200257e8 <port_write_page+0x8>)
200257e2:	6818      	ldr	r0, [r3, #0]
200257e4:	4770      	bx	lr
200257e6:	bf00      	nop
200257e8:	20044940 	.word	0x20044940

200257ec <bbm_write_talbe.isra.0>:
200257ec:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200257ee:	4604      	mov	r4, r0
200257f0:	4608      	mov	r0, r1
200257f2:	460e      	mov	r6, r1
200257f4:	f7ff ff9c 	bl	20025730 <bbm_get_page_num>
200257f8:	1e05      	subs	r5, r0, #0
200257fa:	db25      	blt.n	20025848 <bbm_write_talbe.isra.0+0x5c>
200257fc:	4b13      	ldr	r3, [pc, #76]	@ (2002584c <bbm_write_talbe.isra.0+0x60>)
200257fe:	681a      	ldr	r2, [r3, #0]
20025800:	4b13      	ldr	r3, [pc, #76]	@ (20025850 <bbm_write_talbe.isra.0+0x64>)
20025802:	681b      	ldr	r3, [r3, #0]
20025804:	fbb3 f3f2 	udiv	r3, r3, r2
20025808:	429d      	cmp	r5, r3
2002580a:	da1d      	bge.n	20025848 <bbm_write_talbe.isra.0+0x5c>
2002580c:	4f11      	ldr	r7, [pc, #68]	@ (20025854 <bbm_write_talbe.isra.0+0x68>)
2002580e:	21ff      	movs	r1, #255	@ 0xff
20025810:	6838      	ldr	r0, [r7, #0]
20025812:	f004 ffbb 	bl	2002a78c <memset>
20025816:	4264      	negs	r4, r4
20025818:	490f      	ldr	r1, [pc, #60]	@ (20025858 <bbm_write_talbe.isra.0+0x6c>)
2002581a:	f404 7402 	and.w	r4, r4, #520	@ 0x208
2002581e:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025822:	6838      	ldr	r0, [r7, #0]
20025824:	4421      	add	r1, r4
20025826:	f004 ffcb 	bl	2002a7c0 <memcpy>
2002582a:	6838      	ldr	r0, [r7, #0]
2002582c:	b160      	cbz	r0, 20025848 <bbm_write_talbe.isra.0+0x5c>
2002582e:	6802      	ldr	r2, [r0, #0]
20025830:	4b0a      	ldr	r3, [pc, #40]	@ (2002585c <bbm_write_talbe.isra.0+0x70>)
20025832:	429a      	cmp	r2, r3
20025834:	d108      	bne.n	20025848 <bbm_write_talbe.isra.0+0x5c>
20025836:	f7ff fdbd 	bl	200253b4 <bbm_map_check.part.0>
2002583a:	2300      	movs	r3, #0
2002583c:	9300      	str	r3, [sp, #0]
2002583e:	4629      	mov	r1, r5
20025840:	4630      	mov	r0, r6
20025842:	683a      	ldr	r2, [r7, #0]
20025844:	f7ff ffcc 	bl	200257e0 <port_write_page>
20025848:	b003      	add	sp, #12
2002584a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002584c:	20044940 	.word	0x20044940
20025850:	20044944 	.word	0x20044944
20025854:	2004cbcc 	.word	0x2004cbcc
20025858:	2004cbe0 	.word	0x2004cbe0
2002585c:	5366424d 	.word	0x5366424d

20025860 <port_erase_block>:
20025860:	2000      	movs	r0, #0
20025862:	4770      	bx	lr

20025864 <bbm_init_table>:
20025864:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025868:	4c7d      	ldr	r4, [pc, #500]	@ (20025a60 <bbm_init_table+0x1fc>)
2002586a:	4b7e      	ldr	r3, [pc, #504]	@ (20025a64 <bbm_init_table+0x200>)
2002586c:	6822      	ldr	r2, [r4, #0]
2002586e:	b085      	sub	sp, #20
20025870:	429a      	cmp	r2, r3
20025872:	f000 80ef 	beq.w	20025a54 <bbm_init_table+0x1f0>
20025876:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
2002587a:	429a      	cmp	r2, r3
2002587c:	f000 80ea 	beq.w	20025a54 <bbm_init_table+0x1f0>
20025880:	6023      	str	r3, [r4, #0]
20025882:	2301      	movs	r3, #1
20025884:	6063      	str	r3, [r4, #4]
20025886:	2300      	movs	r3, #0
20025888:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025a9c <bbm_init_table+0x238>
2002588c:	8123      	strh	r3, [r4, #8]
2002588e:	f8d9 3000 	ldr.w	r3, [r9]
20025892:	4f75      	ldr	r7, [pc, #468]	@ (20025a68 <bbm_init_table+0x204>)
20025894:	3b04      	subs	r3, #4
20025896:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025aa0 <bbm_init_table+0x23c>
2002589a:	8163      	strh	r3, [r4, #10]
2002589c:	683b      	ldr	r3, [r7, #0]
2002589e:	f8da 5000 	ldr.w	r5, [sl]
200258a2:	3b01      	subs	r3, #1
200258a4:	4e71      	ldr	r6, [pc, #452]	@ (20025a6c <bbm_init_table+0x208>)
200258a6:	81a3      	strh	r3, [r4, #12]
200258a8:	81e5      	strh	r5, [r4, #14]
200258aa:	683b      	ldr	r3, [r7, #0]
200258ac:	429d      	cmp	r5, r3
200258ae:	db10      	blt.n	200258d2 <bbm_init_table+0x6e>
200258b0:	2500      	movs	r5, #0
200258b2:	46a8      	mov	r8, r5
200258b4:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025a6c <bbm_init_table+0x208>
200258b8:	f8da 6000 	ldr.w	r6, [sl]
200258bc:	42b5      	cmp	r5, r6
200258be:	db20      	blt.n	20025902 <bbm_init_table+0x9e>
200258c0:	8963      	ldrh	r3, [r4, #10]
200258c2:	2b00      	cmp	r3, #0
200258c4:	d14d      	bne.n	20025962 <bbm_init_table+0xfe>
200258c6:	4b69      	ldr	r3, [pc, #420]	@ (20025a6c <bbm_init_table+0x208>)
200258c8:	681b      	ldr	r3, [r3, #0]
200258ca:	b10b      	cbz	r3, 200258d0 <bbm_init_table+0x6c>
200258cc:	4868      	ldr	r0, [pc, #416]	@ (20025a70 <bbm_init_table+0x20c>)
200258ce:	4798      	blx	r3
200258d0:	e7fe      	b.n	200258d0 <bbm_init_table+0x6c>
200258d2:	4628      	mov	r0, r5
200258d4:	f7fb f9b8 	bl	20020c48 <bbm_get_bb>
200258d8:	b968      	cbnz	r0, 200258f6 <bbm_init_table+0x92>
200258da:	4628      	mov	r0, r5
200258dc:	f7ff ffc0 	bl	20025860 <port_erase_block>
200258e0:	b138      	cbz	r0, 200258f2 <bbm_init_table+0x8e>
200258e2:	6833      	ldr	r3, [r6, #0]
200258e4:	b113      	cbz	r3, 200258ec <bbm_init_table+0x88>
200258e6:	4629      	mov	r1, r5
200258e8:	4862      	ldr	r0, [pc, #392]	@ (20025a74 <bbm_init_table+0x210>)
200258ea:	4798      	blx	r3
200258ec:	8963      	ldrh	r3, [r4, #10]
200258ee:	3b01      	subs	r3, #1
200258f0:	8163      	strh	r3, [r4, #10]
200258f2:	3501      	adds	r5, #1
200258f4:	e7d9      	b.n	200258aa <bbm_init_table+0x46>
200258f6:	6833      	ldr	r3, [r6, #0]
200258f8:	2b00      	cmp	r3, #0
200258fa:	d0f7      	beq.n	200258ec <bbm_init_table+0x88>
200258fc:	4629      	mov	r1, r5
200258fe:	485e      	ldr	r0, [pc, #376]	@ (20025a78 <bbm_init_table+0x214>)
20025900:	e7f3      	b.n	200258ea <bbm_init_table+0x86>
20025902:	4628      	mov	r0, r5
20025904:	f7fb f9a0 	bl	20020c48 <bbm_get_bb>
20025908:	b348      	cbz	r0, 2002595e <bbm_init_table+0xfa>
2002590a:	f8db 3000 	ldr.w	r3, [fp]
2002590e:	b113      	cbz	r3, 20025916 <bbm_init_table+0xb2>
20025910:	4629      	mov	r1, r5
20025912:	485a      	ldr	r0, [pc, #360]	@ (20025a7c <bbm_init_table+0x218>)
20025914:	4798      	blx	r3
20025916:	89a0      	ldrh	r0, [r4, #12]
20025918:	f7fb f996 	bl	20020c48 <bbm_get_bb>
2002591c:	89a3      	ldrh	r3, [r4, #12]
2002591e:	4606      	mov	r6, r0
20025920:	3b01      	subs	r3, #1
20025922:	81a3      	strh	r3, [r4, #12]
20025924:	8963      	ldrh	r3, [r4, #10]
20025926:	3b01      	subs	r3, #1
20025928:	b29b      	uxth	r3, r3
2002592a:	8163      	strh	r3, [r4, #10]
2002592c:	b108      	cbz	r0, 20025932 <bbm_init_table+0xce>
2002592e:	2b00      	cmp	r3, #0
20025930:	d1f1      	bne.n	20025916 <bbm_init_table+0xb2>
20025932:	f8db 3000 	ldr.w	r3, [fp]
20025936:	b11b      	cbz	r3, 20025940 <bbm_init_table+0xdc>
20025938:	4642      	mov	r2, r8
2002593a:	4629      	mov	r1, r5
2002593c:	4850      	ldr	r0, [pc, #320]	@ (20025a80 <bbm_init_table+0x21c>)
2002593e:	4798      	blx	r3
20025940:	b946      	cbnz	r6, 20025954 <bbm_init_table+0xf0>
20025942:	89a2      	ldrh	r2, [r4, #12]
20025944:	f108 0306 	add.w	r3, r8, #6
20025948:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
2002594c:	3201      	adds	r2, #1
2002594e:	eb04 0383 	add.w	r3, r4, r3, lsl #2
20025952:	805a      	strh	r2, [r3, #2]
20025954:	8923      	ldrh	r3, [r4, #8]
20025956:	f108 0801 	add.w	r8, r8, #1
2002595a:	3301      	adds	r3, #1
2002595c:	8123      	strh	r3, [r4, #8]
2002595e:	3501      	adds	r5, #1
20025960:	e7aa      	b.n	200258b8 <bbm_init_table+0x54>
20025962:	2110      	movs	r1, #16
20025964:	483e      	ldr	r0, [pc, #248]	@ (20025a60 <bbm_init_table+0x1fc>)
20025966:	f7ff fd75 	bl	20025454 <bbm_crc_check>
2002596a:	f8d9 1000 	ldr.w	r1, [r9]
2002596e:	6120      	str	r0, [r4, #16]
20025970:	3904      	subs	r1, #4
20025972:	0089      	lsls	r1, r1, #2
20025974:	4843      	ldr	r0, [pc, #268]	@ (20025a84 <bbm_init_table+0x220>)
20025976:	f7ff fd6d 	bl	20025454 <bbm_crc_check>
2002597a:	f44f 7202 	mov.w	r2, #520	@ 0x208
2002597e:	4938      	ldr	r1, [pc, #224]	@ (20025a60 <bbm_init_table+0x1fc>)
20025980:	6160      	str	r0, [r4, #20]
20025982:	1888      	adds	r0, r1, r2
20025984:	f004 ff1c 	bl	2002a7c0 <memcpy>
20025988:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
2002598c:	2110      	movs	r1, #16
2002598e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025992:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025996:	483c      	ldr	r0, [pc, #240]	@ (20025a88 <bbm_init_table+0x224>)
20025998:	f7ff fd5c 	bl	20025454 <bbm_crc_check>
2002599c:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
200259a0:	2400      	movs	r4, #0
200259a2:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025aa4 <bbm_init_table+0x240>
200259a6:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025aa8 <bbm_init_table+0x244>
200259aa:	683b      	ldr	r3, [r7, #0]
200259ac:	429e      	cmp	r6, r3
200259ae:	db08      	blt.n	200259c2 <bbm_init_table+0x15e>
200259b0:	2c03      	cmp	r4, #3
200259b2:	dc30      	bgt.n	20025a16 <bbm_init_table+0x1b2>
200259b4:	4b2d      	ldr	r3, [pc, #180]	@ (20025a6c <bbm_init_table+0x208>)
200259b6:	681b      	ldr	r3, [r3, #0]
200259b8:	b113      	cbz	r3, 200259c0 <bbm_init_table+0x15c>
200259ba:	4621      	mov	r1, r4
200259bc:	4833      	ldr	r0, [pc, #204]	@ (20025a8c <bbm_init_table+0x228>)
200259be:	4798      	blx	r3
200259c0:	e7fe      	b.n	200259c0 <bbm_init_table+0x15c>
200259c2:	4630      	mov	r0, r6
200259c4:	f7fb f940 	bl	20020c48 <bbm_get_bb>
200259c8:	4605      	mov	r5, r0
200259ca:	bb10      	cbnz	r0, 20025a12 <bbm_init_table+0x1ae>
200259cc:	f8d9 a000 	ldr.w	sl, [r9]
200259d0:	21ff      	movs	r1, #255	@ 0xff
200259d2:	4652      	mov	r2, sl
200259d4:	f8d8 0000 	ldr.w	r0, [r8]
200259d8:	f004 fed8 	bl	2002a78c <memset>
200259dc:	e9cd 5501 	strd	r5, r5, [sp, #4]
200259e0:	f8cd a000 	str.w	sl, [sp]
200259e4:	f8d8 3000 	ldr.w	r3, [r8]
200259e8:	462a      	mov	r2, r5
200259ea:	4629      	mov	r1, r5
200259ec:	4630      	mov	r0, r6
200259ee:	f7fb f8cb 	bl	20020b88 <port_read_page>
200259f2:	f8d9 3000 	ldr.w	r3, [r9]
200259f6:	4298      	cmp	r0, r3
200259f8:	d109      	bne.n	20025a0e <bbm_init_table+0x1aa>
200259fa:	f8d8 3000 	ldr.w	r3, [r8]
200259fe:	681b      	ldr	r3, [r3, #0]
20025a00:	3301      	adds	r3, #1
20025a02:	bf01      	itttt	eq
20025a04:	4b22      	ldreq	r3, [pc, #136]	@ (20025a90 <bbm_init_table+0x22c>)
20025a06:	1d22      	addeq	r2, r4, #4
20025a08:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025a0c:	3401      	addeq	r4, #1
20025a0e:	2c03      	cmp	r4, #3
20025a10:	dc01      	bgt.n	20025a16 <bbm_init_table+0x1b2>
20025a12:	3601      	adds	r6, #1
20025a14:	e7c9      	b.n	200259aa <bbm_init_table+0x146>
20025a16:	2500      	movs	r5, #0
20025a18:	4c1d      	ldr	r4, [pc, #116]	@ (20025a90 <bbm_init_table+0x22c>)
20025a1a:	2000      	movs	r0, #0
20025a1c:	8921      	ldrh	r1, [r4, #8]
20025a1e:	f7ff fee5 	bl	200257ec <bbm_write_talbe.isra.0>
20025a22:	8923      	ldrh	r3, [r4, #8]
20025a24:	2001      	movs	r0, #1
20025a26:	8961      	ldrh	r1, [r4, #10]
20025a28:	8023      	strh	r3, [r4, #0]
20025a2a:	8223      	strh	r3, [r4, #16]
20025a2c:	8125      	strh	r5, [r4, #8]
20025a2e:	f7ff fedd 	bl	200257ec <bbm_write_talbe.isra.0>
20025a32:	8963      	ldrh	r3, [r4, #10]
20025a34:	8165      	strh	r5, [r4, #10]
20025a36:	80a3      	strh	r3, [r4, #4]
20025a38:	8263      	strh	r3, [r4, #18]
20025a3a:	89a3      	ldrh	r3, [r4, #12]
20025a3c:	8063      	strh	r3, [r4, #2]
20025a3e:	89e3      	ldrh	r3, [r4, #14]
20025a40:	80e3      	strh	r3, [r4, #6]
20025a42:	4b0a      	ldr	r3, [pc, #40]	@ (20025a6c <bbm_init_table+0x208>)
20025a44:	681b      	ldr	r3, [r3, #0]
20025a46:	b10b      	cbz	r3, 20025a4c <bbm_init_table+0x1e8>
20025a48:	4812      	ldr	r0, [pc, #72]	@ (20025a94 <bbm_init_table+0x230>)
20025a4a:	4798      	blx	r3
20025a4c:	2000      	movs	r0, #0
20025a4e:	b005      	add	sp, #20
20025a50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025a54:	4b05      	ldr	r3, [pc, #20]	@ (20025a6c <bbm_init_table+0x208>)
20025a56:	681b      	ldr	r3, [r3, #0]
20025a58:	b10b      	cbz	r3, 20025a5e <bbm_init_table+0x1fa>
20025a5a:	480f      	ldr	r0, [pc, #60]	@ (20025a98 <bbm_init_table+0x234>)
20025a5c:	4798      	blx	r3
20025a5e:	e7fe      	b.n	20025a5e <bbm_init_table+0x1fa>
20025a60:	2004cbe0 	.word	0x2004cbe0
20025a64:	5366424d 	.word	0x5366424d
20025a68:	2004cbd4 	.word	0x2004cbd4
20025a6c:	2004cbc8 	.word	0x2004cbc8
20025a70:	2002ac36 	.word	0x2002ac36
20025a74:	2002abc4 	.word	0x2002abc4
20025a78:	2002abe6 	.word	0x2002abe6
20025a7c:	2002ac03 	.word	0x2002ac03
20025a80:	2002ac22 	.word	0x2002ac22
20025a84:	2004cbf8 	.word	0x2004cbf8
20025a88:	2004cde8 	.word	0x2004cde8
20025a8c:	2002ac50 	.word	0x2002ac50
20025a90:	2004cff0 	.word	0x2004cff0
20025a94:	2002ac77 	.word	0x2002ac77
20025a98:	2002ac93 	.word	0x2002ac93
20025a9c:	2004cbd8 	.word	0x2004cbd8
20025aa0:	2004cbdc 	.word	0x2004cbdc
20025aa4:	20044940 	.word	0x20044940
20025aa8:	2004cbcc 	.word	0x2004cbcc

20025aac <sif_bbm_init>:
20025aac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025ab0:	b087      	sub	sp, #28
20025ab2:	2900      	cmp	r1, #0
20025ab4:	f000 8129 	beq.w	20025d0a <sif_bbm_init+0x25e>
20025ab8:	4b95      	ldr	r3, [pc, #596]	@ (20025d10 <sif_bbm_init+0x264>)
20025aba:	681a      	ldr	r2, [r3, #0]
20025abc:	2a01      	cmp	r2, #1
20025abe:	d108      	bne.n	20025ad2 <sif_bbm_init+0x26>
20025ac0:	4b94      	ldr	r3, [pc, #592]	@ (20025d14 <sif_bbm_init+0x268>)
20025ac2:	681b      	ldr	r3, [r3, #0]
20025ac4:	b10b      	cbz	r3, 20025aca <sif_bbm_init+0x1e>
20025ac6:	4894      	ldr	r0, [pc, #592]	@ (20025d18 <sif_bbm_init+0x26c>)
20025ac8:	4798      	blx	r3
20025aca:	2000      	movs	r0, #0
20025acc:	b007      	add	sp, #28
20025ace:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025ad2:	2201      	movs	r2, #1
20025ad4:	601a      	str	r2, [r3, #0]
20025ad6:	4b91      	ldr	r3, [pc, #580]	@ (20025d1c <sif_bbm_init+0x270>)
20025ad8:	681c      	ldr	r4, [r3, #0]
20025ada:	b904      	cbnz	r4, 20025ade <sif_bbm_init+0x32>
20025adc:	e7fe      	b.n	20025adc <sif_bbm_init+0x30>
20025ade:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025d5c <sif_bbm_init+0x2b0>
20025ae2:	f8da 2000 	ldr.w	r2, [sl]
20025ae6:	b902      	cbnz	r2, 20025aea <sif_bbm_init+0x3e>
20025ae8:	e7fe      	b.n	20025ae8 <sif_bbm_init+0x3c>
20025aea:	fbb0 f4f4 	udiv	r4, r0, r4
20025aee:	f04f 0800 	mov.w	r8, #0
20025af2:	4a8b      	ldr	r2, [pc, #556]	@ (20025d20 <sif_bbm_init+0x274>)
20025af4:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025d60 <sif_bbm_init+0x2b4>
20025af8:	0963      	lsrs	r3, r4, #5
20025afa:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025d64 <sif_bbm_init+0x2b8>
20025afe:	6013      	str	r3, [r2, #0]
20025b00:	f8cb 4000 	str.w	r4, [fp]
20025b04:	1ae4      	subs	r4, r4, r3
20025b06:	4b87      	ldr	r3, [pc, #540]	@ (20025d24 <sif_bbm_init+0x278>)
20025b08:	2218      	movs	r2, #24
20025b0a:	f8c9 1000 	str.w	r1, [r9]
20025b0e:	4886      	ldr	r0, [pc, #536]	@ (20025d28 <sif_bbm_init+0x27c>)
20025b10:	2100      	movs	r1, #0
20025b12:	601c      	str	r4, [r3, #0]
20025b14:	f004 fe3a 	bl	2002a78c <memset>
20025b18:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025b1c:	2100      	movs	r1, #0
20025b1e:	4883      	ldr	r0, [pc, #524]	@ (20025d2c <sif_bbm_init+0x280>)
20025b20:	f004 fe34 	bl	2002a78c <memset>
20025b24:	4647      	mov	r7, r8
20025b26:	4646      	mov	r6, r8
20025b28:	f8db 3000 	ldr.w	r3, [fp]
20025b2c:	429c      	cmp	r4, r3
20025b2e:	db02      	blt.n	20025b36 <sif_bbm_init+0x8a>
20025b30:	f04f 35ff 	mov.w	r5, #4294967295
20025b34:	e064      	b.n	20025c00 <sif_bbm_init+0x154>
20025b36:	4620      	mov	r0, r4
20025b38:	f7fb f886 	bl	20020c48 <bbm_get_bb>
20025b3c:	4605      	mov	r5, r0
20025b3e:	b138      	cbz	r0, 20025b50 <sif_bbm_init+0xa4>
20025b40:	4b74      	ldr	r3, [pc, #464]	@ (20025d14 <sif_bbm_init+0x268>)
20025b42:	681b      	ldr	r3, [r3, #0]
20025b44:	b113      	cbz	r3, 20025b4c <sif_bbm_init+0xa0>
20025b46:	487a      	ldr	r0, [pc, #488]	@ (20025d30 <sif_bbm_init+0x284>)
20025b48:	1c61      	adds	r1, r4, #1
20025b4a:	4798      	blx	r3
20025b4c:	3401      	adds	r4, #1
20025b4e:	e7eb      	b.n	20025b28 <sif_bbm_init+0x7c>
20025b50:	f8da 2000 	ldr.w	r2, [sl]
20025b54:	21ff      	movs	r1, #255	@ 0xff
20025b56:	f8d9 0000 	ldr.w	r0, [r9]
20025b5a:	9205      	str	r2, [sp, #20]
20025b5c:	f004 fe16 	bl	2002a78c <memset>
20025b60:	9a05      	ldr	r2, [sp, #20]
20025b62:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025b66:	9200      	str	r2, [sp, #0]
20025b68:	f8d9 3000 	ldr.w	r3, [r9]
20025b6c:	462a      	mov	r2, r5
20025b6e:	4629      	mov	r1, r5
20025b70:	4620      	mov	r0, r4
20025b72:	f7fb f809 	bl	20020b88 <port_read_page>
20025b76:	f8da 3000 	ldr.w	r3, [sl]
20025b7a:	4298      	cmp	r0, r3
20025b7c:	d12e      	bne.n	20025bdc <sif_bbm_init+0x130>
20025b7e:	f8d9 1000 	ldr.w	r1, [r9]
20025b82:	486c      	ldr	r0, [pc, #432]	@ (20025d34 <sif_bbm_init+0x288>)
20025b84:	680b      	ldr	r3, [r1, #0]
20025b86:	b2a2      	uxth	r2, r4
20025b88:	4283      	cmp	r3, r0
20025b8a:	4b67      	ldr	r3, [pc, #412]	@ (20025d28 <sif_bbm_init+0x27c>)
20025b8c:	d11f      	bne.n	20025bce <sif_bbm_init+0x122>
20025b8e:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025b92:	2900      	cmp	r1, #0
20025b94:	bfb5      	itete	lt
20025b96:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025b9a:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025b9e:	808a      	strhlt	r2, [r1, #4]
20025ba0:	3601      	addge	r6, #1
20025ba2:	bfb8      	it	lt
20025ba4:	3701      	addlt	r7, #1
20025ba6:	eb06 0208 	add.w	r2, r6, r8
20025baa:	443a      	add	r2, r7
20025bac:	2a03      	cmp	r2, #3
20025bae:	ddcd      	ble.n	20025b4c <sif_bbm_init+0xa0>
20025bb0:	2e00      	cmp	r6, #0
20025bb2:	f000 8081 	beq.w	20025cb8 <sif_bbm_init+0x20c>
20025bb6:	2f00      	cmp	r7, #0
20025bb8:	d07e      	beq.n	20025cb8 <sif_bbm_init+0x20c>
20025bba:	2e01      	cmp	r6, #1
20025bbc:	d001      	beq.n	20025bc2 <sif_bbm_init+0x116>
20025bbe:	2f01      	cmp	r7, #1
20025bc0:	d11e      	bne.n	20025c00 <sif_bbm_init+0x154>
20025bc2:	8819      	ldrh	r1, [r3, #0]
20025bc4:	891a      	ldrh	r2, [r3, #8]
20025bc6:	b981      	cbnz	r1, 20025bea <sif_bbm_init+0x13e>
20025bc8:	801a      	strh	r2, [r3, #0]
20025bca:	895a      	ldrh	r2, [r3, #10]
20025bcc:	e013      	b.n	20025bf6 <sif_bbm_init+0x14a>
20025bce:	f108 0104 	add.w	r1, r8, #4
20025bd2:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025bd6:	f108 0801 	add.w	r8, r8, #1
20025bda:	e7e4      	b.n	20025ba6 <sif_bbm_init+0xfa>
20025bdc:	4b4d      	ldr	r3, [pc, #308]	@ (20025d14 <sif_bbm_init+0x268>)
20025bde:	681b      	ldr	r3, [r3, #0]
20025be0:	2b00      	cmp	r3, #0
20025be2:	d0b3      	beq.n	20025b4c <sif_bbm_init+0xa0>
20025be4:	4854      	ldr	r0, [pc, #336]	@ (20025d38 <sif_bbm_init+0x28c>)
20025be6:	1c61      	adds	r1, r4, #1
20025be8:	e7af      	b.n	20025b4a <sif_bbm_init+0x9e>
20025bea:	8859      	ldrh	r1, [r3, #2]
20025bec:	b909      	cbnz	r1, 20025bf2 <sif_bbm_init+0x146>
20025bee:	805a      	strh	r2, [r3, #2]
20025bf0:	e7eb      	b.n	20025bca <sif_bbm_init+0x11e>
20025bf2:	2a00      	cmp	r2, #0
20025bf4:	d0e9      	beq.n	20025bca <sif_bbm_init+0x11e>
20025bf6:	8899      	ldrh	r1, [r3, #4]
20025bf8:	2900      	cmp	r1, #0
20025bfa:	d158      	bne.n	20025cae <sif_bbm_init+0x202>
20025bfc:	809a      	strh	r2, [r3, #4]
20025bfe:	2502      	movs	r5, #2
20025c00:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025d14 <sif_bbm_init+0x268>
20025c04:	f8d9 4000 	ldr.w	r4, [r9]
20025c08:	b124      	cbz	r4, 20025c14 <sif_bbm_init+0x168>
20025c0a:	4643      	mov	r3, r8
20025c0c:	463a      	mov	r2, r7
20025c0e:	4631      	mov	r1, r6
20025c10:	484a      	ldr	r0, [pc, #296]	@ (20025d3c <sif_bbm_init+0x290>)
20025c12:	47a0      	blx	r4
20025c14:	f8d9 3000 	ldr.w	r3, [r9]
20025c18:	b113      	cbz	r3, 20025c20 <sif_bbm_init+0x174>
20025c1a:	4629      	mov	r1, r5
20025c1c:	4848      	ldr	r0, [pc, #288]	@ (20025d40 <sif_bbm_init+0x294>)
20025c1e:	4798      	blx	r3
20025c20:	f035 0002 	bics.w	r0, r5, #2
20025c24:	d164      	bne.n	20025cf0 <sif_bbm_init+0x244>
20025c26:	f7ff fcc9 	bl	200255bc <bbm_get_map_table>
20025c2a:	4605      	mov	r5, r0
20025c2c:	2001      	movs	r0, #1
20025c2e:	f7ff fcc5 	bl	200255bc <bbm_get_map_table>
20025c32:	f8d9 6000 	ldr.w	r6, [r9]
20025c36:	4604      	mov	r4, r0
20025c38:	b13e      	cbz	r6, 20025c4a <sif_bbm_init+0x19e>
20025c3a:	4a3b      	ldr	r2, [pc, #236]	@ (20025d28 <sif_bbm_init+0x27c>)
20025c3c:	4629      	mov	r1, r5
20025c3e:	8a53      	ldrh	r3, [r2, #18]
20025c40:	9300      	str	r3, [sp, #0]
20025c42:	8a12      	ldrh	r2, [r2, #16]
20025c44:	4603      	mov	r3, r0
20025c46:	483f      	ldr	r0, [pc, #252]	@ (20025d44 <sif_bbm_init+0x298>)
20025c48:	47b0      	blx	r6
20025c4a:	42a5      	cmp	r5, r4
20025c4c:	4c37      	ldr	r4, [pc, #220]	@ (20025d2c <sif_bbm_init+0x280>)
20025c4e:	dd35      	ble.n	20025cbc <sif_bbm_init+0x210>
20025c50:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025c54:	4621      	mov	r1, r4
20025c56:	18a0      	adds	r0, r4, r2
20025c58:	f004 fdb2 	bl	2002a7c0 <memcpy>
20025c5c:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025c60:	2110      	movs	r1, #16
20025c62:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025c66:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025c6a:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025c6e:	f7ff fbf1 	bl	20025454 <bbm_crc_check>
20025c72:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025c76:	2001      	movs	r0, #1
20025c78:	4b2b      	ldr	r3, [pc, #172]	@ (20025d28 <sif_bbm_init+0x27c>)
20025c7a:	8a59      	ldrh	r1, [r3, #18]
20025c7c:	f7ff fdb6 	bl	200257ec <bbm_write_talbe.isra.0>
20025c80:	6822      	ldr	r2, [r4, #0]
20025c82:	4b2c      	ldr	r3, [pc, #176]	@ (20025d34 <sif_bbm_init+0x288>)
20025c84:	429a      	cmp	r2, r3
20025c86:	d12d      	bne.n	20025ce4 <sif_bbm_init+0x238>
20025c88:	4828      	ldr	r0, [pc, #160]	@ (20025d2c <sif_bbm_init+0x280>)
20025c8a:	f7ff fb93 	bl	200253b4 <bbm_map_check.part.0>
20025c8e:	f8d9 4000 	ldr.w	r4, [r9]
20025c92:	b12c      	cbz	r4, 20025ca0 <sif_bbm_init+0x1f4>
20025c94:	4b2c      	ldr	r3, [pc, #176]	@ (20025d48 <sif_bbm_init+0x29c>)
20025c96:	4924      	ldr	r1, [pc, #144]	@ (20025d28 <sif_bbm_init+0x27c>)
20025c98:	482c      	ldr	r0, [pc, #176]	@ (20025d4c <sif_bbm_init+0x2a0>)
20025c9a:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025c9e:	47a0      	blx	r4
20025ca0:	f8d9 3000 	ldr.w	r3, [r9]
20025ca4:	2b00      	cmp	r3, #0
20025ca6:	f43f af10 	beq.w	20025aca <sif_bbm_init+0x1e>
20025caa:	4829      	ldr	r0, [pc, #164]	@ (20025d50 <sif_bbm_init+0x2a4>)
20025cac:	e70c      	b.n	20025ac8 <sif_bbm_init+0x1c>
20025cae:	88d9      	ldrh	r1, [r3, #6]
20025cb0:	2900      	cmp	r1, #0
20025cb2:	d1a4      	bne.n	20025bfe <sif_bbm_init+0x152>
20025cb4:	80da      	strh	r2, [r3, #6]
20025cb6:	e7a2      	b.n	20025bfe <sif_bbm_init+0x152>
20025cb8:	2501      	movs	r5, #1
20025cba:	e7a1      	b.n	20025c00 <sif_bbm_init+0x154>
20025cbc:	dae0      	bge.n	20025c80 <sif_bbm_init+0x1d4>
20025cbe:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025cc2:	4620      	mov	r0, r4
20025cc4:	18a1      	adds	r1, r4, r2
20025cc6:	f004 fd7b 	bl	2002a7c0 <memcpy>
20025cca:	79e3      	ldrb	r3, [r4, #7]
20025ccc:	2110      	movs	r1, #16
20025cce:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025cd2:	71e3      	strb	r3, [r4, #7]
20025cd4:	4620      	mov	r0, r4
20025cd6:	f7ff fbbd 	bl	20025454 <bbm_crc_check>
20025cda:	4b13      	ldr	r3, [pc, #76]	@ (20025d28 <sif_bbm_init+0x27c>)
20025cdc:	6120      	str	r0, [r4, #16]
20025cde:	8a19      	ldrh	r1, [r3, #16]
20025ce0:	2000      	movs	r0, #0
20025ce2:	e7cb      	b.n	20025c7c <sif_bbm_init+0x1d0>
20025ce4:	f8d9 3000 	ldr.w	r3, [r9]
20025ce8:	b10b      	cbz	r3, 20025cee <sif_bbm_init+0x242>
20025cea:	481a      	ldr	r0, [pc, #104]	@ (20025d54 <sif_bbm_init+0x2a8>)
20025cec:	4798      	blx	r3
20025cee:	e7fe      	b.n	20025cee <sif_bbm_init+0x242>
20025cf0:	2d01      	cmp	r5, #1
20025cf2:	d102      	bne.n	20025cfa <sif_bbm_init+0x24e>
20025cf4:	f7ff fdb6 	bl	20025864 <bbm_init_table>
20025cf8:	e7c9      	b.n	20025c8e <sif_bbm_init+0x1e2>
20025cfa:	f8d9 3000 	ldr.w	r3, [r9]
20025cfe:	b11b      	cbz	r3, 20025d08 <sif_bbm_init+0x25c>
20025d00:	f04f 31ff 	mov.w	r1, #4294967295
20025d04:	4814      	ldr	r0, [pc, #80]	@ (20025d58 <sif_bbm_init+0x2ac>)
20025d06:	4798      	blx	r3
20025d08:	e7fe      	b.n	20025d08 <sif_bbm_init+0x25c>
20025d0a:	f04f 30ff 	mov.w	r0, #4294967295
20025d0e:	e6dd      	b.n	20025acc <sif_bbm_init+0x20>
20025d10:	2004cbd0 	.word	0x2004cbd0
20025d14:	2004cbc8 	.word	0x2004cbc8
20025d18:	2002aca7 	.word	0x2002aca7
20025d1c:	20044944 	.word	0x20044944
20025d20:	2004cbd8 	.word	0x2004cbd8
20025d24:	2004cbdc 	.word	0x2004cbdc
20025d28:	2004cff0 	.word	0x2004cff0
20025d2c:	2004cbe0 	.word	0x2004cbe0
20025d30:	2002acd5 	.word	0x2002acd5
20025d34:	5366424d 	.word	0x5366424d
20025d38:	2002ace1 	.word	0x2002ace1
20025d3c:	2002ad00 	.word	0x2002ad00
20025d40:	2002ad1f 	.word	0x2002ad1f
20025d44:	2002ad31 	.word	0x2002ad31
20025d48:	2004cde8 	.word	0x2004cde8
20025d4c:	2002ad8c 	.word	0x2002ad8c
20025d50:	2002adb0 	.word	0x2002adb0
20025d54:	2002ad55 	.word	0x2002ad55
20025d58:	2002ad6b 	.word	0x2002ad6b
20025d5c:	20044940 	.word	0x20044940
20025d60:	2004cbd4 	.word	0x2004cbd4
20025d64:	2004cbcc 	.word	0x2004cbcc

20025d68 <bbm_set_page_size>:
20025d68:	4b01      	ldr	r3, [pc, #4]	@ (20025d70 <bbm_set_page_size+0x8>)
20025d6a:	6018      	str	r0, [r3, #0]
20025d6c:	4770      	bx	lr
20025d6e:	bf00      	nop
20025d70:	20044940 	.word	0x20044940

20025d74 <bbm_set_blk_size>:
20025d74:	4b01      	ldr	r3, [pc, #4]	@ (20025d7c <bbm_set_blk_size+0x8>)
20025d76:	6018      	str	r0, [r3, #0]
20025d78:	4770      	bx	lr
20025d7a:	bf00      	nop
20025d7c:	20044944 	.word	0x20044944

20025d80 <mbedtls_md_info_from_type>:
20025d80:	3805      	subs	r0, #5
20025d82:	b2c0      	uxtb	r0, r0
20025d84:	2803      	cmp	r0, #3
20025d86:	bf9a      	itte	ls
20025d88:	4b02      	ldrls	r3, [pc, #8]	@ (20025d94 <mbedtls_md_info_from_type+0x14>)
20025d8a:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20025d8e:	2000      	movhi	r0, #0
20025d90:	4770      	bx	lr
20025d92:	bf00      	nop
20025d94:	2002bc04 	.word	0x2002bc04

20025d98 <mbedtls_md_get_size>:
20025d98:	b100      	cbz	r0, 20025d9c <mbedtls_md_get_size+0x4>
20025d9a:	7a00      	ldrb	r0, [r0, #8]
20025d9c:	4770      	bx	lr

20025d9e <sha224_process_wrap>:
20025d9e:	f000 b8a9 	b.w	20025ef4 <mbedtls_sha256_process>

20025da2 <sha224_clone_wrap>:
20025da2:	f000 b85a 	b.w	20025e5a <mbedtls_sha256_clone>

20025da6 <sha224_ctx_free>:
20025da6:	b510      	push	{r4, lr}
20025da8:	4604      	mov	r4, r0
20025daa:	f000 f84c 	bl	20025e46 <mbedtls_sha256_free>
20025dae:	4620      	mov	r0, r4
20025db0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025db4:	f004 bc24 	b.w	2002a600 <free>

20025db8 <sha224_ctx_alloc>:
20025db8:	b510      	push	{r4, lr}
20025dba:	216c      	movs	r1, #108	@ 0x6c
20025dbc:	2001      	movs	r0, #1
20025dbe:	f004 fc03 	bl	2002a5c8 <calloc>
20025dc2:	4604      	mov	r4, r0
20025dc4:	b108      	cbz	r0, 20025dca <sha224_ctx_alloc+0x12>
20025dc6:	f000 f83a 	bl	20025e3e <mbedtls_sha256_init>
20025dca:	4620      	mov	r0, r4
20025dcc:	bd10      	pop	{r4, pc}

20025dce <sha224_wrap>:
20025dce:	2301      	movs	r3, #1
20025dd0:	f000 bc94 	b.w	200266fc <mbedtls_sha256>

20025dd4 <sha256_wrap>:
20025dd4:	2300      	movs	r3, #0
20025dd6:	f000 bc91 	b.w	200266fc <mbedtls_sha256>

20025dda <sha224_finish_wrap>:
20025dda:	f000 bc21 	b.w	20026620 <mbedtls_sha256_finish>

20025dde <sha224_update_wrap>:
20025dde:	f000 bc1b 	b.w	20026618 <mbedtls_sha256_update>

20025de2 <sha224_starts_wrap>:
20025de2:	2101      	movs	r1, #1
20025de4:	f000 b83e 	b.w	20025e64 <mbedtls_sha256_starts>

20025de8 <sha256_starts_wrap>:
20025de8:	2100      	movs	r1, #0
20025dea:	f000 b83b 	b.w	20025e64 <mbedtls_sha256_starts>

20025dee <sha384_process_wrap>:
20025dee:	f000 bd8f 	b.w	20026910 <mbedtls_sha512_process>

20025df2 <sha384_clone_wrap>:
20025df2:	f000 bcf5 	b.w	200267e0 <mbedtls_sha512_clone>

20025df6 <sha384_ctx_free>:
20025df6:	b510      	push	{r4, lr}
20025df8:	4604      	mov	r4, r0
20025dfa:	f000 fce7 	bl	200267cc <mbedtls_sha512_free>
20025dfe:	4620      	mov	r0, r4
20025e00:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025e04:	f004 bbfc 	b.w	2002a600 <free>

20025e08 <sha384_ctx_alloc>:
20025e08:	b510      	push	{r4, lr}
20025e0a:	21d8      	movs	r1, #216	@ 0xd8
20025e0c:	2001      	movs	r0, #1
20025e0e:	f004 fbdb 	bl	2002a5c8 <calloc>
20025e12:	4604      	mov	r4, r0
20025e14:	b108      	cbz	r0, 20025e1a <sha384_ctx_alloc+0x12>
20025e16:	f000 fcd5 	bl	200267c4 <mbedtls_sha512_init>
20025e1a:	4620      	mov	r0, r4
20025e1c:	bd10      	pop	{r4, pc}

20025e1e <sha384_wrap>:
20025e1e:	2301      	movs	r3, #1
20025e20:	f001 bbfa 	b.w	20027618 <mbedtls_sha512>

20025e24 <sha512_wrap>:
20025e24:	2300      	movs	r3, #0
20025e26:	f001 bbf7 	b.w	20027618 <mbedtls_sha512>

20025e2a <sha384_finish_wrap>:
20025e2a:	f001 baef 	b.w	2002740c <mbedtls_sha512_finish>

20025e2e <sha384_update_wrap>:
20025e2e:	f001 bae8 	b.w	20027402 <mbedtls_sha512_update>

20025e32 <sha384_starts_wrap>:
20025e32:	2101      	movs	r1, #1
20025e34:	f000 bcdc 	b.w	200267f0 <mbedtls_sha512_starts>

20025e38 <sha512_starts_wrap>:
20025e38:	2100      	movs	r1, #0
20025e3a:	f000 bcd9 	b.w	200267f0 <mbedtls_sha512_starts>

20025e3e <mbedtls_sha256_init>:
20025e3e:	226c      	movs	r2, #108	@ 0x6c
20025e40:	2100      	movs	r1, #0
20025e42:	f004 bca3 	b.w	2002a78c <memset>

20025e46 <mbedtls_sha256_free>:
20025e46:	b138      	cbz	r0, 20025e58 <mbedtls_sha256_free+0x12>
20025e48:	2100      	movs	r1, #0
20025e4a:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
20025e4e:	4602      	mov	r2, r0
20025e50:	3001      	adds	r0, #1
20025e52:	4298      	cmp	r0, r3
20025e54:	7011      	strb	r1, [r2, #0]
20025e56:	d1fa      	bne.n	20025e4e <mbedtls_sha256_free+0x8>
20025e58:	4770      	bx	lr

20025e5a <mbedtls_sha256_clone>:
20025e5a:	b508      	push	{r3, lr}
20025e5c:	226c      	movs	r2, #108	@ 0x6c
20025e5e:	f004 fcaf 	bl	2002a7c0 <memcpy>
20025e62:	bd08      	pop	{r3, pc}

20025e64 <mbedtls_sha256_starts>:
20025e64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20025e68:	b1c1      	cbz	r1, 20025e9c <mbedtls_sha256_starts+0x38>
20025e6a:	f8df e078 	ldr.w	lr, [pc, #120]	@ 20025ee4 <mbedtls_sha256_starts+0x80>
20025e6e:	f8df c078 	ldr.w	ip, [pc, #120]	@ 20025ee8 <mbedtls_sha256_starts+0x84>
20025e72:	4f10      	ldr	r7, [pc, #64]	@ (20025eb4 <mbedtls_sha256_starts+0x50>)
20025e74:	4e10      	ldr	r6, [pc, #64]	@ (20025eb8 <mbedtls_sha256_starts+0x54>)
20025e76:	4d11      	ldr	r5, [pc, #68]	@ (20025ebc <mbedtls_sha256_starts+0x58>)
20025e78:	4c11      	ldr	r4, [pc, #68]	@ (20025ec0 <mbedtls_sha256_starts+0x5c>)
20025e7a:	4a12      	ldr	r2, [pc, #72]	@ (20025ec4 <mbedtls_sha256_starts+0x60>)
20025e7c:	4b12      	ldr	r3, [pc, #72]	@ (20025ec8 <mbedtls_sha256_starts+0x64>)
20025e7e:	f04f 0800 	mov.w	r8, #0
20025e82:	e9c0 ec02 	strd	lr, ip, [r0, #8]
20025e86:	e9c0 8800 	strd	r8, r8, [r0]
20025e8a:	e9c0 7604 	strd	r7, r6, [r0, #16]
20025e8e:	e9c0 5406 	strd	r5, r4, [r0, #24]
20025e92:	e9c0 2308 	strd	r2, r3, [r0, #32]
20025e96:	6681      	str	r1, [r0, #104]	@ 0x68
20025e98:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025e9c:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 20025eec <mbedtls_sha256_starts+0x88>
20025ea0:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 20025ef0 <mbedtls_sha256_starts+0x8c>
20025ea4:	4f09      	ldr	r7, [pc, #36]	@ (20025ecc <mbedtls_sha256_starts+0x68>)
20025ea6:	4e0a      	ldr	r6, [pc, #40]	@ (20025ed0 <mbedtls_sha256_starts+0x6c>)
20025ea8:	4d0a      	ldr	r5, [pc, #40]	@ (20025ed4 <mbedtls_sha256_starts+0x70>)
20025eaa:	4c0b      	ldr	r4, [pc, #44]	@ (20025ed8 <mbedtls_sha256_starts+0x74>)
20025eac:	4a0b      	ldr	r2, [pc, #44]	@ (20025edc <mbedtls_sha256_starts+0x78>)
20025eae:	4b0c      	ldr	r3, [pc, #48]	@ (20025ee0 <mbedtls_sha256_starts+0x7c>)
20025eb0:	e7e5      	b.n	20025e7e <mbedtls_sha256_starts+0x1a>
20025eb2:	bf00      	nop
20025eb4:	3070dd17 	.word	0x3070dd17
20025eb8:	f70e5939 	.word	0xf70e5939
20025ebc:	ffc00b31 	.word	0xffc00b31
20025ec0:	68581511 	.word	0x68581511
20025ec4:	64f98fa7 	.word	0x64f98fa7
20025ec8:	befa4fa4 	.word	0xbefa4fa4
20025ecc:	3c6ef372 	.word	0x3c6ef372
20025ed0:	a54ff53a 	.word	0xa54ff53a
20025ed4:	510e527f 	.word	0x510e527f
20025ed8:	9b05688c 	.word	0x9b05688c
20025edc:	1f83d9ab 	.word	0x1f83d9ab
20025ee0:	5be0cd19 	.word	0x5be0cd19
20025ee4:	c1059ed8 	.word	0xc1059ed8
20025ee8:	367cd507 	.word	0x367cd507
20025eec:	6a09e667 	.word	0x6a09e667
20025ef0:	bb67ae85 	.word	0xbb67ae85

20025ef4 <mbedtls_sha256_process>:
20025ef4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025ef8:	b0cf      	sub	sp, #316	@ 0x13c
20025efa:	aa06      	add	r2, sp, #24
20025efc:	460b      	mov	r3, r1
20025efe:	4616      	mov	r6, r2
20025f00:	9004      	str	r0, [sp, #16]
20025f02:	f100 0408 	add.w	r4, r0, #8
20025f06:	f100 0728 	add.w	r7, r0, #40	@ 0x28
20025f0a:	4635      	mov	r5, r6
20025f0c:	6820      	ldr	r0, [r4, #0]
20025f0e:	6861      	ldr	r1, [r4, #4]
20025f10:	3408      	adds	r4, #8
20025f12:	c503      	stmia	r5!, {r0, r1}
20025f14:	42bc      	cmp	r4, r7
20025f16:	462e      	mov	r6, r5
20025f18:	d1f7      	bne.n	20025f0a <mbedtls_sha256_process+0x16>
20025f1a:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
20025f1e:	4619      	mov	r1, r3
20025f20:	4650      	mov	r0, sl
20025f22:	f103 0440 	add.w	r4, r3, #64	@ 0x40
20025f26:	784b      	ldrb	r3, [r1, #1]
20025f28:	780d      	ldrb	r5, [r1, #0]
20025f2a:	041b      	lsls	r3, r3, #16
20025f2c:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
20025f30:	78cd      	ldrb	r5, [r1, #3]
20025f32:	3104      	adds	r1, #4
20025f34:	432b      	orrs	r3, r5
20025f36:	f811 5c02 	ldrb.w	r5, [r1, #-2]
20025f3a:	428c      	cmp	r4, r1
20025f3c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
20025f40:	f840 3b04 	str.w	r3, [r0], #4
20025f44:	d1ef      	bne.n	20025f26 <mbedtls_sha256_process+0x32>
20025f46:	4996      	ldr	r1, [pc, #600]	@ (200261a0 <mbedtls_sha256_process+0x2ac>)
20025f48:	46d4      	mov	ip, sl
20025f4a:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
20025f4e:	e9d2 9600 	ldrd	r9, r6, [r2]
20025f52:	460d      	mov	r5, r1
20025f54:	9100      	str	r1, [sp, #0]
20025f56:	f8d2 801c 	ldr.w	r8, [r2, #28]
20025f5a:	f8d2 b010 	ldr.w	fp, [r2, #16]
20025f5e:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
20025f62:	6829      	ldr	r1, [r5, #0]
20025f64:	f8dc 0000 	ldr.w	r0, [ip]
20025f68:	ea4f 24fb 	mov.w	r4, fp, ror #11
20025f6c:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20025f70:	4401      	add	r1, r0
20025f72:	ea87 000e 	eor.w	r0, r7, lr
20025f76:	ea84 647b 	eor.w	r4, r4, fp, ror #25
20025f7a:	ea00 000b 	and.w	r0, r0, fp
20025f7e:	4078      	eors	r0, r7
20025f80:	4421      	add	r1, r4
20025f82:	4401      	add	r1, r0
20025f84:	4441      	add	r1, r8
20025f86:	ea4f 3879 	mov.w	r8, r9, ror #13
20025f8a:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
20025f8e:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
20025f92:	440a      	add	r2, r1
20025f94:	4488      	add	r8, r1
20025f96:	ea49 0106 	orr.w	r1, r9, r6
20025f9a:	ea09 0006 	and.w	r0, r9, r6
20025f9e:	4019      	ands	r1, r3
20025fa0:	4301      	orrs	r1, r0
20025fa2:	4488      	add	r8, r1
20025fa4:	f8dc 0004 	ldr.w	r0, [ip, #4]
20025fa8:	6869      	ldr	r1, [r5, #4]
20025faa:	ea4f 3478 	mov.w	r4, r8, ror #13
20025fae:	4401      	add	r1, r0
20025fb0:	ea8b 000e 	eor.w	r0, fp, lr
20025fb4:	4010      	ands	r0, r2
20025fb6:	ea80 000e 	eor.w	r0, r0, lr
20025fba:	4439      	add	r1, r7
20025fbc:	4401      	add	r1, r0
20025fbe:	ea4f 20f2 	mov.w	r0, r2, ror #11
20025fc2:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
20025fc6:	ea80 6072 	eor.w	r0, r0, r2, ror #25
20025fca:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
20025fce:	4401      	add	r1, r0
20025fd0:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
20025fd4:	440b      	add	r3, r1
20025fd6:	440c      	add	r4, r1
20025fd8:	ea48 0109 	orr.w	r1, r8, r9
20025fdc:	ea08 0009 	and.w	r0, r8, r9
20025fe0:	4031      	ands	r1, r6
20025fe2:	4301      	orrs	r1, r0
20025fe4:	440c      	add	r4, r1
20025fe6:	f8dc 0008 	ldr.w	r0, [ip, #8]
20025fea:	68a9      	ldr	r1, [r5, #8]
20025fec:	ea82 0703 	eor.w	r7, r2, r3
20025ff0:	4401      	add	r1, r0
20025ff2:	ea82 000b 	eor.w	r0, r2, fp
20025ff6:	4018      	ands	r0, r3
20025ff8:	ea80 000b 	eor.w	r0, r0, fp
20025ffc:	4471      	add	r1, lr
20025ffe:	4401      	add	r1, r0
20026000:	ea4f 20f3 	mov.w	r0, r3, ror #11
20026004:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
20026008:	ea80 6073 	eor.w	r0, r0, r3, ror #25
2002600c:	4401      	add	r1, r0
2002600e:	ea4f 3074 	mov.w	r0, r4, ror #13
20026012:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
20026016:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
2002601a:	eb06 0e01 	add.w	lr, r6, r1
2002601e:	4408      	add	r0, r1
20026020:	ea48 0104 	orr.w	r1, r8, r4
20026024:	ea08 0604 	and.w	r6, r8, r4
20026028:	ea01 0109 	and.w	r1, r1, r9
2002602c:	4331      	orrs	r1, r6
2002602e:	4408      	add	r0, r1
20026030:	f8dc 600c 	ldr.w	r6, [ip, #12]
20026034:	68e9      	ldr	r1, [r5, #12]
20026036:	ea07 070e 	and.w	r7, r7, lr
2002603a:	440e      	add	r6, r1
2002603c:	ea4f 21fe 	mov.w	r1, lr, ror #11
20026040:	4057      	eors	r7, r2
20026042:	445e      	add	r6, fp
20026044:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026048:	ea81 617e 	eor.w	r1, r1, lr, ror #25
2002604c:	443e      	add	r6, r7
2002604e:	440e      	add	r6, r1
20026050:	ea4f 3170 	mov.w	r1, r0, ror #13
20026054:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
20026058:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
2002605c:	44b1      	add	r9, r6
2002605e:	4431      	add	r1, r6
20026060:	ea44 0600 	orr.w	r6, r4, r0
20026064:	ea04 0700 	and.w	r7, r4, r0
20026068:	ea06 0608 	and.w	r6, r6, r8
2002606c:	433e      	orrs	r6, r7
2002606e:	4431      	add	r1, r6
20026070:	f8dc 7010 	ldr.w	r7, [ip, #16]
20026074:	692e      	ldr	r6, [r5, #16]
20026076:	3520      	adds	r5, #32
20026078:	443e      	add	r6, r7
2002607a:	4416      	add	r6, r2
2002607c:	ea83 020e 	eor.w	r2, r3, lr
20026080:	ea02 0209 	and.w	r2, r2, r9
20026084:	405a      	eors	r2, r3
20026086:	4416      	add	r6, r2
20026088:	ea4f 22f9 	mov.w	r2, r9, ror #11
2002608c:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
20026090:	ea82 6279 	eor.w	r2, r2, r9, ror #25
20026094:	4416      	add	r6, r2
20026096:	ea4f 3271 	mov.w	r2, r1, ror #13
2002609a:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
2002609e:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
200260a2:	44b0      	add	r8, r6
200260a4:	4432      	add	r2, r6
200260a6:	ea40 0601 	orr.w	r6, r0, r1
200260aa:	ea00 0701 	and.w	r7, r0, r1
200260ae:	4026      	ands	r6, r4
200260b0:	433e      	orrs	r6, r7
200260b2:	4432      	add	r2, r6
200260b4:	f8dc 7014 	ldr.w	r7, [ip, #20]
200260b8:	f855 6c0c 	ldr.w	r6, [r5, #-12]
200260bc:	f10c 0c20 	add.w	ip, ip, #32
200260c0:	443e      	add	r6, r7
200260c2:	441e      	add	r6, r3
200260c4:	ea8e 0309 	eor.w	r3, lr, r9
200260c8:	ea03 0308 	and.w	r3, r3, r8
200260cc:	ea83 030e 	eor.w	r3, r3, lr
200260d0:	441e      	add	r6, r3
200260d2:	ea4f 23f8 	mov.w	r3, r8, ror #11
200260d6:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
200260da:	ea83 6378 	eor.w	r3, r3, r8, ror #25
200260de:	441e      	add	r6, r3
200260e0:	ea4f 3372 	mov.w	r3, r2, ror #13
200260e4:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
200260e8:	19a7      	adds	r7, r4, r6
200260ea:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
200260ee:	ea41 0402 	orr.w	r4, r1, r2
200260f2:	4433      	add	r3, r6
200260f4:	4004      	ands	r4, r0
200260f6:	ea01 0602 	and.w	r6, r1, r2
200260fa:	4334      	orrs	r4, r6
200260fc:	4423      	add	r3, r4
200260fe:	f85c 6c08 	ldr.w	r6, [ip, #-8]
20026102:	f855 4c08 	ldr.w	r4, [r5, #-8]
20026106:	4434      	add	r4, r6
20026108:	ea89 0608 	eor.w	r6, r9, r8
2002610c:	403e      	ands	r6, r7
2002610e:	ea86 0609 	eor.w	r6, r6, r9
20026112:	4474      	add	r4, lr
20026114:	4434      	add	r4, r6
20026116:	ea4f 26f7 	mov.w	r6, r7, ror #11
2002611a:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
2002611e:	ea86 6677 	eor.w	r6, r6, r7, ror #25
20026122:	4434      	add	r4, r6
20026124:	eb00 0e04 	add.w	lr, r0, r4
20026128:	ea4f 3073 	mov.w	r0, r3, ror #13
2002612c:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
20026130:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
20026134:	4420      	add	r0, r4
20026136:	ea42 0403 	orr.w	r4, r2, r3
2002613a:	400c      	ands	r4, r1
2002613c:	ea02 0603 	and.w	r6, r2, r3
20026140:	4334      	orrs	r4, r6
20026142:	1906      	adds	r6, r0, r4
20026144:	f855 0c04 	ldr.w	r0, [r5, #-4]
20026148:	f85c 4c04 	ldr.w	r4, [ip, #-4]
2002614c:	4420      	add	r0, r4
2002614e:	ea88 0407 	eor.w	r4, r8, r7
20026152:	ea04 040e 	and.w	r4, r4, lr
20026156:	4448      	add	r0, r9
20026158:	ea84 0408 	eor.w	r4, r4, r8
2002615c:	4420      	add	r0, r4
2002615e:	ea4f 24fe 	mov.w	r4, lr, ror #11
20026162:	ea84 14be 	eor.w	r4, r4, lr, ror #6
20026166:	ea84 647e 	eor.w	r4, r4, lr, ror #25
2002616a:	4420      	add	r0, r4
2002616c:	eb01 0b00 	add.w	fp, r1, r0
20026170:	ea4f 3176 	mov.w	r1, r6, ror #13
20026174:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
20026178:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
2002617c:	4401      	add	r1, r0
2002617e:	ea43 0006 	orr.w	r0, r3, r6
20026182:	4010      	ands	r0, r2
20026184:	ea03 0406 	and.w	r4, r3, r6
20026188:	4320      	orrs	r0, r4
2002618a:	eb01 0900 	add.w	r9, r1, r0
2002618e:	4905      	ldr	r1, [pc, #20]	@ (200261a4 <mbedtls_sha256_process+0x2b0>)
20026190:	42a9      	cmp	r1, r5
20026192:	f47f aee6 	bne.w	20025f62 <mbedtls_sha256_process+0x6e>
20026196:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
2002619a:	9105      	str	r1, [sp, #20]
2002619c:	e004      	b.n	200261a8 <mbedtls_sha256_process+0x2b4>
2002619e:	bf00      	nop
200261a0:	2002bd14 	.word	0x2002bd14
200261a4:	2002bd54 	.word	0x2002bd54
200261a8:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
200261ac:	f8da 5004 	ldr.w	r5, [sl, #4]
200261b0:	ea4f 44f1 	mov.w	r4, r1, ror #19
200261b4:	ea84 4471 	eor.w	r4, r4, r1, ror #17
200261b8:	f8da 0000 	ldr.w	r0, [sl]
200261bc:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
200261c0:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
200261c4:	f10a 0a20 	add.w	sl, sl, #32
200261c8:	4401      	add	r1, r0
200261ca:	ea4f 40b5 	mov.w	r0, r5, ror #18
200261ce:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
200261d2:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
200261d6:	4421      	add	r1, r4
200261d8:	4401      	add	r1, r0
200261da:	9103      	str	r1, [sp, #12]
200261dc:	ea87 000e 	eor.w	r0, r7, lr
200261e0:	9900      	ldr	r1, [sp, #0]
200261e2:	ea4f 24fb 	mov.w	r4, fp, ror #11
200261e6:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
200261ea:	ea00 000b 	and.w	r0, r0, fp
200261ee:	ea84 647b 	eor.w	r4, r4, fp, ror #25
200261f2:	6c09      	ldr	r1, [r1, #64]	@ 0x40
200261f4:	4078      	eors	r0, r7
200261f6:	4420      	add	r0, r4
200261f8:	4401      	add	r1, r0
200261fa:	9803      	ldr	r0, [sp, #12]
200261fc:	ea4f 3479 	mov.w	r4, r9, ror #13
20026200:	4401      	add	r1, r0
20026202:	4441      	add	r1, r8
20026204:	eb02 0801 	add.w	r8, r2, r1
20026208:	ea49 0206 	orr.w	r2, r9, r6
2002620c:	f8ca 0020 	str.w	r0, [sl, #32]
20026210:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
20026214:	ea09 0006 	and.w	r0, r9, r6
20026218:	401a      	ands	r2, r3
2002621a:	4302      	orrs	r2, r0
2002621c:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
20026220:	4414      	add	r4, r2
20026222:	f8da 201c 	ldr.w	r2, [sl, #28]
20026226:	440c      	add	r4, r1
20026228:	ea4f 4cf2 	mov.w	ip, r2, ror #19
2002622c:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
20026230:	f85a 1c18 	ldr.w	r1, [sl, #-24]
20026234:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026238:	f8da 2008 	ldr.w	r2, [sl, #8]
2002623c:	18a8      	adds	r0, r5, r2
2002623e:	ea4f 42b1 	mov.w	r2, r1, ror #18
20026242:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
20026246:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
2002624a:	4460      	add	r0, ip
2002624c:	4410      	add	r0, r2
2002624e:	9a00      	ldr	r2, [sp, #0]
20026250:	ea8b 050e 	eor.w	r5, fp, lr
20026254:	6c52      	ldr	r2, [r2, #68]	@ 0x44
20026256:	ea05 0508 	and.w	r5, r5, r8
2002625a:	443a      	add	r2, r7
2002625c:	4402      	add	r2, r0
2002625e:	ea85 050e 	eor.w	r5, r5, lr
20026262:	4415      	add	r5, r2
20026264:	ea4f 22f8 	mov.w	r2, r8, ror #11
20026268:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
2002626c:	ea82 6278 	eor.w	r2, r2, r8, ror #25
20026270:	442a      	add	r2, r5
20026272:	4413      	add	r3, r2
20026274:	9301      	str	r3, [sp, #4]
20026276:	ea49 0504 	orr.w	r5, r9, r4
2002627a:	ea4f 3374 	mov.w	r3, r4, ror #13
2002627e:	ea09 0704 	and.w	r7, r9, r4
20026282:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
20026286:	4035      	ands	r5, r6
20026288:	433d      	orrs	r5, r7
2002628a:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
2002628e:	442b      	add	r3, r5
20026290:	4413      	add	r3, r2
20026292:	9a03      	ldr	r2, [sp, #12]
20026294:	f85a 5c14 	ldr.w	r5, [sl, #-20]
20026298:	ea4f 4cf2 	mov.w	ip, r2, ror #19
2002629c:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
200262a0:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
200262a4:	f8da 200c 	ldr.w	r2, [sl, #12]
200262a8:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
200262ac:	188f      	adds	r7, r1, r2
200262ae:	ea4f 42b5 	mov.w	r2, r5, ror #18
200262b2:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
200262b6:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
200262ba:	4467      	add	r7, ip
200262bc:	4417      	add	r7, r2
200262be:	9a01      	ldr	r2, [sp, #4]
200262c0:	ea8b 0108 	eor.w	r1, fp, r8
200262c4:	4011      	ands	r1, r2
200262c6:	9a00      	ldr	r2, [sp, #0]
200262c8:	ea81 010b 	eor.w	r1, r1, fp
200262cc:	6c92      	ldr	r2, [r2, #72]	@ 0x48
200262ce:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
200262d2:	4472      	add	r2, lr
200262d4:	443a      	add	r2, r7
200262d6:	eb01 0c02 	add.w	ip, r1, r2
200262da:	9a01      	ldr	r2, [sp, #4]
200262dc:	9901      	ldr	r1, [sp, #4]
200262de:	ea4f 22f2 	mov.w	r2, r2, ror #11
200262e2:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
200262e6:	ea82 6271 	eor.w	r2, r2, r1, ror #25
200262ea:	4462      	add	r2, ip
200262ec:	18b1      	adds	r1, r6, r2
200262ee:	9102      	str	r1, [sp, #8]
200262f0:	ea44 0603 	orr.w	r6, r4, r3
200262f4:	ea4f 3173 	mov.w	r1, r3, ror #13
200262f8:	ea04 0c03 	and.w	ip, r4, r3
200262fc:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
20026300:	ea06 0609 	and.w	r6, r6, r9
20026304:	ea46 060c 	orr.w	r6, r6, ip
20026308:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
2002630c:	4431      	add	r1, r6
2002630e:	4411      	add	r1, r2
20026310:	ea4f 42f0 	mov.w	r2, r0, ror #19
20026314:	ea82 4270 	eor.w	r2, r2, r0, ror #17
20026318:	f85a 6c10 	ldr.w	r6, [sl, #-16]
2002631c:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
20026320:	f8da 2010 	ldr.w	r2, [sl, #16]
20026324:	ea03 0e01 	and.w	lr, r3, r1
20026328:	4415      	add	r5, r2
2002632a:	ea4f 42b6 	mov.w	r2, r6, ror #18
2002632e:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
20026332:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
20026336:	4405      	add	r5, r0
20026338:	4415      	add	r5, r2
2002633a:	9a01      	ldr	r2, [sp, #4]
2002633c:	ea88 0002 	eor.w	r0, r8, r2
20026340:	9a02      	ldr	r2, [sp, #8]
20026342:	4010      	ands	r0, r2
20026344:	9a00      	ldr	r2, [sp, #0]
20026346:	ea80 0008 	eor.w	r0, r0, r8
2002634a:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
2002634c:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
20026350:	445a      	add	r2, fp
20026352:	442a      	add	r2, r5
20026354:	eb00 0c02 	add.w	ip, r0, r2
20026358:	9a02      	ldr	r2, [sp, #8]
2002635a:	9802      	ldr	r0, [sp, #8]
2002635c:	ea4f 22f2 	mov.w	r2, r2, ror #11
20026360:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
20026364:	ea82 6270 	eor.w	r2, r2, r0, ror #25
20026368:	4462      	add	r2, ip
2002636a:	ea4f 3071 	mov.w	r0, r1, ror #13
2002636e:	ea43 0c01 	orr.w	ip, r3, r1
20026372:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
20026376:	ea0c 0c04 	and.w	ip, ip, r4
2002637a:	ea4c 0c0e 	orr.w	ip, ip, lr
2002637e:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
20026382:	4460      	add	r0, ip
20026384:	4410      	add	r0, r2
20026386:	4491      	add	r9, r2
20026388:	ea4f 42f7 	mov.w	r2, r7, ror #19
2002638c:	ea82 4277 	eor.w	r2, r2, r7, ror #17
20026390:	f85a cc0c 	ldr.w	ip, [sl, #-12]
20026394:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
20026398:	f8da 2014 	ldr.w	r2, [sl, #20]
2002639c:	ea01 0e00 	and.w	lr, r1, r0
200263a0:	4416      	add	r6, r2
200263a2:	ea4f 42bc 	mov.w	r2, ip, ror #18
200263a6:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
200263aa:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
200263ae:	443e      	add	r6, r7
200263b0:	4416      	add	r6, r2
200263b2:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
200263b6:	4057      	eors	r7, r2
200263b8:	ea07 0709 	and.w	r7, r7, r9
200263bc:	4057      	eors	r7, r2
200263be:	9a00      	ldr	r2, [sp, #0]
200263c0:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
200263c4:	6d12      	ldr	r2, [r2, #80]	@ 0x50
200263c6:	4432      	add	r2, r6
200263c8:	4442      	add	r2, r8
200263ca:	443a      	add	r2, r7
200263cc:	ea4f 27f9 	mov.w	r7, r9, ror #11
200263d0:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
200263d4:	ea87 6779 	eor.w	r7, r7, r9, ror #25
200263d8:	4417      	add	r7, r2
200263da:	eb04 0807 	add.w	r8, r4, r7
200263de:	ea4f 3270 	mov.w	r2, r0, ror #13
200263e2:	ea41 0400 	orr.w	r4, r1, r0
200263e6:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
200263ea:	401c      	ands	r4, r3
200263ec:	ea44 040e 	orr.w	r4, r4, lr
200263f0:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
200263f4:	4422      	add	r2, r4
200263f6:	ea4f 44f5 	mov.w	r4, r5, ror #19
200263fa:	ea84 4475 	eor.w	r4, r4, r5, ror #17
200263fe:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
20026402:	f8da 5018 	ldr.w	r5, [sl, #24]
20026406:	f85a ec08 	ldr.w	lr, [sl, #-8]
2002640a:	4465      	add	r5, ip
2002640c:	4425      	add	r5, r4
2002640e:	ea4f 44be 	mov.w	r4, lr, ror #18
20026412:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
20026416:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
2002641a:	4425      	add	r5, r4
2002641c:	9c02      	ldr	r4, [sp, #8]
2002641e:	443a      	add	r2, r7
20026420:	ea84 0709 	eor.w	r7, r4, r9
20026424:	ea07 0708 	and.w	r7, r7, r8
20026428:	ea87 0c04 	eor.w	ip, r7, r4
2002642c:	9c00      	ldr	r4, [sp, #0]
2002642e:	9f01      	ldr	r7, [sp, #4]
20026430:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20026432:	ea00 0b02 	and.w	fp, r0, r2
20026436:	442c      	add	r4, r5
20026438:	443c      	add	r4, r7
2002643a:	eb0c 0704 	add.w	r7, ip, r4
2002643e:	ea4f 24f8 	mov.w	r4, r8, ror #11
20026442:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
20026446:	ea84 6478 	eor.w	r4, r4, r8, ror #25
2002644a:	443c      	add	r4, r7
2002644c:	191f      	adds	r7, r3, r4
2002644e:	ea40 0c02 	orr.w	ip, r0, r2
20026452:	ea4f 3372 	mov.w	r3, r2, ror #13
20026456:	ea0c 0c01 	and.w	ip, ip, r1
2002645a:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
2002645e:	ea4c 0c0b 	orr.w	ip, ip, fp
20026462:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
20026466:	4463      	add	r3, ip
20026468:	4423      	add	r3, r4
2002646a:	ea4f 44f6 	mov.w	r4, r6, ror #19
2002646e:	ea84 4476 	eor.w	r4, r4, r6, ror #17
20026472:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
20026476:	f8da 601c 	ldr.w	r6, [sl, #28]
2002647a:	f85a cc04 	ldr.w	ip, [sl, #-4]
2002647e:	4476      	add	r6, lr
20026480:	4426      	add	r6, r4
20026482:	ea4f 44bc 	mov.w	r4, ip, ror #18
20026486:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
2002648a:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
2002648e:	eb06 0b04 	add.w	fp, r6, r4
20026492:	9c00      	ldr	r4, [sp, #0]
20026494:	9e02      	ldr	r6, [sp, #8]
20026496:	6da4      	ldr	r4, [r4, #88]	@ 0x58
20026498:	ea89 0e08 	eor.w	lr, r9, r8
2002649c:	445c      	add	r4, fp
2002649e:	4434      	add	r4, r6
200264a0:	ea0e 0e07 	and.w	lr, lr, r7
200264a4:	ea4f 26f7 	mov.w	r6, r7, ror #11
200264a8:	ea8e 0e09 	eor.w	lr, lr, r9
200264ac:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
200264b0:	4474      	add	r4, lr
200264b2:	ea86 6677 	eor.w	r6, r6, r7, ror #25
200264b6:	4434      	add	r4, r6
200264b8:	eb01 0e04 	add.w	lr, r1, r4
200264bc:	ea42 0603 	orr.w	r6, r2, r3
200264c0:	ea4f 3173 	mov.w	r1, r3, ror #13
200264c4:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
200264c8:	4006      	ands	r6, r0
200264ca:	ea02 0b03 	and.w	fp, r2, r3
200264ce:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
200264d2:	ea46 060b 	orr.w	r6, r6, fp
200264d6:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
200264da:	4431      	add	r1, r6
200264dc:	190e      	adds	r6, r1, r4
200264de:	ea4f 41f5 	mov.w	r1, r5, ror #19
200264e2:	ea81 4175 	eor.w	r1, r1, r5, ror #17
200264e6:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
200264ea:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
200264ee:	9d03      	ldr	r5, [sp, #12]
200264f0:	f8da 4000 	ldr.w	r4, [sl]
200264f4:	4465      	add	r5, ip
200264f6:	4429      	add	r1, r5
200264f8:	ea4f 45b4 	mov.w	r5, r4, ror #18
200264fc:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
20026500:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
20026504:	194c      	adds	r4, r1, r5
20026506:	9900      	ldr	r1, [sp, #0]
20026508:	ea88 0507 	eor.w	r5, r8, r7
2002650c:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
2002650e:	ea05 050e 	and.w	r5, r5, lr
20026512:	4421      	add	r1, r4
20026514:	4449      	add	r1, r9
20026516:	ea85 0508 	eor.w	r5, r5, r8
2002651a:	440d      	add	r5, r1
2002651c:	ea4f 21fe 	mov.w	r1, lr, ror #11
20026520:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026524:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20026528:	4429      	add	r1, r5
2002652a:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
2002652e:	eb00 0b01 	add.w	fp, r0, r1
20026532:	ea43 0406 	orr.w	r4, r3, r6
20026536:	ea4f 3076 	mov.w	r0, r6, ror #13
2002653a:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
2002653e:	4014      	ands	r4, r2
20026540:	ea03 0506 	and.w	r5, r3, r6
20026544:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
20026548:	432c      	orrs	r4, r5
2002654a:	4420      	add	r0, r4
2002654c:	eb00 0901 	add.w	r9, r0, r1
20026550:	9900      	ldr	r1, [sp, #0]
20026552:	3120      	adds	r1, #32
20026554:	9100      	str	r1, [sp, #0]
20026556:	9905      	ldr	r1, [sp, #20]
20026558:	4551      	cmp	r1, sl
2002655a:	f47f ae25 	bne.w	200261a8 <mbedtls_sha256_process+0x2b4>
2002655e:	9308      	str	r3, [sp, #32]
20026560:	9b04      	ldr	r3, [sp, #16]
20026562:	a906      	add	r1, sp, #24
20026564:	60ca      	str	r2, [r1, #12]
20026566:	f8c1 801c 	str.w	r8, [r1, #28]
2002656a:	1d1a      	adds	r2, r3, #4
2002656c:	618f      	str	r7, [r1, #24]
2002656e:	3324      	adds	r3, #36	@ 0x24
20026570:	f8c1 e014 	str.w	lr, [r1, #20]
20026574:	604e      	str	r6, [r1, #4]
20026576:	f8c1 b010 	str.w	fp, [r1, #16]
2002657a:	f8c1 9000 	str.w	r9, [r1]
2002657e:	f852 0f04 	ldr.w	r0, [r2, #4]!
20026582:	f851 4b04 	ldr.w	r4, [r1], #4
20026586:	4293      	cmp	r3, r2
20026588:	4420      	add	r0, r4
2002658a:	6010      	str	r0, [r2, #0]
2002658c:	d1f7      	bne.n	2002657e <mbedtls_sha256_process+0x68a>
2002658e:	b04f      	add	sp, #316	@ 0x13c
20026590:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

20026594 <mbedtls_sha256_update.part.0>:
20026594:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20026598:	6803      	ldr	r3, [r0, #0]
2002659a:	4605      	mov	r5, r0
2002659c:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
200265a0:	189b      	adds	r3, r3, r2
200265a2:	6003      	str	r3, [r0, #0]
200265a4:	bf28      	it	cs
200265a6:	6843      	ldrcs	r3, [r0, #4]
200265a8:	460e      	mov	r6, r1
200265aa:	bf28      	it	cs
200265ac:	3301      	addcs	r3, #1
200265ae:	4614      	mov	r4, r2
200265b0:	bf28      	it	cs
200265b2:	6043      	strcs	r3, [r0, #4]
200265b4:	b197      	cbz	r7, 200265dc <mbedtls_sha256_update.part.0+0x48>
200265b6:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
200265ba:	4591      	cmp	r9, r2
200265bc:	d80e      	bhi.n	200265dc <mbedtls_sha256_update.part.0+0x48>
200265be:	f100 0828 	add.w	r8, r0, #40	@ 0x28
200265c2:	464a      	mov	r2, r9
200265c4:	eb08 0007 	add.w	r0, r8, r7
200265c8:	f004 f8fa 	bl	2002a7c0 <memcpy>
200265cc:	3c40      	subs	r4, #64	@ 0x40
200265ce:	4641      	mov	r1, r8
200265d0:	4628      	mov	r0, r5
200265d2:	443c      	add	r4, r7
200265d4:	f7ff fc8e 	bl	20025ef4 <mbedtls_sha256_process>
200265d8:	2700      	movs	r7, #0
200265da:	444e      	add	r6, r9
200265dc:	46a0      	mov	r8, r4
200265de:	eb04 0906 	add.w	r9, r4, r6
200265e2:	e004      	b.n	200265ee <mbedtls_sha256_update.part.0+0x5a>
200265e4:	4628      	mov	r0, r5
200265e6:	f7ff fc85 	bl	20025ef4 <mbedtls_sha256_process>
200265ea:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
200265ee:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
200265f2:	eba9 0108 	sub.w	r1, r9, r8
200265f6:	d8f5      	bhi.n	200265e4 <mbedtls_sha256_update.part.0+0x50>
200265f8:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
200265fc:	09a1      	lsrs	r1, r4, #6
200265fe:	4359      	muls	r1, r3
20026600:	1862      	adds	r2, r4, r1
20026602:	d007      	beq.n	20026614 <mbedtls_sha256_update.part.0+0x80>
20026604:	f105 0028 	add.w	r0, r5, #40	@ 0x28
20026608:	1a71      	subs	r1, r6, r1
2002660a:	4438      	add	r0, r7
2002660c:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20026610:	f004 b8d6 	b.w	2002a7c0 <memcpy>
20026614:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20026618 <mbedtls_sha256_update>:
20026618:	b10a      	cbz	r2, 2002661e <mbedtls_sha256_update+0x6>
2002661a:	f7ff bfbb 	b.w	20026594 <mbedtls_sha256_update.part.0>
2002661e:	4770      	bx	lr

20026620 <mbedtls_sha256_finish>:
20026620:	b537      	push	{r0, r1, r2, r4, r5, lr}
20026622:	4604      	mov	r4, r0
20026624:	460d      	mov	r5, r1
20026626:	e9d0 2100 	ldrd	r2, r1, [r0]
2002662a:	0f53      	lsrs	r3, r2, #29
2002662c:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
20026630:	ba1b      	rev	r3, r3
20026632:	9300      	str	r3, [sp, #0]
20026634:	00d3      	lsls	r3, r2, #3
20026636:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
2002663a:	2a37      	cmp	r2, #55	@ 0x37
2002663c:	ba1b      	rev	r3, r3
2002663e:	bf94      	ite	ls
20026640:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
20026644:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
20026648:	492b      	ldr	r1, [pc, #172]	@ (200266f8 <mbedtls_sha256_finish+0xd8>)
2002664a:	9301      	str	r3, [sp, #4]
2002664c:	f7ff ffe4 	bl	20026618 <mbedtls_sha256_update>
20026650:	2208      	movs	r2, #8
20026652:	4669      	mov	r1, sp
20026654:	4620      	mov	r0, r4
20026656:	f7ff ff9d 	bl	20026594 <mbedtls_sha256_update.part.0>
2002665a:	7ae3      	ldrb	r3, [r4, #11]
2002665c:	702b      	strb	r3, [r5, #0]
2002665e:	8963      	ldrh	r3, [r4, #10]
20026660:	706b      	strb	r3, [r5, #1]
20026662:	68a3      	ldr	r3, [r4, #8]
20026664:	0a1b      	lsrs	r3, r3, #8
20026666:	70ab      	strb	r3, [r5, #2]
20026668:	68a3      	ldr	r3, [r4, #8]
2002666a:	70eb      	strb	r3, [r5, #3]
2002666c:	7be3      	ldrb	r3, [r4, #15]
2002666e:	712b      	strb	r3, [r5, #4]
20026670:	89e3      	ldrh	r3, [r4, #14]
20026672:	716b      	strb	r3, [r5, #5]
20026674:	68e3      	ldr	r3, [r4, #12]
20026676:	0a1b      	lsrs	r3, r3, #8
20026678:	71ab      	strb	r3, [r5, #6]
2002667a:	68e3      	ldr	r3, [r4, #12]
2002667c:	71eb      	strb	r3, [r5, #7]
2002667e:	7ce3      	ldrb	r3, [r4, #19]
20026680:	722b      	strb	r3, [r5, #8]
20026682:	8a63      	ldrh	r3, [r4, #18]
20026684:	726b      	strb	r3, [r5, #9]
20026686:	6923      	ldr	r3, [r4, #16]
20026688:	0a1b      	lsrs	r3, r3, #8
2002668a:	72ab      	strb	r3, [r5, #10]
2002668c:	6923      	ldr	r3, [r4, #16]
2002668e:	72eb      	strb	r3, [r5, #11]
20026690:	7de3      	ldrb	r3, [r4, #23]
20026692:	732b      	strb	r3, [r5, #12]
20026694:	8ae3      	ldrh	r3, [r4, #22]
20026696:	736b      	strb	r3, [r5, #13]
20026698:	6963      	ldr	r3, [r4, #20]
2002669a:	0a1b      	lsrs	r3, r3, #8
2002669c:	73ab      	strb	r3, [r5, #14]
2002669e:	6963      	ldr	r3, [r4, #20]
200266a0:	73eb      	strb	r3, [r5, #15]
200266a2:	7ee3      	ldrb	r3, [r4, #27]
200266a4:	742b      	strb	r3, [r5, #16]
200266a6:	8b63      	ldrh	r3, [r4, #26]
200266a8:	746b      	strb	r3, [r5, #17]
200266aa:	69a3      	ldr	r3, [r4, #24]
200266ac:	0a1b      	lsrs	r3, r3, #8
200266ae:	74ab      	strb	r3, [r5, #18]
200266b0:	69a3      	ldr	r3, [r4, #24]
200266b2:	74eb      	strb	r3, [r5, #19]
200266b4:	7fe3      	ldrb	r3, [r4, #31]
200266b6:	752b      	strb	r3, [r5, #20]
200266b8:	8be3      	ldrh	r3, [r4, #30]
200266ba:	756b      	strb	r3, [r5, #21]
200266bc:	69e3      	ldr	r3, [r4, #28]
200266be:	0a1b      	lsrs	r3, r3, #8
200266c0:	75ab      	strb	r3, [r5, #22]
200266c2:	69e3      	ldr	r3, [r4, #28]
200266c4:	75eb      	strb	r3, [r5, #23]
200266c6:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200266ca:	762b      	strb	r3, [r5, #24]
200266cc:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200266ce:	766b      	strb	r3, [r5, #25]
200266d0:	6a23      	ldr	r3, [r4, #32]
200266d2:	0a1b      	lsrs	r3, r3, #8
200266d4:	76ab      	strb	r3, [r5, #26]
200266d6:	6a23      	ldr	r3, [r4, #32]
200266d8:	76eb      	strb	r3, [r5, #27]
200266da:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
200266dc:	b94b      	cbnz	r3, 200266f2 <mbedtls_sha256_finish+0xd2>
200266de:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200266e2:	772b      	strb	r3, [r5, #28]
200266e4:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200266e6:	776b      	strb	r3, [r5, #29]
200266e8:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200266ea:	0a1b      	lsrs	r3, r3, #8
200266ec:	77ab      	strb	r3, [r5, #30]
200266ee:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200266f0:	77eb      	strb	r3, [r5, #31]
200266f2:	b003      	add	sp, #12
200266f4:	bd30      	pop	{r4, r5, pc}
200266f6:	bf00      	nop
200266f8:	2002bcd4 	.word	0x2002bcd4

200266fc <mbedtls_sha256>:
200266fc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20026700:	461d      	mov	r5, r3
20026702:	b09c      	sub	sp, #112	@ 0x70
20026704:	4607      	mov	r7, r0
20026706:	a801      	add	r0, sp, #4
20026708:	4688      	mov	r8, r1
2002670a:	4616      	mov	r6, r2
2002670c:	f7ff fb97 	bl	20025e3e <mbedtls_sha256_init>
20026710:	b355      	cbz	r5, 20026768 <mbedtls_sha256+0x6c>
20026712:	f8df a090 	ldr.w	sl, [pc, #144]	@ 200267a4 <mbedtls_sha256+0xa8>
20026716:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 200267a8 <mbedtls_sha256+0xac>
2002671a:	f8df e090 	ldr.w	lr, [pc, #144]	@ 200267ac <mbedtls_sha256+0xb0>
2002671e:	f8df c090 	ldr.w	ip, [pc, #144]	@ 200267b0 <mbedtls_sha256+0xb4>
20026722:	4818      	ldr	r0, [pc, #96]	@ (20026784 <mbedtls_sha256+0x88>)
20026724:	4918      	ldr	r1, [pc, #96]	@ (20026788 <mbedtls_sha256+0x8c>)
20026726:	4a19      	ldr	r2, [pc, #100]	@ (2002678c <mbedtls_sha256+0x90>)
20026728:	4b19      	ldr	r3, [pc, #100]	@ (20026790 <mbedtls_sha256+0x94>)
2002672a:	2400      	movs	r4, #0
2002672c:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
20026730:	e9cd 0107 	strd	r0, r1, [sp, #28]
20026734:	4642      	mov	r2, r8
20026736:	4639      	mov	r1, r7
20026738:	a801      	add	r0, sp, #4
2002673a:	e9cd ec05 	strd	lr, ip, [sp, #20]
2002673e:	e9cd 4401 	strd	r4, r4, [sp, #4]
20026742:	e9cd a903 	strd	sl, r9, [sp, #12]
20026746:	951b      	str	r5, [sp, #108]	@ 0x6c
20026748:	f7ff ff66 	bl	20026618 <mbedtls_sha256_update>
2002674c:	4631      	mov	r1, r6
2002674e:	a801      	add	r0, sp, #4
20026750:	f7ff ff66 	bl	20026620 <mbedtls_sha256_finish>
20026754:	4623      	mov	r3, r4
20026756:	4622      	mov	r2, r4
20026758:	a901      	add	r1, sp, #4
2002675a:	54ca      	strb	r2, [r1, r3]
2002675c:	3301      	adds	r3, #1
2002675e:	2b6c      	cmp	r3, #108	@ 0x6c
20026760:	d1fa      	bne.n	20026758 <mbedtls_sha256+0x5c>
20026762:	b01c      	add	sp, #112	@ 0x70
20026764:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20026768:	f8df a048 	ldr.w	sl, [pc, #72]	@ 200267b4 <mbedtls_sha256+0xb8>
2002676c:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 200267b8 <mbedtls_sha256+0xbc>
20026770:	f8df e048 	ldr.w	lr, [pc, #72]	@ 200267bc <mbedtls_sha256+0xc0>
20026774:	f8df c048 	ldr.w	ip, [pc, #72]	@ 200267c0 <mbedtls_sha256+0xc4>
20026778:	4806      	ldr	r0, [pc, #24]	@ (20026794 <mbedtls_sha256+0x98>)
2002677a:	4907      	ldr	r1, [pc, #28]	@ (20026798 <mbedtls_sha256+0x9c>)
2002677c:	4a07      	ldr	r2, [pc, #28]	@ (2002679c <mbedtls_sha256+0xa0>)
2002677e:	4b08      	ldr	r3, [pc, #32]	@ (200267a0 <mbedtls_sha256+0xa4>)
20026780:	e7d3      	b.n	2002672a <mbedtls_sha256+0x2e>
20026782:	bf00      	nop
20026784:	ffc00b31 	.word	0xffc00b31
20026788:	68581511 	.word	0x68581511
2002678c:	64f98fa7 	.word	0x64f98fa7
20026790:	befa4fa4 	.word	0xbefa4fa4
20026794:	510e527f 	.word	0x510e527f
20026798:	9b05688c 	.word	0x9b05688c
2002679c:	1f83d9ab 	.word	0x1f83d9ab
200267a0:	5be0cd19 	.word	0x5be0cd19
200267a4:	c1059ed8 	.word	0xc1059ed8
200267a8:	367cd507 	.word	0x367cd507
200267ac:	3070dd17 	.word	0x3070dd17
200267b0:	f70e5939 	.word	0xf70e5939
200267b4:	6a09e667 	.word	0x6a09e667
200267b8:	bb67ae85 	.word	0xbb67ae85
200267bc:	3c6ef372 	.word	0x3c6ef372
200267c0:	a54ff53a 	.word	0xa54ff53a

200267c4 <mbedtls_sha512_init>:
200267c4:	22d8      	movs	r2, #216	@ 0xd8
200267c6:	2100      	movs	r1, #0
200267c8:	f003 bfe0 	b.w	2002a78c <memset>

200267cc <mbedtls_sha512_free>:
200267cc:	b138      	cbz	r0, 200267de <mbedtls_sha512_free+0x12>
200267ce:	2100      	movs	r1, #0
200267d0:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
200267d4:	4602      	mov	r2, r0
200267d6:	3001      	adds	r0, #1
200267d8:	4298      	cmp	r0, r3
200267da:	7011      	strb	r1, [r2, #0]
200267dc:	d1fa      	bne.n	200267d4 <mbedtls_sha512_free+0x8>
200267de:	4770      	bx	lr

200267e0 <mbedtls_sha512_clone>:
200267e0:	b508      	push	{r3, lr}
200267e2:	22d8      	movs	r2, #216	@ 0xd8
200267e4:	f003 ffec 	bl	2002a7c0 <memcpy>
200267e8:	bd08      	pop	{r3, pc}
200267ea:	0000      	movs	r0, r0
200267ec:	0000      	movs	r0, r0
	...

200267f0 <mbedtls_sha512_starts>:
200267f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200267f4:	b381      	cbz	r1, 20026858 <mbedtls_sha512_starts+0x68>
200267f6:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
200267fa:	e9db ab00 	ldrd	sl, fp, [fp]
200267fe:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
20026802:	e9d9 8900 	ldrd	r8, r9, [r9]
20026806:	a732      	add	r7, pc, #200	@ (adr r7, 200268d0 <mbedtls_sha512_starts+0xe0>)
20026808:	e9d7 6700 	ldrd	r6, r7, [r7]
2002680c:	a532      	add	r5, pc, #200	@ (adr r5, 200268d8 <mbedtls_sha512_starts+0xe8>)
2002680e:	e9d5 4500 	ldrd	r4, r5, [r5]
20026812:	a333      	add	r3, pc, #204	@ (adr r3, 200268e0 <mbedtls_sha512_starts+0xf0>)
20026814:	e9d3 2300 	ldrd	r2, r3, [r3]
20026818:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026888 <mbedtls_sha512_starts+0x98>
2002681c:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026890 <mbedtls_sha512_starts+0xa0>
20026820:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 20026898 <mbedtls_sha512_starts+0xa8>
20026824:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 200268a0 <mbedtls_sha512_starts+0xb0>
20026828:	ed80 5b04 	vstr	d5, [r0, #16]
2002682c:	ed80 4b00 	vstr	d4, [r0]
20026830:	ed80 4b02 	vstr	d4, [r0, #8]
20026834:	ed80 6b06 	vstr	d6, [r0, #24]
20026838:	ed80 7b08 	vstr	d7, [r0, #32]
2002683c:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
20026840:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
20026844:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
20026848:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
2002684c:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
20026850:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
20026854:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20026858:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 200268a8 <mbedtls_sha512_starts+0xb8>
2002685c:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
20026860:	e9db ab00 	ldrd	sl, fp, [fp]
20026864:	f20f 0988 	addw	r9, pc, #136	@ 0x88
20026868:	e9d9 8900 	ldrd	r8, r9, [r9]
2002686c:	a722      	add	r7, pc, #136	@ (adr r7, 200268f8 <mbedtls_sha512_starts+0x108>)
2002686e:	e9d7 6700 	ldrd	r6, r7, [r7]
20026872:	a523      	add	r5, pc, #140	@ (adr r5, 20026900 <mbedtls_sha512_starts+0x110>)
20026874:	e9d5 4500 	ldrd	r4, r5, [r5]
20026878:	a323      	add	r3, pc, #140	@ (adr r3, 20026908 <mbedtls_sha512_starts+0x118>)
2002687a:	e9d3 2300 	ldrd	r2, r3, [r3]
2002687e:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 200268b0 <mbedtls_sha512_starts+0xc0>
20026882:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 200268b8 <mbedtls_sha512_starts+0xc8>
20026886:	e7cd      	b.n	20026824 <mbedtls_sha512_starts+0x34>
20026888:	c1059ed8 	.word	0xc1059ed8
2002688c:	cbbb9d5d 	.word	0xcbbb9d5d
20026890:	367cd507 	.word	0x367cd507
20026894:	629a292a 	.word	0x629a292a
20026898:	3070dd17 	.word	0x3070dd17
2002689c:	9159015a 	.word	0x9159015a
	...
200268a8:	f3bcc908 	.word	0xf3bcc908
200268ac:	6a09e667 	.word	0x6a09e667
200268b0:	84caa73b 	.word	0x84caa73b
200268b4:	bb67ae85 	.word	0xbb67ae85
200268b8:	fe94f82b 	.word	0xfe94f82b
200268bc:	3c6ef372 	.word	0x3c6ef372
200268c0:	f70e5939 	.word	0xf70e5939
200268c4:	152fecd8 	.word	0x152fecd8
200268c8:	ffc00b31 	.word	0xffc00b31
200268cc:	67332667 	.word	0x67332667
200268d0:	68581511 	.word	0x68581511
200268d4:	8eb44a87 	.word	0x8eb44a87
200268d8:	64f98fa7 	.word	0x64f98fa7
200268dc:	db0c2e0d 	.word	0xdb0c2e0d
200268e0:	befa4fa4 	.word	0xbefa4fa4
200268e4:	47b5481d 	.word	0x47b5481d
200268e8:	5f1d36f1 	.word	0x5f1d36f1
200268ec:	a54ff53a 	.word	0xa54ff53a
200268f0:	ade682d1 	.word	0xade682d1
200268f4:	510e527f 	.word	0x510e527f
200268f8:	2b3e6c1f 	.word	0x2b3e6c1f
200268fc:	9b05688c 	.word	0x9b05688c
20026900:	fb41bd6b 	.word	0xfb41bd6b
20026904:	1f83d9ab 	.word	0x1f83d9ab
20026908:	137e2179 	.word	0x137e2179
2002690c:	5be0cd19 	.word	0x5be0cd19

20026910 <mbedtls_sha512_process>:
20026910:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20026914:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
20026918:	4682      	mov	sl, r0
2002691a:	a81e      	add	r0, sp, #120	@ 0x78
2002691c:	4604      	mov	r4, r0
2002691e:	f101 0580 	add.w	r5, r1, #128	@ 0x80
20026922:	784b      	ldrb	r3, [r1, #1]
20026924:	780a      	ldrb	r2, [r1, #0]
20026926:	041b      	lsls	r3, r3, #16
20026928:	790f      	ldrb	r7, [r1, #4]
2002692a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
2002692e:	79ca      	ldrb	r2, [r1, #7]
20026930:	788e      	ldrb	r6, [r1, #2]
20026932:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
20026936:	794f      	ldrb	r7, [r1, #5]
20026938:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
2002693c:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
20026940:	78ce      	ldrb	r6, [r1, #3]
20026942:	798f      	ldrb	r7, [r1, #6]
20026944:	3108      	adds	r1, #8
20026946:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
2002694a:	4333      	orrs	r3, r6
2002694c:	428d      	cmp	r5, r1
2002694e:	e9c4 2300 	strd	r2, r3, [r4]
20026952:	f104 0408 	add.w	r4, r4, #8
20026956:	d1e4      	bne.n	20026922 <mbedtls_sha512_process+0x12>
20026958:	4601      	mov	r1, r0
2002695a:	2610      	movs	r6, #16
2002695c:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
20026960:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
20026964:	468e      	mov	lr, r1
20026966:	0ce3      	lsrs	r3, r4, #19
20026968:	ea4f 47dc 	mov.w	r7, ip, lsr #19
2002696c:	ea4f 09c4 	mov.w	r9, r4, lsl #3
20026970:	ea4f 08cc 	mov.w	r8, ip, lsl #3
20026974:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
20026978:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
2002697c:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
20026980:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
20026984:	09a4      	lsrs	r4, r4, #6
20026986:	ea87 0708 	eor.w	r7, r7, r8
2002698a:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
2002698e:	ea83 0309 	eor.w	r3, r3, r9
20026992:	4063      	eors	r3, r4
20026994:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
20026998:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
2002699c:	e9de 8e00 	ldrd	r8, lr, [lr]
200269a0:	eb14 0408 	adds.w	r4, r4, r8
200269a4:	eb4c 0c0e 	adc.w	ip, ip, lr
200269a8:	191b      	adds	r3, r3, r4
200269aa:	eb47 070c 	adc.w	r7, r7, ip
200269ae:	0854      	lsrs	r4, r2, #1
200269b0:	ea4f 2812 	mov.w	r8, r2, lsr #8
200269b4:	ea4f 0c55 	mov.w	ip, r5, lsr #1
200269b8:	ea4f 2e15 	mov.w	lr, r5, lsr #8
200269bc:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
200269c0:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
200269c4:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
200269c8:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
200269cc:	09d2      	lsrs	r2, r2, #7
200269ce:	ea84 0408 	eor.w	r4, r4, r8
200269d2:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
200269d6:	4062      	eors	r2, r4
200269d8:	ea8c 0c0e 	eor.w	ip, ip, lr
200269dc:	189b      	adds	r3, r3, r2
200269de:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
200269e2:	f106 0601 	add.w	r6, r6, #1
200269e6:	eb47 0704 	adc.w	r7, r7, r4
200269ea:	3108      	adds	r1, #8
200269ec:	2e50      	cmp	r6, #80	@ 0x50
200269ee:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
200269f2:	d1b3      	bne.n	2002695c <mbedtls_sha512_process+0x4c>
200269f4:	f8da 3010 	ldr.w	r3, [sl, #16]
200269f8:	930e      	str	r3, [sp, #56]	@ 0x38
200269fa:	f8da 3014 	ldr.w	r3, [sl, #20]
200269fe:	930f      	str	r3, [sp, #60]	@ 0x3c
20026a00:	f8da 3018 	ldr.w	r3, [sl, #24]
20026a04:	9310      	str	r3, [sp, #64]	@ 0x40
20026a06:	f8da 301c 	ldr.w	r3, [sl, #28]
20026a0a:	9311      	str	r3, [sp, #68]	@ 0x44
20026a0c:	f8da 3020 	ldr.w	r3, [sl, #32]
20026a10:	9312      	str	r3, [sp, #72]	@ 0x48
20026a12:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026a16:	9313      	str	r3, [sp, #76]	@ 0x4c
20026a18:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
20026a1c:	9314      	str	r3, [sp, #80]	@ 0x50
20026a1e:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
20026a22:	9315      	str	r3, [sp, #84]	@ 0x54
20026a24:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
20026a28:	9316      	str	r3, [sp, #88]	@ 0x58
20026a2a:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
20026a2e:	9317      	str	r3, [sp, #92]	@ 0x5c
20026a30:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
20026a34:	9318      	str	r3, [sp, #96]	@ 0x60
20026a36:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
20026a3a:	9319      	str	r3, [sp, #100]	@ 0x64
20026a3c:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
20026a40:	931a      	str	r3, [sp, #104]	@ 0x68
20026a42:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
20026a46:	931b      	str	r3, [sp, #108]	@ 0x6c
20026a48:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
20026a4c:	931c      	str	r3, [sp, #112]	@ 0x70
20026a4e:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
20026a52:	931d      	str	r3, [sp, #116]	@ 0x74
20026a54:	4b0f      	ldr	r3, [pc, #60]	@ (20026a94 <mbedtls_sha512_process+0x184>)
20026a56:	9300      	str	r3, [sp, #0]
20026a58:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20026a5a:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
20026a5e:	930a      	str	r3, [sp, #40]	@ 0x28
20026a60:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
20026a62:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
20026a66:	930b      	str	r3, [sp, #44]	@ 0x2c
20026a68:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20026a6a:	9308      	str	r3, [sp, #32]
20026a6c:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
20026a6e:	9309      	str	r3, [sp, #36]	@ 0x24
20026a70:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20026a72:	9306      	str	r3, [sp, #24]
20026a74:	9b19      	ldr	r3, [sp, #100]	@ 0x64
20026a76:	9307      	str	r3, [sp, #28]
20026a78:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20026a7a:	9304      	str	r3, [sp, #16]
20026a7c:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20026a7e:	9305      	str	r3, [sp, #20]
20026a80:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026a82:	9303      	str	r3, [sp, #12]
20026a84:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026a86:	9301      	str	r3, [sp, #4]
20026a88:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026a8a:	9302      	str	r3, [sp, #8]
20026a8c:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026a90:	e002      	b.n	20026a98 <mbedtls_sha512_process+0x188>
20026a92:	bf00      	nop
20026a94:	2002be98 	.word	0x2002be98
20026a98:	9c04      	ldr	r4, [sp, #16]
20026a9a:	9e04      	ldr	r6, [sp, #16]
20026a9c:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026aa0:	9c05      	ldr	r4, [sp, #20]
20026aa2:	9900      	ldr	r1, [sp, #0]
20026aa4:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026aa8:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026aac:	9c04      	ldr	r4, [sp, #16]
20026aae:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026ab2:	0ca5      	lsrs	r5, r4, #18
20026ab4:	9c05      	ldr	r4, [sp, #20]
20026ab6:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026aba:	0ca4      	lsrs	r4, r4, #18
20026abc:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026ac0:	ea89 0904 	eor.w	r9, r9, r4
20026ac4:	9c05      	ldr	r4, [sp, #20]
20026ac6:	ea88 0805 	eor.w	r8, r8, r5
20026aca:	05f5      	lsls	r5, r6, #23
20026acc:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026ad0:	05e4      	lsls	r4, r4, #23
20026ad2:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026ad6:	ea88 0805 	eor.w	r8, r8, r5
20026ada:	ea89 0904 	eor.w	r9, r9, r4
20026ade:	e9d1 5700 	ldrd	r5, r7, [r1]
20026ae2:	e9d0 6400 	ldrd	r6, r4, [r0]
20026ae6:	19ad      	adds	r5, r5, r6
20026ae8:	eb47 0404 	adc.w	r4, r7, r4
20026aec:	9e06      	ldr	r6, [sp, #24]
20026aee:	9f08      	ldr	r7, [sp, #32]
20026af0:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026af2:	407e      	eors	r6, r7
20026af4:	9f07      	ldr	r7, [sp, #28]
20026af6:	eb18 0505 	adds.w	r5, r8, r5
20026afa:	ea87 0701 	eor.w	r7, r7, r1
20026afe:	9904      	ldr	r1, [sp, #16]
20026b00:	eb49 0404 	adc.w	r4, r9, r4
20026b04:	400e      	ands	r6, r1
20026b06:	9905      	ldr	r1, [sp, #20]
20026b08:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026b0c:	400f      	ands	r7, r1
20026b0e:	9908      	ldr	r1, [sp, #32]
20026b10:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026b14:	404e      	eors	r6, r1
20026b16:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026b18:	19ad      	adds	r5, r5, r6
20026b1a:	ea87 0701 	eor.w	r7, r7, r1
20026b1e:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026b20:	eb44 0407 	adc.w	r4, r4, r7
20026b24:	186d      	adds	r5, r5, r1
20026b26:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026b28:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026b2c:	eb41 0404 	adc.w	r4, r1, r4
20026b30:	9903      	ldr	r1, [sp, #12]
20026b32:	0796      	lsls	r6, r2, #30
20026b34:	1949      	adds	r1, r1, r5
20026b36:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026b3a:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026b3e:	910a      	str	r1, [sp, #40]	@ 0x28
20026b40:	ea87 0706 	eor.w	r7, r7, r6
20026b44:	eb4b 0104 	adc.w	r1, fp, r4
20026b48:	0656      	lsls	r6, r2, #25
20026b4a:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026b4e:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026b52:	910b      	str	r1, [sp, #44]	@ 0x2c
20026b54:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026b58:	9901      	ldr	r1, [sp, #4]
20026b5a:	ea88 0809 	eor.w	r8, r8, r9
20026b5e:	4077      	eors	r7, r6
20026b60:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026b64:	ea43 060c 	orr.w	r6, r3, ip
20026b68:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026b6c:	400e      	ands	r6, r1
20026b6e:	9902      	ldr	r1, [sp, #8]
20026b70:	ea03 0b0c 	and.w	fp, r3, ip
20026b74:	ea88 0809 	eor.w	r8, r8, r9
20026b78:	ea42 090e 	orr.w	r9, r2, lr
20026b7c:	ea09 0901 	and.w	r9, r9, r1
20026b80:	ea46 060b 	orr.w	r6, r6, fp
20026b84:	ea02 010e 	and.w	r1, r2, lr
20026b88:	eb18 0606 	adds.w	r6, r8, r6
20026b8c:	ea49 0901 	orr.w	r9, r9, r1
20026b90:	eb47 0709 	adc.w	r7, r7, r9
20026b94:	1971      	adds	r1, r6, r5
20026b96:	9103      	str	r1, [sp, #12]
20026b98:	9900      	ldr	r1, [sp, #0]
20026b9a:	eb44 0b07 	adc.w	fp, r4, r7
20026b9e:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026ba2:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026ba6:	9908      	ldr	r1, [sp, #32]
20026ba8:	19a4      	adds	r4, r4, r6
20026baa:	eb45 0507 	adc.w	r5, r5, r7
20026bae:	1864      	adds	r4, r4, r1
20026bb0:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026bb2:	9e06      	ldr	r6, [sp, #24]
20026bb4:	eb41 0505 	adc.w	r5, r1, r5
20026bb8:	9904      	ldr	r1, [sp, #16]
20026bba:	ea81 0706 	eor.w	r7, r1, r6
20026bbe:	9905      	ldr	r1, [sp, #20]
20026bc0:	9e07      	ldr	r6, [sp, #28]
20026bc2:	404e      	eors	r6, r1
20026bc4:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026bc6:	400f      	ands	r7, r1
20026bc8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026bca:	400e      	ands	r6, r1
20026bcc:	9906      	ldr	r1, [sp, #24]
20026bce:	404f      	eors	r7, r1
20026bd0:	9907      	ldr	r1, [sp, #28]
20026bd2:	19e4      	adds	r4, r4, r7
20026bd4:	ea86 0601 	eor.w	r6, r6, r1
20026bd8:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026bda:	eb45 0506 	adc.w	r5, r5, r6
20026bde:	0b8f      	lsrs	r7, r1, #14
20026be0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026be2:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026be6:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026bea:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026bec:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026bf0:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026bf4:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026bf6:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026bfa:	0c8e      	lsrs	r6, r1, #18
20026bfc:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026bfe:	ea87 0709 	eor.w	r7, r7, r9
20026c02:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026c06:	ea88 0806 	eor.w	r8, r8, r6
20026c0a:	05ce      	lsls	r6, r1, #23
20026c0c:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c0e:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026c12:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026c16:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c18:	407e      	eors	r6, r7
20026c1a:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026c1e:	9901      	ldr	r1, [sp, #4]
20026c20:	19a4      	adds	r4, r4, r6
20026c22:	ea88 0809 	eor.w	r8, r8, r9
20026c26:	eb45 0808 	adc.w	r8, r5, r8
20026c2a:	1909      	adds	r1, r1, r4
20026c2c:	9108      	str	r1, [sp, #32]
20026c2e:	9902      	ldr	r1, [sp, #8]
20026c30:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026c34:	eb41 0108 	adc.w	r1, r1, r8
20026c38:	9109      	str	r1, [sp, #36]	@ 0x24
20026c3a:	9903      	ldr	r1, [sp, #12]
20026c3c:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026c40:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026c44:	0f0f      	lsrs	r7, r1, #28
20026c46:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026c4a:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026c4e:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026c52:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026c56:	406e      	eors	r6, r5
20026c58:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026c5c:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026c60:	ea87 0709 	eor.w	r7, r7, r9
20026c64:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026c68:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026c6c:	406e      	eors	r6, r5
20026c6e:	ea43 0501 	orr.w	r5, r3, r1
20026c72:	ea87 0709 	eor.w	r7, r7, r9
20026c76:	4019      	ands	r1, r3
20026c78:	ea42 090b 	orr.w	r9, r2, fp
20026c7c:	ea05 050c 	and.w	r5, r5, ip
20026c80:	ea09 090e 	and.w	r9, r9, lr
20026c84:	430d      	orrs	r5, r1
20026c86:	ea02 010b 	and.w	r1, r2, fp
20026c8a:	197d      	adds	r5, r7, r5
20026c8c:	ea49 0901 	orr.w	r9, r9, r1
20026c90:	eb46 0609 	adc.w	r6, r6, r9
20026c94:	1929      	adds	r1, r5, r4
20026c96:	9101      	str	r1, [sp, #4]
20026c98:	eb48 0106 	adc.w	r1, r8, r6
20026c9c:	9102      	str	r1, [sp, #8]
20026c9e:	9900      	ldr	r1, [sp, #0]
20026ca0:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026ca4:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026ca8:	9906      	ldr	r1, [sp, #24]
20026caa:	19a4      	adds	r4, r4, r6
20026cac:	eb45 0507 	adc.w	r5, r5, r7
20026cb0:	1864      	adds	r4, r4, r1
20026cb2:	9907      	ldr	r1, [sp, #28]
20026cb4:	eb41 0505 	adc.w	r5, r1, r5
20026cb8:	9904      	ldr	r1, [sp, #16]
20026cba:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026cbc:	ea81 0706 	eor.w	r7, r1, r6
20026cc0:	9905      	ldr	r1, [sp, #20]
20026cc2:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026cc4:	404e      	eors	r6, r1
20026cc6:	9908      	ldr	r1, [sp, #32]
20026cc8:	400f      	ands	r7, r1
20026cca:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026ccc:	400e      	ands	r6, r1
20026cce:	9904      	ldr	r1, [sp, #16]
20026cd0:	404f      	eors	r7, r1
20026cd2:	9905      	ldr	r1, [sp, #20]
20026cd4:	19e4      	adds	r4, r4, r7
20026cd6:	ea86 0601 	eor.w	r6, r6, r1
20026cda:	9908      	ldr	r1, [sp, #32]
20026cdc:	eb45 0506 	adc.w	r5, r5, r6
20026ce0:	0b8f      	lsrs	r7, r1, #14
20026ce2:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026ce4:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026ce8:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026cec:	9908      	ldr	r1, [sp, #32]
20026cee:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026cf2:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026cf6:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026cf8:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026cfc:	0c8e      	lsrs	r6, r1, #18
20026cfe:	9908      	ldr	r1, [sp, #32]
20026d00:	ea87 0709 	eor.w	r7, r7, r9
20026d04:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026d08:	ea88 0806 	eor.w	r8, r8, r6
20026d0c:	05ce      	lsls	r6, r1, #23
20026d0e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026d10:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026d14:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026d18:	9908      	ldr	r1, [sp, #32]
20026d1a:	407e      	eors	r6, r7
20026d1c:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026d20:	19a4      	adds	r4, r4, r6
20026d22:	ea88 0809 	eor.w	r8, r8, r9
20026d26:	eb45 0808 	adc.w	r8, r5, r8
20026d2a:	eb1c 0104 	adds.w	r1, ip, r4
20026d2e:	9106      	str	r1, [sp, #24]
20026d30:	eb4e 0108 	adc.w	r1, lr, r8
20026d34:	9107      	str	r1, [sp, #28]
20026d36:	9901      	ldr	r1, [sp, #4]
20026d38:	0f0f      	lsrs	r7, r1, #28
20026d3a:	9902      	ldr	r1, [sp, #8]
20026d3c:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026d40:	0f0e      	lsrs	r6, r1, #28
20026d42:	9901      	ldr	r1, [sp, #4]
20026d44:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026d48:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026d4c:	9902      	ldr	r1, [sp, #8]
20026d4e:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026d52:	078d      	lsls	r5, r1, #30
20026d54:	9901      	ldr	r1, [sp, #4]
20026d56:	ea87 070c 	eor.w	r7, r7, ip
20026d5a:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026d5e:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20026d62:	9902      	ldr	r1, [sp, #8]
20026d64:	406e      	eors	r6, r5
20026d66:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
20026d6a:	064d      	lsls	r5, r1, #25
20026d6c:	9901      	ldr	r1, [sp, #4]
20026d6e:	ea87 070c 	eor.w	r7, r7, ip
20026d72:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026d76:	406e      	eors	r6, r5
20026d78:	9903      	ldr	r1, [sp, #12]
20026d7a:	9d01      	ldr	r5, [sp, #4]
20026d7c:	430d      	orrs	r5, r1
20026d7e:	9902      	ldr	r1, [sp, #8]
20026d80:	ea4b 0c01 	orr.w	ip, fp, r1
20026d84:	ea05 0103 	and.w	r1, r5, r3
20026d88:	910c      	str	r1, [sp, #48]	@ 0x30
20026d8a:	9d01      	ldr	r5, [sp, #4]
20026d8c:	9903      	ldr	r1, [sp, #12]
20026d8e:	ea0c 0c02 	and.w	ip, ip, r2
20026d92:	ea01 0905 	and.w	r9, r1, r5
20026d96:	9902      	ldr	r1, [sp, #8]
20026d98:	ea0b 0e01 	and.w	lr, fp, r1
20026d9c:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026d9e:	ea4c 0c0e 	orr.w	ip, ip, lr
20026da2:	ea41 0509 	orr.w	r5, r1, r9
20026da6:	9900      	ldr	r1, [sp, #0]
20026da8:	197d      	adds	r5, r7, r5
20026daa:	eb46 060c 	adc.w	r6, r6, ip
20026dae:	eb15 0904 	adds.w	r9, r5, r4
20026db2:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20026db6:	9904      	ldr	r1, [sp, #16]
20026db8:	eb48 0806 	adc.w	r8, r8, r6
20026dbc:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20026dc0:	19a4      	adds	r4, r4, r6
20026dc2:	eb45 0507 	adc.w	r5, r5, r7
20026dc6:	1864      	adds	r4, r4, r1
20026dc8:	9905      	ldr	r1, [sp, #20]
20026dca:	9e08      	ldr	r6, [sp, #32]
20026dcc:	eb41 0505 	adc.w	r5, r1, r5
20026dd0:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026dd2:	ea81 0706 	eor.w	r7, r1, r6
20026dd6:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026dd8:	9e09      	ldr	r6, [sp, #36]	@ 0x24
20026dda:	404e      	eors	r6, r1
20026ddc:	9906      	ldr	r1, [sp, #24]
20026dde:	400f      	ands	r7, r1
20026de0:	9907      	ldr	r1, [sp, #28]
20026de2:	400e      	ands	r6, r1
20026de4:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026de6:	404f      	eors	r7, r1
20026de8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026dea:	19e4      	adds	r4, r4, r7
20026dec:	ea86 0601 	eor.w	r6, r6, r1
20026df0:	9906      	ldr	r1, [sp, #24]
20026df2:	eb45 0506 	adc.w	r5, r5, r6
20026df6:	ea4f 3c91 	mov.w	ip, r1, lsr #14
20026dfa:	9907      	ldr	r1, [sp, #28]
20026dfc:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
20026e00:	0b8e      	lsrs	r6, r1, #14
20026e02:	9906      	ldr	r1, [sp, #24]
20026e04:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026e08:	ea4f 4e91 	mov.w	lr, r1, lsr #18
20026e0c:	9907      	ldr	r1, [sp, #28]
20026e0e:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
20026e12:	0c8f      	lsrs	r7, r1, #18
20026e14:	9906      	ldr	r1, [sp, #24]
20026e16:	ea8c 0c0e 	eor.w	ip, ip, lr
20026e1a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026e1e:	407e      	eors	r6, r7
20026e20:	05cf      	lsls	r7, r1, #23
20026e22:	9907      	ldr	r1, [sp, #28]
20026e24:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026e28:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
20026e2c:	9906      	ldr	r1, [sp, #24]
20026e2e:	ea8c 0707 	eor.w	r7, ip, r7
20026e32:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
20026e36:	19e4      	adds	r4, r4, r7
20026e38:	ea86 060e 	eor.w	r6, r6, lr
20026e3c:	eb45 0606 	adc.w	r6, r5, r6
20026e40:	191b      	adds	r3, r3, r4
20026e42:	930c      	str	r3, [sp, #48]	@ 0x30
20026e44:	eb42 0306 	adc.w	r3, r2, r6
20026e48:	930d      	str	r3, [sp, #52]	@ 0x34
20026e4a:	ea4f 7218 	mov.w	r2, r8, lsr #28
20026e4e:	ea4f 7388 	mov.w	r3, r8, lsl #30
20026e52:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
20026e56:	ea4f 7519 	mov.w	r5, r9, lsr #28
20026e5a:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
20026e5e:	ea4f 7789 	mov.w	r7, r9, lsl #30
20026e62:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
20026e66:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
20026e6a:	405a      	eors	r2, r3
20026e6c:	ea4f 6348 	mov.w	r3, r8, lsl #25
20026e70:	9902      	ldr	r1, [sp, #8]
20026e72:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
20026e76:	407d      	eors	r5, r7
20026e78:	ea4f 6749 	mov.w	r7, r9, lsl #25
20026e7c:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20026e80:	405a      	eors	r2, r3
20026e82:	9b01      	ldr	r3, [sp, #4]
20026e84:	407d      	eors	r5, r7
20026e86:	ea41 0708 	orr.w	r7, r1, r8
20026e8a:	9903      	ldr	r1, [sp, #12]
20026e8c:	ea43 0309 	orr.w	r3, r3, r9
20026e90:	400b      	ands	r3, r1
20026e92:	9901      	ldr	r1, [sp, #4]
20026e94:	ea07 070b 	and.w	r7, r7, fp
20026e98:	ea01 0e09 	and.w	lr, r1, r9
20026e9c:	9902      	ldr	r1, [sp, #8]
20026e9e:	ea43 030e 	orr.w	r3, r3, lr
20026ea2:	ea01 0c08 	and.w	ip, r1, r8
20026ea6:	ea47 070c 	orr.w	r7, r7, ip
20026eaa:	18eb      	adds	r3, r5, r3
20026eac:	eb42 0207 	adc.w	r2, r2, r7
20026eb0:	191b      	adds	r3, r3, r4
20026eb2:	9304      	str	r3, [sp, #16]
20026eb4:	eb46 0302 	adc.w	r3, r6, r2
20026eb8:	9305      	str	r3, [sp, #20]
20026eba:	9b00      	ldr	r3, [sp, #0]
20026ebc:	6a1b      	ldr	r3, [r3, #32]
20026ebe:	9a00      	ldr	r2, [sp, #0]
20026ec0:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026ec2:	6a52      	ldr	r2, [r2, #36]	@ 0x24
20026ec4:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
20026ec8:	191b      	adds	r3, r3, r4
20026eca:	eb42 0205 	adc.w	r2, r2, r5
20026ece:	185b      	adds	r3, r3, r1
20026ed0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026ed2:	9c06      	ldr	r4, [sp, #24]
20026ed4:	eb41 0202 	adc.w	r2, r1, r2
20026ed8:	9908      	ldr	r1, [sp, #32]
20026eda:	ea81 0504 	eor.w	r5, r1, r4
20026ede:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026ee0:	9c07      	ldr	r4, [sp, #28]
20026ee2:	404c      	eors	r4, r1
20026ee4:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026ee6:	400d      	ands	r5, r1
20026ee8:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026eea:	400c      	ands	r4, r1
20026eec:	9908      	ldr	r1, [sp, #32]
20026eee:	404d      	eors	r5, r1
20026ef0:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026ef2:	195b      	adds	r3, r3, r5
20026ef4:	ea84 0401 	eor.w	r4, r4, r1
20026ef8:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026efa:	eb42 0204 	adc.w	r2, r2, r4
20026efe:	0b8e      	lsrs	r6, r1, #14
20026f00:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f02:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026f06:	0b8c      	lsrs	r4, r1, #14
20026f08:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f0a:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20026f0e:	0c8f      	lsrs	r7, r1, #18
20026f10:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f12:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026f16:	0c8d      	lsrs	r5, r1, #18
20026f18:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f1a:	407e      	eors	r6, r7
20026f1c:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20026f20:	406c      	eors	r4, r5
20026f22:	05cd      	lsls	r5, r1, #23
20026f24:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026f26:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20026f2a:	05cf      	lsls	r7, r1, #23
20026f2c:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026f2e:	4075      	eors	r5, r6
20026f30:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026f34:	9903      	ldr	r1, [sp, #12]
20026f36:	195b      	adds	r3, r3, r5
20026f38:	ea84 0407 	eor.w	r4, r4, r7
20026f3c:	eb42 0204 	adc.w	r2, r2, r4
20026f40:	18c9      	adds	r1, r1, r3
20026f42:	910a      	str	r1, [sp, #40]	@ 0x28
20026f44:	eb4b 0102 	adc.w	r1, fp, r2
20026f48:	910b      	str	r1, [sp, #44]	@ 0x2c
20026f4a:	9904      	ldr	r1, [sp, #16]
20026f4c:	0f0e      	lsrs	r6, r1, #28
20026f4e:	9905      	ldr	r1, [sp, #20]
20026f50:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026f54:	0f0d      	lsrs	r5, r1, #28
20026f56:	9904      	ldr	r1, [sp, #16]
20026f58:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
20026f5c:	078f      	lsls	r7, r1, #30
20026f5e:	9905      	ldr	r1, [sp, #20]
20026f60:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20026f64:	078c      	lsls	r4, r1, #30
20026f66:	9904      	ldr	r1, [sp, #16]
20026f68:	407e      	eors	r6, r7
20026f6a:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20026f6e:	064f      	lsls	r7, r1, #25
20026f70:	9905      	ldr	r1, [sp, #20]
20026f72:	4065      	eors	r5, r4
20026f74:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20026f78:	064c      	lsls	r4, r1, #25
20026f7a:	9904      	ldr	r1, [sp, #16]
20026f7c:	407e      	eors	r6, r7
20026f7e:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20026f82:	4065      	eors	r5, r4
20026f84:	ea49 0401 	orr.w	r4, r9, r1
20026f88:	9905      	ldr	r1, [sp, #20]
20026f8a:	ea48 0701 	orr.w	r7, r8, r1
20026f8e:	9901      	ldr	r1, [sp, #4]
20026f90:	400c      	ands	r4, r1
20026f92:	9902      	ldr	r1, [sp, #8]
20026f94:	400f      	ands	r7, r1
20026f96:	9904      	ldr	r1, [sp, #16]
20026f98:	ea09 0e01 	and.w	lr, r9, r1
20026f9c:	9905      	ldr	r1, [sp, #20]
20026f9e:	ea44 040e 	orr.w	r4, r4, lr
20026fa2:	ea08 0c01 	and.w	ip, r8, r1
20026fa6:	1934      	adds	r4, r6, r4
20026fa8:	ea47 070c 	orr.w	r7, r7, ip
20026fac:	eb45 0507 	adc.w	r5, r5, r7
20026fb0:	18e3      	adds	r3, r4, r3
20026fb2:	9303      	str	r3, [sp, #12]
20026fb4:	9b00      	ldr	r3, [sp, #0]
20026fb6:	eb42 0b05 	adc.w	fp, r2, r5
20026fba:	9a00      	ldr	r2, [sp, #0]
20026fbc:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
20026fbe:	9908      	ldr	r1, [sp, #32]
20026fc0:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
20026fc2:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
20026fc6:	191b      	adds	r3, r3, r4
20026fc8:	eb42 0205 	adc.w	r2, r2, r5
20026fcc:	185b      	adds	r3, r3, r1
20026fce:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026fd0:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
20026fd2:	eb41 0202 	adc.w	r2, r1, r2
20026fd6:	9906      	ldr	r1, [sp, #24]
20026fd8:	ea81 0504 	eor.w	r5, r1, r4
20026fdc:	9907      	ldr	r1, [sp, #28]
20026fde:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
20026fe0:	404c      	eors	r4, r1
20026fe2:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026fe4:	400d      	ands	r5, r1
20026fe6:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026fe8:	400c      	ands	r4, r1
20026fea:	9906      	ldr	r1, [sp, #24]
20026fec:	404d      	eors	r5, r1
20026fee:	9907      	ldr	r1, [sp, #28]
20026ff0:	195b      	adds	r3, r3, r5
20026ff2:	ea84 0401 	eor.w	r4, r4, r1
20026ff6:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026ff8:	eb42 0204 	adc.w	r2, r2, r4
20026ffc:	0b8e      	lsrs	r6, r1, #14
20026ffe:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027000:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027004:	0b8c      	lsrs	r4, r1, #14
20027006:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027008:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
2002700c:	0c8f      	lsrs	r7, r1, #18
2002700e:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027010:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027014:	0c8d      	lsrs	r5, r1, #18
20027016:	990a      	ldr	r1, [sp, #40]	@ 0x28
20027018:	407e      	eors	r6, r7
2002701a:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
2002701e:	406c      	eors	r4, r5
20027020:	05cd      	lsls	r5, r1, #23
20027022:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027024:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027028:	05cf      	lsls	r7, r1, #23
2002702a:	990a      	ldr	r1, [sp, #40]	@ 0x28
2002702c:	4075      	eors	r5, r6
2002702e:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027032:	9901      	ldr	r1, [sp, #4]
20027034:	195b      	adds	r3, r3, r5
20027036:	ea84 0407 	eor.w	r4, r4, r7
2002703a:	eb42 0204 	adc.w	r2, r2, r4
2002703e:	18c9      	adds	r1, r1, r3
20027040:	9108      	str	r1, [sp, #32]
20027042:	9902      	ldr	r1, [sp, #8]
20027044:	ea4f 751b 	mov.w	r5, fp, lsr #28
20027048:	eb41 0102 	adc.w	r1, r1, r2
2002704c:	9109      	str	r1, [sp, #36]	@ 0x24
2002704e:	9903      	ldr	r1, [sp, #12]
20027050:	ea4f 748b 	mov.w	r4, fp, lsl #30
20027054:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027058:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
2002705c:	0f0e      	lsrs	r6, r1, #28
2002705e:	078f      	lsls	r7, r1, #30
20027060:	4065      	eors	r5, r4
20027062:	ea4f 644b 	mov.w	r4, fp, lsl #25
20027066:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
2002706a:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
2002706e:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
20027072:	407e      	eors	r6, r7
20027074:	4065      	eors	r5, r4
20027076:	064f      	lsls	r7, r1, #25
20027078:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
2002707c:	430c      	orrs	r4, r1
2002707e:	9905      	ldr	r1, [sp, #20]
20027080:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
20027084:	407e      	eors	r6, r7
20027086:	ea41 070b 	orr.w	r7, r1, fp
2002708a:	ea04 0109 	and.w	r1, r4, r9
2002708e:	9101      	str	r1, [sp, #4]
20027090:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20027094:	ea01 0e04 	and.w	lr, r1, r4
20027098:	9905      	ldr	r1, [sp, #20]
2002709a:	ea07 0708 	and.w	r7, r7, r8
2002709e:	ea01 0c0b 	and.w	ip, r1, fp
200270a2:	9901      	ldr	r1, [sp, #4]
200270a4:	ea47 070c 	orr.w	r7, r7, ip
200270a8:	ea41 040e 	orr.w	r4, r1, lr
200270ac:	1934      	adds	r4, r6, r4
200270ae:	eb45 0507 	adc.w	r5, r5, r7
200270b2:	18e3      	adds	r3, r4, r3
200270b4:	9301      	str	r3, [sp, #4]
200270b6:	eb42 0305 	adc.w	r3, r2, r5
200270ba:	9302      	str	r3, [sp, #8]
200270bc:	9b00      	ldr	r3, [sp, #0]
200270be:	9a00      	ldr	r2, [sp, #0]
200270c0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
200270c2:	9906      	ldr	r1, [sp, #24]
200270c4:	6b52      	ldr	r2, [r2, #52]	@ 0x34
200270c6:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
200270ca:	191b      	adds	r3, r3, r4
200270cc:	eb42 0205 	adc.w	r2, r2, r5
200270d0:	185b      	adds	r3, r3, r1
200270d2:	9907      	ldr	r1, [sp, #28]
200270d4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
200270d6:	eb41 0202 	adc.w	r2, r1, r2
200270da:	990c      	ldr	r1, [sp, #48]	@ 0x30
200270dc:	ea81 0504 	eor.w	r5, r1, r4
200270e0:	990d      	ldr	r1, [sp, #52]	@ 0x34
200270e2:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
200270e4:	404c      	eors	r4, r1
200270e6:	9908      	ldr	r1, [sp, #32]
200270e8:	400d      	ands	r5, r1
200270ea:	9909      	ldr	r1, [sp, #36]	@ 0x24
200270ec:	400c      	ands	r4, r1
200270ee:	990c      	ldr	r1, [sp, #48]	@ 0x30
200270f0:	404d      	eors	r5, r1
200270f2:	990d      	ldr	r1, [sp, #52]	@ 0x34
200270f4:	195b      	adds	r3, r3, r5
200270f6:	ea84 0401 	eor.w	r4, r4, r1
200270fa:	9908      	ldr	r1, [sp, #32]
200270fc:	eb42 0204 	adc.w	r2, r2, r4
20027100:	0b8e      	lsrs	r6, r1, #14
20027102:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027104:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20027108:	0b8c      	lsrs	r4, r1, #14
2002710a:	9908      	ldr	r1, [sp, #32]
2002710c:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20027110:	0c8f      	lsrs	r7, r1, #18
20027112:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027114:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20027118:	0c8d      	lsrs	r5, r1, #18
2002711a:	9908      	ldr	r1, [sp, #32]
2002711c:	407e      	eors	r6, r7
2002711e:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027122:	406c      	eors	r4, r5
20027124:	05cd      	lsls	r5, r1, #23
20027126:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027128:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
2002712c:	05cf      	lsls	r7, r1, #23
2002712e:	9908      	ldr	r1, [sp, #32]
20027130:	4075      	eors	r5, r6
20027132:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027136:	195b      	adds	r3, r3, r5
20027138:	ea84 0407 	eor.w	r4, r4, r7
2002713c:	eb42 0204 	adc.w	r2, r2, r4
20027140:	eb19 0103 	adds.w	r1, r9, r3
20027144:	9106      	str	r1, [sp, #24]
20027146:	eb48 0102 	adc.w	r1, r8, r2
2002714a:	9107      	str	r1, [sp, #28]
2002714c:	9901      	ldr	r1, [sp, #4]
2002714e:	0f0e      	lsrs	r6, r1, #28
20027150:	9902      	ldr	r1, [sp, #8]
20027152:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20027156:	0f0d      	lsrs	r5, r1, #28
20027158:	9901      	ldr	r1, [sp, #4]
2002715a:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
2002715e:	078f      	lsls	r7, r1, #30
20027160:	9902      	ldr	r1, [sp, #8]
20027162:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20027166:	078c      	lsls	r4, r1, #30
20027168:	9901      	ldr	r1, [sp, #4]
2002716a:	407e      	eors	r6, r7
2002716c:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027170:	064f      	lsls	r7, r1, #25
20027172:	9902      	ldr	r1, [sp, #8]
20027174:	4065      	eors	r5, r4
20027176:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
2002717a:	064c      	lsls	r4, r1, #25
2002717c:	9901      	ldr	r1, [sp, #4]
2002717e:	407e      	eors	r6, r7
20027180:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027184:	4065      	eors	r5, r4
20027186:	9903      	ldr	r1, [sp, #12]
20027188:	9c01      	ldr	r4, [sp, #4]
2002718a:	430c      	orrs	r4, r1
2002718c:	9902      	ldr	r1, [sp, #8]
2002718e:	ea4b 0701 	orr.w	r7, fp, r1
20027192:	9904      	ldr	r1, [sp, #16]
20027194:	ea04 0801 	and.w	r8, r4, r1
20027198:	9905      	ldr	r1, [sp, #20]
2002719a:	9c01      	ldr	r4, [sp, #4]
2002719c:	400f      	ands	r7, r1
2002719e:	9903      	ldr	r1, [sp, #12]
200271a0:	ea01 0e04 	and.w	lr, r1, r4
200271a4:	9902      	ldr	r1, [sp, #8]
200271a6:	ea48 040e 	orr.w	r4, r8, lr
200271aa:	ea0b 0c01 	and.w	ip, fp, r1
200271ae:	1934      	adds	r4, r6, r4
200271b0:	ea47 070c 	orr.w	r7, r7, ip
200271b4:	eb45 0507 	adc.w	r5, r5, r7
200271b8:	eb14 0c03 	adds.w	ip, r4, r3
200271bc:	9b00      	ldr	r3, [sp, #0]
200271be:	eb42 0e05 	adc.w	lr, r2, r5
200271c2:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
200271c4:	9a00      	ldr	r2, [sp, #0]
200271c6:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
200271ca:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
200271cc:	191c      	adds	r4, r3, r4
200271ce:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200271d0:	eb42 0205 	adc.w	r2, r2, r5
200271d4:	18e4      	adds	r4, r4, r3
200271d6:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
200271d8:	9908      	ldr	r1, [sp, #32]
200271da:	eb43 0202 	adc.w	r2, r3, r2
200271de:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200271e0:	3040      	adds	r0, #64	@ 0x40
200271e2:	ea83 0501 	eor.w	r5, r3, r1
200271e6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271e8:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200271ea:	404b      	eors	r3, r1
200271ec:	9906      	ldr	r1, [sp, #24]
200271ee:	400d      	ands	r5, r1
200271f0:	9907      	ldr	r1, [sp, #28]
200271f2:	400b      	ands	r3, r1
200271f4:	990a      	ldr	r1, [sp, #40]	@ 0x28
200271f6:	404d      	eors	r5, r1
200271f8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200271fa:	1964      	adds	r4, r4, r5
200271fc:	ea83 0301 	eor.w	r3, r3, r1
20027200:	eb42 0203 	adc.w	r2, r2, r3
20027204:	9b06      	ldr	r3, [sp, #24]
20027206:	9906      	ldr	r1, [sp, #24]
20027208:	0b9e      	lsrs	r6, r3, #14
2002720a:	9b07      	ldr	r3, [sp, #28]
2002720c:	0c8f      	lsrs	r7, r1, #18
2002720e:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
20027212:	0b9b      	lsrs	r3, r3, #14
20027214:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
20027218:	9907      	ldr	r1, [sp, #28]
2002721a:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
2002721e:	0c8d      	lsrs	r5, r1, #18
20027220:	9906      	ldr	r1, [sp, #24]
20027222:	407e      	eors	r6, r7
20027224:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027228:	406b      	eors	r3, r5
2002722a:	05cd      	lsls	r5, r1, #23
2002722c:	9907      	ldr	r1, [sp, #28]
2002722e:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027232:	05cf      	lsls	r7, r1, #23
20027234:	9906      	ldr	r1, [sp, #24]
20027236:	4075      	eors	r5, r6
20027238:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002723c:	1964      	adds	r4, r4, r5
2002723e:	ea83 0307 	eor.w	r3, r3, r7
20027242:	eb42 0203 	adc.w	r2, r2, r3
20027246:	9b04      	ldr	r3, [sp, #16]
20027248:	ea4f 751e 	mov.w	r5, lr, lsr #28
2002724c:	191b      	adds	r3, r3, r4
2002724e:	9304      	str	r3, [sp, #16]
20027250:	9b05      	ldr	r3, [sp, #20]
20027252:	ea4f 761c 	mov.w	r6, ip, lsr #28
20027256:	eb43 0302 	adc.w	r3, r3, r2
2002725a:	9305      	str	r3, [sp, #20]
2002725c:	ea4f 738e 	mov.w	r3, lr, lsl #30
20027260:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
20027264:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
20027268:	ea4f 778c 	mov.w	r7, ip, lsl #30
2002726c:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
20027270:	405d      	eors	r5, r3
20027272:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
20027276:	ea4f 634e 	mov.w	r3, lr, lsl #25
2002727a:	9902      	ldr	r1, [sp, #8]
2002727c:	407e      	eors	r6, r7
2002727e:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
20027282:	ea4f 674c 	mov.w	r7, ip, lsl #25
20027286:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
2002728a:	405d      	eors	r5, r3
2002728c:	9b01      	ldr	r3, [sp, #4]
2002728e:	407e      	eors	r6, r7
20027290:	ea41 070e 	orr.w	r7, r1, lr
20027294:	9903      	ldr	r1, [sp, #12]
20027296:	ea43 030c 	orr.w	r3, r3, ip
2002729a:	400b      	ands	r3, r1
2002729c:	9901      	ldr	r1, [sp, #4]
2002729e:	ea07 070b 	and.w	r7, r7, fp
200272a2:	ea01 090c 	and.w	r9, r1, ip
200272a6:	9902      	ldr	r1, [sp, #8]
200272a8:	ea43 0309 	orr.w	r3, r3, r9
200272ac:	ea01 080e 	and.w	r8, r1, lr
200272b0:	9900      	ldr	r1, [sp, #0]
200272b2:	18f3      	adds	r3, r6, r3
200272b4:	f101 0140 	add.w	r1, r1, #64	@ 0x40
200272b8:	9100      	str	r1, [sp, #0]
200272ba:	ea47 0708 	orr.w	r7, r7, r8
200272be:	eb45 0507 	adc.w	r5, r5, r7
200272c2:	4928      	ldr	r1, [pc, #160]	@ (20027364 <mbedtls_sha512_process+0xa54>)
200272c4:	191b      	adds	r3, r3, r4
200272c6:	9c00      	ldr	r4, [sp, #0]
200272c8:	eb42 0205 	adc.w	r2, r2, r5
200272cc:	42a1      	cmp	r1, r4
200272ce:	f47f abe3 	bne.w	20026a98 <mbedtls_sha512_process+0x188>
200272d2:	990e      	ldr	r1, [sp, #56]	@ 0x38
200272d4:	18cb      	adds	r3, r1, r3
200272d6:	990f      	ldr	r1, [sp, #60]	@ 0x3c
200272d8:	eb42 0201 	adc.w	r2, r2, r1
200272dc:	e9ca 3204 	strd	r3, r2, [sl, #16]
200272e0:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200272e2:	9a11      	ldr	r2, [sp, #68]	@ 0x44
200272e4:	eb13 030c 	adds.w	r3, r3, ip
200272e8:	eb4e 0202 	adc.w	r2, lr, r2
200272ec:	e9ca 3206 	strd	r3, r2, [sl, #24]
200272f0:	9a01      	ldr	r2, [sp, #4]
200272f2:	9b12      	ldr	r3, [sp, #72]	@ 0x48
200272f4:	9913      	ldr	r1, [sp, #76]	@ 0x4c
200272f6:	189b      	adds	r3, r3, r2
200272f8:	9a02      	ldr	r2, [sp, #8]
200272fa:	eb42 0201 	adc.w	r2, r2, r1
200272fe:	e9ca 3208 	strd	r3, r2, [sl, #32]
20027302:	9a03      	ldr	r2, [sp, #12]
20027304:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20027306:	9917      	ldr	r1, [sp, #92]	@ 0x5c
20027308:	189b      	adds	r3, r3, r2
2002730a:	9a15      	ldr	r2, [sp, #84]	@ 0x54
2002730c:	eb4b 0202 	adc.w	r2, fp, r2
20027310:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
20027314:	9a04      	ldr	r2, [sp, #16]
20027316:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20027318:	189b      	adds	r3, r3, r2
2002731a:	9a05      	ldr	r2, [sp, #20]
2002731c:	eb42 0201 	adc.w	r2, r2, r1
20027320:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
20027324:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20027326:	9a06      	ldr	r2, [sp, #24]
20027328:	9919      	ldr	r1, [sp, #100]	@ 0x64
2002732a:	189a      	adds	r2, r3, r2
2002732c:	9b07      	ldr	r3, [sp, #28]
2002732e:	eb43 0301 	adc.w	r3, r3, r1
20027332:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
20027336:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20027338:	9a08      	ldr	r2, [sp, #32]
2002733a:	991b      	ldr	r1, [sp, #108]	@ 0x6c
2002733c:	189a      	adds	r2, r3, r2
2002733e:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20027340:	eb43 0301 	adc.w	r3, r3, r1
20027344:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
20027348:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
2002734a:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
2002734c:	991d      	ldr	r1, [sp, #116]	@ 0x74
2002734e:	189a      	adds	r2, r3, r2
20027350:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20027352:	eb43 0301 	adc.w	r3, r3, r1
20027356:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
2002735a:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
2002735e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027362:	bf00      	nop
20027364:	2002c118 	.word	0x2002c118

20027368 <mbedtls_sha512_update.part.0>:
20027368:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002736c:	4615      	mov	r5, r2
2002736e:	e9d0 3200 	ldrd	r3, r2, [r0]
20027372:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
20027376:	195b      	adds	r3, r3, r5
20027378:	f152 0200 	adcs.w	r2, r2, #0
2002737c:	460e      	mov	r6, r1
2002737e:	f04f 0100 	mov.w	r1, #0
20027382:	bf28      	it	cs
20027384:	2101      	movcs	r1, #1
20027386:	4604      	mov	r4, r0
20027388:	e9c0 3200 	strd	r3, r2, [r0]
2002738c:	b131      	cbz	r1, 2002739c <mbedtls_sha512_update.part.0+0x34>
2002738e:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
20027392:	3301      	adds	r3, #1
20027394:	f142 0200 	adc.w	r2, r2, #0
20027398:	e9c0 3202 	strd	r3, r2, [r0, #8]
2002739c:	b19f      	cbz	r7, 200273c6 <mbedtls_sha512_update.part.0+0x5e>
2002739e:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
200273a2:	45a9      	cmp	r9, r5
200273a4:	d80f      	bhi.n	200273c6 <mbedtls_sha512_update.part.0+0x5e>
200273a6:	f104 0850 	add.w	r8, r4, #80	@ 0x50
200273aa:	4631      	mov	r1, r6
200273ac:	464a      	mov	r2, r9
200273ae:	eb08 0007 	add.w	r0, r8, r7
200273b2:	f003 fa05 	bl	2002a7c0 <memcpy>
200273b6:	3d80      	subs	r5, #128	@ 0x80
200273b8:	4641      	mov	r1, r8
200273ba:	4620      	mov	r0, r4
200273bc:	443d      	add	r5, r7
200273be:	f7ff faa7 	bl	20026910 <mbedtls_sha512_process>
200273c2:	2700      	movs	r7, #0
200273c4:	444e      	add	r6, r9
200273c6:	46a8      	mov	r8, r5
200273c8:	eb05 0906 	add.w	r9, r5, r6
200273cc:	e004      	b.n	200273d8 <mbedtls_sha512_update.part.0+0x70>
200273ce:	4620      	mov	r0, r4
200273d0:	f7ff fa9e 	bl	20026910 <mbedtls_sha512_process>
200273d4:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
200273d8:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
200273dc:	eba9 0108 	sub.w	r1, r9, r8
200273e0:	d8f5      	bhi.n	200273ce <mbedtls_sha512_update.part.0+0x66>
200273e2:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
200273e6:	09e9      	lsrs	r1, r5, #7
200273e8:	4359      	muls	r1, r3
200273ea:	186a      	adds	r2, r5, r1
200273ec:	d007      	beq.n	200273fe <mbedtls_sha512_update.part.0+0x96>
200273ee:	f104 0050 	add.w	r0, r4, #80	@ 0x50
200273f2:	1a71      	subs	r1, r6, r1
200273f4:	4438      	add	r0, r7
200273f6:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200273fa:	f003 b9e1 	b.w	2002a7c0 <memcpy>
200273fe:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

20027402 <mbedtls_sha512_update>:
20027402:	b10a      	cbz	r2, 20027408 <mbedtls_sha512_update+0x6>
20027404:	f7ff bfb0 	b.w	20027368 <mbedtls_sha512_update.part.0>
20027408:	4770      	bx	lr
	...

2002740c <mbedtls_sha512_finish>:
2002740c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002740e:	4604      	mov	r4, r0
20027410:	e9d0 2300 	ldrd	r2, r3, [r0]
20027414:	460d      	mov	r5, r1
20027416:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
2002741a:	00c9      	lsls	r1, r1, #3
2002741c:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
20027420:	b085      	sub	sp, #20
20027422:	0e0f      	lsrs	r7, r1, #24
20027424:	0f58      	lsrs	r0, r3, #29
20027426:	00db      	lsls	r3, r3, #3
20027428:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
2002742c:	f88d 7000 	strb.w	r7, [sp]
20027430:	0c0f      	lsrs	r7, r1, #16
20027432:	f88d 7001 	strb.w	r7, [sp, #1]
20027436:	f88d 1003 	strb.w	r1, [sp, #3]
2002743a:	0a0f      	lsrs	r7, r1, #8
2002743c:	0e19      	lsrs	r1, r3, #24
2002743e:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20027442:	f88d 1008 	strb.w	r1, [sp, #8]
20027446:	00d6      	lsls	r6, r2, #3
20027448:	0c19      	lsrs	r1, r3, #16
2002744a:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
2002744e:	2a6f      	cmp	r2, #111	@ 0x6f
20027450:	ba00      	rev	r0, r0
20027452:	f88d 1009 	strb.w	r1, [sp, #9]
20027456:	ea4f 2113 	mov.w	r1, r3, lsr #8
2002745a:	bf94      	ite	ls
2002745c:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
20027460:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
20027464:	9001      	str	r0, [sp, #4]
20027466:	f88d 100a 	strb.w	r1, [sp, #10]
2002746a:	4620      	mov	r0, r4
2002746c:	4969      	ldr	r1, [pc, #420]	@ (20027614 <mbedtls_sha512_finish+0x208>)
2002746e:	ba36      	rev	r6, r6
20027470:	f88d 300b 	strb.w	r3, [sp, #11]
20027474:	f88d 7002 	strb.w	r7, [sp, #2]
20027478:	9603      	str	r6, [sp, #12]
2002747a:	f7ff ffc2 	bl	20027402 <mbedtls_sha512_update>
2002747e:	2210      	movs	r2, #16
20027480:	4669      	mov	r1, sp
20027482:	4620      	mov	r0, r4
20027484:	f7ff ff70 	bl	20027368 <mbedtls_sha512_update.part.0>
20027488:	7de3      	ldrb	r3, [r4, #23]
2002748a:	702b      	strb	r3, [r5, #0]
2002748c:	8ae3      	ldrh	r3, [r4, #22]
2002748e:	706b      	strb	r3, [r5, #1]
20027490:	6963      	ldr	r3, [r4, #20]
20027492:	0a1b      	lsrs	r3, r3, #8
20027494:	70ab      	strb	r3, [r5, #2]
20027496:	6963      	ldr	r3, [r4, #20]
20027498:	70eb      	strb	r3, [r5, #3]
2002749a:	7ce3      	ldrb	r3, [r4, #19]
2002749c:	712b      	strb	r3, [r5, #4]
2002749e:	8a63      	ldrh	r3, [r4, #18]
200274a0:	716b      	strb	r3, [r5, #5]
200274a2:	6923      	ldr	r3, [r4, #16]
200274a4:	0a1b      	lsrs	r3, r3, #8
200274a6:	71ab      	strb	r3, [r5, #6]
200274a8:	6923      	ldr	r3, [r4, #16]
200274aa:	71eb      	strb	r3, [r5, #7]
200274ac:	7fe3      	ldrb	r3, [r4, #31]
200274ae:	722b      	strb	r3, [r5, #8]
200274b0:	8be3      	ldrh	r3, [r4, #30]
200274b2:	726b      	strb	r3, [r5, #9]
200274b4:	69e3      	ldr	r3, [r4, #28]
200274b6:	0a1b      	lsrs	r3, r3, #8
200274b8:	72ab      	strb	r3, [r5, #10]
200274ba:	69e3      	ldr	r3, [r4, #28]
200274bc:	72eb      	strb	r3, [r5, #11]
200274be:	7ee3      	ldrb	r3, [r4, #27]
200274c0:	732b      	strb	r3, [r5, #12]
200274c2:	8b63      	ldrh	r3, [r4, #26]
200274c4:	736b      	strb	r3, [r5, #13]
200274c6:	69a3      	ldr	r3, [r4, #24]
200274c8:	0a1b      	lsrs	r3, r3, #8
200274ca:	73ab      	strb	r3, [r5, #14]
200274cc:	69a3      	ldr	r3, [r4, #24]
200274ce:	73eb      	strb	r3, [r5, #15]
200274d0:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200274d4:	742b      	strb	r3, [r5, #16]
200274d6:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200274d8:	746b      	strb	r3, [r5, #17]
200274da:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200274dc:	0a1b      	lsrs	r3, r3, #8
200274de:	74ab      	strb	r3, [r5, #18]
200274e0:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200274e2:	74eb      	strb	r3, [r5, #19]
200274e4:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200274e8:	752b      	strb	r3, [r5, #20]
200274ea:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200274ec:	756b      	strb	r3, [r5, #21]
200274ee:	6a23      	ldr	r3, [r4, #32]
200274f0:	0a1b      	lsrs	r3, r3, #8
200274f2:	75ab      	strb	r3, [r5, #22]
200274f4:	6a23      	ldr	r3, [r4, #32]
200274f6:	75eb      	strb	r3, [r5, #23]
200274f8:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
200274fc:	762b      	strb	r3, [r5, #24]
200274fe:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
20027500:	766b      	strb	r3, [r5, #25]
20027502:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20027504:	0a1b      	lsrs	r3, r3, #8
20027506:	76ab      	strb	r3, [r5, #26]
20027508:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
2002750a:	76eb      	strb	r3, [r5, #27]
2002750c:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
20027510:	772b      	strb	r3, [r5, #28]
20027512:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
20027514:	776b      	strb	r3, [r5, #29]
20027516:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
20027518:	0a1b      	lsrs	r3, r3, #8
2002751a:	77ab      	strb	r3, [r5, #30]
2002751c:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
2002751e:	77eb      	strb	r3, [r5, #31]
20027520:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
20027524:	f885 3020 	strb.w	r3, [r5, #32]
20027528:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
2002752a:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
2002752e:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027530:	0a1b      	lsrs	r3, r3, #8
20027532:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
20027536:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027538:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
2002753c:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
20027540:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
20027544:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
20027546:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
2002754a:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002754c:	0a1b      	lsrs	r3, r3, #8
2002754e:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
20027552:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20027554:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
20027558:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
2002755c:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
20027560:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
20027562:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
20027566:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027568:	0a1b      	lsrs	r3, r3, #8
2002756a:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
2002756e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027570:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
20027574:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
20027578:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
2002757c:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
2002757e:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
20027582:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027584:	0a1b      	lsrs	r3, r3, #8
20027586:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
2002758a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
2002758c:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027590:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
20027594:	2b00      	cmp	r3, #0
20027596:	d13b      	bne.n	20027610 <mbedtls_sha512_finish+0x204>
20027598:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
2002759c:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
200275a0:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
200275a4:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
200275a8:	6c63      	ldr	r3, [r4, #68]	@ 0x44
200275aa:	0a1b      	lsrs	r3, r3, #8
200275ac:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
200275b0:	6c63      	ldr	r3, [r4, #68]	@ 0x44
200275b2:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
200275b6:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
200275ba:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
200275be:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
200275c2:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
200275c6:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200275c8:	0a1b      	lsrs	r3, r3, #8
200275ca:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
200275ce:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200275d0:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
200275d4:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
200275d8:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
200275dc:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
200275e0:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
200275e4:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200275e6:	0a1b      	lsrs	r3, r3, #8
200275e8:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
200275ec:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200275ee:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
200275f2:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
200275f6:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
200275fa:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
200275fe:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
20027602:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
20027604:	0a1b      	lsrs	r3, r3, #8
20027606:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
2002760a:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
2002760c:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
20027610:	b005      	add	sp, #20
20027612:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027614:	2002be14 	.word	0x2002be14

20027618 <mbedtls_sha512>:
20027618:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002761c:	461c      	mov	r4, r3
2002761e:	b0b7      	sub	sp, #220	@ 0xdc
20027620:	4606      	mov	r6, r0
20027622:	4668      	mov	r0, sp
20027624:	460f      	mov	r7, r1
20027626:	4615      	mov	r5, r2
20027628:	f7ff f8cc 	bl	200267c4 <mbedtls_sha512_init>
2002762c:	2c00      	cmp	r4, #0
2002762e:	d03f      	beq.n	200276b0 <mbedtls_sha512+0x98>
20027630:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
20027634:	e9db ab00 	ldrd	sl, fp, [fp]
20027638:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
2002763c:	e9d9 8900 	ldrd	r8, r9, [r9]
20027640:	a13d      	add	r1, pc, #244	@ (adr r1, 20027738 <mbedtls_sha512+0x120>)
20027642:	e9d1 0100 	ldrd	r0, r1, [r1]
20027646:	a33e      	add	r3, pc, #248	@ (adr r3, 20027740 <mbedtls_sha512+0x128>)
20027648:	e9d3 2300 	ldrd	r2, r3, [r3]
2002764c:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 200276e0 <mbedtls_sha512+0xc8>
20027650:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 200276e8 <mbedtls_sha512+0xd0>
20027654:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 200276f0 <mbedtls_sha512+0xd8>
20027658:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 200276f8 <mbedtls_sha512+0xe0>
2002765c:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 20027700 <mbedtls_sha512+0xe8>
20027660:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
20027664:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
20027668:	463a      	mov	r2, r7
2002766a:	4631      	mov	r1, r6
2002766c:	4668      	mov	r0, sp
2002766e:	ed8d 3b00 	vstr	d3, [sp]
20027672:	ed8d 3b02 	vstr	d3, [sp, #8]
20027676:	ed8d 4b04 	vstr	d4, [sp, #16]
2002767a:	ed8d 5b06 	vstr	d5, [sp, #24]
2002767e:	ed8d 6b08 	vstr	d6, [sp, #32]
20027682:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
20027686:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
2002768a:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
2002768e:	9434      	str	r4, [sp, #208]	@ 0xd0
20027690:	f7ff feb7 	bl	20027402 <mbedtls_sha512_update>
20027694:	4629      	mov	r1, r5
20027696:	4668      	mov	r0, sp
20027698:	f7ff feb8 	bl	2002740c <mbedtls_sha512_finish>
2002769c:	2300      	movs	r3, #0
2002769e:	461a      	mov	r2, r3
200276a0:	f80d 2003 	strb.w	r2, [sp, r3]
200276a4:	3301      	adds	r3, #1
200276a6:	2bd8      	cmp	r3, #216	@ 0xd8
200276a8:	d1fa      	bne.n	200276a0 <mbedtls_sha512+0x88>
200276aa:	b037      	add	sp, #220	@ 0xdc
200276ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200276b0:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 20027708 <mbedtls_sha512+0xf0>
200276b4:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
200276b8:	e9db ab00 	ldrd	sl, fp, [fp]
200276bc:	f20f 0990 	addw	r9, pc, #144	@ 0x90
200276c0:	e9d9 8900 	ldrd	r8, r9, [r9]
200276c4:	a124      	add	r1, pc, #144	@ (adr r1, 20027758 <mbedtls_sha512+0x140>)
200276c6:	e9d1 0100 	ldrd	r0, r1, [r1]
200276ca:	a325      	add	r3, pc, #148	@ (adr r3, 20027760 <mbedtls_sha512+0x148>)
200276cc:	e9d3 2300 	ldrd	r2, r3, [r3]
200276d0:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 20027710 <mbedtls_sha512+0xf8>
200276d4:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 20027718 <mbedtls_sha512+0x100>
200276d8:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 20027720 <mbedtls_sha512+0x108>
200276dc:	e7be      	b.n	2002765c <mbedtls_sha512+0x44>
200276de:	bf00      	nop
200276e0:	c1059ed8 	.word	0xc1059ed8
200276e4:	cbbb9d5d 	.word	0xcbbb9d5d
200276e8:	367cd507 	.word	0x367cd507
200276ec:	629a292a 	.word	0x629a292a
200276f0:	3070dd17 	.word	0x3070dd17
200276f4:	9159015a 	.word	0x9159015a
200276f8:	f70e5939 	.word	0xf70e5939
200276fc:	152fecd8 	.word	0x152fecd8
	...
20027708:	f3bcc908 	.word	0xf3bcc908
2002770c:	6a09e667 	.word	0x6a09e667
20027710:	84caa73b 	.word	0x84caa73b
20027714:	bb67ae85 	.word	0xbb67ae85
20027718:	fe94f82b 	.word	0xfe94f82b
2002771c:	3c6ef372 	.word	0x3c6ef372
20027720:	5f1d36f1 	.word	0x5f1d36f1
20027724:	a54ff53a 	.word	0xa54ff53a
20027728:	ffc00b31 	.word	0xffc00b31
2002772c:	67332667 	.word	0x67332667
20027730:	68581511 	.word	0x68581511
20027734:	8eb44a87 	.word	0x8eb44a87
20027738:	64f98fa7 	.word	0x64f98fa7
2002773c:	db0c2e0d 	.word	0xdb0c2e0d
20027740:	befa4fa4 	.word	0xbefa4fa4
20027744:	47b5481d 	.word	0x47b5481d
20027748:	ade682d1 	.word	0xade682d1
2002774c:	510e527f 	.word	0x510e527f
20027750:	2b3e6c1f 	.word	0x2b3e6c1f
20027754:	9b05688c 	.word	0x9b05688c
20027758:	fb41bd6b 	.word	0xfb41bd6b
2002775c:	1f83d9ab 	.word	0x1f83d9ab
20027760:	137e2179 	.word	0x137e2179
20027764:	5be0cd19 	.word	0x5be0cd19

20027768 <mbedtls_asn1_get_len>:
20027768:	b570      	push	{r4, r5, r6, lr}
2002776a:	6803      	ldr	r3, [r0, #0]
2002776c:	1acd      	subs	r5, r1, r3
2002776e:	2d00      	cmp	r5, #0
20027770:	dc02      	bgt.n	20027778 <mbedtls_asn1_get_len+0x10>
20027772:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
20027776:	bd70      	pop	{r4, r5, r6, pc}
20027778:	f993 6000 	ldrsb.w	r6, [r3]
2002777c:	781c      	ldrb	r4, [r3, #0]
2002777e:	2e00      	cmp	r6, #0
20027780:	db0a      	blt.n	20027798 <mbedtls_asn1_get_len+0x30>
20027782:	1c5c      	adds	r4, r3, #1
20027784:	6004      	str	r4, [r0, #0]
20027786:	781b      	ldrb	r3, [r3, #0]
20027788:	6013      	str	r3, [r2, #0]
2002778a:	6803      	ldr	r3, [r0, #0]
2002778c:	1ac9      	subs	r1, r1, r3
2002778e:	6813      	ldr	r3, [r2, #0]
20027790:	428b      	cmp	r3, r1
20027792:	d8ee      	bhi.n	20027772 <mbedtls_asn1_get_len+0xa>
20027794:	2000      	movs	r0, #0
20027796:	e7ee      	b.n	20027776 <mbedtls_asn1_get_len+0xe>
20027798:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
2002779c:	3c01      	subs	r4, #1
2002779e:	2c03      	cmp	r4, #3
200277a0:	d82b      	bhi.n	200277fa <mbedtls_asn1_get_len+0x92>
200277a2:	e8df f004 	tbb	[pc, r4]
200277a6:	0a02      	.short	0x0a02
200277a8:	2114      	.short	0x2114
200277aa:	2d01      	cmp	r5, #1
200277ac:	d0e1      	beq.n	20027772 <mbedtls_asn1_get_len+0xa>
200277ae:	785b      	ldrb	r3, [r3, #1]
200277b0:	6013      	str	r3, [r2, #0]
200277b2:	6803      	ldr	r3, [r0, #0]
200277b4:	3302      	adds	r3, #2
200277b6:	6003      	str	r3, [r0, #0]
200277b8:	e7e7      	b.n	2002778a <mbedtls_asn1_get_len+0x22>
200277ba:	2d02      	cmp	r5, #2
200277bc:	ddd9      	ble.n	20027772 <mbedtls_asn1_get_len+0xa>
200277be:	f8b3 3001 	ldrh.w	r3, [r3, #1]
200277c2:	ba5b      	rev16	r3, r3
200277c4:	b29b      	uxth	r3, r3
200277c6:	6013      	str	r3, [r2, #0]
200277c8:	6803      	ldr	r3, [r0, #0]
200277ca:	3303      	adds	r3, #3
200277cc:	e7f3      	b.n	200277b6 <mbedtls_asn1_get_len+0x4e>
200277ce:	2d03      	cmp	r5, #3
200277d0:	ddcf      	ble.n	20027772 <mbedtls_asn1_get_len+0xa>
200277d2:	789c      	ldrb	r4, [r3, #2]
200277d4:	785d      	ldrb	r5, [r3, #1]
200277d6:	0224      	lsls	r4, r4, #8
200277d8:	78db      	ldrb	r3, [r3, #3]
200277da:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
200277de:	4323      	orrs	r3, r4
200277e0:	6013      	str	r3, [r2, #0]
200277e2:	6803      	ldr	r3, [r0, #0]
200277e4:	3304      	adds	r3, #4
200277e6:	e7e6      	b.n	200277b6 <mbedtls_asn1_get_len+0x4e>
200277e8:	2d04      	cmp	r5, #4
200277ea:	ddc2      	ble.n	20027772 <mbedtls_asn1_get_len+0xa>
200277ec:	f8d3 3001 	ldr.w	r3, [r3, #1]
200277f0:	ba1b      	rev	r3, r3
200277f2:	6013      	str	r3, [r2, #0]
200277f4:	6803      	ldr	r3, [r0, #0]
200277f6:	3305      	adds	r3, #5
200277f8:	e7dd      	b.n	200277b6 <mbedtls_asn1_get_len+0x4e>
200277fa:	f06f 0063 	mvn.w	r0, #99	@ 0x63
200277fe:	e7ba      	b.n	20027776 <mbedtls_asn1_get_len+0xe>

20027800 <mbedtls_asn1_get_tag>:
20027800:	b470      	push	{r4, r5, r6}
20027802:	6804      	ldr	r4, [r0, #0]
20027804:	1b0e      	subs	r6, r1, r4
20027806:	2e00      	cmp	r6, #0
20027808:	dd07      	ble.n	2002781a <mbedtls_asn1_get_tag+0x1a>
2002780a:	7826      	ldrb	r6, [r4, #0]
2002780c:	429e      	cmp	r6, r3
2002780e:	d108      	bne.n	20027822 <mbedtls_asn1_get_tag+0x22>
20027810:	3401      	adds	r4, #1
20027812:	6004      	str	r4, [r0, #0]
20027814:	bc70      	pop	{r4, r5, r6}
20027816:	f7ff bfa7 	b.w	20027768 <mbedtls_asn1_get_len>
2002781a:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
2002781e:	bc70      	pop	{r4, r5, r6}
20027820:	4770      	bx	lr
20027822:	f06f 0061 	mvn.w	r0, #97	@ 0x61
20027826:	e7fa      	b.n	2002781e <mbedtls_asn1_get_tag+0x1e>

20027828 <mbedtls_asn1_get_mpi>:
20027828:	b573      	push	{r0, r1, r4, r5, r6, lr}
2002782a:	2302      	movs	r3, #2
2002782c:	4615      	mov	r5, r2
2002782e:	aa01      	add	r2, sp, #4
20027830:	4604      	mov	r4, r0
20027832:	f7ff ffe5 	bl	20027800 <mbedtls_asn1_get_tag>
20027836:	b940      	cbnz	r0, 2002784a <mbedtls_asn1_get_mpi+0x22>
20027838:	9e01      	ldr	r6, [sp, #4]
2002783a:	4628      	mov	r0, r5
2002783c:	4632      	mov	r2, r6
2002783e:	6821      	ldr	r1, [r4, #0]
20027840:	f000 fad4 	bl	20027dec <mbedtls_mpi_read_binary>
20027844:	6823      	ldr	r3, [r4, #0]
20027846:	4433      	add	r3, r6
20027848:	6023      	str	r3, [r4, #0]
2002784a:	b002      	add	sp, #8
2002784c:	bd70      	pop	{r4, r5, r6, pc}

2002784e <mbedtls_asn1_get_bitstring_null>:
2002784e:	b538      	push	{r3, r4, r5, lr}
20027850:	2303      	movs	r3, #3
20027852:	4604      	mov	r4, r0
20027854:	4615      	mov	r5, r2
20027856:	f7ff ffd3 	bl	20027800 <mbedtls_asn1_get_tag>
2002785a:	b958      	cbnz	r0, 20027874 <mbedtls_asn1_get_bitstring_null+0x26>
2002785c:	6813      	ldr	r3, [r2, #0]
2002785e:	1e5a      	subs	r2, r3, #1
20027860:	2b01      	cmp	r3, #1
20027862:	602a      	str	r2, [r5, #0]
20027864:	d904      	bls.n	20027870 <mbedtls_asn1_get_bitstring_null+0x22>
20027866:	6823      	ldr	r3, [r4, #0]
20027868:	1c5a      	adds	r2, r3, #1
2002786a:	6022      	str	r2, [r4, #0]
2002786c:	781b      	ldrb	r3, [r3, #0]
2002786e:	b10b      	cbz	r3, 20027874 <mbedtls_asn1_get_bitstring_null+0x26>
20027870:	f06f 0067 	mvn.w	r0, #103	@ 0x67
20027874:	bd38      	pop	{r3, r4, r5, pc}

20027876 <mbedtls_asn1_get_alg>:
20027876:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
2002787a:	4690      	mov	r8, r2
2002787c:	461e      	mov	r6, r3
2002787e:	aa01      	add	r2, sp, #4
20027880:	2330      	movs	r3, #48	@ 0x30
20027882:	4605      	mov	r5, r0
20027884:	460f      	mov	r7, r1
20027886:	f7ff ffbb 	bl	20027800 <mbedtls_asn1_get_tag>
2002788a:	4604      	mov	r4, r0
2002788c:	bb10      	cbnz	r0, 200278d4 <mbedtls_asn1_get_alg+0x5e>
2002788e:	682b      	ldr	r3, [r5, #0]
20027890:	1aff      	subs	r7, r7, r3
20027892:	2f00      	cmp	r7, #0
20027894:	dd38      	ble.n	20027908 <mbedtls_asn1_get_alg+0x92>
20027896:	4642      	mov	r2, r8
20027898:	781b      	ldrb	r3, [r3, #0]
2002789a:	4628      	mov	r0, r5
2002789c:	f842 3b04 	str.w	r3, [r2], #4
200278a0:	682f      	ldr	r7, [r5, #0]
200278a2:	9b01      	ldr	r3, [sp, #4]
200278a4:	441f      	add	r7, r3
200278a6:	4639      	mov	r1, r7
200278a8:	2306      	movs	r3, #6
200278aa:	f7ff ffa9 	bl	20027800 <mbedtls_asn1_get_tag>
200278ae:	4604      	mov	r4, r0
200278b0:	b980      	cbnz	r0, 200278d4 <mbedtls_asn1_get_alg+0x5e>
200278b2:	682b      	ldr	r3, [r5, #0]
200278b4:	f8d8 2004 	ldr.w	r2, [r8, #4]
200278b8:	f8c8 3008 	str.w	r3, [r8, #8]
200278bc:	1899      	adds	r1, r3, r2
200278be:	42b9      	cmp	r1, r7
200278c0:	6029      	str	r1, [r5, #0]
200278c2:	d10b      	bne.n	200278dc <mbedtls_asn1_get_alg+0x66>
200278c4:	4601      	mov	r1, r0
200278c6:	f106 030c 	add.w	r3, r6, #12
200278ca:	4632      	mov	r2, r6
200278cc:	3601      	adds	r6, #1
200278ce:	42b3      	cmp	r3, r6
200278d0:	7011      	strb	r1, [r2, #0]
200278d2:	d1fa      	bne.n	200278ca <mbedtls_asn1_get_alg+0x54>
200278d4:	4620      	mov	r0, r4
200278d6:	b002      	add	sp, #8
200278d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200278dc:	5c9b      	ldrb	r3, [r3, r2]
200278de:	4632      	mov	r2, r6
200278e0:	f842 3b04 	str.w	r3, [r2], #4
200278e4:	682b      	ldr	r3, [r5, #0]
200278e6:	4639      	mov	r1, r7
200278e8:	3301      	adds	r3, #1
200278ea:	4628      	mov	r0, r5
200278ec:	602b      	str	r3, [r5, #0]
200278ee:	f7ff ff3b 	bl	20027768 <mbedtls_asn1_get_len>
200278f2:	b960      	cbnz	r0, 2002790e <mbedtls_asn1_get_alg+0x98>
200278f4:	682b      	ldr	r3, [r5, #0]
200278f6:	6872      	ldr	r2, [r6, #4]
200278f8:	60b3      	str	r3, [r6, #8]
200278fa:	4413      	add	r3, r2
200278fc:	42bb      	cmp	r3, r7
200278fe:	bf18      	it	ne
20027900:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
20027904:	602b      	str	r3, [r5, #0]
20027906:	e7e5      	b.n	200278d4 <mbedtls_asn1_get_alg+0x5e>
20027908:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
2002790c:	e7e2      	b.n	200278d4 <mbedtls_asn1_get_alg+0x5e>
2002790e:	4604      	mov	r4, r0
20027910:	e7e0      	b.n	200278d4 <mbedtls_asn1_get_alg+0x5e>

20027912 <mpi_sub_hlp>:
20027912:	2300      	movs	r3, #0
20027914:	b5f0      	push	{r4, r5, r6, r7, lr}
20027916:	461c      	mov	r4, r3
20027918:	1f16      	subs	r6, r2, #4
2002791a:	4284      	cmp	r4, r0
2002791c:	d103      	bne.n	20027926 <mpi_sub_hlp+0x14>
2002791e:	eb02 0284 	add.w	r2, r2, r4, lsl #2
20027922:	b9b3      	cbnz	r3, 20027952 <mpi_sub_hlp+0x40>
20027924:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027926:	f856 cf04 	ldr.w	ip, [r6, #4]!
2002792a:	ebac 0503 	sub.w	r5, ip, r3
2002792e:	6035      	str	r5, [r6, #0]
20027930:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
20027934:	3401      	adds	r4, #1
20027936:	42bd      	cmp	r5, r7
20027938:	bf2c      	ite	cs
2002793a:	f04f 0e00 	movcs.w	lr, #0
2002793e:	f04f 0e01 	movcc.w	lr, #1
20027942:	1bed      	subs	r5, r5, r7
20027944:	459c      	cmp	ip, r3
20027946:	bf2c      	ite	cs
20027948:	4673      	movcs	r3, lr
2002794a:	f10e 0301 	addcc.w	r3, lr, #1
2002794e:	6035      	str	r5, [r6, #0]
20027950:	e7e3      	b.n	2002791a <mpi_sub_hlp+0x8>
20027952:	6811      	ldr	r1, [r2, #0]
20027954:	1ac8      	subs	r0, r1, r3
20027956:	4299      	cmp	r1, r3
20027958:	bf2c      	ite	cs
2002795a:	2300      	movcs	r3, #0
2002795c:	2301      	movcc	r3, #1
2002795e:	f842 0b04 	str.w	r0, [r2], #4
20027962:	e7de      	b.n	20027922 <mpi_sub_hlp+0x10>

20027964 <mpi_mul_hlp>:
20027964:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027968:	4694      	mov	ip, r2
2002796a:	460e      	mov	r6, r1
2002796c:	4686      	mov	lr, r0
2002796e:	2500      	movs	r5, #0
20027970:	f102 0440 	add.w	r4, r2, #64	@ 0x40
20027974:	f1be 0f0f 	cmp.w	lr, #15
20027978:	f854 7c40 	ldr.w	r7, [r4, #-64]
2002797c:	f106 0640 	add.w	r6, r6, #64	@ 0x40
20027980:	f104 0440 	add.w	r4, r4, #64	@ 0x40
20027984:	d87c      	bhi.n	20027a80 <mpi_mul_hlp+0x11c>
20027986:	f06f 080f 	mvn.w	r8, #15
2002798a:	0902      	lsrs	r2, r0, #4
2002798c:	fb08 0002 	mla	r0, r8, r2, r0
20027990:	2807      	cmp	r0, #7
20027992:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027996:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
2002799a:	eb01 1682 	add.w	r6, r1, r2, lsl #6
2002799e:	d95b      	bls.n	20027a58 <mpi_mul_hlp+0xf4>
200279a0:	f851 100e 	ldr.w	r1, [r1, lr]
200279a4:	3808      	subs	r0, #8
200279a6:	fba1 1203 	umull	r1, r2, r1, r3
200279aa:	1869      	adds	r1, r5, r1
200279ac:	f142 0200 	adc.w	r2, r2, #0
200279b0:	187f      	adds	r7, r7, r1
200279b2:	f84c 700e 	str.w	r7, [ip, lr]
200279b6:	6871      	ldr	r1, [r6, #4]
200279b8:	f142 0200 	adc.w	r2, r2, #0
200279bc:	fba1 5103 	umull	r5, r1, r1, r3
200279c0:	1952      	adds	r2, r2, r5
200279c2:	6865      	ldr	r5, [r4, #4]
200279c4:	f141 0100 	adc.w	r1, r1, #0
200279c8:	1952      	adds	r2, r2, r5
200279ca:	6062      	str	r2, [r4, #4]
200279cc:	68b2      	ldr	r2, [r6, #8]
200279ce:	f141 0100 	adc.w	r1, r1, #0
200279d2:	fba2 5203 	umull	r5, r2, r2, r3
200279d6:	1949      	adds	r1, r1, r5
200279d8:	68a5      	ldr	r5, [r4, #8]
200279da:	f142 0200 	adc.w	r2, r2, #0
200279de:	1949      	adds	r1, r1, r5
200279e0:	60a1      	str	r1, [r4, #8]
200279e2:	68f1      	ldr	r1, [r6, #12]
200279e4:	f142 0200 	adc.w	r2, r2, #0
200279e8:	fba1 5103 	umull	r5, r1, r1, r3
200279ec:	1952      	adds	r2, r2, r5
200279ee:	68e5      	ldr	r5, [r4, #12]
200279f0:	f141 0100 	adc.w	r1, r1, #0
200279f4:	1952      	adds	r2, r2, r5
200279f6:	60e2      	str	r2, [r4, #12]
200279f8:	6932      	ldr	r2, [r6, #16]
200279fa:	f141 0100 	adc.w	r1, r1, #0
200279fe:	fba2 5203 	umull	r5, r2, r2, r3
20027a02:	1949      	adds	r1, r1, r5
20027a04:	6925      	ldr	r5, [r4, #16]
20027a06:	f142 0200 	adc.w	r2, r2, #0
20027a0a:	1949      	adds	r1, r1, r5
20027a0c:	6121      	str	r1, [r4, #16]
20027a0e:	6971      	ldr	r1, [r6, #20]
20027a10:	f142 0200 	adc.w	r2, r2, #0
20027a14:	fba1 5103 	umull	r5, r1, r1, r3
20027a18:	1952      	adds	r2, r2, r5
20027a1a:	6965      	ldr	r5, [r4, #20]
20027a1c:	f141 0100 	adc.w	r1, r1, #0
20027a20:	1952      	adds	r2, r2, r5
20027a22:	6162      	str	r2, [r4, #20]
20027a24:	69b2      	ldr	r2, [r6, #24]
20027a26:	f141 0100 	adc.w	r1, r1, #0
20027a2a:	fba2 5203 	umull	r5, r2, r2, r3
20027a2e:	1949      	adds	r1, r1, r5
20027a30:	69a5      	ldr	r5, [r4, #24]
20027a32:	f142 0200 	adc.w	r2, r2, #0
20027a36:	1949      	adds	r1, r1, r5
20027a38:	61a1      	str	r1, [r4, #24]
20027a3a:	69f1      	ldr	r1, [r6, #28]
20027a3c:	f142 0200 	adc.w	r2, r2, #0
20027a40:	fba1 1503 	umull	r1, r5, r1, r3
20027a44:	1852      	adds	r2, r2, r1
20027a46:	69e1      	ldr	r1, [r4, #28]
20027a48:	f145 0500 	adc.w	r5, r5, #0
20027a4c:	1852      	adds	r2, r2, r1
20027a4e:	61e2      	str	r2, [r4, #28]
20027a50:	f145 0500 	adc.w	r5, r5, #0
20027a54:	3420      	adds	r4, #32
20027a56:	3620      	adds	r6, #32
20027a58:	4627      	mov	r7, r4
20027a5a:	ea4f 0c80 	mov.w	ip, r0, lsl #2
20027a5e:	eb06 0080 	add.w	r0, r6, r0, lsl #2
20027a62:	42b0      	cmp	r0, r6
20027a64:	f857 1b04 	ldr.w	r1, [r7], #4
20027a68:	f040 80eb 	bne.w	20027c42 <mpi_mul_hlp+0x2de>
20027a6c:	4464      	add	r4, ip
20027a6e:	6823      	ldr	r3, [r4, #0]
20027a70:	195b      	adds	r3, r3, r5
20027a72:	f844 3b04 	str.w	r3, [r4], #4
20027a76:	f04f 0501 	mov.w	r5, #1
20027a7a:	d2f8      	bcs.n	20027a6e <mpi_mul_hlp+0x10a>
20027a7c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027a80:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027a84:	f1ae 0e10 	sub.w	lr, lr, #16
20027a88:	fba2 2803 	umull	r2, r8, r2, r3
20027a8c:	18aa      	adds	r2, r5, r2
20027a8e:	f148 0500 	adc.w	r5, r8, #0
20027a92:	18ba      	adds	r2, r7, r2
20027a94:	f844 2c80 	str.w	r2, [r4, #-128]
20027a98:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027a9c:	f145 0500 	adc.w	r5, r5, #0
20027aa0:	fba2 7203 	umull	r7, r2, r2, r3
20027aa4:	19ef      	adds	r7, r5, r7
20027aa6:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027aaa:	f142 0200 	adc.w	r2, r2, #0
20027aae:	19ed      	adds	r5, r5, r7
20027ab0:	f844 5c7c 	str.w	r5, [r4, #-124]
20027ab4:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027ab8:	f142 0200 	adc.w	r2, r2, #0
20027abc:	fba5 7503 	umull	r7, r5, r5, r3
20027ac0:	19d7      	adds	r7, r2, r7
20027ac2:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027ac6:	f145 0500 	adc.w	r5, r5, #0
20027aca:	19d2      	adds	r2, r2, r7
20027acc:	f844 2c78 	str.w	r2, [r4, #-120]
20027ad0:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027ad4:	f145 0500 	adc.w	r5, r5, #0
20027ad8:	fba2 7203 	umull	r7, r2, r2, r3
20027adc:	19ef      	adds	r7, r5, r7
20027ade:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027ae2:	f142 0200 	adc.w	r2, r2, #0
20027ae6:	19ed      	adds	r5, r5, r7
20027ae8:	f844 5c74 	str.w	r5, [r4, #-116]
20027aec:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027af0:	f142 0200 	adc.w	r2, r2, #0
20027af4:	fba5 7503 	umull	r7, r5, r5, r3
20027af8:	19d7      	adds	r7, r2, r7
20027afa:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027afe:	f145 0500 	adc.w	r5, r5, #0
20027b02:	19d2      	adds	r2, r2, r7
20027b04:	f844 2c70 	str.w	r2, [r4, #-112]
20027b08:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027b0c:	f145 0500 	adc.w	r5, r5, #0
20027b10:	fba2 7203 	umull	r7, r2, r2, r3
20027b14:	19ef      	adds	r7, r5, r7
20027b16:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027b1a:	f142 0200 	adc.w	r2, r2, #0
20027b1e:	19ed      	adds	r5, r5, r7
20027b20:	f844 5c6c 	str.w	r5, [r4, #-108]
20027b24:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027b28:	f142 0200 	adc.w	r2, r2, #0
20027b2c:	fba5 7503 	umull	r7, r5, r5, r3
20027b30:	19d7      	adds	r7, r2, r7
20027b32:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027b36:	f145 0500 	adc.w	r5, r5, #0
20027b3a:	19d2      	adds	r2, r2, r7
20027b3c:	f844 2c68 	str.w	r2, [r4, #-104]
20027b40:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027b44:	f145 0500 	adc.w	r5, r5, #0
20027b48:	fba2 7203 	umull	r7, r2, r2, r3
20027b4c:	19ef      	adds	r7, r5, r7
20027b4e:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027b52:	f142 0200 	adc.w	r2, r2, #0
20027b56:	19ed      	adds	r5, r5, r7
20027b58:	f844 5c64 	str.w	r5, [r4, #-100]
20027b5c:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027b60:	f142 0200 	adc.w	r2, r2, #0
20027b64:	fba5 7503 	umull	r7, r5, r5, r3
20027b68:	19d7      	adds	r7, r2, r7
20027b6a:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027b6e:	f145 0500 	adc.w	r5, r5, #0
20027b72:	19d2      	adds	r2, r2, r7
20027b74:	f844 2c60 	str.w	r2, [r4, #-96]
20027b78:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027b7c:	f145 0500 	adc.w	r5, r5, #0
20027b80:	fba2 7203 	umull	r7, r2, r2, r3
20027b84:	19ef      	adds	r7, r5, r7
20027b86:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027b8a:	f142 0200 	adc.w	r2, r2, #0
20027b8e:	19ed      	adds	r5, r5, r7
20027b90:	f844 5c5c 	str.w	r5, [r4, #-92]
20027b94:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027b98:	f142 0200 	adc.w	r2, r2, #0
20027b9c:	fba5 7503 	umull	r7, r5, r5, r3
20027ba0:	19d7      	adds	r7, r2, r7
20027ba2:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027ba6:	f145 0500 	adc.w	r5, r5, #0
20027baa:	19d2      	adds	r2, r2, r7
20027bac:	f844 2c58 	str.w	r2, [r4, #-88]
20027bb0:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027bb4:	f145 0500 	adc.w	r5, r5, #0
20027bb8:	fba2 7203 	umull	r7, r2, r2, r3
20027bbc:	19ef      	adds	r7, r5, r7
20027bbe:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027bc2:	f142 0200 	adc.w	r2, r2, #0
20027bc6:	19ed      	adds	r5, r5, r7
20027bc8:	f844 5c54 	str.w	r5, [r4, #-84]
20027bcc:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027bd0:	f142 0200 	adc.w	r2, r2, #0
20027bd4:	fba5 7503 	umull	r7, r5, r5, r3
20027bd8:	19d7      	adds	r7, r2, r7
20027bda:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027bde:	f145 0500 	adc.w	r5, r5, #0
20027be2:	19d2      	adds	r2, r2, r7
20027be4:	f844 2c50 	str.w	r2, [r4, #-80]
20027be8:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027bec:	f145 0500 	adc.w	r5, r5, #0
20027bf0:	fba2 7203 	umull	r7, r2, r2, r3
20027bf4:	19ef      	adds	r7, r5, r7
20027bf6:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027bfa:	f142 0200 	adc.w	r2, r2, #0
20027bfe:	19ed      	adds	r5, r5, r7
20027c00:	f844 5c4c 	str.w	r5, [r4, #-76]
20027c04:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027c08:	f142 0200 	adc.w	r2, r2, #0
20027c0c:	fba5 5703 	umull	r5, r7, r5, r3
20027c10:	1955      	adds	r5, r2, r5
20027c12:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027c16:	f147 0700 	adc.w	r7, r7, #0
20027c1a:	1952      	adds	r2, r2, r5
20027c1c:	f844 2c48 	str.w	r2, [r4, #-72]
20027c20:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027c24:	f147 0700 	adc.w	r7, r7, #0
20027c28:	fba2 2503 	umull	r2, r5, r2, r3
20027c2c:	18bf      	adds	r7, r7, r2
20027c2e:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027c32:	f145 0500 	adc.w	r5, r5, #0
20027c36:	19d2      	adds	r2, r2, r7
20027c38:	f145 0500 	adc.w	r5, r5, #0
20027c3c:	f844 2c44 	str.w	r2, [r4, #-68]
20027c40:	e698      	b.n	20027974 <mpi_mul_hlp+0x10>
20027c42:	f856 2b04 	ldr.w	r2, [r6], #4
20027c46:	fba2 2e03 	umull	r2, lr, r2, r3
20027c4a:	18aa      	adds	r2, r5, r2
20027c4c:	f14e 0500 	adc.w	r5, lr, #0
20027c50:	1889      	adds	r1, r1, r2
20027c52:	f145 0500 	adc.w	r5, r5, #0
20027c56:	f847 1c04 	str.w	r1, [r7, #-4]
20027c5a:	e702      	b.n	20027a62 <mpi_mul_hlp+0xfe>

20027c5c <mbedtls_mpi_init>:
20027c5c:	b120      	cbz	r0, 20027c68 <mbedtls_mpi_init+0xc>
20027c5e:	2300      	movs	r3, #0
20027c60:	2201      	movs	r2, #1
20027c62:	e9c0 2300 	strd	r2, r3, [r0]
20027c66:	6083      	str	r3, [r0, #8]
20027c68:	4770      	bx	lr

20027c6a <mbedtls_mpi_free>:
20027c6a:	b510      	push	{r4, lr}
20027c6c:	4604      	mov	r4, r0
20027c6e:	b168      	cbz	r0, 20027c8c <mbedtls_mpi_free+0x22>
20027c70:	6883      	ldr	r3, [r0, #8]
20027c72:	b133      	cbz	r3, 20027c82 <mbedtls_mpi_free+0x18>
20027c74:	2100      	movs	r1, #0
20027c76:	6842      	ldr	r2, [r0, #4]
20027c78:	3a01      	subs	r2, #1
20027c7a:	d208      	bcs.n	20027c8e <mbedtls_mpi_free+0x24>
20027c7c:	68a0      	ldr	r0, [r4, #8]
20027c7e:	f002 fcbf 	bl	2002a600 <free>
20027c82:	2300      	movs	r3, #0
20027c84:	2201      	movs	r2, #1
20027c86:	e9c4 2300 	strd	r2, r3, [r4]
20027c8a:	60a3      	str	r3, [r4, #8]
20027c8c:	bd10      	pop	{r4, pc}
20027c8e:	f843 1b04 	str.w	r1, [r3], #4
20027c92:	e7f1      	b.n	20027c78 <mbedtls_mpi_free+0xe>

20027c94 <mbedtls_mpi_grow>:
20027c94:	f242 7310 	movw	r3, #10000	@ 0x2710
20027c98:	4299      	cmp	r1, r3
20027c9a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027c9e:	4605      	mov	r5, r0
20027ca0:	460f      	mov	r7, r1
20027ca2:	d903      	bls.n	20027cac <mbedtls_mpi_grow+0x18>
20027ca4:	f06f 000f 	mvn.w	r0, #15
20027ca8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027cac:	6846      	ldr	r6, [r0, #4]
20027cae:	428e      	cmp	r6, r1
20027cb0:	d301      	bcc.n	20027cb6 <mbedtls_mpi_grow+0x22>
20027cb2:	2000      	movs	r0, #0
20027cb4:	e7f8      	b.n	20027ca8 <mbedtls_mpi_grow+0x14>
20027cb6:	2104      	movs	r1, #4
20027cb8:	4638      	mov	r0, r7
20027cba:	f002 fc85 	bl	2002a5c8 <calloc>
20027cbe:	4680      	mov	r8, r0
20027cc0:	2800      	cmp	r0, #0
20027cc2:	d0ef      	beq.n	20027ca4 <mbedtls_mpi_grow+0x10>
20027cc4:	68ac      	ldr	r4, [r5, #8]
20027cc6:	b15c      	cbz	r4, 20027ce0 <mbedtls_mpi_grow+0x4c>
20027cc8:	00b6      	lsls	r6, r6, #2
20027cca:	4632      	mov	r2, r6
20027ccc:	4621      	mov	r1, r4
20027cce:	f002 fd77 	bl	2002a7c0 <memcpy>
20027cd2:	2300      	movs	r3, #0
20027cd4:	4426      	add	r6, r4
20027cd6:	42b4      	cmp	r4, r6
20027cd8:	d105      	bne.n	20027ce6 <mbedtls_mpi_grow+0x52>
20027cda:	68a8      	ldr	r0, [r5, #8]
20027cdc:	f002 fc90 	bl	2002a600 <free>
20027ce0:	e9c5 7801 	strd	r7, r8, [r5, #4]
20027ce4:	e7e5      	b.n	20027cb2 <mbedtls_mpi_grow+0x1e>
20027ce6:	f844 3b04 	str.w	r3, [r4], #4
20027cea:	e7f4      	b.n	20027cd6 <mbedtls_mpi_grow+0x42>

20027cec <mbedtls_mpi_copy>:
20027cec:	4288      	cmp	r0, r1
20027cee:	b570      	push	{r4, r5, r6, lr}
20027cf0:	4605      	mov	r5, r0
20027cf2:	460e      	mov	r6, r1
20027cf4:	d003      	beq.n	20027cfe <mbedtls_mpi_copy+0x12>
20027cf6:	688b      	ldr	r3, [r1, #8]
20027cf8:	b91b      	cbnz	r3, 20027d02 <mbedtls_mpi_copy+0x16>
20027cfa:	f7ff ffb6 	bl	20027c6a <mbedtls_mpi_free>
20027cfe:	2000      	movs	r0, #0
20027d00:	bd70      	pop	{r4, r5, r6, pc}
20027d02:	684a      	ldr	r2, [r1, #4]
20027d04:	3a01      	subs	r2, #1
20027d06:	b11a      	cbz	r2, 20027d10 <mbedtls_mpi_copy+0x24>
20027d08:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027d0c:	2900      	cmp	r1, #0
20027d0e:	d0f9      	beq.n	20027d04 <mbedtls_mpi_copy+0x18>
20027d10:	6833      	ldr	r3, [r6, #0]
20027d12:	1c54      	adds	r4, r2, #1
20027d14:	4621      	mov	r1, r4
20027d16:	4628      	mov	r0, r5
20027d18:	602b      	str	r3, [r5, #0]
20027d1a:	f7ff ffbb 	bl	20027c94 <mbedtls_mpi_grow>
20027d1e:	4601      	mov	r1, r0
20027d20:	b950      	cbnz	r0, 20027d38 <mbedtls_mpi_copy+0x4c>
20027d22:	686a      	ldr	r2, [r5, #4]
20027d24:	68a8      	ldr	r0, [r5, #8]
20027d26:	0092      	lsls	r2, r2, #2
20027d28:	f002 fd30 	bl	2002a78c <memset>
20027d2c:	68b1      	ldr	r1, [r6, #8]
20027d2e:	68a8      	ldr	r0, [r5, #8]
20027d30:	00a2      	lsls	r2, r4, #2
20027d32:	f002 fd45 	bl	2002a7c0 <memcpy>
20027d36:	e7e2      	b.n	20027cfe <mbedtls_mpi_copy+0x12>
20027d38:	f06f 000f 	mvn.w	r0, #15
20027d3c:	e7e0      	b.n	20027d00 <mbedtls_mpi_copy+0x14>

20027d3e <mbedtls_mpi_lset>:
20027d3e:	b570      	push	{r4, r5, r6, lr}
20027d40:	460e      	mov	r6, r1
20027d42:	2101      	movs	r1, #1
20027d44:	4604      	mov	r4, r0
20027d46:	f7ff ffa5 	bl	20027c94 <mbedtls_mpi_grow>
20027d4a:	4605      	mov	r5, r0
20027d4c:	b988      	cbnz	r0, 20027d72 <mbedtls_mpi_lset+0x34>
20027d4e:	6862      	ldr	r2, [r4, #4]
20027d50:	4601      	mov	r1, r0
20027d52:	0092      	lsls	r2, r2, #2
20027d54:	68a0      	ldr	r0, [r4, #8]
20027d56:	f002 fd19 	bl	2002a78c <memset>
20027d5a:	68a3      	ldr	r3, [r4, #8]
20027d5c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20027d60:	2e00      	cmp	r6, #0
20027d62:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20027d66:	601a      	str	r2, [r3, #0]
20027d68:	bfac      	ite	ge
20027d6a:	2301      	movge	r3, #1
20027d6c:	f04f 33ff 	movlt.w	r3, #4294967295
20027d70:	6023      	str	r3, [r4, #0]
20027d72:	4628      	mov	r0, r5
20027d74:	bd70      	pop	{r4, r5, r6, pc}

20027d76 <mbedtls_mpi_lsb>:
20027d76:	2300      	movs	r3, #0
20027d78:	4619      	mov	r1, r3
20027d7a:	b570      	push	{r4, r5, r6, lr}
20027d7c:	6844      	ldr	r4, [r0, #4]
20027d7e:	428c      	cmp	r4, r1
20027d80:	d101      	bne.n	20027d86 <mbedtls_mpi_lsb+0x10>
20027d82:	2000      	movs	r0, #0
20027d84:	e008      	b.n	20027d98 <mbedtls_mpi_lsb+0x22>
20027d86:	6882      	ldr	r2, [r0, #8]
20027d88:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
20027d8c:	2200      	movs	r2, #0
20027d8e:	fa25 f602 	lsr.w	r6, r5, r2
20027d92:	07f6      	lsls	r6, r6, #31
20027d94:	d501      	bpl.n	20027d9a <mbedtls_mpi_lsb+0x24>
20027d96:	1898      	adds	r0, r3, r2
20027d98:	bd70      	pop	{r4, r5, r6, pc}
20027d9a:	3201      	adds	r2, #1
20027d9c:	2a20      	cmp	r2, #32
20027d9e:	d1f6      	bne.n	20027d8e <mbedtls_mpi_lsb+0x18>
20027da0:	3320      	adds	r3, #32
20027da2:	3101      	adds	r1, #1
20027da4:	e7eb      	b.n	20027d7e <mbedtls_mpi_lsb+0x8>

20027da6 <mbedtls_mpi_bitlen>:
20027da6:	4602      	mov	r2, r0
20027da8:	6840      	ldr	r0, [r0, #4]
20027daa:	b188      	cbz	r0, 20027dd0 <mbedtls_mpi_bitlen+0x2a>
20027dac:	6891      	ldr	r1, [r2, #8]
20027dae:	1e43      	subs	r3, r0, #1
20027db0:	b97b      	cbnz	r3, 20027dd2 <mbedtls_mpi_bitlen+0x2c>
20027db2:	461a      	mov	r2, r3
20027db4:	5889      	ldr	r1, [r1, r2]
20027db6:	2000      	movs	r0, #0
20027db8:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
20027dbc:	4211      	tst	r1, r2
20027dbe:	d104      	bne.n	20027dca <mbedtls_mpi_bitlen+0x24>
20027dc0:	3001      	adds	r0, #1
20027dc2:	2820      	cmp	r0, #32
20027dc4:	ea4f 0252 	mov.w	r2, r2, lsr #1
20027dc8:	d1f8      	bne.n	20027dbc <mbedtls_mpi_bitlen+0x16>
20027dca:	3301      	adds	r3, #1
20027dcc:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20027dd0:	4770      	bx	lr
20027dd2:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20027dd6:	009a      	lsls	r2, r3, #2
20027dd8:	2800      	cmp	r0, #0
20027dda:	d1eb      	bne.n	20027db4 <mbedtls_mpi_bitlen+0xe>
20027ddc:	3b01      	subs	r3, #1
20027dde:	e7e7      	b.n	20027db0 <mbedtls_mpi_bitlen+0xa>

20027de0 <mbedtls_mpi_size>:
20027de0:	b508      	push	{r3, lr}
20027de2:	f7ff ffe0 	bl	20027da6 <mbedtls_mpi_bitlen>
20027de6:	3007      	adds	r0, #7
20027de8:	08c0      	lsrs	r0, r0, #3
20027dea:	bd08      	pop	{r3, pc}

20027dec <mbedtls_mpi_read_binary>:
20027dec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027dee:	4607      	mov	r7, r0
20027df0:	460c      	mov	r4, r1
20027df2:	4616      	mov	r6, r2
20027df4:	2500      	movs	r5, #0
20027df6:	42b5      	cmp	r5, r6
20027df8:	d001      	beq.n	20027dfe <mbedtls_mpi_read_binary+0x12>
20027dfa:	5d63      	ldrb	r3, [r4, r5]
20027dfc:	b173      	cbz	r3, 20027e1c <mbedtls_mpi_read_binary+0x30>
20027dfe:	1b71      	subs	r1, r6, r5
20027e00:	f011 0303 	ands.w	r3, r1, #3
20027e04:	bf18      	it	ne
20027e06:	2301      	movne	r3, #1
20027e08:	4638      	mov	r0, r7
20027e0a:	eb03 0191 	add.w	r1, r3, r1, lsr #2
20027e0e:	f7ff ff41 	bl	20027c94 <mbedtls_mpi_grow>
20027e12:	4601      	mov	r1, r0
20027e14:	b120      	cbz	r0, 20027e20 <mbedtls_mpi_read_binary+0x34>
20027e16:	f06f 000f 	mvn.w	r0, #15
20027e1a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027e1c:	3501      	adds	r5, #1
20027e1e:	e7ea      	b.n	20027df6 <mbedtls_mpi_read_binary+0xa>
20027e20:	4638      	mov	r0, r7
20027e22:	f7ff ff8c 	bl	20027d3e <mbedtls_mpi_lset>
20027e26:	2800      	cmp	r0, #0
20027e28:	d1f5      	bne.n	20027e16 <mbedtls_mpi_read_binary+0x2a>
20027e2a:	4603      	mov	r3, r0
20027e2c:	4434      	add	r4, r6
20027e2e:	1af2      	subs	r2, r6, r3
20027e30:	4295      	cmp	r5, r2
20027e32:	d2f2      	bcs.n	20027e1a <mbedtls_mpi_read_binary+0x2e>
20027e34:	f8d7 e008 	ldr.w	lr, [r7, #8]
20027e38:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
20027e3c:	00da      	lsls	r2, r3, #3
20027e3e:	f023 0c03 	bic.w	ip, r3, #3
20027e42:	f002 0218 	and.w	r2, r2, #24
20027e46:	4091      	lsls	r1, r2
20027e48:	f85e 200c 	ldr.w	r2, [lr, ip]
20027e4c:	3301      	adds	r3, #1
20027e4e:	430a      	orrs	r2, r1
20027e50:	f84e 200c 	str.w	r2, [lr, ip]
20027e54:	e7eb      	b.n	20027e2e <mbedtls_mpi_read_binary+0x42>

20027e56 <mbedtls_mpi_write_binary>:
20027e56:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027e58:	4615      	mov	r5, r2
20027e5a:	4607      	mov	r7, r0
20027e5c:	460c      	mov	r4, r1
20027e5e:	f7ff ffbf 	bl	20027de0 <mbedtls_mpi_size>
20027e62:	42a8      	cmp	r0, r5
20027e64:	4606      	mov	r6, r0
20027e66:	d816      	bhi.n	20027e96 <mbedtls_mpi_write_binary+0x40>
20027e68:	4620      	mov	r0, r4
20027e6a:	462a      	mov	r2, r5
20027e6c:	2100      	movs	r1, #0
20027e6e:	f002 fc8d 	bl	2002a78c <memset>
20027e72:	2300      	movs	r3, #0
20027e74:	442c      	add	r4, r5
20027e76:	42b3      	cmp	r3, r6
20027e78:	d101      	bne.n	20027e7e <mbedtls_mpi_write_binary+0x28>
20027e7a:	2000      	movs	r0, #0
20027e7c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027e7e:	68b8      	ldr	r0, [r7, #8]
20027e80:	f023 0203 	bic.w	r2, r3, #3
20027e84:	5882      	ldr	r2, [r0, r2]
20027e86:	00d9      	lsls	r1, r3, #3
20027e88:	f001 0118 	and.w	r1, r1, #24
20027e8c:	40ca      	lsrs	r2, r1
20027e8e:	f804 2d01 	strb.w	r2, [r4, #-1]!
20027e92:	3301      	adds	r3, #1
20027e94:	e7ef      	b.n	20027e76 <mbedtls_mpi_write_binary+0x20>
20027e96:	f06f 0007 	mvn.w	r0, #7
20027e9a:	e7ef      	b.n	20027e7c <mbedtls_mpi_write_binary+0x26>

20027e9c <mbedtls_mpi_shift_l>:
20027e9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027e9e:	4605      	mov	r5, r0
20027ea0:	460e      	mov	r6, r1
20027ea2:	094c      	lsrs	r4, r1, #5
20027ea4:	f001 071f 	and.w	r7, r1, #31
20027ea8:	f7ff ff7d 	bl	20027da6 <mbedtls_mpi_bitlen>
20027eac:	686b      	ldr	r3, [r5, #4]
20027eae:	4430      	add	r0, r6
20027eb0:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
20027eb4:	d805      	bhi.n	20027ec2 <mbedtls_mpi_shift_l+0x26>
20027eb6:	2e1f      	cmp	r6, #31
20027eb8:	d811      	bhi.n	20027ede <mbedtls_mpi_shift_l+0x42>
20027eba:	2f00      	cmp	r7, #0
20027ebc:	d143      	bne.n	20027f46 <mbedtls_mpi_shift_l+0xaa>
20027ebe:	2000      	movs	r0, #0
20027ec0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027ec2:	f010 011f 	ands.w	r1, r0, #31
20027ec6:	bf18      	it	ne
20027ec8:	2101      	movne	r1, #1
20027eca:	eb01 1150 	add.w	r1, r1, r0, lsr #5
20027ece:	4628      	mov	r0, r5
20027ed0:	f7ff fee0 	bl	20027c94 <mbedtls_mpi_grow>
20027ed4:	2800      	cmp	r0, #0
20027ed6:	d0ee      	beq.n	20027eb6 <mbedtls_mpi_shift_l+0x1a>
20027ed8:	f06f 000f 	mvn.w	r0, #15
20027edc:	e7f0      	b.n	20027ec0 <mbedtls_mpi_shift_l+0x24>
20027ede:	f06f 0003 	mvn.w	r0, #3
20027ee2:	686a      	ldr	r2, [r5, #4]
20027ee4:	4360      	muls	r0, r4
20027ee6:	4611      	mov	r1, r2
20027ee8:	0093      	lsls	r3, r2, #2
20027eea:	42a1      	cmp	r1, r4
20027eec:	f1a3 0304 	sub.w	r3, r3, #4
20027ef0:	d80c      	bhi.n	20027f0c <mbedtls_mpi_shift_l+0x70>
20027ef2:	1aa3      	subs	r3, r4, r2
20027ef4:	4294      	cmp	r4, r2
20027ef6:	bf88      	it	hi
20027ef8:	2300      	movhi	r3, #0
20027efa:	4413      	add	r3, r2
20027efc:	2200      	movs	r2, #0
20027efe:	009b      	lsls	r3, r3, #2
20027f00:	3b04      	subs	r3, #4
20027f02:	1d19      	adds	r1, r3, #4
20027f04:	d0d9      	beq.n	20027eba <mbedtls_mpi_shift_l+0x1e>
20027f06:	68a9      	ldr	r1, [r5, #8]
20027f08:	50ca      	str	r2, [r1, r3]
20027f0a:	e7f9      	b.n	20027f00 <mbedtls_mpi_shift_l+0x64>
20027f0c:	68ae      	ldr	r6, [r5, #8]
20027f0e:	3901      	subs	r1, #1
20027f10:	eb06 0c03 	add.w	ip, r6, r3
20027f14:	f85c c000 	ldr.w	ip, [ip, r0]
20027f18:	f846 c003 	str.w	ip, [r6, r3]
20027f1c:	e7e5      	b.n	20027eea <mbedtls_mpi_shift_l+0x4e>
20027f1e:	68ab      	ldr	r3, [r5, #8]
20027f20:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
20027f24:	fa01 f007 	lsl.w	r0, r1, r7
20027f28:	f843 0024 	str.w	r0, [r3, r4, lsl #2]
20027f2c:	68a8      	ldr	r0, [r5, #8]
20027f2e:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
20027f32:	4313      	orrs	r3, r2
20027f34:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
20027f38:	fa21 f206 	lsr.w	r2, r1, r6
20027f3c:	3401      	adds	r4, #1
20027f3e:	686b      	ldr	r3, [r5, #4]
20027f40:	42a3      	cmp	r3, r4
20027f42:	d8ec      	bhi.n	20027f1e <mbedtls_mpi_shift_l+0x82>
20027f44:	e7bb      	b.n	20027ebe <mbedtls_mpi_shift_l+0x22>
20027f46:	2200      	movs	r2, #0
20027f48:	f1c7 0620 	rsb	r6, r7, #32
20027f4c:	e7f7      	b.n	20027f3e <mbedtls_mpi_shift_l+0xa2>

20027f4e <mbedtls_mpi_shift_r>:
20027f4e:	b4f0      	push	{r4, r5, r6, r7}
20027f50:	6843      	ldr	r3, [r0, #4]
20027f52:	094c      	lsrs	r4, r1, #5
20027f54:	42a3      	cmp	r3, r4
20027f56:	f001 021f 	and.w	r2, r1, #31
20027f5a:	d301      	bcc.n	20027f60 <mbedtls_mpi_shift_r+0x12>
20027f5c:	d104      	bne.n	20027f68 <mbedtls_mpi_shift_r+0x1a>
20027f5e:	b392      	cbz	r2, 20027fc6 <mbedtls_mpi_shift_r+0x78>
20027f60:	bcf0      	pop	{r4, r5, r6, r7}
20027f62:	2100      	movs	r1, #0
20027f64:	f7ff beeb 	b.w	20027d3e <mbedtls_mpi_lset>
20027f68:	291f      	cmp	r1, #31
20027f6a:	d82e      	bhi.n	20027fca <mbedtls_mpi_shift_r+0x7c>
20027f6c:	b9aa      	cbnz	r2, 20027f9a <mbedtls_mpi_shift_r+0x4c>
20027f6e:	bcf0      	pop	{r4, r5, r6, r7}
20027f70:	2000      	movs	r0, #0
20027f72:	4770      	bx	lr
20027f74:	6885      	ldr	r5, [r0, #8]
20027f76:	586e      	ldr	r6, [r5, r1]
20027f78:	3104      	adds	r1, #4
20027f7a:	f845 6023 	str.w	r6, [r5, r3, lsl #2]
20027f7e:	3301      	adds	r3, #1
20027f80:	6845      	ldr	r5, [r0, #4]
20027f82:	1b2d      	subs	r5, r5, r4
20027f84:	429d      	cmp	r5, r3
20027f86:	d8f5      	bhi.n	20027f74 <mbedtls_mpi_shift_r+0x26>
20027f88:	2400      	movs	r4, #0
20027f8a:	6841      	ldr	r1, [r0, #4]
20027f8c:	4299      	cmp	r1, r3
20027f8e:	d9ed      	bls.n	20027f6c <mbedtls_mpi_shift_r+0x1e>
20027f90:	6881      	ldr	r1, [r0, #8]
20027f92:	f841 4023 	str.w	r4, [r1, r3, lsl #2]
20027f96:	3301      	adds	r3, #1
20027f98:	e7f7      	b.n	20027f8a <mbedtls_mpi_shift_r+0x3c>
20027f9a:	2400      	movs	r4, #0
20027f9c:	6843      	ldr	r3, [r0, #4]
20027f9e:	f1c2 0720 	rsb	r7, r2, #32
20027fa2:	3b01      	subs	r3, #1
20027fa4:	d3e3      	bcc.n	20027f6e <mbedtls_mpi_shift_r+0x20>
20027fa6:	6881      	ldr	r1, [r0, #8]
20027fa8:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
20027fac:	fa25 f602 	lsr.w	r6, r5, r2
20027fb0:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
20027fb4:	6886      	ldr	r6, [r0, #8]
20027fb6:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
20027fba:	4321      	orrs	r1, r4
20027fbc:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
20027fc0:	fa05 f407 	lsl.w	r4, r5, r7
20027fc4:	e7ed      	b.n	20027fa2 <mbedtls_mpi_shift_r+0x54>
20027fc6:	291f      	cmp	r1, #31
20027fc8:	d9d1      	bls.n	20027f6e <mbedtls_mpi_shift_r+0x20>
20027fca:	2300      	movs	r3, #0
20027fcc:	00a1      	lsls	r1, r4, #2
20027fce:	e7d7      	b.n	20027f80 <mbedtls_mpi_shift_r+0x32>

20027fd0 <mbedtls_mpi_cmp_abs>:
20027fd0:	b530      	push	{r4, r5, lr}
20027fd2:	6842      	ldr	r2, [r0, #4]
20027fd4:	b922      	cbnz	r2, 20027fe0 <mbedtls_mpi_cmp_abs+0x10>
20027fd6:	684b      	ldr	r3, [r1, #4]
20027fd8:	b95b      	cbnz	r3, 20027ff2 <mbedtls_mpi_cmp_abs+0x22>
20027fda:	b19a      	cbz	r2, 20028004 <mbedtls_mpi_cmp_abs+0x34>
20027fdc:	2001      	movs	r0, #1
20027fde:	e015      	b.n	2002800c <mbedtls_mpi_cmp_abs+0x3c>
20027fe0:	6883      	ldr	r3, [r0, #8]
20027fe2:	eb03 0382 	add.w	r3, r3, r2, lsl #2
20027fe6:	f853 3c04 	ldr.w	r3, [r3, #-4]
20027fea:	2b00      	cmp	r3, #0
20027fec:	d1f3      	bne.n	20027fd6 <mbedtls_mpi_cmp_abs+0x6>
20027fee:	3a01      	subs	r2, #1
20027ff0:	e7f0      	b.n	20027fd4 <mbedtls_mpi_cmp_abs+0x4>
20027ff2:	688c      	ldr	r4, [r1, #8]
20027ff4:	eb04 0583 	add.w	r5, r4, r3, lsl #2
20027ff8:	f855 5c04 	ldr.w	r5, [r5, #-4]
20027ffc:	b90d      	cbnz	r5, 20028002 <mbedtls_mpi_cmp_abs+0x32>
20027ffe:	3b01      	subs	r3, #1
20028000:	e7ea      	b.n	20027fd8 <mbedtls_mpi_cmp_abs+0x8>
20028002:	b922      	cbnz	r2, 2002800e <mbedtls_mpi_cmp_abs+0x3e>
20028004:	1e18      	subs	r0, r3, #0
20028006:	bf18      	it	ne
20028008:	2001      	movne	r0, #1
2002800a:	4240      	negs	r0, r0
2002800c:	bd30      	pop	{r4, r5, pc}
2002800e:	4293      	cmp	r3, r2
20028010:	d3e4      	bcc.n	20027fdc <mbedtls_mpi_cmp_abs+0xc>
20028012:	d80e      	bhi.n	20028032 <mbedtls_mpi_cmp_abs+0x62>
20028014:	3a01      	subs	r2, #1
20028016:	6883      	ldr	r3, [r0, #8]
20028018:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
2002801c:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
20028020:	4299      	cmp	r1, r3
20028022:	d8db      	bhi.n	20027fdc <mbedtls_mpi_cmp_abs+0xc>
20028024:	f102 32ff 	add.w	r2, r2, #4294967295
20028028:	d303      	bcc.n	20028032 <mbedtls_mpi_cmp_abs+0x62>
2002802a:	1c53      	adds	r3, r2, #1
2002802c:	d1f3      	bne.n	20028016 <mbedtls_mpi_cmp_abs+0x46>
2002802e:	2000      	movs	r0, #0
20028030:	e7ec      	b.n	2002800c <mbedtls_mpi_cmp_abs+0x3c>
20028032:	f04f 30ff 	mov.w	r0, #4294967295
20028036:	e7e9      	b.n	2002800c <mbedtls_mpi_cmp_abs+0x3c>

20028038 <mpi_montmul>:
20028038:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002803c:	4615      	mov	r5, r2
2002803e:	b087      	sub	sp, #28
20028040:	9305      	str	r3, [sp, #20]
20028042:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028044:	4606      	mov	r6, r0
20028046:	685a      	ldr	r2, [r3, #4]
20028048:	686b      	ldr	r3, [r5, #4]
2002804a:	4689      	mov	r9, r1
2002804c:	3301      	adds	r3, #1
2002804e:	429a      	cmp	r2, r3
20028050:	d359      	bcc.n	20028106 <mpi_montmul+0xce>
20028052:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028054:	6898      	ldr	r0, [r3, #8]
20028056:	2800      	cmp	r0, #0
20028058:	d055      	beq.n	20028106 <mpi_montmul+0xce>
2002805a:	0092      	lsls	r2, r2, #2
2002805c:	2100      	movs	r1, #0
2002805e:	f002 fb95 	bl	2002a78c <memset>
20028062:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028064:	f8d5 8004 	ldr.w	r8, [r5, #4]
20028068:	f8d3 a008 	ldr.w	sl, [r3, #8]
2002806c:	f8d9 3004 	ldr.w	r3, [r9, #4]
20028070:	46d3      	mov	fp, sl
20028072:	4543      	cmp	r3, r8
20028074:	bf28      	it	cs
20028076:	4643      	movcs	r3, r8
20028078:	2400      	movs	r4, #0
2002807a:	9304      	str	r3, [sp, #16]
2002807c:	f108 0301 	add.w	r3, r8, #1
20028080:	009a      	lsls	r2, r3, #2
20028082:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
20028086:	9202      	str	r2, [sp, #8]
20028088:	9303      	str	r3, [sp, #12]
2002808a:	4544      	cmp	r4, r8
2002808c:	68b0      	ldr	r0, [r6, #8]
2002808e:	d118      	bne.n	200280c2 <mpi_montmul+0x8a>
20028090:	9b02      	ldr	r3, [sp, #8]
20028092:	1f19      	subs	r1, r3, #4
20028094:	461a      	mov	r2, r3
20028096:	4451      	add	r1, sl
20028098:	f002 fb92 	bl	2002a7c0 <memcpy>
2002809c:	4629      	mov	r1, r5
2002809e:	4630      	mov	r0, r6
200280a0:	f7ff ff96 	bl	20027fd0 <mbedtls_mpi_cmp_abs>
200280a4:	3001      	adds	r0, #1
200280a6:	68b1      	ldr	r1, [r6, #8]
200280a8:	bf0c      	ite	eq
200280aa:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
200280ac:	460a      	movne	r2, r1
200280ae:	4620      	mov	r0, r4
200280b0:	bf14      	ite	ne
200280b2:	68a9      	ldrne	r1, [r5, #8]
200280b4:	689a      	ldreq	r2, [r3, #8]
200280b6:	f7ff fc2c 	bl	20027912 <mpi_sub_hlp>
200280ba:	2000      	movs	r0, #0
200280bc:	b007      	add	sp, #28
200280be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200280c2:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
200280c6:	f8d9 1008 	ldr.w	r1, [r9, #8]
200280ca:	9301      	str	r3, [sp, #4]
200280cc:	9a01      	ldr	r2, [sp, #4]
200280ce:	680b      	ldr	r3, [r1, #0]
200280d0:	f8db 7000 	ldr.w	r7, [fp]
200280d4:	9804      	ldr	r0, [sp, #16]
200280d6:	fb03 7702 	mla	r7, r3, r2, r7
200280da:	9b05      	ldr	r3, [sp, #20]
200280dc:	3401      	adds	r4, #1
200280de:	435f      	muls	r7, r3
200280e0:	4613      	mov	r3, r2
200280e2:	465a      	mov	r2, fp
200280e4:	f7ff fc3e 	bl	20027964 <mpi_mul_hlp>
200280e8:	465a      	mov	r2, fp
200280ea:	463b      	mov	r3, r7
200280ec:	4640      	mov	r0, r8
200280ee:	68a9      	ldr	r1, [r5, #8]
200280f0:	f7ff fc38 	bl	20027964 <mpi_mul_hlp>
200280f4:	2200      	movs	r2, #0
200280f6:	9b01      	ldr	r3, [sp, #4]
200280f8:	f84b 3b04 	str.w	r3, [fp], #4
200280fc:	9b03      	ldr	r3, [sp, #12]
200280fe:	f843 2f04 	str.w	r2, [r3, #4]!
20028102:	9303      	str	r3, [sp, #12]
20028104:	e7c1      	b.n	2002808a <mpi_montmul+0x52>
20028106:	f06f 0003 	mvn.w	r0, #3
2002810a:	e7d7      	b.n	200280bc <mpi_montmul+0x84>

2002810c <mbedtls_mpi_cmp_mpi>:
2002810c:	4602      	mov	r2, r0
2002810e:	b530      	push	{r4, r5, lr}
20028110:	6843      	ldr	r3, [r0, #4]
20028112:	b923      	cbnz	r3, 2002811e <mbedtls_mpi_cmp_mpi+0x12>
20028114:	6848      	ldr	r0, [r1, #4]
20028116:	b958      	cbnz	r0, 20028130 <mbedtls_mpi_cmp_mpi+0x24>
20028118:	2b00      	cmp	r3, #0
2002811a:	d136      	bne.n	2002818a <mbedtls_mpi_cmp_mpi+0x7e>
2002811c:	e02f      	b.n	2002817e <mbedtls_mpi_cmp_mpi+0x72>
2002811e:	6890      	ldr	r0, [r2, #8]
20028120:	eb00 0083 	add.w	r0, r0, r3, lsl #2
20028124:	f850 0c04 	ldr.w	r0, [r0, #-4]
20028128:	2800      	cmp	r0, #0
2002812a:	d1f3      	bne.n	20028114 <mbedtls_mpi_cmp_mpi+0x8>
2002812c:	3b01      	subs	r3, #1
2002812e:	e7f0      	b.n	20028112 <mbedtls_mpi_cmp_mpi+0x6>
20028130:	688c      	ldr	r4, [r1, #8]
20028132:	eb04 0580 	add.w	r5, r4, r0, lsl #2
20028136:	f855 5c04 	ldr.w	r5, [r5, #-4]
2002813a:	bb15      	cbnz	r5, 20028182 <mbedtls_mpi_cmp_mpi+0x76>
2002813c:	3801      	subs	r0, #1
2002813e:	e7ea      	b.n	20028116 <mbedtls_mpi_cmp_mpi+0xa>
20028140:	680d      	ldr	r5, [r1, #0]
20028142:	d202      	bcs.n	2002814a <mbedtls_mpi_cmp_mpi+0x3e>
20028144:	6808      	ldr	r0, [r1, #0]
20028146:	4240      	negs	r0, r0
20028148:	e020      	b.n	2002818c <mbedtls_mpi_cmp_mpi+0x80>
2002814a:	6810      	ldr	r0, [r2, #0]
2002814c:	2800      	cmp	r0, #0
2002814e:	dd03      	ble.n	20028158 <mbedtls_mpi_cmp_mpi+0x4c>
20028150:	2d00      	cmp	r5, #0
20028152:	da07      	bge.n	20028164 <mbedtls_mpi_cmp_mpi+0x58>
20028154:	2001      	movs	r0, #1
20028156:	e019      	b.n	2002818c <mbedtls_mpi_cmp_mpi+0x80>
20028158:	2d00      	cmp	r5, #0
2002815a:	dd03      	ble.n	20028164 <mbedtls_mpi_cmp_mpi+0x58>
2002815c:	b110      	cbz	r0, 20028164 <mbedtls_mpi_cmp_mpi+0x58>
2002815e:	f04f 30ff 	mov.w	r0, #4294967295
20028162:	e013      	b.n	2002818c <mbedtls_mpi_cmp_mpi+0x80>
20028164:	3b01      	subs	r3, #1
20028166:	6891      	ldr	r1, [r2, #8]
20028168:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
2002816c:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
20028170:	428d      	cmp	r5, r1
20028172:	d80b      	bhi.n	2002818c <mbedtls_mpi_cmp_mpi+0x80>
20028174:	f103 33ff 	add.w	r3, r3, #4294967295
20028178:	d3e5      	bcc.n	20028146 <mbedtls_mpi_cmp_mpi+0x3a>
2002817a:	1c59      	adds	r1, r3, #1
2002817c:	d1f3      	bne.n	20028166 <mbedtls_mpi_cmp_mpi+0x5a>
2002817e:	2000      	movs	r0, #0
20028180:	e004      	b.n	2002818c <mbedtls_mpi_cmp_mpi+0x80>
20028182:	2b00      	cmp	r3, #0
20028184:	d0de      	beq.n	20028144 <mbedtls_mpi_cmp_mpi+0x38>
20028186:	4283      	cmp	r3, r0
20028188:	d9da      	bls.n	20028140 <mbedtls_mpi_cmp_mpi+0x34>
2002818a:	6810      	ldr	r0, [r2, #0]
2002818c:	bd30      	pop	{r4, r5, pc}

2002818e <mbedtls_mpi_cmp_int>:
2002818e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028190:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
20028194:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
20028198:	2900      	cmp	r1, #0
2002819a:	9300      	str	r3, [sp, #0]
2002819c:	bfac      	ite	ge
2002819e:	2301      	movge	r3, #1
200281a0:	f04f 33ff 	movlt.w	r3, #4294967295
200281a4:	9301      	str	r3, [sp, #4]
200281a6:	2301      	movs	r3, #1
200281a8:	a901      	add	r1, sp, #4
200281aa:	9302      	str	r3, [sp, #8]
200281ac:	f8cd d00c 	str.w	sp, [sp, #12]
200281b0:	f7ff ffac 	bl	2002810c <mbedtls_mpi_cmp_mpi>
200281b4:	b005      	add	sp, #20
200281b6:	f85d fb04 	ldr.w	pc, [sp], #4

200281ba <mbedtls_mpi_add_abs>:
200281ba:	4290      	cmp	r0, r2
200281bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200281c0:	4606      	mov	r6, r0
200281c2:	460c      	mov	r4, r1
200281c4:	4615      	mov	r5, r2
200281c6:	d002      	beq.n	200281ce <mbedtls_mpi_add_abs+0x14>
200281c8:	4288      	cmp	r0, r1
200281ca:	d12c      	bne.n	20028226 <mbedtls_mpi_add_abs+0x6c>
200281cc:	462c      	mov	r4, r5
200281ce:	2301      	movs	r3, #1
200281d0:	6033      	str	r3, [r6, #0]
200281d2:	6865      	ldr	r5, [r4, #4]
200281d4:	bb85      	cbnz	r5, 20028238 <mbedtls_mpi_add_abs+0x7e>
200281d6:	4629      	mov	r1, r5
200281d8:	4630      	mov	r0, r6
200281da:	f7ff fd5b 	bl	20027c94 <mbedtls_mpi_grow>
200281de:	4607      	mov	r7, r0
200281e0:	bb28      	cbnz	r0, 2002822e <mbedtls_mpi_add_abs+0x74>
200281e2:	68b3      	ldr	r3, [r6, #8]
200281e4:	68a1      	ldr	r1, [r4, #8]
200281e6:	469c      	mov	ip, r3
200281e8:	4604      	mov	r4, r0
200281ea:	42a8      	cmp	r0, r5
200281ec:	d12d      	bne.n	2002824a <mbedtls_mpi_add_abs+0x90>
200281ee:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200281f2:	b1f4      	cbz	r4, 20028232 <mbedtls_mpi_add_abs+0x78>
200281f4:	6872      	ldr	r2, [r6, #4]
200281f6:	f105 0801 	add.w	r8, r5, #1
200281fa:	42aa      	cmp	r2, r5
200281fc:	d807      	bhi.n	2002820e <mbedtls_mpi_add_abs+0x54>
200281fe:	4641      	mov	r1, r8
20028200:	4630      	mov	r0, r6
20028202:	f7ff fd47 	bl	20027c94 <mbedtls_mpi_grow>
20028206:	b990      	cbnz	r0, 2002822e <mbedtls_mpi_add_abs+0x74>
20028208:	68b3      	ldr	r3, [r6, #8]
2002820a:	eb03 0385 	add.w	r3, r3, r5, lsl #2
2002820e:	681a      	ldr	r2, [r3, #0]
20028210:	4645      	mov	r5, r8
20028212:	1912      	adds	r2, r2, r4
20028214:	bf2c      	ite	cs
20028216:	2401      	movcs	r4, #1
20028218:	2400      	movcc	r4, #0
2002821a:	3c00      	subs	r4, #0
2002821c:	bf18      	it	ne
2002821e:	2401      	movne	r4, #1
20028220:	f843 2b04 	str.w	r2, [r3], #4
20028224:	e7e5      	b.n	200281f2 <mbedtls_mpi_add_abs+0x38>
20028226:	f7ff fd61 	bl	20027cec <mbedtls_mpi_copy>
2002822a:	2800      	cmp	r0, #0
2002822c:	d0ce      	beq.n	200281cc <mbedtls_mpi_add_abs+0x12>
2002822e:	f06f 070f 	mvn.w	r7, #15
20028232:	4638      	mov	r0, r7
20028234:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20028238:	68a3      	ldr	r3, [r4, #8]
2002823a:	eb03 0385 	add.w	r3, r3, r5, lsl #2
2002823e:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028242:	2b00      	cmp	r3, #0
20028244:	d1c7      	bne.n	200281d6 <mbedtls_mpi_add_abs+0x1c>
20028246:	3d01      	subs	r5, #1
20028248:	e7c4      	b.n	200281d4 <mbedtls_mpi_add_abs+0x1a>
2002824a:	f8dc 2000 	ldr.w	r2, [ip]
2002824e:	1912      	adds	r2, r2, r4
20028250:	bf2c      	ite	cs
20028252:	f04f 0e01 	movcs.w	lr, #1
20028256:	f04f 0e00 	movcc.w	lr, #0
2002825a:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
2002825e:	3001      	adds	r0, #1
20028260:	1912      	adds	r2, r2, r4
20028262:	f84c 2b04 	str.w	r2, [ip], #4
20028266:	f14e 0400 	adc.w	r4, lr, #0
2002826a:	e7be      	b.n	200281ea <mbedtls_mpi_add_abs+0x30>

2002826c <mbedtls_mpi_sub_abs>:
2002826c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002826e:	460e      	mov	r6, r1
20028270:	4605      	mov	r5, r0
20028272:	4611      	mov	r1, r2
20028274:	4630      	mov	r0, r6
20028276:	4614      	mov	r4, r2
20028278:	f7ff feaa 	bl	20027fd0 <mbedtls_mpi_cmp_abs>
2002827c:	3001      	adds	r0, #1
2002827e:	d02f      	beq.n	200282e0 <mbedtls_mpi_sub_abs+0x74>
20028280:	2300      	movs	r3, #0
20028282:	2201      	movs	r2, #1
20028284:	42ac      	cmp	r4, r5
20028286:	e9cd 2301 	strd	r2, r3, [sp, #4]
2002828a:	9303      	str	r3, [sp, #12]
2002828c:	d10d      	bne.n	200282aa <mbedtls_mpi_sub_abs+0x3e>
2002828e:	4621      	mov	r1, r4
20028290:	a801      	add	r0, sp, #4
20028292:	f7ff fd2b 	bl	20027cec <mbedtls_mpi_copy>
20028296:	b138      	cbz	r0, 200282a8 <mbedtls_mpi_sub_abs+0x3c>
20028298:	f06f 040f 	mvn.w	r4, #15
2002829c:	a801      	add	r0, sp, #4
2002829e:	f7ff fce4 	bl	20027c6a <mbedtls_mpi_free>
200282a2:	4620      	mov	r0, r4
200282a4:	b004      	add	sp, #16
200282a6:	bd70      	pop	{r4, r5, r6, pc}
200282a8:	ac01      	add	r4, sp, #4
200282aa:	42ae      	cmp	r6, r5
200282ac:	d109      	bne.n	200282c2 <mbedtls_mpi_sub_abs+0x56>
200282ae:	2301      	movs	r3, #1
200282b0:	602b      	str	r3, [r5, #0]
200282b2:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
200282b6:	b958      	cbnz	r0, 200282d0 <mbedtls_mpi_sub_abs+0x64>
200282b8:	68aa      	ldr	r2, [r5, #8]
200282ba:	f7ff fb2a 	bl	20027912 <mpi_sub_hlp>
200282be:	2400      	movs	r4, #0
200282c0:	e7ec      	b.n	2002829c <mbedtls_mpi_sub_abs+0x30>
200282c2:	4631      	mov	r1, r6
200282c4:	4628      	mov	r0, r5
200282c6:	f7ff fd11 	bl	20027cec <mbedtls_mpi_copy>
200282ca:	2800      	cmp	r0, #0
200282cc:	d0ef      	beq.n	200282ae <mbedtls_mpi_sub_abs+0x42>
200282ce:	e7e3      	b.n	20028298 <mbedtls_mpi_sub_abs+0x2c>
200282d0:	eb01 0380 	add.w	r3, r1, r0, lsl #2
200282d4:	f853 3c04 	ldr.w	r3, [r3, #-4]
200282d8:	2b00      	cmp	r3, #0
200282da:	d1ed      	bne.n	200282b8 <mbedtls_mpi_sub_abs+0x4c>
200282dc:	3801      	subs	r0, #1
200282de:	e7ea      	b.n	200282b6 <mbedtls_mpi_sub_abs+0x4a>
200282e0:	f06f 0409 	mvn.w	r4, #9
200282e4:	e7dd      	b.n	200282a2 <mbedtls_mpi_sub_abs+0x36>

200282e6 <mbedtls_mpi_add_mpi>:
200282e6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200282e8:	680d      	ldr	r5, [r1, #0]
200282ea:	6813      	ldr	r3, [r2, #0]
200282ec:	4604      	mov	r4, r0
200282ee:	436b      	muls	r3, r5
200282f0:	460f      	mov	r7, r1
200282f2:	4616      	mov	r6, r2
200282f4:	d516      	bpl.n	20028324 <mbedtls_mpi_add_mpi+0x3e>
200282f6:	4611      	mov	r1, r2
200282f8:	4638      	mov	r0, r7
200282fa:	f7ff fe69 	bl	20027fd0 <mbedtls_mpi_cmp_abs>
200282fe:	3001      	adds	r0, #1
20028300:	d007      	beq.n	20028312 <mbedtls_mpi_add_mpi+0x2c>
20028302:	4632      	mov	r2, r6
20028304:	4639      	mov	r1, r7
20028306:	4620      	mov	r0, r4
20028308:	f7ff ffb0 	bl	2002826c <mbedtls_mpi_sub_abs>
2002830c:	b900      	cbnz	r0, 20028310 <mbedtls_mpi_add_mpi+0x2a>
2002830e:	6025      	str	r5, [r4, #0]
20028310:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028312:	463a      	mov	r2, r7
20028314:	4631      	mov	r1, r6
20028316:	4620      	mov	r0, r4
20028318:	f7ff ffa8 	bl	2002826c <mbedtls_mpi_sub_abs>
2002831c:	2800      	cmp	r0, #0
2002831e:	d1f7      	bne.n	20028310 <mbedtls_mpi_add_mpi+0x2a>
20028320:	426d      	negs	r5, r5
20028322:	e7f4      	b.n	2002830e <mbedtls_mpi_add_mpi+0x28>
20028324:	f7ff ff49 	bl	200281ba <mbedtls_mpi_add_abs>
20028328:	2800      	cmp	r0, #0
2002832a:	d0f0      	beq.n	2002830e <mbedtls_mpi_add_mpi+0x28>
2002832c:	f06f 000f 	mvn.w	r0, #15
20028330:	e7ee      	b.n	20028310 <mbedtls_mpi_add_mpi+0x2a>

20028332 <mbedtls_mpi_sub_mpi>:
20028332:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20028334:	680d      	ldr	r5, [r1, #0]
20028336:	6813      	ldr	r3, [r2, #0]
20028338:	4604      	mov	r4, r0
2002833a:	436b      	muls	r3, r5
2002833c:	2b00      	cmp	r3, #0
2002833e:	460f      	mov	r7, r1
20028340:	4616      	mov	r6, r2
20028342:	dd16      	ble.n	20028372 <mbedtls_mpi_sub_mpi+0x40>
20028344:	4611      	mov	r1, r2
20028346:	4638      	mov	r0, r7
20028348:	f7ff fe42 	bl	20027fd0 <mbedtls_mpi_cmp_abs>
2002834c:	3001      	adds	r0, #1
2002834e:	d007      	beq.n	20028360 <mbedtls_mpi_sub_mpi+0x2e>
20028350:	4632      	mov	r2, r6
20028352:	4639      	mov	r1, r7
20028354:	4620      	mov	r0, r4
20028356:	f7ff ff89 	bl	2002826c <mbedtls_mpi_sub_abs>
2002835a:	b900      	cbnz	r0, 2002835e <mbedtls_mpi_sub_mpi+0x2c>
2002835c:	6025      	str	r5, [r4, #0]
2002835e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028360:	463a      	mov	r2, r7
20028362:	4631      	mov	r1, r6
20028364:	4620      	mov	r0, r4
20028366:	f7ff ff81 	bl	2002826c <mbedtls_mpi_sub_abs>
2002836a:	2800      	cmp	r0, #0
2002836c:	d1f7      	bne.n	2002835e <mbedtls_mpi_sub_mpi+0x2c>
2002836e:	426d      	negs	r5, r5
20028370:	e7f4      	b.n	2002835c <mbedtls_mpi_sub_mpi+0x2a>
20028372:	f7ff ff22 	bl	200281ba <mbedtls_mpi_add_abs>
20028376:	2800      	cmp	r0, #0
20028378:	d0f0      	beq.n	2002835c <mbedtls_mpi_sub_mpi+0x2a>
2002837a:	f06f 000f 	mvn.w	r0, #15
2002837e:	e7ee      	b.n	2002835e <mbedtls_mpi_sub_mpi+0x2c>

20028380 <mbedtls_mpi_sub_int>:
20028380:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028382:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
20028386:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
2002838a:	2a00      	cmp	r2, #0
2002838c:	9300      	str	r3, [sp, #0]
2002838e:	bfac      	ite	ge
20028390:	2301      	movge	r3, #1
20028392:	f04f 33ff 	movlt.w	r3, #4294967295
20028396:	9301      	str	r3, [sp, #4]
20028398:	2301      	movs	r3, #1
2002839a:	aa01      	add	r2, sp, #4
2002839c:	9302      	str	r3, [sp, #8]
2002839e:	f8cd d00c 	str.w	sp, [sp, #12]
200283a2:	f7ff ffc6 	bl	20028332 <mbedtls_mpi_sub_mpi>
200283a6:	b005      	add	sp, #20
200283a8:	f85d fb04 	ldr.w	pc, [sp], #4

200283ac <mbedtls_mpi_mul_mpi>:
200283ac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
200283b0:	2300      	movs	r3, #0
200283b2:	4615      	mov	r5, r2
200283b4:	2201      	movs	r2, #1
200283b6:	b087      	sub	sp, #28
200283b8:	4288      	cmp	r0, r1
200283ba:	4607      	mov	r7, r0
200283bc:	460e      	mov	r6, r1
200283be:	e9cd 2300 	strd	r2, r3, [sp]
200283c2:	e9cd 3202 	strd	r3, r2, [sp, #8]
200283c6:	e9cd 3304 	strd	r3, r3, [sp, #16]
200283ca:	d110      	bne.n	200283ee <mbedtls_mpi_mul_mpi+0x42>
200283cc:	4668      	mov	r0, sp
200283ce:	f7ff fc8d 	bl	20027cec <mbedtls_mpi_copy>
200283d2:	b158      	cbz	r0, 200283ec <mbedtls_mpi_mul_mpi+0x40>
200283d4:	f06f 090f 	mvn.w	r9, #15
200283d8:	a803      	add	r0, sp, #12
200283da:	f7ff fc46 	bl	20027c6a <mbedtls_mpi_free>
200283de:	4668      	mov	r0, sp
200283e0:	f7ff fc43 	bl	20027c6a <mbedtls_mpi_free>
200283e4:	4648      	mov	r0, r9
200283e6:	b007      	add	sp, #28
200283e8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200283ec:	466e      	mov	r6, sp
200283ee:	42af      	cmp	r7, r5
200283f0:	d106      	bne.n	20028400 <mbedtls_mpi_mul_mpi+0x54>
200283f2:	4639      	mov	r1, r7
200283f4:	a803      	add	r0, sp, #12
200283f6:	f7ff fc79 	bl	20027cec <mbedtls_mpi_copy>
200283fa:	2800      	cmp	r0, #0
200283fc:	d1ea      	bne.n	200283d4 <mbedtls_mpi_mul_mpi+0x28>
200283fe:	ad03      	add	r5, sp, #12
20028400:	f8d6 8004 	ldr.w	r8, [r6, #4]
20028404:	f1b8 0f00 	cmp.w	r8, #0
20028408:	d116      	bne.n	20028438 <mbedtls_mpi_mul_mpi+0x8c>
2002840a:	686c      	ldr	r4, [r5, #4]
2002840c:	b9f4      	cbnz	r4, 2002844c <mbedtls_mpi_mul_mpi+0xa0>
2002840e:	eb08 0104 	add.w	r1, r8, r4
20028412:	4638      	mov	r0, r7
20028414:	f7ff fc3e 	bl	20027c94 <mbedtls_mpi_grow>
20028418:	4601      	mov	r1, r0
2002841a:	2800      	cmp	r0, #0
2002841c:	d1da      	bne.n	200283d4 <mbedtls_mpi_mul_mpi+0x28>
2002841e:	4638      	mov	r0, r7
20028420:	f7ff fc8d 	bl	20027d3e <mbedtls_mpi_lset>
20028424:	4681      	mov	r9, r0
20028426:	2800      	cmp	r0, #0
20028428:	d1d4      	bne.n	200283d4 <mbedtls_mpi_mul_mpi+0x28>
2002842a:	3c01      	subs	r4, #1
2002842c:	d217      	bcs.n	2002845e <mbedtls_mpi_mul_mpi+0xb2>
2002842e:	6833      	ldr	r3, [r6, #0]
20028430:	682a      	ldr	r2, [r5, #0]
20028432:	4353      	muls	r3, r2
20028434:	603b      	str	r3, [r7, #0]
20028436:	e7cf      	b.n	200283d8 <mbedtls_mpi_mul_mpi+0x2c>
20028438:	68b3      	ldr	r3, [r6, #8]
2002843a:	eb03 0388 	add.w	r3, r3, r8, lsl #2
2002843e:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028442:	2b00      	cmp	r3, #0
20028444:	d1e1      	bne.n	2002840a <mbedtls_mpi_mul_mpi+0x5e>
20028446:	f108 38ff 	add.w	r8, r8, #4294967295
2002844a:	e7db      	b.n	20028404 <mbedtls_mpi_mul_mpi+0x58>
2002844c:	68ab      	ldr	r3, [r5, #8]
2002844e:	eb03 0384 	add.w	r3, r3, r4, lsl #2
20028452:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028456:	2b00      	cmp	r3, #0
20028458:	d1d9      	bne.n	2002840e <mbedtls_mpi_mul_mpi+0x62>
2002845a:	3c01      	subs	r4, #1
2002845c:	e7d6      	b.n	2002840c <mbedtls_mpi_mul_mpi+0x60>
2002845e:	68ab      	ldr	r3, [r5, #8]
20028460:	68ba      	ldr	r2, [r7, #8]
20028462:	4640      	mov	r0, r8
20028464:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
20028468:	68b1      	ldr	r1, [r6, #8]
2002846a:	eb02 0284 	add.w	r2, r2, r4, lsl #2
2002846e:	f7ff fa79 	bl	20027964 <mpi_mul_hlp>
20028472:	e7da      	b.n	2002842a <mbedtls_mpi_mul_mpi+0x7e>

20028474 <mbedtls_mpi_mul_int>:
20028474:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028476:	2301      	movs	r3, #1
20028478:	9200      	str	r2, [sp, #0]
2002847a:	aa01      	add	r2, sp, #4
2002847c:	e9cd 3301 	strd	r3, r3, [sp, #4]
20028480:	f8cd d00c 	str.w	sp, [sp, #12]
20028484:	f7ff ff92 	bl	200283ac <mbedtls_mpi_mul_mpi>
20028488:	b005      	add	sp, #20
2002848a:	f85d fb04 	ldr.w	pc, [sp], #4

2002848e <mbedtls_mpi_div_mpi>:
2002848e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028492:	b09f      	sub	sp, #124	@ 0x7c
20028494:	e9cd 1203 	strd	r1, r2, [sp, #12]
20028498:	9005      	str	r0, [sp, #20]
2002849a:	2100      	movs	r1, #0
2002849c:	4618      	mov	r0, r3
2002849e:	9309      	str	r3, [sp, #36]	@ 0x24
200284a0:	f7ff fe75 	bl	2002818e <mbedtls_mpi_cmp_int>
200284a4:	2800      	cmp	r0, #0
200284a6:	f000 81f3 	beq.w	20028890 <mbedtls_mpi_div_mpi+0x402>
200284aa:	2501      	movs	r5, #1
200284ac:	2400      	movs	r4, #0
200284ae:	9909      	ldr	r1, [sp, #36]	@ 0x24
200284b0:	9804      	ldr	r0, [sp, #16]
200284b2:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
200284b6:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
200284ba:	950f      	str	r5, [sp, #60]	@ 0x3c
200284bc:	9512      	str	r5, [sp, #72]	@ 0x48
200284be:	9515      	str	r5, [sp, #84]	@ 0x54
200284c0:	9416      	str	r4, [sp, #88]	@ 0x58
200284c2:	f7ff fd85 	bl	20027fd0 <mbedtls_mpi_cmp_abs>
200284c6:	3001      	adds	r0, #1
200284c8:	d11f      	bne.n	2002850a <mbedtls_mpi_div_mpi+0x7c>
200284ca:	9b05      	ldr	r3, [sp, #20]
200284cc:	b933      	cbnz	r3, 200284dc <mbedtls_mpi_div_mpi+0x4e>
200284ce:	9b03      	ldr	r3, [sp, #12]
200284d0:	b9a3      	cbnz	r3, 200284fc <mbedtls_mpi_div_mpi+0x6e>
200284d2:	2100      	movs	r1, #0
200284d4:	4608      	mov	r0, r1
200284d6:	b01f      	add	sp, #124	@ 0x7c
200284d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200284dc:	4621      	mov	r1, r4
200284de:	9805      	ldr	r0, [sp, #20]
200284e0:	f7ff fc2d 	bl	20027d3e <mbedtls_mpi_lset>
200284e4:	2800      	cmp	r0, #0
200284e6:	d0f2      	beq.n	200284ce <mbedtls_mpi_div_mpi+0x40>
200284e8:	2400      	movs	r4, #0
200284ea:	4625      	mov	r5, r4
200284ec:	46a1      	mov	r9, r4
200284ee:	46a0      	mov	r8, r4
200284f0:	4626      	mov	r6, r4
200284f2:	4627      	mov	r7, r4
200284f4:	9402      	str	r4, [sp, #8]
200284f6:	f06f 010f 	mvn.w	r1, #15
200284fa:	e0ef      	b.n	200286dc <mbedtls_mpi_div_mpi+0x24e>
200284fc:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
20028500:	f7ff fbf4 	bl	20027cec <mbedtls_mpi_copy>
20028504:	2800      	cmp	r0, #0
20028506:	d1ef      	bne.n	200284e8 <mbedtls_mpi_div_mpi+0x5a>
20028508:	e7e3      	b.n	200284d2 <mbedtls_mpi_div_mpi+0x44>
2002850a:	9904      	ldr	r1, [sp, #16]
2002850c:	a80f      	add	r0, sp, #60	@ 0x3c
2002850e:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
20028512:	f7ff fbeb 	bl	20027cec <mbedtls_mpi_copy>
20028516:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002851a:	4682      	mov	sl, r0
2002851c:	2800      	cmp	r0, #0
2002851e:	f040 81a9 	bne.w	20028874 <mbedtls_mpi_div_mpi+0x3e6>
20028522:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
20028526:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028528:	a812      	add	r0, sp, #72	@ 0x48
2002852a:	f7ff fbdf 	bl	20027cec <mbedtls_mpi_copy>
2002852e:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028532:	4604      	mov	r4, r0
20028534:	2800      	cmp	r0, #0
20028536:	f040 81a2 	bne.w	2002887e <mbedtls_mpi_div_mpi+0x3f0>
2002853a:	9b04      	ldr	r3, [sp, #16]
2002853c:	9017      	str	r0, [sp, #92]	@ 0x5c
2002853e:	6859      	ldr	r1, [r3, #4]
20028540:	a815      	add	r0, sp, #84	@ 0x54
20028542:	3102      	adds	r1, #2
20028544:	9512      	str	r5, [sp, #72]	@ 0x48
20028546:	950f      	str	r5, [sp, #60]	@ 0x3c
20028548:	f7ff fba4 	bl	20027c94 <mbedtls_mpi_grow>
2002854c:	4605      	mov	r5, r0
2002854e:	b118      	cbz	r0, 20028558 <mbedtls_mpi_div_mpi+0xca>
20028550:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20028552:	9302      	str	r3, [sp, #8]
20028554:	4625      	mov	r5, r4
20028556:	e7ce      	b.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
20028558:	4601      	mov	r1, r0
2002855a:	a815      	add	r0, sp, #84	@ 0x54
2002855c:	f7ff fbef 	bl	20027d3e <mbedtls_mpi_lset>
20028560:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20028562:	4604      	mov	r4, r0
20028564:	9302      	str	r3, [sp, #8]
20028566:	2800      	cmp	r0, #0
20028568:	f040 818e 	bne.w	20028888 <mbedtls_mpi_div_mpi+0x3fa>
2002856c:	901a      	str	r0, [sp, #104]	@ 0x68
2002856e:	2102      	movs	r1, #2
20028570:	a818      	add	r0, sp, #96	@ 0x60
20028572:	f7ff fb8f 	bl	20027c94 <mbedtls_mpi_grow>
20028576:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028578:	2800      	cmp	r0, #0
2002857a:	d1bc      	bne.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002857c:	901d      	str	r0, [sp, #116]	@ 0x74
2002857e:	2103      	movs	r1, #3
20028580:	a81b      	add	r0, sp, #108	@ 0x6c
20028582:	f7ff fb87 	bl	20027c94 <mbedtls_mpi_grow>
20028586:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028588:	4683      	mov	fp, r0
2002858a:	2800      	cmp	r0, #0
2002858c:	d1b3      	bne.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002858e:	a812      	add	r0, sp, #72	@ 0x48
20028590:	f7ff fc09 	bl	20027da6 <mbedtls_mpi_bitlen>
20028594:	f000 001f 	and.w	r0, r0, #31
20028598:	281f      	cmp	r0, #31
2002859a:	f000 808a 	beq.w	200286b2 <mbedtls_mpi_div_mpi+0x224>
2002859e:	f1c0 031f 	rsb	r3, r0, #31
200285a2:	4619      	mov	r1, r3
200285a4:	a80f      	add	r0, sp, #60	@ 0x3c
200285a6:	9306      	str	r3, [sp, #24]
200285a8:	f7ff fc78 	bl	20027e9c <mbedtls_mpi_shift_l>
200285ac:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200285b0:	2800      	cmp	r0, #0
200285b2:	d1a0      	bne.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
200285b4:	9906      	ldr	r1, [sp, #24]
200285b6:	a812      	add	r0, sp, #72	@ 0x48
200285b8:	f7ff fc70 	bl	20027e9c <mbedtls_mpi_shift_l>
200285bc:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200285c0:	2800      	cmp	r0, #0
200285c2:	d198      	bne.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
200285c4:	46ba      	mov	sl, r7
200285c6:	f8cd 8020 	str.w	r8, [sp, #32]
200285ca:	eba7 0b08 	sub.w	fp, r7, r8
200285ce:	ea4f 134b 	mov.w	r3, fp, lsl #5
200285d2:	4619      	mov	r1, r3
200285d4:	a812      	add	r0, sp, #72	@ 0x48
200285d6:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200285da:	9301      	str	r3, [sp, #4]
200285dc:	f7ff fc5e 	bl	20027e9c <mbedtls_mpi_shift_l>
200285e0:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200285e4:	2800      	cmp	r0, #0
200285e6:	d186      	bne.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
200285e8:	ea4f 038b 	mov.w	r3, fp, lsl #2
200285ec:	930b      	str	r3, [sp, #44]	@ 0x2c
200285ee:	9b02      	ldr	r3, [sp, #8]
200285f0:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
200285f4:	a912      	add	r1, sp, #72	@ 0x48
200285f6:	a80f      	add	r0, sp, #60	@ 0x3c
200285f8:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200285fc:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
20028600:	f7ff fd84 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20028604:	2800      	cmp	r0, #0
20028606:	da5a      	bge.n	200286be <mbedtls_mpi_div_mpi+0x230>
20028608:	9901      	ldr	r1, [sp, #4]
2002860a:	a812      	add	r0, sp, #72	@ 0x48
2002860c:	f7ff fc9f 	bl	20027f4e <mbedtls_mpi_shift_r>
20028610:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028614:	2800      	cmp	r0, #0
20028616:	f47f af6e 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002861a:	f10a 33ff 	add.w	r3, sl, #4294967295
2002861e:	9301      	str	r3, [sp, #4]
20028620:	9b08      	ldr	r3, [sp, #32]
20028622:	9a02      	ldr	r2, [sp, #8]
20028624:	3b01      	subs	r3, #1
20028626:	9307      	str	r3, [sp, #28]
20028628:	eb09 0383 	add.w	r3, r9, r3, lsl #2
2002862c:	930a      	str	r3, [sp, #40]	@ 0x28
2002862e:	9b08      	ldr	r3, [sp, #32]
20028630:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
20028634:	3b02      	subs	r3, #2
20028636:	eb09 0383 	add.w	r3, r9, r3, lsl #2
2002863a:	930c      	str	r3, [sp, #48]	@ 0x30
2002863c:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002863e:	4413      	add	r3, r2
20028640:	469a      	mov	sl, r3
20028642:	9b01      	ldr	r3, [sp, #4]
20028644:	9a07      	ldr	r2, [sp, #28]
20028646:	4293      	cmp	r3, r2
20028648:	d862      	bhi.n	20028710 <mbedtls_mpi_div_mpi+0x282>
2002864a:	9b05      	ldr	r3, [sp, #20]
2002864c:	b16b      	cbz	r3, 2002866a <mbedtls_mpi_div_mpi+0x1dc>
2002864e:	4618      	mov	r0, r3
20028650:	a915      	add	r1, sp, #84	@ 0x54
20028652:	f7ff fb4b 	bl	20027cec <mbedtls_mpi_copy>
20028656:	2800      	cmp	r0, #0
20028658:	f47f af4d 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002865c:	9b04      	ldr	r3, [sp, #16]
2002865e:	9a09      	ldr	r2, [sp, #36]	@ 0x24
20028660:	681b      	ldr	r3, [r3, #0]
20028662:	6812      	ldr	r2, [r2, #0]
20028664:	4353      	muls	r3, r2
20028666:	9a05      	ldr	r2, [sp, #20]
20028668:	6013      	str	r3, [r2, #0]
2002866a:	9b03      	ldr	r3, [sp, #12]
2002866c:	2b00      	cmp	r3, #0
2002866e:	f000 810d 	beq.w	2002888c <mbedtls_mpi_div_mpi+0x3fe>
20028672:	9906      	ldr	r1, [sp, #24]
20028674:	a80f      	add	r0, sp, #60	@ 0x3c
20028676:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002867a:	f7ff fc68 	bl	20027f4e <mbedtls_mpi_shift_r>
2002867e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028682:	2800      	cmp	r0, #0
20028684:	f47f af37 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
20028688:	9b04      	ldr	r3, [sp, #16]
2002868a:	a90f      	add	r1, sp, #60	@ 0x3c
2002868c:	681b      	ldr	r3, [r3, #0]
2002868e:	9803      	ldr	r0, [sp, #12]
20028690:	930f      	str	r3, [sp, #60]	@ 0x3c
20028692:	f7ff fb2b 	bl	20027cec <mbedtls_mpi_copy>
20028696:	4601      	mov	r1, r0
20028698:	2800      	cmp	r0, #0
2002869a:	f47f af2c 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002869e:	9001      	str	r0, [sp, #4]
200286a0:	9803      	ldr	r0, [sp, #12]
200286a2:	f7ff fd74 	bl	2002818e <mbedtls_mpi_cmp_int>
200286a6:	9901      	ldr	r1, [sp, #4]
200286a8:	b9c0      	cbnz	r0, 200286dc <mbedtls_mpi_div_mpi+0x24e>
200286aa:	2301      	movs	r3, #1
200286ac:	9a03      	ldr	r2, [sp, #12]
200286ae:	6013      	str	r3, [r2, #0]
200286b0:	e014      	b.n	200286dc <mbedtls_mpi_div_mpi+0x24e>
200286b2:	46ba      	mov	sl, r7
200286b4:	f8cd 8020 	str.w	r8, [sp, #32]
200286b8:	f8cd b018 	str.w	fp, [sp, #24]
200286bc:	e785      	b.n	200285ca <mbedtls_mpi_div_mpi+0x13c>
200286be:	f8db 2000 	ldr.w	r2, [fp]
200286c2:	a90f      	add	r1, sp, #60	@ 0x3c
200286c4:	3201      	adds	r2, #1
200286c6:	4608      	mov	r0, r1
200286c8:	f8cb 2000 	str.w	r2, [fp]
200286cc:	aa12      	add	r2, sp, #72	@ 0x48
200286ce:	f7ff fe30 	bl	20028332 <mbedtls_mpi_sub_mpi>
200286d2:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200286d6:	4601      	mov	r1, r0
200286d8:	2800      	cmp	r0, #0
200286da:	d08b      	beq.n	200285f4 <mbedtls_mpi_div_mpi+0x166>
200286dc:	a80f      	add	r0, sp, #60	@ 0x3c
200286de:	9101      	str	r1, [sp, #4]
200286e0:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200286e4:	f7ff fac1 	bl	20027c6a <mbedtls_mpi_free>
200286e8:	a812      	add	r0, sp, #72	@ 0x48
200286ea:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200286ee:	f7ff fabc 	bl	20027c6a <mbedtls_mpi_free>
200286f2:	9b02      	ldr	r3, [sp, #8]
200286f4:	a815      	add	r0, sp, #84	@ 0x54
200286f6:	9317      	str	r3, [sp, #92]	@ 0x5c
200286f8:	f7ff fab7 	bl	20027c6a <mbedtls_mpi_free>
200286fc:	a818      	add	r0, sp, #96	@ 0x60
200286fe:	951a      	str	r5, [sp, #104]	@ 0x68
20028700:	f7ff fab3 	bl	20027c6a <mbedtls_mpi_free>
20028704:	a81b      	add	r0, sp, #108	@ 0x6c
20028706:	941d      	str	r4, [sp, #116]	@ 0x74
20028708:	f7ff faaf 	bl	20027c6a <mbedtls_mpi_free>
2002870c:	9901      	ldr	r1, [sp, #4]
2002870e:	e6e1      	b.n	200284d4 <mbedtls_mpi_div_mpi+0x46>
20028710:	9b01      	ldr	r3, [sp, #4]
20028712:	ea4f 0b83 	mov.w	fp, r3, lsl #2
20028716:	eb06 0383 	add.w	r3, r6, r3, lsl #2
2002871a:	930b      	str	r3, [sp, #44]	@ 0x2c
2002871c:	9b01      	ldr	r3, [sp, #4]
2002871e:	f1ab 0004 	sub.w	r0, fp, #4
20028722:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
20028726:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028728:	681a      	ldr	r2, [r3, #0]
2002872a:	1833      	adds	r3, r6, r0
2002872c:	4291      	cmp	r1, r2
2002872e:	930d      	str	r3, [sp, #52]	@ 0x34
20028730:	d255      	bcs.n	200287de <mbedtls_mpi_div_mpi+0x350>
20028732:	2300      	movs	r3, #0
20028734:	5830      	ldr	r0, [r6, r0]
20028736:	f001 fd87 	bl	2002a248 <__aeabi_uldivmod>
2002873a:	2900      	cmp	r1, #0
2002873c:	bf14      	ite	ne
2002873e:	f04f 33ff 	movne.w	r3, #4294967295
20028742:	4603      	moveq	r3, r0
20028744:	3301      	adds	r3, #1
20028746:	f1ab 0b08 	sub.w	fp, fp, #8
2002874a:	f84a 3c04 	str.w	r3, [sl, #-4]
2002874e:	44b3      	add	fp, r6
20028750:	f85a 3c04 	ldr.w	r3, [sl, #-4]
20028754:	2100      	movs	r1, #0
20028756:	3b01      	subs	r3, #1
20028758:	f84a 3c04 	str.w	r3, [sl, #-4]
2002875c:	a818      	add	r0, sp, #96	@ 0x60
2002875e:	951a      	str	r5, [sp, #104]	@ 0x68
20028760:	f7ff faed 	bl	20027d3e <mbedtls_mpi_lset>
20028764:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028766:	2800      	cmp	r0, #0
20028768:	f47f aec5 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002876c:	9b07      	ldr	r3, [sp, #28]
2002876e:	2b00      	cmp	r3, #0
20028770:	d038      	beq.n	200287e4 <mbedtls_mpi_div_mpi+0x356>
20028772:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20028774:	681b      	ldr	r3, [r3, #0]
20028776:	602b      	str	r3, [r5, #0]
20028778:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
2002877a:	a918      	add	r1, sp, #96	@ 0x60
2002877c:	681b      	ldr	r3, [r3, #0]
2002877e:	4608      	mov	r0, r1
20028780:	606b      	str	r3, [r5, #4]
20028782:	f85a 2c04 	ldr.w	r2, [sl, #-4]
20028786:	f7ff fe75 	bl	20028474 <mbedtls_mpi_mul_int>
2002878a:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002878c:	4601      	mov	r1, r0
2002878e:	2800      	cmp	r0, #0
20028790:	f47f aeb1 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
20028794:	a81b      	add	r0, sp, #108	@ 0x6c
20028796:	941d      	str	r4, [sp, #116]	@ 0x74
20028798:	f7ff fad1 	bl	20027d3e <mbedtls_mpi_lset>
2002879c:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
2002879e:	2800      	cmp	r0, #0
200287a0:	f47f aea9 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
200287a4:	9b01      	ldr	r3, [sp, #4]
200287a6:	a91b      	add	r1, sp, #108	@ 0x6c
200287a8:	2b01      	cmp	r3, #1
200287aa:	bf18      	it	ne
200287ac:	f8db 0000 	ldrne.w	r0, [fp]
200287b0:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
200287b2:	6020      	str	r0, [r4, #0]
200287b4:	681b      	ldr	r3, [r3, #0]
200287b6:	a818      	add	r0, sp, #96	@ 0x60
200287b8:	6063      	str	r3, [r4, #4]
200287ba:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200287bc:	681b      	ldr	r3, [r3, #0]
200287be:	60a3      	str	r3, [r4, #8]
200287c0:	f7ff fca4 	bl	2002810c <mbedtls_mpi_cmp_mpi>
200287c4:	2800      	cmp	r0, #0
200287c6:	dcc3      	bgt.n	20028750 <mbedtls_mpi_div_mpi+0x2c2>
200287c8:	f85a 2c04 	ldr.w	r2, [sl, #-4]
200287cc:	a912      	add	r1, sp, #72	@ 0x48
200287ce:	a818      	add	r0, sp, #96	@ 0x60
200287d0:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200287d4:	f7ff fe4e 	bl	20028474 <mbedtls_mpi_mul_int>
200287d8:	b130      	cbz	r0, 200287e8 <mbedtls_mpi_div_mpi+0x35a>
200287da:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200287dc:	e68b      	b.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
200287de:	f04f 33ff 	mov.w	r3, #4294967295
200287e2:	e7af      	b.n	20028744 <mbedtls_mpi_div_mpi+0x2b6>
200287e4:	9b07      	ldr	r3, [sp, #28]
200287e6:	e7c6      	b.n	20028776 <mbedtls_mpi_div_mpi+0x2e8>
200287e8:	f06f 0b1f 	mvn.w	fp, #31
200287ec:	9b08      	ldr	r3, [sp, #32]
200287ee:	a818      	add	r0, sp, #96	@ 0x60
200287f0:	fb0b fb03 	mul.w	fp, fp, r3
200287f4:	9b01      	ldr	r3, [sp, #4]
200287f6:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
200287fa:	4659      	mov	r1, fp
200287fc:	f7ff fb4e 	bl	20027e9c <mbedtls_mpi_shift_l>
20028800:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028802:	2800      	cmp	r0, #0
20028804:	f47f ae77 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
20028808:	a90f      	add	r1, sp, #60	@ 0x3c
2002880a:	4608      	mov	r0, r1
2002880c:	aa18      	add	r2, sp, #96	@ 0x60
2002880e:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
20028812:	f7ff fd8e 	bl	20028332 <mbedtls_mpi_sub_mpi>
20028816:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
2002881a:	4601      	mov	r1, r0
2002881c:	2800      	cmp	r0, #0
2002881e:	f47f af5d 	bne.w	200286dc <mbedtls_mpi_div_mpi+0x24e>
20028822:	a80f      	add	r0, sp, #60	@ 0x3c
20028824:	f7ff fcb3 	bl	2002818e <mbedtls_mpi_cmp_int>
20028828:	2800      	cmp	r0, #0
2002882a:	da1d      	bge.n	20028868 <mbedtls_mpi_div_mpi+0x3da>
2002882c:	a912      	add	r1, sp, #72	@ 0x48
2002882e:	a818      	add	r0, sp, #96	@ 0x60
20028830:	f7ff fa5c 	bl	20027cec <mbedtls_mpi_copy>
20028834:	2800      	cmp	r0, #0
20028836:	d1d0      	bne.n	200287da <mbedtls_mpi_div_mpi+0x34c>
20028838:	4659      	mov	r1, fp
2002883a:	a818      	add	r0, sp, #96	@ 0x60
2002883c:	f7ff fb2e 	bl	20027e9c <mbedtls_mpi_shift_l>
20028840:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028842:	2800      	cmp	r0, #0
20028844:	f47f ae57 	bne.w	200284f6 <mbedtls_mpi_div_mpi+0x68>
20028848:	a90f      	add	r1, sp, #60	@ 0x3c
2002884a:	4608      	mov	r0, r1
2002884c:	aa18      	add	r2, sp, #96	@ 0x60
2002884e:	f7ff fd4a 	bl	200282e6 <mbedtls_mpi_add_mpi>
20028852:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028856:	4601      	mov	r1, r0
20028858:	2800      	cmp	r0, #0
2002885a:	f47f af3f 	bne.w	200286dc <mbedtls_mpi_div_mpi+0x24e>
2002885e:	f85a 3c04 	ldr.w	r3, [sl, #-4]
20028862:	3b01      	subs	r3, #1
20028864:	f84a 3c04 	str.w	r3, [sl, #-4]
20028868:	9b01      	ldr	r3, [sp, #4]
2002886a:	f1aa 0a04 	sub.w	sl, sl, #4
2002886e:	3b01      	subs	r3, #1
20028870:	9301      	str	r3, [sp, #4]
20028872:	e6e6      	b.n	20028642 <mbedtls_mpi_div_mpi+0x1b4>
20028874:	4625      	mov	r5, r4
20028876:	46a1      	mov	r9, r4
20028878:	46a0      	mov	r8, r4
2002887a:	9402      	str	r4, [sp, #8]
2002887c:	e63b      	b.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
2002887e:	4654      	mov	r4, sl
20028880:	4655      	mov	r5, sl
20028882:	f8cd a008 	str.w	sl, [sp, #8]
20028886:	e636      	b.n	200284f6 <mbedtls_mpi_div_mpi+0x68>
20028888:	462c      	mov	r4, r5
2002888a:	e663      	b.n	20028554 <mbedtls_mpi_div_mpi+0xc6>
2002888c:	9903      	ldr	r1, [sp, #12]
2002888e:	e725      	b.n	200286dc <mbedtls_mpi_div_mpi+0x24e>
20028890:	f06f 010b 	mvn.w	r1, #11
20028894:	e61e      	b.n	200284d4 <mbedtls_mpi_div_mpi+0x46>

20028896 <mbedtls_mpi_mod_mpi>:
20028896:	b570      	push	{r4, r5, r6, lr}
20028898:	4604      	mov	r4, r0
2002889a:	460d      	mov	r5, r1
2002889c:	4610      	mov	r0, r2
2002889e:	2100      	movs	r1, #0
200288a0:	4616      	mov	r6, r2
200288a2:	f7ff fc74 	bl	2002818e <mbedtls_mpi_cmp_int>
200288a6:	2800      	cmp	r0, #0
200288a8:	db24      	blt.n	200288f4 <mbedtls_mpi_mod_mpi+0x5e>
200288aa:	462a      	mov	r2, r5
200288ac:	4633      	mov	r3, r6
200288ae:	4621      	mov	r1, r4
200288b0:	2000      	movs	r0, #0
200288b2:	f7ff fdec 	bl	2002848e <mbedtls_mpi_div_mpi>
200288b6:	4605      	mov	r5, r0
200288b8:	b138      	cbz	r0, 200288ca <mbedtls_mpi_mod_mpi+0x34>
200288ba:	4628      	mov	r0, r5
200288bc:	bd70      	pop	{r4, r5, r6, pc}
200288be:	4632      	mov	r2, r6
200288c0:	4621      	mov	r1, r4
200288c2:	4620      	mov	r0, r4
200288c4:	f7ff fd0f 	bl	200282e6 <mbedtls_mpi_add_mpi>
200288c8:	b990      	cbnz	r0, 200288f0 <mbedtls_mpi_mod_mpi+0x5a>
200288ca:	2100      	movs	r1, #0
200288cc:	4620      	mov	r0, r4
200288ce:	f7ff fc5e 	bl	2002818e <mbedtls_mpi_cmp_int>
200288d2:	2800      	cmp	r0, #0
200288d4:	dbf3      	blt.n	200288be <mbedtls_mpi_mod_mpi+0x28>
200288d6:	4631      	mov	r1, r6
200288d8:	4620      	mov	r0, r4
200288da:	f7ff fc17 	bl	2002810c <mbedtls_mpi_cmp_mpi>
200288de:	2800      	cmp	r0, #0
200288e0:	dbeb      	blt.n	200288ba <mbedtls_mpi_mod_mpi+0x24>
200288e2:	4632      	mov	r2, r6
200288e4:	4621      	mov	r1, r4
200288e6:	4620      	mov	r0, r4
200288e8:	f7ff fd23 	bl	20028332 <mbedtls_mpi_sub_mpi>
200288ec:	2800      	cmp	r0, #0
200288ee:	d0f2      	beq.n	200288d6 <mbedtls_mpi_mod_mpi+0x40>
200288f0:	4605      	mov	r5, r0
200288f2:	e7e2      	b.n	200288ba <mbedtls_mpi_mod_mpi+0x24>
200288f4:	f06f 0509 	mvn.w	r5, #9
200288f8:	e7df      	b.n	200288ba <mbedtls_mpi_mod_mpi+0x24>

200288fa <mbedtls_mpi_exp_mod>:
200288fa:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200288fe:	4605      	mov	r5, r0
20028900:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
20028904:	4688      	mov	r8, r1
20028906:	4618      	mov	r0, r3
20028908:	2100      	movs	r1, #0
2002890a:	461c      	mov	r4, r3
2002890c:	9203      	str	r2, [sp, #12]
2002890e:	f7ff fc3e 	bl	2002818e <mbedtls_mpi_cmp_int>
20028912:	2800      	cmp	r0, #0
20028914:	f2c0 8202 	blt.w	20028d1c <mbedtls_mpi_exp_mod+0x422>
20028918:	68a3      	ldr	r3, [r4, #8]
2002891a:	681f      	ldr	r7, [r3, #0]
2002891c:	f017 0301 	ands.w	r3, r7, #1
20028920:	9305      	str	r3, [sp, #20]
20028922:	f000 81fb 	beq.w	20028d1c <mbedtls_mpi_exp_mod+0x422>
20028926:	2100      	movs	r1, #0
20028928:	9803      	ldr	r0, [sp, #12]
2002892a:	f7ff fc30 	bl	2002818e <mbedtls_mpi_cmp_int>
2002892e:	2800      	cmp	r0, #0
20028930:	f2c0 81f4 	blt.w	20028d1c <mbedtls_mpi_exp_mod+0x422>
20028934:	2100      	movs	r1, #0
20028936:	2301      	movs	r3, #1
20028938:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
2002893c:	a814      	add	r0, sp, #80	@ 0x50
2002893e:	e9cd 3108 	strd	r3, r1, [sp, #32]
20028942:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
20028946:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
2002894a:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
2002894e:	9110      	str	r1, [sp, #64]	@ 0x40
20028950:	f001 ff1c 	bl	2002a78c <memset>
20028954:	9803      	ldr	r0, [sp, #12]
20028956:	f7ff fa26 	bl	20027da6 <mbedtls_mpi_bitlen>
2002895a:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
2002895e:	d233      	bcs.n	200289c8 <mbedtls_mpi_exp_mod+0xce>
20028960:	28ef      	cmp	r0, #239	@ 0xef
20028962:	d833      	bhi.n	200289cc <mbedtls_mpi_exp_mod+0xd2>
20028964:	284f      	cmp	r0, #79	@ 0x4f
20028966:	d833      	bhi.n	200289d0 <mbedtls_mpi_exp_mod+0xd6>
20028968:	9b05      	ldr	r3, [sp, #20]
2002896a:	2818      	cmp	r0, #24
2002896c:	bf34      	ite	cc
2002896e:	461e      	movcc	r6, r3
20028970:	2603      	movcs	r6, #3
20028972:	6863      	ldr	r3, [r4, #4]
20028974:	4628      	mov	r0, r5
20028976:	f103 0901 	add.w	r9, r3, #1
2002897a:	4649      	mov	r1, r9
2002897c:	f7ff f98a 	bl	20027c94 <mbedtls_mpi_grow>
20028980:	b340      	cbz	r0, 200289d4 <mbedtls_mpi_exp_mod+0xda>
20028982:	f06f 090f 	mvn.w	r9, #15
20028986:	2301      	movs	r3, #1
20028988:	1e74      	subs	r4, r6, #1
2002898a:	fa03 f506 	lsl.w	r5, r3, r6
2002898e:	260c      	movs	r6, #12
20028990:	fa03 f404 	lsl.w	r4, r3, r4
20028994:	af14      	add	r7, sp, #80	@ 0x50
20028996:	42a5      	cmp	r5, r4
20028998:	f200 81ba 	bhi.w	20028d10 <mbedtls_mpi_exp_mod+0x416>
2002899c:	a817      	add	r0, sp, #92	@ 0x5c
2002899e:	f7ff f964 	bl	20027c6a <mbedtls_mpi_free>
200289a2:	a80b      	add	r0, sp, #44	@ 0x2c
200289a4:	f7ff f961 	bl	20027c6a <mbedtls_mpi_free>
200289a8:	a80e      	add	r0, sp, #56	@ 0x38
200289aa:	f7ff f95e 	bl	20027c6a <mbedtls_mpi_free>
200289ae:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
200289b2:	b10b      	cbz	r3, 200289b8 <mbedtls_mpi_exp_mod+0xbe>
200289b4:	689b      	ldr	r3, [r3, #8]
200289b6:	b913      	cbnz	r3, 200289be <mbedtls_mpi_exp_mod+0xc4>
200289b8:	a808      	add	r0, sp, #32
200289ba:	f7ff f956 	bl	20027c6a <mbedtls_mpi_free>
200289be:	4648      	mov	r0, r9
200289c0:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
200289c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200289c8:	2606      	movs	r6, #6
200289ca:	e7d2      	b.n	20028972 <mbedtls_mpi_exp_mod+0x78>
200289cc:	2605      	movs	r6, #5
200289ce:	e7d0      	b.n	20028972 <mbedtls_mpi_exp_mod+0x78>
200289d0:	2604      	movs	r6, #4
200289d2:	e7ce      	b.n	20028972 <mbedtls_mpi_exp_mod+0x78>
200289d4:	4649      	mov	r1, r9
200289d6:	a817      	add	r0, sp, #92	@ 0x5c
200289d8:	f7ff f95c 	bl	20027c94 <mbedtls_mpi_grow>
200289dc:	2800      	cmp	r0, #0
200289de:	d1d0      	bne.n	20028982 <mbedtls_mpi_exp_mod+0x88>
200289e0:	ea4f 0149 	mov.w	r1, r9, lsl #1
200289e4:	a80b      	add	r0, sp, #44	@ 0x2c
200289e6:	f7ff f955 	bl	20027c94 <mbedtls_mpi_grow>
200289ea:	2800      	cmp	r0, #0
200289ec:	d1c9      	bne.n	20028982 <mbedtls_mpi_exp_mod+0x88>
200289ee:	f8d8 3000 	ldr.w	r3, [r8]
200289f2:	9304      	str	r3, [sp, #16]
200289f4:	3301      	adds	r3, #1
200289f6:	d109      	bne.n	20028a0c <mbedtls_mpi_exp_mod+0x112>
200289f8:	4641      	mov	r1, r8
200289fa:	a80e      	add	r0, sp, #56	@ 0x38
200289fc:	f7ff f976 	bl	20027cec <mbedtls_mpi_copy>
20028a00:	2800      	cmp	r0, #0
20028a02:	d1be      	bne.n	20028982 <mbedtls_mpi_exp_mod+0x88>
20028a04:	2301      	movs	r3, #1
20028a06:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
20028a0a:	930e      	str	r3, [sp, #56]	@ 0x38
20028a0c:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028a10:	b11b      	cbz	r3, 20028a1a <mbedtls_mpi_exp_mod+0x120>
20028a12:	689b      	ldr	r3, [r3, #8]
20028a14:	2b00      	cmp	r3, #0
20028a16:	f040 80ab 	bne.w	20028b70 <mbedtls_mpi_exp_mod+0x276>
20028a1a:	2101      	movs	r1, #1
20028a1c:	a808      	add	r0, sp, #32
20028a1e:	f7ff f98e 	bl	20027d3e <mbedtls_mpi_lset>
20028a22:	2800      	cmp	r0, #0
20028a24:	d1ad      	bne.n	20028982 <mbedtls_mpi_exp_mod+0x88>
20028a26:	6861      	ldr	r1, [r4, #4]
20028a28:	a808      	add	r0, sp, #32
20028a2a:	0189      	lsls	r1, r1, #6
20028a2c:	f7ff fa36 	bl	20027e9c <mbedtls_mpi_shift_l>
20028a30:	2800      	cmp	r0, #0
20028a32:	d1a6      	bne.n	20028982 <mbedtls_mpi_exp_mod+0x88>
20028a34:	a908      	add	r1, sp, #32
20028a36:	4622      	mov	r2, r4
20028a38:	4608      	mov	r0, r1
20028a3a:	f7ff ff2c 	bl	20028896 <mbedtls_mpi_mod_mpi>
20028a3e:	4681      	mov	r9, r0
20028a40:	2800      	cmp	r0, #0
20028a42:	d1a0      	bne.n	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028a44:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028a48:	b13b      	cbz	r3, 20028a5a <mbedtls_mpi_exp_mod+0x160>
20028a4a:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028a4e:	ab08      	add	r3, sp, #32
20028a50:	cb03      	ldmia	r3!, {r0, r1}
20028a52:	6010      	str	r0, [r2, #0]
20028a54:	6818      	ldr	r0, [r3, #0]
20028a56:	6051      	str	r1, [r2, #4]
20028a58:	6090      	str	r0, [r2, #8]
20028a5a:	4621      	mov	r1, r4
20028a5c:	4640      	mov	r0, r8
20028a5e:	f7ff fb55 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20028a62:	2800      	cmp	r0, #0
20028a64:	f2c0 808d 	blt.w	20028b82 <mbedtls_mpi_exp_mod+0x288>
20028a68:	4622      	mov	r2, r4
20028a6a:	4641      	mov	r1, r8
20028a6c:	a817      	add	r0, sp, #92	@ 0x5c
20028a6e:	f7ff ff12 	bl	20028896 <mbedtls_mpi_mod_mpi>
20028a72:	4681      	mov	r9, r0
20028a74:	2800      	cmp	r0, #0
20028a76:	d186      	bne.n	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028a78:	1cba      	adds	r2, r7, #2
20028a7a:	0052      	lsls	r2, r2, #1
20028a7c:	f002 0208 	and.w	r2, r2, #8
20028a80:	443a      	add	r2, r7
20028a82:	fb02 f307 	mul.w	r3, r2, r7
20028a86:	f1c3 0302 	rsb	r3, r3, #2
20028a8a:	4353      	muls	r3, r2
20028a8c:	fb03 f207 	mul.w	r2, r3, r7
20028a90:	f1c2 0202 	rsb	r2, r2, #2
20028a94:	4353      	muls	r3, r2
20028a96:	435f      	muls	r7, r3
20028a98:	3f02      	subs	r7, #2
20028a9a:	437b      	muls	r3, r7
20028a9c:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028aa0:	4622      	mov	r2, r4
20028aa2:	f8cd b000 	str.w	fp, [sp]
20028aa6:	a908      	add	r1, sp, #32
20028aa8:	a817      	add	r0, sp, #92	@ 0x5c
20028aaa:	9302      	str	r3, [sp, #8]
20028aac:	f7ff fac4 	bl	20028038 <mpi_montmul>
20028ab0:	2800      	cmp	r0, #0
20028ab2:	f040 80e4 	bne.w	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028ab6:	4628      	mov	r0, r5
20028ab8:	a908      	add	r1, sp, #32
20028aba:	f7ff f917 	bl	20027cec <mbedtls_mpi_copy>
20028abe:	2800      	cmp	r0, #0
20028ac0:	f47f af5f 	bne.w	20028982 <mbedtls_mpi_exp_mod+0x88>
20028ac4:	2301      	movs	r3, #1
20028ac6:	aa07      	add	r2, sp, #28
20028ac8:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028acc:	9307      	str	r3, [sp, #28]
20028ace:	9213      	str	r2, [sp, #76]	@ 0x4c
20028ad0:	4628      	mov	r0, r5
20028ad2:	4622      	mov	r2, r4
20028ad4:	9b02      	ldr	r3, [sp, #8]
20028ad6:	f8cd b000 	str.w	fp, [sp]
20028ada:	a911      	add	r1, sp, #68	@ 0x44
20028adc:	f7ff faac 	bl	20028038 <mpi_montmul>
20028ae0:	2800      	cmp	r0, #0
20028ae2:	f040 80cc 	bne.w	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028ae6:	2e01      	cmp	r6, #1
20028ae8:	d153      	bne.n	20028b92 <mbedtls_mpi_exp_mod+0x298>
20028aea:	f04f 0900 	mov.w	r9, #0
20028aee:	464f      	mov	r7, r9
20028af0:	46ca      	mov	sl, r9
20028af2:	46c8      	mov	r8, r9
20028af4:	9b03      	ldr	r3, [sp, #12]
20028af6:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028afa:	f1ba 0f00 	cmp.w	sl, #0
20028afe:	f040 80a1 	bne.w	20028c44 <mbedtls_mpi_exp_mod+0x34a>
20028b02:	f1bb 0f00 	cmp.w	fp, #0
20028b06:	f040 8099 	bne.w	20028c3c <mbedtls_mpi_exp_mod+0x342>
20028b0a:	f04f 0a01 	mov.w	sl, #1
20028b0e:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028b12:	fa0a fa06 	lsl.w	sl, sl, r6
20028b16:	45bb      	cmp	fp, r7
20028b18:	f040 80dd 	bne.w	20028cd6 <mbedtls_mpi_exp_mod+0x3dc>
20028b1c:	2301      	movs	r3, #1
20028b1e:	aa07      	add	r2, sp, #28
20028b20:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028b24:	9307      	str	r3, [sp, #28]
20028b26:	9213      	str	r2, [sp, #76]	@ 0x4c
20028b28:	f8cd 9000 	str.w	r9, [sp]
20028b2c:	4622      	mov	r2, r4
20028b2e:	4628      	mov	r0, r5
20028b30:	9b02      	ldr	r3, [sp, #8]
20028b32:	a911      	add	r1, sp, #68	@ 0x44
20028b34:	f7ff fa80 	bl	20028038 <mpi_montmul>
20028b38:	4681      	mov	r9, r0
20028b3a:	2800      	cmp	r0, #0
20028b3c:	f040 809f 	bne.w	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028b40:	9b04      	ldr	r3, [sp, #16]
20028b42:	3301      	adds	r3, #1
20028b44:	f47f af1f 	bne.w	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028b48:	9b03      	ldr	r3, [sp, #12]
20028b4a:	685b      	ldr	r3, [r3, #4]
20028b4c:	2b00      	cmp	r3, #0
20028b4e:	f43f af1a 	beq.w	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028b52:	9b03      	ldr	r3, [sp, #12]
20028b54:	689b      	ldr	r3, [r3, #8]
20028b56:	681b      	ldr	r3, [r3, #0]
20028b58:	07db      	lsls	r3, r3, #31
20028b5a:	f57f af14 	bpl.w	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028b5e:	9b04      	ldr	r3, [sp, #16]
20028b60:	462a      	mov	r2, r5
20028b62:	4621      	mov	r1, r4
20028b64:	4628      	mov	r0, r5
20028b66:	602b      	str	r3, [r5, #0]
20028b68:	f7ff fbbd 	bl	200282e6 <mbedtls_mpi_add_mpi>
20028b6c:	4681      	mov	r9, r0
20028b6e:	e70a      	b.n	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028b70:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028b74:	ab08      	add	r3, sp, #32
20028b76:	6810      	ldr	r0, [r2, #0]
20028b78:	6851      	ldr	r1, [r2, #4]
20028b7a:	c303      	stmia	r3!, {r0, r1}
20028b7c:	6890      	ldr	r0, [r2, #8]
20028b7e:	6018      	str	r0, [r3, #0]
20028b80:	e76b      	b.n	20028a5a <mbedtls_mpi_exp_mod+0x160>
20028b82:	4641      	mov	r1, r8
20028b84:	a817      	add	r0, sp, #92	@ 0x5c
20028b86:	f7ff f8b1 	bl	20027cec <mbedtls_mpi_copy>
20028b8a:	2800      	cmp	r0, #0
20028b8c:	f43f af74 	beq.w	20028a78 <mbedtls_mpi_exp_mod+0x17e>
20028b90:	e6f7      	b.n	20028982 <mbedtls_mpi_exp_mod+0x88>
20028b92:	f04f 0a0c 	mov.w	sl, #12
20028b96:	1e77      	subs	r7, r6, #1
20028b98:	6861      	ldr	r1, [r4, #4]
20028b9a:	fa0a fa07 	lsl.w	sl, sl, r7
20028b9e:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028ba2:	44d1      	add	r9, sl
20028ba4:	4648      	mov	r0, r9
20028ba6:	3101      	adds	r1, #1
20028ba8:	f7ff f874 	bl	20027c94 <mbedtls_mpi_grow>
20028bac:	2800      	cmp	r0, #0
20028bae:	f47f aee8 	bne.w	20028982 <mbedtls_mpi_exp_mod+0x88>
20028bb2:	4648      	mov	r0, r9
20028bb4:	a917      	add	r1, sp, #92	@ 0x5c
20028bb6:	f7ff f899 	bl	20027cec <mbedtls_mpi_copy>
20028bba:	2800      	cmp	r0, #0
20028bbc:	f47f aee1 	bne.w	20028982 <mbedtls_mpi_exp_mod+0x88>
20028bc0:	4680      	mov	r8, r0
20028bc2:	4622      	mov	r2, r4
20028bc4:	4649      	mov	r1, r9
20028bc6:	4648      	mov	r0, r9
20028bc8:	9b02      	ldr	r3, [sp, #8]
20028bca:	f8cd b000 	str.w	fp, [sp]
20028bce:	f7ff fa33 	bl	20028038 <mpi_montmul>
20028bd2:	2800      	cmp	r0, #0
20028bd4:	d153      	bne.n	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028bd6:	f108 0801 	add.w	r8, r8, #1
20028bda:	45b8      	cmp	r8, r7
20028bdc:	d3f1      	bcc.n	20028bc2 <mbedtls_mpi_exp_mod+0x2c8>
20028bde:	f04f 0801 	mov.w	r8, #1
20028be2:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028be6:	fa08 f707 	lsl.w	r7, r8, r7
20028bea:	4447      	add	r7, r8
20028bec:	44d3      	add	fp, sl
20028bee:	fa08 f806 	lsl.w	r8, r8, r6
20028bf2:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028bf6:	45b8      	cmp	r8, r7
20028bf8:	f67f af77 	bls.w	20028aea <mbedtls_mpi_exp_mod+0x1f0>
20028bfc:	6861      	ldr	r1, [r4, #4]
20028bfe:	f10b 090c 	add.w	r9, fp, #12
20028c02:	4648      	mov	r0, r9
20028c04:	3101      	adds	r1, #1
20028c06:	f7ff f845 	bl	20027c94 <mbedtls_mpi_grow>
20028c0a:	2800      	cmp	r0, #0
20028c0c:	f47f aeb9 	bne.w	20028982 <mbedtls_mpi_exp_mod+0x88>
20028c10:	4659      	mov	r1, fp
20028c12:	4648      	mov	r0, r9
20028c14:	f7ff f86a 	bl	20027cec <mbedtls_mpi_copy>
20028c18:	2800      	cmp	r0, #0
20028c1a:	f47f aeb2 	bne.w	20028982 <mbedtls_mpi_exp_mod+0x88>
20028c1e:	4622      	mov	r2, r4
20028c20:	4648      	mov	r0, r9
20028c22:	9b02      	ldr	r3, [sp, #8]
20028c24:	f8cd a000 	str.w	sl, [sp]
20028c28:	a917      	add	r1, sp, #92	@ 0x5c
20028c2a:	f7ff fa05 	bl	20028038 <mpi_montmul>
20028c2e:	bb30      	cbnz	r0, 20028c7e <mbedtls_mpi_exp_mod+0x384>
20028c30:	46cb      	mov	fp, r9
20028c32:	3701      	adds	r7, #1
20028c34:	e7df      	b.n	20028bf6 <mbedtls_mpi_exp_mod+0x2fc>
20028c36:	f04f 0902 	mov.w	r9, #2
20028c3a:	e75e      	b.n	20028afa <mbedtls_mpi_exp_mod+0x200>
20028c3c:	f04f 0a20 	mov.w	sl, #32
20028c40:	f10b 3bff 	add.w	fp, fp, #4294967295
20028c44:	9b03      	ldr	r3, [sp, #12]
20028c46:	f10a 3aff 	add.w	sl, sl, #4294967295
20028c4a:	689b      	ldr	r3, [r3, #8]
20028c4c:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028c50:	fa23 f30a 	lsr.w	r3, r3, sl
20028c54:	f013 0301 	ands.w	r3, r3, #1
20028c58:	d114      	bne.n	20028c84 <mbedtls_mpi_exp_mod+0x38a>
20028c5a:	f1b9 0f00 	cmp.w	r9, #0
20028c5e:	f43f af4c 	beq.w	20028afa <mbedtls_mpi_exp_mod+0x200>
20028c62:	f1b9 0f01 	cmp.w	r9, #1
20028c66:	d10d      	bne.n	20028c84 <mbedtls_mpi_exp_mod+0x38a>
20028c68:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c6a:	9300      	str	r3, [sp, #0]
20028c6c:	4622      	mov	r2, r4
20028c6e:	4629      	mov	r1, r5
20028c70:	4628      	mov	r0, r5
20028c72:	9b02      	ldr	r3, [sp, #8]
20028c74:	f7ff f9e0 	bl	20028038 <mpi_montmul>
20028c78:	2800      	cmp	r0, #0
20028c7a:	f43f af3e 	beq.w	20028afa <mbedtls_mpi_exp_mod+0x200>
20028c7e:	f06f 0903 	mvn.w	r9, #3
20028c82:	e680      	b.n	20028986 <mbedtls_mpi_exp_mod+0x8c>
20028c84:	3701      	adds	r7, #1
20028c86:	1bf2      	subs	r2, r6, r7
20028c88:	4093      	lsls	r3, r2
20028c8a:	42be      	cmp	r6, r7
20028c8c:	ea48 0803 	orr.w	r8, r8, r3
20028c90:	d1d1      	bne.n	20028c36 <mbedtls_mpi_exp_mod+0x33c>
20028c92:	f04f 0900 	mov.w	r9, #0
20028c96:	ab0b      	add	r3, sp, #44	@ 0x2c
20028c98:	9300      	str	r3, [sp, #0]
20028c9a:	4622      	mov	r2, r4
20028c9c:	4629      	mov	r1, r5
20028c9e:	4628      	mov	r0, r5
20028ca0:	9b02      	ldr	r3, [sp, #8]
20028ca2:	f7ff f9c9 	bl	20028038 <mpi_montmul>
20028ca6:	2800      	cmp	r0, #0
20028ca8:	d1e9      	bne.n	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028caa:	f109 0901 	add.w	r9, r9, #1
20028cae:	454f      	cmp	r7, r9
20028cb0:	d8f1      	bhi.n	20028c96 <mbedtls_mpi_exp_mod+0x39c>
20028cb2:	200c      	movs	r0, #12
20028cb4:	ab0b      	add	r3, sp, #44	@ 0x2c
20028cb6:	a914      	add	r1, sp, #80	@ 0x50
20028cb8:	fb00 1108 	mla	r1, r0, r8, r1
20028cbc:	9300      	str	r3, [sp, #0]
20028cbe:	4622      	mov	r2, r4
20028cc0:	4628      	mov	r0, r5
20028cc2:	9b02      	ldr	r3, [sp, #8]
20028cc4:	f7ff f9b8 	bl	20028038 <mpi_montmul>
20028cc8:	4607      	mov	r7, r0
20028cca:	2800      	cmp	r0, #0
20028ccc:	d1d7      	bne.n	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028cce:	4680      	mov	r8, r0
20028cd0:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028cd4:	e711      	b.n	20028afa <mbedtls_mpi_exp_mod+0x200>
20028cd6:	4622      	mov	r2, r4
20028cd8:	4629      	mov	r1, r5
20028cda:	4628      	mov	r0, r5
20028cdc:	9b02      	ldr	r3, [sp, #8]
20028cde:	f8cd 9000 	str.w	r9, [sp]
20028ce2:	f7ff f9a9 	bl	20028038 <mpi_montmul>
20028ce6:	2800      	cmp	r0, #0
20028ce8:	d1c9      	bne.n	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028cea:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028cee:	ea18 0f0a 	tst.w	r8, sl
20028cf2:	d102      	bne.n	20028cfa <mbedtls_mpi_exp_mod+0x400>
20028cf4:	f10b 0b01 	add.w	fp, fp, #1
20028cf8:	e70d      	b.n	20028b16 <mbedtls_mpi_exp_mod+0x21c>
20028cfa:	4622      	mov	r2, r4
20028cfc:	4628      	mov	r0, r5
20028cfe:	9b02      	ldr	r3, [sp, #8]
20028d00:	f8cd 9000 	str.w	r9, [sp]
20028d04:	a917      	add	r1, sp, #92	@ 0x5c
20028d06:	f7ff f997 	bl	20028038 <mpi_montmul>
20028d0a:	2800      	cmp	r0, #0
20028d0c:	d0f2      	beq.n	20028cf4 <mbedtls_mpi_exp_mod+0x3fa>
20028d0e:	e7b6      	b.n	20028c7e <mbedtls_mpi_exp_mod+0x384>
20028d10:	fb06 7004 	mla	r0, r6, r4, r7
20028d14:	f7fe ffa9 	bl	20027c6a <mbedtls_mpi_free>
20028d18:	3401      	adds	r4, #1
20028d1a:	e63c      	b.n	20028996 <mbedtls_mpi_exp_mod+0x9c>
20028d1c:	f06f 0903 	mvn.w	r9, #3
20028d20:	e64d      	b.n	200289be <mbedtls_mpi_exp_mod+0xc4>

20028d22 <mbedtls_mpi_gcd>:
20028d22:	b570      	push	{r4, r5, r6, lr}
20028d24:	2300      	movs	r3, #0
20028d26:	2401      	movs	r4, #1
20028d28:	b086      	sub	sp, #24
20028d2a:	4606      	mov	r6, r0
20028d2c:	4668      	mov	r0, sp
20028d2e:	4615      	mov	r5, r2
20028d30:	e9cd 4300 	strd	r4, r3, [sp]
20028d34:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028d38:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028d3c:	f7fe ffd6 	bl	20027cec <mbedtls_mpi_copy>
20028d40:	b150      	cbz	r0, 20028d58 <mbedtls_mpi_gcd+0x36>
20028d42:	f06f 040f 	mvn.w	r4, #15
20028d46:	4668      	mov	r0, sp
20028d48:	f7fe ff8f 	bl	20027c6a <mbedtls_mpi_free>
20028d4c:	a803      	add	r0, sp, #12
20028d4e:	f7fe ff8c 	bl	20027c6a <mbedtls_mpi_free>
20028d52:	4620      	mov	r0, r4
20028d54:	b006      	add	sp, #24
20028d56:	bd70      	pop	{r4, r5, r6, pc}
20028d58:	4629      	mov	r1, r5
20028d5a:	a803      	add	r0, sp, #12
20028d5c:	f7fe ffc6 	bl	20027cec <mbedtls_mpi_copy>
20028d60:	2800      	cmp	r0, #0
20028d62:	d1ee      	bne.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028d64:	4668      	mov	r0, sp
20028d66:	f7ff f806 	bl	20027d76 <mbedtls_mpi_lsb>
20028d6a:	4605      	mov	r5, r0
20028d6c:	a803      	add	r0, sp, #12
20028d6e:	f7ff f802 	bl	20027d76 <mbedtls_mpi_lsb>
20028d72:	4285      	cmp	r5, r0
20028d74:	bf28      	it	cs
20028d76:	4605      	movcs	r5, r0
20028d78:	4668      	mov	r0, sp
20028d7a:	4629      	mov	r1, r5
20028d7c:	f7ff f8e7 	bl	20027f4e <mbedtls_mpi_shift_r>
20028d80:	2800      	cmp	r0, #0
20028d82:	d1de      	bne.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028d84:	4629      	mov	r1, r5
20028d86:	a803      	add	r0, sp, #12
20028d88:	f7ff f8e1 	bl	20027f4e <mbedtls_mpi_shift_r>
20028d8c:	2800      	cmp	r0, #0
20028d8e:	d1d8      	bne.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028d90:	9403      	str	r4, [sp, #12]
20028d92:	9400      	str	r4, [sp, #0]
20028d94:	2100      	movs	r1, #0
20028d96:	4668      	mov	r0, sp
20028d98:	f7ff f9f9 	bl	2002818e <mbedtls_mpi_cmp_int>
20028d9c:	b968      	cbnz	r0, 20028dba <mbedtls_mpi_gcd+0x98>
20028d9e:	4629      	mov	r1, r5
20028da0:	a803      	add	r0, sp, #12
20028da2:	f7ff f87b 	bl	20027e9c <mbedtls_mpi_shift_l>
20028da6:	2800      	cmp	r0, #0
20028da8:	d1cb      	bne.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028daa:	4630      	mov	r0, r6
20028dac:	a903      	add	r1, sp, #12
20028dae:	f7fe ff9d 	bl	20027cec <mbedtls_mpi_copy>
20028db2:	4604      	mov	r4, r0
20028db4:	2800      	cmp	r0, #0
20028db6:	d0c6      	beq.n	20028d46 <mbedtls_mpi_gcd+0x24>
20028db8:	e7c3      	b.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028dba:	4668      	mov	r0, sp
20028dbc:	f7fe ffdb 	bl	20027d76 <mbedtls_mpi_lsb>
20028dc0:	4601      	mov	r1, r0
20028dc2:	4668      	mov	r0, sp
20028dc4:	f7ff f8c3 	bl	20027f4e <mbedtls_mpi_shift_r>
20028dc8:	2800      	cmp	r0, #0
20028dca:	d1ba      	bne.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028dcc:	a803      	add	r0, sp, #12
20028dce:	f7fe ffd2 	bl	20027d76 <mbedtls_mpi_lsb>
20028dd2:	4601      	mov	r1, r0
20028dd4:	a803      	add	r0, sp, #12
20028dd6:	f7ff f8ba 	bl	20027f4e <mbedtls_mpi_shift_r>
20028dda:	2800      	cmp	r0, #0
20028ddc:	d1b1      	bne.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028dde:	4668      	mov	r0, sp
20028de0:	a903      	add	r1, sp, #12
20028de2:	f7ff f993 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20028de6:	2800      	cmp	r0, #0
20028de8:	db0e      	blt.n	20028e08 <mbedtls_mpi_gcd+0xe6>
20028dea:	4669      	mov	r1, sp
20028dec:	4668      	mov	r0, sp
20028dee:	aa03      	add	r2, sp, #12
20028df0:	f7ff fa3c 	bl	2002826c <mbedtls_mpi_sub_abs>
20028df4:	4604      	mov	r4, r0
20028df6:	2800      	cmp	r0, #0
20028df8:	d1a5      	bne.n	20028d46 <mbedtls_mpi_gcd+0x24>
20028dfa:	2101      	movs	r1, #1
20028dfc:	4668      	mov	r0, sp
20028dfe:	f7ff f8a6 	bl	20027f4e <mbedtls_mpi_shift_r>
20028e02:	2800      	cmp	r0, #0
20028e04:	d0c6      	beq.n	20028d94 <mbedtls_mpi_gcd+0x72>
20028e06:	e79c      	b.n	20028d42 <mbedtls_mpi_gcd+0x20>
20028e08:	a903      	add	r1, sp, #12
20028e0a:	466a      	mov	r2, sp
20028e0c:	4608      	mov	r0, r1
20028e0e:	f7ff fa2d 	bl	2002826c <mbedtls_mpi_sub_abs>
20028e12:	4604      	mov	r4, r0
20028e14:	2800      	cmp	r0, #0
20028e16:	d196      	bne.n	20028d46 <mbedtls_mpi_gcd+0x24>
20028e18:	2101      	movs	r1, #1
20028e1a:	a803      	add	r0, sp, #12
20028e1c:	e7ef      	b.n	20028dfe <mbedtls_mpi_gcd+0xdc>

20028e1e <mbedtls_mpi_fill_random>:
20028e1e:	b570      	push	{r4, r5, r6, lr}
20028e20:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
20028e24:	4605      	mov	r5, r0
20028e26:	460c      	mov	r4, r1
20028e28:	4616      	mov	r6, r2
20028e2a:	4618      	mov	r0, r3
20028e2c:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
20028e30:	d80f      	bhi.n	20028e52 <mbedtls_mpi_fill_random+0x34>
20028e32:	460a      	mov	r2, r1
20028e34:	4669      	mov	r1, sp
20028e36:	47b0      	blx	r6
20028e38:	b940      	cbnz	r0, 20028e4c <mbedtls_mpi_fill_random+0x2e>
20028e3a:	4622      	mov	r2, r4
20028e3c:	4669      	mov	r1, sp
20028e3e:	4628      	mov	r0, r5
20028e40:	f7fe ffd4 	bl	20027dec <mbedtls_mpi_read_binary>
20028e44:	2800      	cmp	r0, #0
20028e46:	bf18      	it	ne
20028e48:	f06f 000f 	mvnne.w	r0, #15
20028e4c:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
20028e50:	bd70      	pop	{r4, r5, r6, pc}
20028e52:	f06f 0003 	mvn.w	r0, #3
20028e56:	e7f9      	b.n	20028e4c <mbedtls_mpi_fill_random+0x2e>

20028e58 <mbedtls_mpi_inv_mod>:
20028e58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028e5c:	b09f      	sub	sp, #124	@ 0x7c
20028e5e:	9001      	str	r0, [sp, #4]
20028e60:	460f      	mov	r7, r1
20028e62:	4610      	mov	r0, r2
20028e64:	2101      	movs	r1, #1
20028e66:	4692      	mov	sl, r2
20028e68:	f7ff f991 	bl	2002818e <mbedtls_mpi_cmp_int>
20028e6c:	2800      	cmp	r0, #0
20028e6e:	f340 81b5 	ble.w	200291dc <mbedtls_mpi_inv_mod+0x384>
20028e72:	2500      	movs	r5, #0
20028e74:	2601      	movs	r6, #1
20028e76:	4652      	mov	r2, sl
20028e78:	4639      	mov	r1, r7
20028e7a:	a803      	add	r0, sp, #12
20028e7c:	e9cd 6506 	strd	r6, r5, [sp, #24]
20028e80:	e9cd 5608 	strd	r5, r6, [sp, #32]
20028e84:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20028e88:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
20028e8c:	e9cd 6503 	strd	r6, r5, [sp, #12]
20028e90:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
20028e94:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
20028e98:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
20028e9c:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
20028ea0:	950a      	str	r5, [sp, #40]	@ 0x28
20028ea2:	9505      	str	r5, [sp, #20]
20028ea4:	9516      	str	r5, [sp, #88]	@ 0x58
20028ea6:	f7ff ff3c 	bl	20028d22 <mbedtls_mpi_gcd>
20028eaa:	4604      	mov	r4, r0
20028eac:	2800      	cmp	r0, #0
20028eae:	f040 8182 	bne.w	200291b6 <mbedtls_mpi_inv_mod+0x35e>
20028eb2:	4631      	mov	r1, r6
20028eb4:	a803      	add	r0, sp, #12
20028eb6:	f7ff f96a 	bl	2002818e <mbedtls_mpi_cmp_int>
20028eba:	4605      	mov	r5, r0
20028ebc:	2800      	cmp	r0, #0
20028ebe:	f040 8171 	bne.w	200291a4 <mbedtls_mpi_inv_mod+0x34c>
20028ec2:	4652      	mov	r2, sl
20028ec4:	4639      	mov	r1, r7
20028ec6:	a806      	add	r0, sp, #24
20028ec8:	f7ff fce5 	bl	20028896 <mbedtls_mpi_mod_mpi>
20028ecc:	4604      	mov	r4, r0
20028ece:	2800      	cmp	r0, #0
20028ed0:	f040 8171 	bne.w	200291b6 <mbedtls_mpi_inv_mod+0x35e>
20028ed4:	900b      	str	r0, [sp, #44]	@ 0x2c
20028ed6:	a906      	add	r1, sp, #24
20028ed8:	a809      	add	r0, sp, #36	@ 0x24
20028eda:	f7fe ff07 	bl	20027cec <mbedtls_mpi_copy>
20028ede:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028ee2:	b920      	cbnz	r0, 20028eee <mbedtls_mpi_inv_mod+0x96>
20028ee4:	4651      	mov	r1, sl
20028ee6:	a812      	add	r0, sp, #72	@ 0x48
20028ee8:	f7fe ff00 	bl	20027cec <mbedtls_mpi_copy>
20028eec:	b130      	cbz	r0, 20028efc <mbedtls_mpi_inv_mod+0xa4>
20028eee:	f04f 0b00 	mov.w	fp, #0
20028ef2:	465d      	mov	r5, fp
20028ef4:	46d8      	mov	r8, fp
20028ef6:	465e      	mov	r6, fp
20028ef8:	465f      	mov	r7, fp
20028efa:	e0f5      	b.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
20028efc:	9017      	str	r0, [sp, #92]	@ 0x5c
20028efe:	4651      	mov	r1, sl
20028f00:	a815      	add	r0, sp, #84	@ 0x54
20028f02:	f7fe fef3 	bl	20027cec <mbedtls_mpi_copy>
20028f06:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20028f0a:	2800      	cmp	r0, #0
20028f0c:	f040 8159 	bne.w	200291c2 <mbedtls_mpi_inv_mod+0x36a>
20028f10:	4631      	mov	r1, r6
20028f12:	900e      	str	r0, [sp, #56]	@ 0x38
20028f14:	a80c      	add	r0, sp, #48	@ 0x30
20028f16:	f7fe ff12 	bl	20027d3e <mbedtls_mpi_lset>
20028f1a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028f1c:	4601      	mov	r1, r0
20028f1e:	2800      	cmp	r0, #0
20028f20:	f040 8152 	bne.w	200291c8 <mbedtls_mpi_inv_mod+0x370>
20028f24:	9011      	str	r0, [sp, #68]	@ 0x44
20028f26:	a80f      	add	r0, sp, #60	@ 0x3c
20028f28:	f7fe ff09 	bl	20027d3e <mbedtls_mpi_lset>
20028f2c:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028f2e:	4683      	mov	fp, r0
20028f30:	2800      	cmp	r0, #0
20028f32:	f040 814d 	bne.w	200291d0 <mbedtls_mpi_inv_mod+0x378>
20028f36:	4601      	mov	r1, r0
20028f38:	901a      	str	r0, [sp, #104]	@ 0x68
20028f3a:	a818      	add	r0, sp, #96	@ 0x60
20028f3c:	f7fe feff 	bl	20027d3e <mbedtls_mpi_lset>
20028f40:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028f42:	2800      	cmp	r0, #0
20028f44:	f040 8147 	bne.w	200291d6 <mbedtls_mpi_inv_mod+0x37e>
20028f48:	2101      	movs	r1, #1
20028f4a:	a81b      	add	r0, sp, #108	@ 0x6c
20028f4c:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028f50:	f7fe fef5 	bl	20027d3e <mbedtls_mpi_lset>
20028f54:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20028f58:	2800      	cmp	r0, #0
20028f5a:	f040 80c5 	bne.w	200290e8 <mbedtls_mpi_inv_mod+0x290>
20028f5e:	f8d9 2000 	ldr.w	r2, [r9]
20028f62:	07d0      	lsls	r0, r2, #31
20028f64:	d554      	bpl.n	20029010 <mbedtls_mpi_inv_mod+0x1b8>
20028f66:	f8d8 2000 	ldr.w	r2, [r8]
20028f6a:	07d3      	lsls	r3, r2, #31
20028f6c:	f140 8083 	bpl.w	20029076 <mbedtls_mpi_inv_mod+0x21e>
20028f70:	a915      	add	r1, sp, #84	@ 0x54
20028f72:	a809      	add	r0, sp, #36	@ 0x24
20028f74:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028f78:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20028f7c:	f7ff f8c6 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20028f80:	2800      	cmp	r0, #0
20028f82:	f2c0 80b4 	blt.w	200290ee <mbedtls_mpi_inv_mod+0x296>
20028f86:	a909      	add	r1, sp, #36	@ 0x24
20028f88:	4608      	mov	r0, r1
20028f8a:	aa15      	add	r2, sp, #84	@ 0x54
20028f8c:	f7ff f9d1 	bl	20028332 <mbedtls_mpi_sub_mpi>
20028f90:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028f94:	4604      	mov	r4, r0
20028f96:	2800      	cmp	r0, #0
20028f98:	f040 80d1 	bne.w	2002913e <mbedtls_mpi_inv_mod+0x2e6>
20028f9c:	a90c      	add	r1, sp, #48	@ 0x30
20028f9e:	4608      	mov	r0, r1
20028fa0:	aa18      	add	r2, sp, #96	@ 0x60
20028fa2:	970e      	str	r7, [sp, #56]	@ 0x38
20028fa4:	951a      	str	r5, [sp, #104]	@ 0x68
20028fa6:	f7ff f9c4 	bl	20028332 <mbedtls_mpi_sub_mpi>
20028faa:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028fac:	4604      	mov	r4, r0
20028fae:	2800      	cmp	r0, #0
20028fb0:	f040 80c5 	bne.w	2002913e <mbedtls_mpi_inv_mod+0x2e6>
20028fb4:	a90f      	add	r1, sp, #60	@ 0x3c
20028fb6:	4608      	mov	r0, r1
20028fb8:	aa1b      	add	r2, sp, #108	@ 0x6c
20028fba:	9611      	str	r6, [sp, #68]	@ 0x44
20028fbc:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20028fc0:	f7ff f9b7 	bl	20028332 <mbedtls_mpi_sub_mpi>
20028fc4:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20028fc6:	4604      	mov	r4, r0
20028fc8:	2800      	cmp	r0, #0
20028fca:	f040 80b8 	bne.w	2002913e <mbedtls_mpi_inv_mod+0x2e6>
20028fce:	2100      	movs	r1, #0
20028fd0:	a809      	add	r0, sp, #36	@ 0x24
20028fd2:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20028fd6:	f7ff f8da 	bl	2002818e <mbedtls_mpi_cmp_int>
20028fda:	2800      	cmp	r0, #0
20028fdc:	d1bf      	bne.n	20028f5e <mbedtls_mpi_inv_mod+0x106>
20028fde:	2100      	movs	r1, #0
20028fe0:	a818      	add	r0, sp, #96	@ 0x60
20028fe2:	951a      	str	r5, [sp, #104]	@ 0x68
20028fe4:	f7ff f8d3 	bl	2002818e <mbedtls_mpi_cmp_int>
20028fe8:	2800      	cmp	r0, #0
20028fea:	f2c0 809e 	blt.w	2002912a <mbedtls_mpi_inv_mod+0x2d2>
20028fee:	4651      	mov	r1, sl
20028ff0:	a818      	add	r0, sp, #96	@ 0x60
20028ff2:	951a      	str	r5, [sp, #104]	@ 0x68
20028ff4:	f7ff f88a 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20028ff8:	2800      	cmp	r0, #0
20028ffa:	f280 80c8 	bge.w	2002918e <mbedtls_mpi_inv_mod+0x336>
20028ffe:	9801      	ldr	r0, [sp, #4]
20029000:	a918      	add	r1, sp, #96	@ 0x60
20029002:	f7fe fe73 	bl	20027cec <mbedtls_mpi_copy>
20029006:	1e04      	subs	r4, r0, #0
20029008:	bf18      	it	ne
2002900a:	f06f 040f 	mvnne.w	r4, #15
2002900e:	e096      	b.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
20029010:	2101      	movs	r1, #1
20029012:	a809      	add	r0, sp, #36	@ 0x24
20029014:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029018:	f7fe ff99 	bl	20027f4e <mbedtls_mpi_shift_r>
2002901c:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029020:	2800      	cmp	r0, #0
20029022:	d161      	bne.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
20029024:	683a      	ldr	r2, [r7, #0]
20029026:	07d3      	lsls	r3, r2, #31
20029028:	d402      	bmi.n	20029030 <mbedtls_mpi_inv_mod+0x1d8>
2002902a:	6832      	ldr	r2, [r6, #0]
2002902c:	07d4      	lsls	r4, r2, #31
2002902e:	d513      	bpl.n	20029058 <mbedtls_mpi_inv_mod+0x200>
20029030:	a90c      	add	r1, sp, #48	@ 0x30
20029032:	4608      	mov	r0, r1
20029034:	aa12      	add	r2, sp, #72	@ 0x48
20029036:	970e      	str	r7, [sp, #56]	@ 0x38
20029038:	f7ff f955 	bl	200282e6 <mbedtls_mpi_add_mpi>
2002903c:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
2002903e:	4604      	mov	r4, r0
20029040:	2800      	cmp	r0, #0
20029042:	d17c      	bne.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
20029044:	a90f      	add	r1, sp, #60	@ 0x3c
20029046:	4608      	mov	r0, r1
20029048:	aa06      	add	r2, sp, #24
2002904a:	9611      	str	r6, [sp, #68]	@ 0x44
2002904c:	f7ff f971 	bl	20028332 <mbedtls_mpi_sub_mpi>
20029050:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029052:	4604      	mov	r4, r0
20029054:	2800      	cmp	r0, #0
20029056:	d172      	bne.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
20029058:	2101      	movs	r1, #1
2002905a:	a80c      	add	r0, sp, #48	@ 0x30
2002905c:	970e      	str	r7, [sp, #56]	@ 0x38
2002905e:	f7fe ff76 	bl	20027f4e <mbedtls_mpi_shift_r>
20029062:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029064:	2800      	cmp	r0, #0
20029066:	d13f      	bne.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
20029068:	2101      	movs	r1, #1
2002906a:	a80f      	add	r0, sp, #60	@ 0x3c
2002906c:	9611      	str	r6, [sp, #68]	@ 0x44
2002906e:	f7fe ff6e 	bl	20027f4e <mbedtls_mpi_shift_r>
20029072:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029074:	e770      	b.n	20028f58 <mbedtls_mpi_inv_mod+0x100>
20029076:	2101      	movs	r1, #1
20029078:	a815      	add	r0, sp, #84	@ 0x54
2002907a:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
2002907e:	f7fe ff66 	bl	20027f4e <mbedtls_mpi_shift_r>
20029082:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029086:	2800      	cmp	r0, #0
20029088:	d12e      	bne.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
2002908a:	682a      	ldr	r2, [r5, #0]
2002908c:	07d1      	lsls	r1, r2, #31
2002908e:	d403      	bmi.n	20029098 <mbedtls_mpi_inv_mod+0x240>
20029090:	f8db 2000 	ldr.w	r2, [fp]
20029094:	07d2      	lsls	r2, r2, #31
20029096:	d515      	bpl.n	200290c4 <mbedtls_mpi_inv_mod+0x26c>
20029098:	a918      	add	r1, sp, #96	@ 0x60
2002909a:	4608      	mov	r0, r1
2002909c:	aa12      	add	r2, sp, #72	@ 0x48
2002909e:	951a      	str	r5, [sp, #104]	@ 0x68
200290a0:	f7ff f921 	bl	200282e6 <mbedtls_mpi_add_mpi>
200290a4:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200290a6:	4604      	mov	r4, r0
200290a8:	2800      	cmp	r0, #0
200290aa:	d148      	bne.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
200290ac:	a91b      	add	r1, sp, #108	@ 0x6c
200290ae:	4608      	mov	r0, r1
200290b0:	aa06      	add	r2, sp, #24
200290b2:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200290b6:	f7ff f93c 	bl	20028332 <mbedtls_mpi_sub_mpi>
200290ba:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200290be:	4604      	mov	r4, r0
200290c0:	2800      	cmp	r0, #0
200290c2:	d13c      	bne.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
200290c4:	2101      	movs	r1, #1
200290c6:	a818      	add	r0, sp, #96	@ 0x60
200290c8:	951a      	str	r5, [sp, #104]	@ 0x68
200290ca:	f7fe ff40 	bl	20027f4e <mbedtls_mpi_shift_r>
200290ce:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200290d0:	b950      	cbnz	r0, 200290e8 <mbedtls_mpi_inv_mod+0x290>
200290d2:	2101      	movs	r1, #1
200290d4:	a81b      	add	r0, sp, #108	@ 0x6c
200290d6:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200290da:	f7fe ff38 	bl	20027f4e <mbedtls_mpi_shift_r>
200290de:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200290e2:	2800      	cmp	r0, #0
200290e4:	f43f af3f 	beq.w	20028f66 <mbedtls_mpi_inv_mod+0x10e>
200290e8:	f06f 040f 	mvn.w	r4, #15
200290ec:	e027      	b.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
200290ee:	a915      	add	r1, sp, #84	@ 0x54
200290f0:	4608      	mov	r0, r1
200290f2:	aa09      	add	r2, sp, #36	@ 0x24
200290f4:	f7ff f91d 	bl	20028332 <mbedtls_mpi_sub_mpi>
200290f8:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
200290fc:	4604      	mov	r4, r0
200290fe:	b9f0      	cbnz	r0, 2002913e <mbedtls_mpi_inv_mod+0x2e6>
20029100:	a918      	add	r1, sp, #96	@ 0x60
20029102:	4608      	mov	r0, r1
20029104:	aa0c      	add	r2, sp, #48	@ 0x30
20029106:	951a      	str	r5, [sp, #104]	@ 0x68
20029108:	970e      	str	r7, [sp, #56]	@ 0x38
2002910a:	f7ff f912 	bl	20028332 <mbedtls_mpi_sub_mpi>
2002910e:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029110:	4604      	mov	r4, r0
20029112:	b9a0      	cbnz	r0, 2002913e <mbedtls_mpi_inv_mod+0x2e6>
20029114:	a91b      	add	r1, sp, #108	@ 0x6c
20029116:	4608      	mov	r0, r1
20029118:	aa0f      	add	r2, sp, #60	@ 0x3c
2002911a:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
2002911e:	9611      	str	r6, [sp, #68]	@ 0x44
20029120:	f7ff f907 	bl	20028332 <mbedtls_mpi_sub_mpi>
20029124:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029128:	e74d      	b.n	20028fc6 <mbedtls_mpi_inv_mod+0x16e>
2002912a:	a918      	add	r1, sp, #96	@ 0x60
2002912c:	4652      	mov	r2, sl
2002912e:	4608      	mov	r0, r1
20029130:	f7ff f8d9 	bl	200282e6 <mbedtls_mpi_add_mpi>
20029134:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029136:	4604      	mov	r4, r0
20029138:	2800      	cmp	r0, #0
2002913a:	f43f af50 	beq.w	20028fde <mbedtls_mpi_inv_mod+0x186>
2002913e:	a806      	add	r0, sp, #24
20029140:	f7fe fd93 	bl	20027c6a <mbedtls_mpi_free>
20029144:	a809      	add	r0, sp, #36	@ 0x24
20029146:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
2002914a:	f7fe fd8e 	bl	20027c6a <mbedtls_mpi_free>
2002914e:	a80c      	add	r0, sp, #48	@ 0x30
20029150:	970e      	str	r7, [sp, #56]	@ 0x38
20029152:	f7fe fd8a 	bl	20027c6a <mbedtls_mpi_free>
20029156:	a80f      	add	r0, sp, #60	@ 0x3c
20029158:	9611      	str	r6, [sp, #68]	@ 0x44
2002915a:	f7fe fd86 	bl	20027c6a <mbedtls_mpi_free>
2002915e:	a803      	add	r0, sp, #12
20029160:	f7fe fd83 	bl	20027c6a <mbedtls_mpi_free>
20029164:	a812      	add	r0, sp, #72	@ 0x48
20029166:	f7fe fd80 	bl	20027c6a <mbedtls_mpi_free>
2002916a:	a815      	add	r0, sp, #84	@ 0x54
2002916c:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029170:	f7fe fd7b 	bl	20027c6a <mbedtls_mpi_free>
20029174:	a818      	add	r0, sp, #96	@ 0x60
20029176:	951a      	str	r5, [sp, #104]	@ 0x68
20029178:	f7fe fd77 	bl	20027c6a <mbedtls_mpi_free>
2002917c:	a81b      	add	r0, sp, #108	@ 0x6c
2002917e:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029182:	f7fe fd72 	bl	20027c6a <mbedtls_mpi_free>
20029186:	4620      	mov	r0, r4
20029188:	b01f      	add	sp, #124	@ 0x7c
2002918a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002918e:	a918      	add	r1, sp, #96	@ 0x60
20029190:	4652      	mov	r2, sl
20029192:	4608      	mov	r0, r1
20029194:	f7ff f8cd 	bl	20028332 <mbedtls_mpi_sub_mpi>
20029198:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002919a:	4604      	mov	r4, r0
2002919c:	2800      	cmp	r0, #0
2002919e:	f43f af26 	beq.w	20028fee <mbedtls_mpi_inv_mod+0x196>
200291a2:	e7cc      	b.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
200291a4:	46a3      	mov	fp, r4
200291a6:	4625      	mov	r5, r4
200291a8:	46a0      	mov	r8, r4
200291aa:	4626      	mov	r6, r4
200291ac:	4627      	mov	r7, r4
200291ae:	46a1      	mov	r9, r4
200291b0:	f06f 040d 	mvn.w	r4, #13
200291b4:	e7c3      	b.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
200291b6:	46ab      	mov	fp, r5
200291b8:	46a8      	mov	r8, r5
200291ba:	462e      	mov	r6, r5
200291bc:	462f      	mov	r7, r5
200291be:	46a9      	mov	r9, r5
200291c0:	e7bd      	b.n	2002913e <mbedtls_mpi_inv_mod+0x2e6>
200291c2:	46a3      	mov	fp, r4
200291c4:	4625      	mov	r5, r4
200291c6:	e696      	b.n	20028ef6 <mbedtls_mpi_inv_mod+0x9e>
200291c8:	46a3      	mov	fp, r4
200291ca:	4625      	mov	r5, r4
200291cc:	4626      	mov	r6, r4
200291ce:	e78b      	b.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
200291d0:	46a3      	mov	fp, r4
200291d2:	4625      	mov	r5, r4
200291d4:	e788      	b.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
200291d6:	f04f 0b00 	mov.w	fp, #0
200291da:	e785      	b.n	200290e8 <mbedtls_mpi_inv_mod+0x290>
200291dc:	f06f 0403 	mvn.w	r4, #3
200291e0:	e7d1      	b.n	20029186 <mbedtls_mpi_inv_mod+0x32e>
	...

200291e4 <mbedtls_oid_get_pk_alg>:
200291e4:	b570      	push	{r4, r5, r6, lr}
200291e6:	460e      	mov	r6, r1
200291e8:	4605      	mov	r5, r0
200291ea:	b110      	cbz	r0, 200291f2 <mbedtls_oid_get_pk_alg+0xe>
200291ec:	4c09      	ldr	r4, [pc, #36]	@ (20029214 <mbedtls_oid_get_pk_alg+0x30>)
200291ee:	6820      	ldr	r0, [r4, #0]
200291f0:	b910      	cbnz	r0, 200291f8 <mbedtls_oid_get_pk_alg+0x14>
200291f2:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200291f6:	bd70      	pop	{r4, r5, r6, pc}
200291f8:	686b      	ldr	r3, [r5, #4]
200291fa:	6862      	ldr	r2, [r4, #4]
200291fc:	429a      	cmp	r2, r3
200291fe:	d103      	bne.n	20029208 <mbedtls_oid_get_pk_alg+0x24>
20029200:	68a9      	ldr	r1, [r5, #8]
20029202:	f001 fab3 	bl	2002a76c <memcmp>
20029206:	b108      	cbz	r0, 2002920c <mbedtls_oid_get_pk_alg+0x28>
20029208:	3414      	adds	r4, #20
2002920a:	e7f0      	b.n	200291ee <mbedtls_oid_get_pk_alg+0xa>
2002920c:	7c23      	ldrb	r3, [r4, #16]
2002920e:	7033      	strb	r3, [r6, #0]
20029210:	e7f1      	b.n	200291f6 <mbedtls_oid_get_pk_alg+0x12>
20029212:	bf00      	nop
20029214:	2002c17c 	.word	0x2002c17c

20029218 <mbedtls_oid_get_md_alg>:
20029218:	b570      	push	{r4, r5, r6, lr}
2002921a:	460e      	mov	r6, r1
2002921c:	4605      	mov	r5, r0
2002921e:	b110      	cbz	r0, 20029226 <mbedtls_oid_get_md_alg+0xe>
20029220:	4c09      	ldr	r4, [pc, #36]	@ (20029248 <mbedtls_oid_get_md_alg+0x30>)
20029222:	6820      	ldr	r0, [r4, #0]
20029224:	b910      	cbnz	r0, 2002922c <mbedtls_oid_get_md_alg+0x14>
20029226:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
2002922a:	bd70      	pop	{r4, r5, r6, pc}
2002922c:	686b      	ldr	r3, [r5, #4]
2002922e:	6862      	ldr	r2, [r4, #4]
20029230:	429a      	cmp	r2, r3
20029232:	d103      	bne.n	2002923c <mbedtls_oid_get_md_alg+0x24>
20029234:	68a9      	ldr	r1, [r5, #8]
20029236:	f001 fa99 	bl	2002a76c <memcmp>
2002923a:	b108      	cbz	r0, 20029240 <mbedtls_oid_get_md_alg+0x28>
2002923c:	3414      	adds	r4, #20
2002923e:	e7f0      	b.n	20029222 <mbedtls_oid_get_md_alg+0xa>
20029240:	7c23      	ldrb	r3, [r4, #16]
20029242:	7033      	strb	r3, [r6, #0]
20029244:	e7f1      	b.n	2002922a <mbedtls_oid_get_md_alg+0x12>
20029246:	bf00      	nop
20029248:	2002c118 	.word	0x2002c118

2002924c <mbedtls_oid_get_oid_by_md>:
2002924c:	b530      	push	{r4, r5, lr}
2002924e:	4b08      	ldr	r3, [pc, #32]	@ (20029270 <mbedtls_oid_get_oid_by_md+0x24>)
20029250:	681c      	ldr	r4, [r3, #0]
20029252:	b914      	cbnz	r4, 2002925a <mbedtls_oid_get_oid_by_md+0xe>
20029254:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029258:	e006      	b.n	20029268 <mbedtls_oid_get_oid_by_md+0x1c>
2002925a:	7c1d      	ldrb	r5, [r3, #16]
2002925c:	4285      	cmp	r5, r0
2002925e:	d104      	bne.n	2002926a <mbedtls_oid_get_oid_by_md+0x1e>
20029260:	2000      	movs	r0, #0
20029262:	600c      	str	r4, [r1, #0]
20029264:	685b      	ldr	r3, [r3, #4]
20029266:	6013      	str	r3, [r2, #0]
20029268:	bd30      	pop	{r4, r5, pc}
2002926a:	3314      	adds	r3, #20
2002926c:	e7f0      	b.n	20029250 <mbedtls_oid_get_oid_by_md+0x4>
2002926e:	bf00      	nop
20029270:	2002c118 	.word	0x2002c118

20029274 <mbedtls_pk_init>:
20029274:	b110      	cbz	r0, 2002927c <mbedtls_pk_init+0x8>
20029276:	2300      	movs	r3, #0
20029278:	e9c0 3300 	strd	r3, r3, [r0]
2002927c:	4770      	bx	lr

2002927e <mbedtls_pk_free>:
2002927e:	b510      	push	{r4, lr}
20029280:	4604      	mov	r4, r0
20029282:	b160      	cbz	r0, 2002929e <mbedtls_pk_free+0x20>
20029284:	6803      	ldr	r3, [r0, #0]
20029286:	b153      	cbz	r3, 2002929e <mbedtls_pk_free+0x20>
20029288:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
2002928a:	6840      	ldr	r0, [r0, #4]
2002928c:	4798      	blx	r3
2002928e:	2100      	movs	r1, #0
20029290:	f104 0308 	add.w	r3, r4, #8
20029294:	4622      	mov	r2, r4
20029296:	3401      	adds	r4, #1
20029298:	429c      	cmp	r4, r3
2002929a:	7011      	strb	r1, [r2, #0]
2002929c:	d1fa      	bne.n	20029294 <mbedtls_pk_free+0x16>
2002929e:	bd10      	pop	{r4, pc}

200292a0 <mbedtls_pk_info_from_type>:
200292a0:	2801      	cmp	r0, #1
200292a2:	4802      	ldr	r0, [pc, #8]	@ (200292ac <mbedtls_pk_info_from_type+0xc>)
200292a4:	bf18      	it	ne
200292a6:	2000      	movne	r0, #0
200292a8:	4770      	bx	lr
200292aa:	bf00      	nop
200292ac:	2002c1cc 	.word	0x2002c1cc

200292b0 <mbedtls_pk_setup>:
200292b0:	b570      	push	{r4, r5, r6, lr}
200292b2:	460e      	mov	r6, r1
200292b4:	4605      	mov	r5, r0
200292b6:	b148      	cbz	r0, 200292cc <mbedtls_pk_setup+0x1c>
200292b8:	b141      	cbz	r1, 200292cc <mbedtls_pk_setup+0x1c>
200292ba:	6804      	ldr	r4, [r0, #0]
200292bc:	b934      	cbnz	r4, 200292cc <mbedtls_pk_setup+0x1c>
200292be:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
200292c0:	4798      	blx	r3
200292c2:	6068      	str	r0, [r5, #4]
200292c4:	b120      	cbz	r0, 200292d0 <mbedtls_pk_setup+0x20>
200292c6:	4620      	mov	r0, r4
200292c8:	602e      	str	r6, [r5, #0]
200292ca:	bd70      	pop	{r4, r5, r6, pc}
200292cc:	4801      	ldr	r0, [pc, #4]	@ (200292d4 <mbedtls_pk_setup+0x24>)
200292ce:	e7fc      	b.n	200292ca <mbedtls_pk_setup+0x1a>
200292d0:	4801      	ldr	r0, [pc, #4]	@ (200292d8 <mbedtls_pk_setup+0x28>)
200292d2:	e7fa      	b.n	200292ca <mbedtls_pk_setup+0x1a>
200292d4:	ffffc180 	.word	0xffffc180
200292d8:	ffffc080 	.word	0xffffc080

200292dc <mbedtls_pk_verify>:
200292dc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200292e0:	460d      	mov	r5, r1
200292e2:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
200292e6:	4616      	mov	r6, r2
200292e8:	4604      	mov	r4, r0
200292ea:	b910      	cbnz	r0, 200292f2 <mbedtls_pk_verify+0x16>
200292ec:	480e      	ldr	r0, [pc, #56]	@ (20029328 <mbedtls_pk_verify+0x4c>)
200292ee:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200292f2:	6802      	ldr	r2, [r0, #0]
200292f4:	2a00      	cmp	r2, #0
200292f6:	d0f9      	beq.n	200292ec <mbedtls_pk_verify+0x10>
200292f8:	b93b      	cbnz	r3, 2002930a <mbedtls_pk_verify+0x2e>
200292fa:	4608      	mov	r0, r1
200292fc:	f7fc fd40 	bl	20025d80 <mbedtls_md_info_from_type>
20029300:	2800      	cmp	r0, #0
20029302:	d0f3      	beq.n	200292ec <mbedtls_pk_verify+0x10>
20029304:	f7fc fd48 	bl	20025d98 <mbedtls_md_get_size>
20029308:	4603      	mov	r3, r0
2002930a:	6822      	ldr	r2, [r4, #0]
2002930c:	6917      	ldr	r7, [r2, #16]
2002930e:	b147      	cbz	r7, 20029322 <mbedtls_pk_verify+0x46>
20029310:	e9cd 8908 	strd	r8, r9, [sp, #32]
20029314:	4632      	mov	r2, r6
20029316:	4629      	mov	r1, r5
20029318:	46bc      	mov	ip, r7
2002931a:	6860      	ldr	r0, [r4, #4]
2002931c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029320:	4760      	bx	ip
20029322:	4802      	ldr	r0, [pc, #8]	@ (2002932c <mbedtls_pk_verify+0x50>)
20029324:	e7e3      	b.n	200292ee <mbedtls_pk_verify+0x12>
20029326:	bf00      	nop
20029328:	ffffc180 	.word	0xffffc180
2002932c:	ffffc100 	.word	0xffffc100

20029330 <pk_get_pk_alg>:
20029330:	b530      	push	{r4, r5, lr}
20029332:	4615      	mov	r5, r2
20029334:	2200      	movs	r2, #0
20029336:	b085      	sub	sp, #20
20029338:	e9c3 2200 	strd	r2, r2, [r3]
2002933c:	609a      	str	r2, [r3, #8]
2002933e:	aa01      	add	r2, sp, #4
20029340:	461c      	mov	r4, r3
20029342:	f7fe fa98 	bl	20027876 <mbedtls_asn1_get_alg>
20029346:	b118      	cbz	r0, 20029350 <pk_get_pk_alg+0x20>
20029348:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
2002934c:	b005      	add	sp, #20
2002934e:	bd30      	pop	{r4, r5, pc}
20029350:	4629      	mov	r1, r5
20029352:	a801      	add	r0, sp, #4
20029354:	f7ff ff46 	bl	200291e4 <mbedtls_oid_get_pk_alg>
20029358:	b960      	cbnz	r0, 20029374 <pk_get_pk_alg+0x44>
2002935a:	782b      	ldrb	r3, [r5, #0]
2002935c:	2b01      	cmp	r3, #1
2002935e:	d1f5      	bne.n	2002934c <pk_get_pk_alg+0x1c>
20029360:	6823      	ldr	r3, [r4, #0]
20029362:	2b05      	cmp	r3, #5
20029364:	d000      	beq.n	20029368 <pk_get_pk_alg+0x38>
20029366:	b93b      	cbnz	r3, 20029378 <pk_get_pk_alg+0x48>
20029368:	6862      	ldr	r2, [r4, #4]
2002936a:	4b04      	ldr	r3, [pc, #16]	@ (2002937c <pk_get_pk_alg+0x4c>)
2002936c:	2a00      	cmp	r2, #0
2002936e:	bf18      	it	ne
20029370:	4618      	movne	r0, r3
20029372:	e7eb      	b.n	2002934c <pk_get_pk_alg+0x1c>
20029374:	4802      	ldr	r0, [pc, #8]	@ (20029380 <pk_get_pk_alg+0x50>)
20029376:	e7e9      	b.n	2002934c <pk_get_pk_alg+0x1c>
20029378:	4800      	ldr	r0, [pc, #0]	@ (2002937c <pk_get_pk_alg+0x4c>)
2002937a:	e7e7      	b.n	2002934c <pk_get_pk_alg+0x1c>
2002937c:	ffffc580 	.word	0xffffc580
20029380:	ffffc380 	.word	0xffffc380

20029384 <mbedtls_pk_parse_subpubkey>:
20029384:	2300      	movs	r3, #0
20029386:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
2002938a:	b087      	sub	sp, #28
2002938c:	4690      	mov	r8, r2
2002938e:	f88d 3003 	strb.w	r3, [sp, #3]
20029392:	aa01      	add	r2, sp, #4
20029394:	2330      	movs	r3, #48	@ 0x30
20029396:	4606      	mov	r6, r0
20029398:	f7fe fa32 	bl	20027800 <mbedtls_asn1_get_tag>
2002939c:	b128      	cbz	r0, 200293aa <mbedtls_pk_parse_subpubkey+0x26>
2002939e:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
200293a2:	4620      	mov	r0, r4
200293a4:	b007      	add	sp, #28
200293a6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
200293aa:	9b01      	ldr	r3, [sp, #4]
200293ac:	6837      	ldr	r7, [r6, #0]
200293ae:	4630      	mov	r0, r6
200293b0:	441f      	add	r7, r3
200293b2:	4639      	mov	r1, r7
200293b4:	ab03      	add	r3, sp, #12
200293b6:	f10d 0203 	add.w	r2, sp, #3
200293ba:	f7ff ffb9 	bl	20029330 <pk_get_pk_alg>
200293be:	4604      	mov	r4, r0
200293c0:	2800      	cmp	r0, #0
200293c2:	d1ee      	bne.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
200293c4:	4639      	mov	r1, r7
200293c6:	4630      	mov	r0, r6
200293c8:	aa01      	add	r2, sp, #4
200293ca:	f7fe fa40 	bl	2002784e <mbedtls_asn1_get_bitstring_null>
200293ce:	b110      	cbz	r0, 200293d6 <mbedtls_pk_parse_subpubkey+0x52>
200293d0:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
200293d4:	e7e5      	b.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
200293d6:	6833      	ldr	r3, [r6, #0]
200293d8:	9a01      	ldr	r2, [sp, #4]
200293da:	4413      	add	r3, r2
200293dc:	429f      	cmp	r7, r3
200293de:	d14b      	bne.n	20029478 <mbedtls_pk_parse_subpubkey+0xf4>
200293e0:	f89d 0003 	ldrb.w	r0, [sp, #3]
200293e4:	f7ff ff5c 	bl	200292a0 <mbedtls_pk_info_from_type>
200293e8:	4601      	mov	r1, r0
200293ea:	2800      	cmp	r0, #0
200293ec:	d046      	beq.n	2002947c <mbedtls_pk_parse_subpubkey+0xf8>
200293ee:	4640      	mov	r0, r8
200293f0:	f7ff ff5e 	bl	200292b0 <mbedtls_pk_setup>
200293f4:	4604      	mov	r4, r0
200293f6:	2800      	cmp	r0, #0
200293f8:	d1d3      	bne.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
200293fa:	f89d 3003 	ldrb.w	r3, [sp, #3]
200293fe:	2b01      	cmp	r3, #1
20029400:	d138      	bne.n	20029474 <mbedtls_pk_parse_subpubkey+0xf0>
20029402:	2330      	movs	r3, #48	@ 0x30
20029404:	4639      	mov	r1, r7
20029406:	4630      	mov	r0, r6
20029408:	aa02      	add	r2, sp, #8
2002940a:	f8d8 5004 	ldr.w	r5, [r8, #4]
2002940e:	f7fe f9f7 	bl	20027800 <mbedtls_asn1_get_tag>
20029412:	b138      	cbz	r0, 20029424 <mbedtls_pk_parse_subpubkey+0xa0>
20029414:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
20029418:	bb3d      	cbnz	r5, 2002946a <mbedtls_pk_parse_subpubkey+0xe6>
2002941a:	6833      	ldr	r3, [r6, #0]
2002941c:	42bb      	cmp	r3, r7
2002941e:	d0c0      	beq.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
20029420:	4d17      	ldr	r5, [pc, #92]	@ (20029480 <mbedtls_pk_parse_subpubkey+0xfc>)
20029422:	e022      	b.n	2002946a <mbedtls_pk_parse_subpubkey+0xe6>
20029424:	6833      	ldr	r3, [r6, #0]
20029426:	9a02      	ldr	r2, [sp, #8]
20029428:	4413      	add	r3, r2
2002942a:	429f      	cmp	r7, r3
2002942c:	d1f8      	bne.n	20029420 <mbedtls_pk_parse_subpubkey+0x9c>
2002942e:	f105 0a08 	add.w	sl, r5, #8
20029432:	4652      	mov	r2, sl
20029434:	4639      	mov	r1, r7
20029436:	4630      	mov	r0, r6
20029438:	f7fe f9f6 	bl	20027828 <mbedtls_asn1_get_mpi>
2002943c:	2800      	cmp	r0, #0
2002943e:	d1e9      	bne.n	20029414 <mbedtls_pk_parse_subpubkey+0x90>
20029440:	4639      	mov	r1, r7
20029442:	4630      	mov	r0, r6
20029444:	f105 0214 	add.w	r2, r5, #20
20029448:	f7fe f9ee 	bl	20027828 <mbedtls_asn1_get_mpi>
2002944c:	2800      	cmp	r0, #0
2002944e:	d1e1      	bne.n	20029414 <mbedtls_pk_parse_subpubkey+0x90>
20029450:	6833      	ldr	r3, [r6, #0]
20029452:	429f      	cmp	r7, r3
20029454:	d1e4      	bne.n	20029420 <mbedtls_pk_parse_subpubkey+0x9c>
20029456:	4628      	mov	r0, r5
20029458:	f000 f8c2 	bl	200295e0 <mbedtls_rsa_check_pubkey>
2002945c:	b920      	cbnz	r0, 20029468 <mbedtls_pk_parse_subpubkey+0xe4>
2002945e:	4650      	mov	r0, sl
20029460:	f7fe fcbe 	bl	20027de0 <mbedtls_mpi_size>
20029464:	6068      	str	r0, [r5, #4]
20029466:	e7d8      	b.n	2002941a <mbedtls_pk_parse_subpubkey+0x96>
20029468:	4d06      	ldr	r5, [pc, #24]	@ (20029484 <mbedtls_pk_parse_subpubkey+0x100>)
2002946a:	4640      	mov	r0, r8
2002946c:	f7ff ff07 	bl	2002927e <mbedtls_pk_free>
20029470:	462c      	mov	r4, r5
20029472:	e796      	b.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
20029474:	4d04      	ldr	r5, [pc, #16]	@ (20029488 <mbedtls_pk_parse_subpubkey+0x104>)
20029476:	e7f8      	b.n	2002946a <mbedtls_pk_parse_subpubkey+0xe6>
20029478:	4c01      	ldr	r4, [pc, #4]	@ (20029480 <mbedtls_pk_parse_subpubkey+0xfc>)
2002947a:	e792      	b.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
2002947c:	4c02      	ldr	r4, [pc, #8]	@ (20029488 <mbedtls_pk_parse_subpubkey+0x104>)
2002947e:	e790      	b.n	200293a2 <mbedtls_pk_parse_subpubkey+0x1e>
20029480:	ffffc49a 	.word	0xffffc49a
20029484:	ffffc500 	.word	0xffffc500
20029488:	ffffc380 	.word	0xffffc380

2002948c <mbedtls_pk_parse_public_key>:
2002948c:	4613      	mov	r3, r2
2002948e:	b507      	push	{r0, r1, r2, lr}
20029490:	4602      	mov	r2, r0
20029492:	9101      	str	r1, [sp, #4]
20029494:	a801      	add	r0, sp, #4
20029496:	4419      	add	r1, r3
20029498:	f7ff ff74 	bl	20029384 <mbedtls_pk_parse_subpubkey>
2002949c:	b003      	add	sp, #12
2002949e:	f85d fb04 	ldr.w	pc, [sp], #4

200294a2 <rsa_can_do>:
200294a2:	2801      	cmp	r0, #1
200294a4:	d002      	beq.n	200294ac <rsa_can_do+0xa>
200294a6:	1f83      	subs	r3, r0, #6
200294a8:	4258      	negs	r0, r3
200294aa:	4158      	adcs	r0, r3
200294ac:	4770      	bx	lr

200294ae <rsa_get_bitlen>:
200294ae:	6840      	ldr	r0, [r0, #4]
200294b0:	00c0      	lsls	r0, r0, #3
200294b2:	4770      	bx	lr

200294b4 <rsa_debug>:
200294b4:	2301      	movs	r3, #1
200294b6:	4a06      	ldr	r2, [pc, #24]	@ (200294d0 <rsa_debug+0x1c>)
200294b8:	700b      	strb	r3, [r1, #0]
200294ba:	730b      	strb	r3, [r1, #12]
200294bc:	4b05      	ldr	r3, [pc, #20]	@ (200294d4 <rsa_debug+0x20>)
200294be:	604a      	str	r2, [r1, #4]
200294c0:	f100 0208 	add.w	r2, r0, #8
200294c4:	3014      	adds	r0, #20
200294c6:	608a      	str	r2, [r1, #8]
200294c8:	610b      	str	r3, [r1, #16]
200294ca:	6148      	str	r0, [r1, #20]
200294cc:	4770      	bx	lr
200294ce:	bf00      	nop
200294d0:	2002afa8 	.word	0x2002afa8
200294d4:	2002afae 	.word	0x2002afae

200294d8 <rsa_free_wrap>:
200294d8:	b510      	push	{r4, lr}
200294da:	4604      	mov	r4, r0
200294dc:	f000 fe7c 	bl	2002a1d8 <mbedtls_rsa_free>
200294e0:	4620      	mov	r0, r4
200294e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200294e6:	f001 b88b 	b.w	2002a600 <free>

200294ea <rsa_alloc_wrap>:
200294ea:	b510      	push	{r4, lr}
200294ec:	21ac      	movs	r1, #172	@ 0xac
200294ee:	2001      	movs	r0, #1
200294f0:	f001 f86a 	bl	2002a5c8 <calloc>
200294f4:	4604      	mov	r4, r0
200294f6:	b118      	cbz	r0, 20029500 <rsa_alloc_wrap+0x16>
200294f8:	2200      	movs	r2, #0
200294fa:	4611      	mov	r1, r2
200294fc:	f000 f862 	bl	200295c4 <mbedtls_rsa_init>
20029500:	4620      	mov	r0, r4
20029502:	bd10      	pop	{r4, pc}

20029504 <rsa_check_pair_wrap>:
20029504:	f000 b99c 	b.w	20029840 <mbedtls_rsa_check_pub_priv>

20029508 <rsa_encrypt_wrap>:
20029508:	b4f0      	push	{r4, r5, r6, r7}
2002950a:	9f04      	ldr	r7, [sp, #16]
2002950c:	6846      	ldr	r6, [r0, #4]
2002950e:	460d      	mov	r5, r1
20029510:	603e      	str	r6, [r7, #0]
20029512:	9f05      	ldr	r7, [sp, #20]
20029514:	4614      	mov	r4, r2
20029516:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
2002951a:	42be      	cmp	r6, r7
2002951c:	d806      	bhi.n	2002952c <rsa_encrypt_wrap+0x24>
2002951e:	e9cd 5305 	strd	r5, r3, [sp, #20]
20029522:	9404      	str	r4, [sp, #16]
20029524:	2300      	movs	r3, #0
20029526:	bcf0      	pop	{r4, r5, r6, r7}
20029528:	f000 bbe2 	b.w	20029cf0 <mbedtls_rsa_pkcs1_encrypt>
2002952c:	4801      	ldr	r0, [pc, #4]	@ (20029534 <rsa_encrypt_wrap+0x2c>)
2002952e:	bcf0      	pop	{r4, r5, r6, r7}
20029530:	4770      	bx	lr
20029532:	bf00      	nop
20029534:	ffffbc00 	.word	0xffffbc00

20029538 <rsa_decrypt_wrap>:
20029538:	b4f0      	push	{r4, r5, r6, r7}
2002953a:	4616      	mov	r6, r2
2002953c:	6847      	ldr	r7, [r0, #4]
2002953e:	460c      	mov	r4, r1
20029540:	e9dd 5105 	ldrd	r5, r1, [sp, #20]
20029544:	42b7      	cmp	r7, r6
20029546:	9a07      	ldr	r2, [sp, #28]
20029548:	d106      	bne.n	20029558 <rsa_decrypt_wrap+0x20>
2002954a:	e9cd 3506 	strd	r3, r5, [sp, #24]
2002954e:	9405      	str	r4, [sp, #20]
20029550:	2301      	movs	r3, #1
20029552:	bcf0      	pop	{r4, r5, r6, r7}
20029554:	f000 bc6e 	b.w	20029e34 <mbedtls_rsa_pkcs1_decrypt>
20029558:	4801      	ldr	r0, [pc, #4]	@ (20029560 <rsa_decrypt_wrap+0x28>)
2002955a:	bcf0      	pop	{r4, r5, r6, r7}
2002955c:	4770      	bx	lr
2002955e:	bf00      	nop
20029560:	ffffbf80 	.word	0xffffbf80

20029564 <rsa_sign_wrap>:
20029564:	b4f0      	push	{r4, r5, r6, r7}
20029566:	460c      	mov	r4, r1
20029568:	4615      	mov	r5, r2
2002956a:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
2002956e:	6847      	ldr	r7, [r0, #4]
20029570:	9e05      	ldr	r6, [sp, #20]
20029572:	6037      	str	r7, [r6, #0]
20029574:	9e04      	ldr	r6, [sp, #16]
20029576:	e9cd 4304 	strd	r4, r3, [sp, #16]
2002957a:	e9cd 5606 	strd	r5, r6, [sp, #24]
2002957e:	bcf0      	pop	{r4, r5, r6, r7}
20029580:	2301      	movs	r3, #1
20029582:	f000 bd31 	b.w	20029fe8 <mbedtls_rsa_pkcs1_sign>
	...

20029588 <rsa_verify_wrap>:
20029588:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002958a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002958c:	6846      	ldr	r6, [r0, #4]
2002958e:	4604      	mov	r4, r0
20029590:	42ae      	cmp	r6, r5
20029592:	d811      	bhi.n	200295b8 <rsa_verify_wrap+0x30>
20029594:	e9cd 1300 	strd	r1, r3, [sp]
20029598:	2300      	movs	r3, #0
2002959a:	9e08      	ldr	r6, [sp, #32]
2002959c:	4619      	mov	r1, r3
2002959e:	e9cd 2602 	strd	r2, r6, [sp, #8]
200295a2:	461a      	mov	r2, r3
200295a4:	f000 fe08 	bl	2002a1b8 <mbedtls_rsa_pkcs1_verify>
200295a8:	b920      	cbnz	r0, 200295b4 <rsa_verify_wrap+0x2c>
200295aa:	6862      	ldr	r2, [r4, #4]
200295ac:	4b03      	ldr	r3, [pc, #12]	@ (200295bc <rsa_verify_wrap+0x34>)
200295ae:	42aa      	cmp	r2, r5
200295b0:	bf38      	it	cc
200295b2:	4618      	movcc	r0, r3
200295b4:	b004      	add	sp, #16
200295b6:	bd70      	pop	{r4, r5, r6, pc}
200295b8:	4801      	ldr	r0, [pc, #4]	@ (200295c0 <rsa_verify_wrap+0x38>)
200295ba:	e7fb      	b.n	200295b4 <rsa_verify_wrap+0x2c>
200295bc:	ffffc700 	.word	0xffffc700
200295c0:	ffffbc80 	.word	0xffffbc80

200295c4 <mbedtls_rsa_init>:
200295c4:	b570      	push	{r4, r5, r6, lr}
200295c6:	4604      	mov	r4, r0
200295c8:	460e      	mov	r6, r1
200295ca:	4615      	mov	r5, r2
200295cc:	2100      	movs	r1, #0
200295ce:	22ac      	movs	r2, #172	@ 0xac
200295d0:	f001 f8dc 	bl	2002a78c <memset>
200295d4:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
200295d8:	bd70      	pop	{r4, r5, r6, pc}

200295da <mbedtls_rsa_set_padding>:
200295da:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
200295de:	4770      	bx	lr

200295e0 <mbedtls_rsa_check_pubkey>:
200295e0:	b538      	push	{r3, r4, r5, lr}
200295e2:	6902      	ldr	r2, [r0, #16]
200295e4:	4604      	mov	r4, r0
200295e6:	b10a      	cbz	r2, 200295ec <mbedtls_rsa_check_pubkey+0xc>
200295e8:	69c3      	ldr	r3, [r0, #28]
200295ea:	b90b      	cbnz	r3, 200295f0 <mbedtls_rsa_check_pubkey+0x10>
200295ec:	4811      	ldr	r0, [pc, #68]	@ (20029634 <mbedtls_rsa_check_pubkey+0x54>)
200295ee:	bd38      	pop	{r3, r4, r5, pc}
200295f0:	6812      	ldr	r2, [r2, #0]
200295f2:	07d2      	lsls	r2, r2, #31
200295f4:	d5fa      	bpl.n	200295ec <mbedtls_rsa_check_pubkey+0xc>
200295f6:	681b      	ldr	r3, [r3, #0]
200295f8:	07db      	lsls	r3, r3, #31
200295fa:	d5f7      	bpl.n	200295ec <mbedtls_rsa_check_pubkey+0xc>
200295fc:	f100 0508 	add.w	r5, r0, #8
20029600:	4628      	mov	r0, r5
20029602:	f7fe fbd0 	bl	20027da6 <mbedtls_mpi_bitlen>
20029606:	287f      	cmp	r0, #127	@ 0x7f
20029608:	d9f0      	bls.n	200295ec <mbedtls_rsa_check_pubkey+0xc>
2002960a:	4628      	mov	r0, r5
2002960c:	f7fe fbcb 	bl	20027da6 <mbedtls_mpi_bitlen>
20029610:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
20029614:	d8ea      	bhi.n	200295ec <mbedtls_rsa_check_pubkey+0xc>
20029616:	3414      	adds	r4, #20
20029618:	4620      	mov	r0, r4
2002961a:	f7fe fbc4 	bl	20027da6 <mbedtls_mpi_bitlen>
2002961e:	2801      	cmp	r0, #1
20029620:	d9e4      	bls.n	200295ec <mbedtls_rsa_check_pubkey+0xc>
20029622:	4629      	mov	r1, r5
20029624:	4620      	mov	r0, r4
20029626:	f7fe fd71 	bl	2002810c <mbedtls_mpi_cmp_mpi>
2002962a:	2800      	cmp	r0, #0
2002962c:	dade      	bge.n	200295ec <mbedtls_rsa_check_pubkey+0xc>
2002962e:	2000      	movs	r0, #0
20029630:	e7dd      	b.n	200295ee <mbedtls_rsa_check_pubkey+0xe>
20029632:	bf00      	nop
20029634:	ffffbe00 	.word	0xffffbe00

20029638 <mbedtls_rsa_check_privkey>:
20029638:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
2002963c:	b0a9      	sub	sp, #164	@ 0xa4
2002963e:	4605      	mov	r5, r0
20029640:	f7ff ffce 	bl	200295e0 <mbedtls_rsa_check_pubkey>
20029644:	b120      	cbz	r0, 20029650 <mbedtls_rsa_check_privkey+0x18>
20029646:	4c7d      	ldr	r4, [pc, #500]	@ (2002983c <mbedtls_rsa_check_privkey+0x204>)
20029648:	4620      	mov	r0, r4
2002964a:	b029      	add	sp, #164	@ 0xa4
2002964c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20029650:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
20029652:	2b00      	cmp	r3, #0
20029654:	d0f7      	beq.n	20029646 <mbedtls_rsa_check_privkey+0xe>
20029656:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
20029658:	2b00      	cmp	r3, #0
2002965a:	d0f4      	beq.n	20029646 <mbedtls_rsa_check_privkey+0xe>
2002965c:	6aab      	ldr	r3, [r5, #40]	@ 0x28
2002965e:	2b00      	cmp	r3, #0
20029660:	d0f1      	beq.n	20029646 <mbedtls_rsa_check_privkey+0xe>
20029662:	a801      	add	r0, sp, #4
20029664:	f7fe fafa 	bl	20027c5c <mbedtls_mpi_init>
20029668:	a804      	add	r0, sp, #16
2002966a:	f7fe faf7 	bl	20027c5c <mbedtls_mpi_init>
2002966e:	a807      	add	r0, sp, #28
20029670:	f7fe faf4 	bl	20027c5c <mbedtls_mpi_init>
20029674:	a80a      	add	r0, sp, #40	@ 0x28
20029676:	f7fe faf1 	bl	20027c5c <mbedtls_mpi_init>
2002967a:	a80d      	add	r0, sp, #52	@ 0x34
2002967c:	f7fe faee 	bl	20027c5c <mbedtls_mpi_init>
20029680:	a810      	add	r0, sp, #64	@ 0x40
20029682:	f7fe faeb 	bl	20027c5c <mbedtls_mpi_init>
20029686:	a813      	add	r0, sp, #76	@ 0x4c
20029688:	f7fe fae8 	bl	20027c5c <mbedtls_mpi_init>
2002968c:	a816      	add	r0, sp, #88	@ 0x58
2002968e:	f7fe fae5 	bl	20027c5c <mbedtls_mpi_init>
20029692:	a819      	add	r0, sp, #100	@ 0x64
20029694:	f7fe fae2 	bl	20027c5c <mbedtls_mpi_init>
20029698:	a81c      	add	r0, sp, #112	@ 0x70
2002969a:	f7fe fadf 	bl	20027c5c <mbedtls_mpi_init>
2002969e:	a81f      	add	r0, sp, #124	@ 0x7c
200296a0:	f7fe fadc 	bl	20027c5c <mbedtls_mpi_init>
200296a4:	a822      	add	r0, sp, #136	@ 0x88
200296a6:	f7fe fad9 	bl	20027c5c <mbedtls_mpi_init>
200296aa:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
200296ae:	a825      	add	r0, sp, #148	@ 0x94
200296b0:	f105 0638 	add.w	r6, r5, #56	@ 0x38
200296b4:	f7fe fad2 	bl	20027c5c <mbedtls_mpi_init>
200296b8:	4632      	mov	r2, r6
200296ba:	4639      	mov	r1, r7
200296bc:	a801      	add	r0, sp, #4
200296be:	f7fe fe75 	bl	200283ac <mbedtls_mpi_mul_mpi>
200296c2:	4604      	mov	r4, r0
200296c4:	2800      	cmp	r0, #0
200296c6:	d15e      	bne.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
200296c8:	f105 0820 	add.w	r8, r5, #32
200296cc:	f105 0914 	add.w	r9, r5, #20
200296d0:	464a      	mov	r2, r9
200296d2:	4641      	mov	r1, r8
200296d4:	a804      	add	r0, sp, #16
200296d6:	f7fe fe69 	bl	200283ac <mbedtls_mpi_mul_mpi>
200296da:	4604      	mov	r4, r0
200296dc:	2800      	cmp	r0, #0
200296de:	d152      	bne.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
200296e0:	2201      	movs	r2, #1
200296e2:	4639      	mov	r1, r7
200296e4:	a807      	add	r0, sp, #28
200296e6:	f7fe fe4b 	bl	20028380 <mbedtls_mpi_sub_int>
200296ea:	4604      	mov	r4, r0
200296ec:	2800      	cmp	r0, #0
200296ee:	d14a      	bne.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
200296f0:	2201      	movs	r2, #1
200296f2:	4631      	mov	r1, r6
200296f4:	a80a      	add	r0, sp, #40	@ 0x28
200296f6:	f7fe fe43 	bl	20028380 <mbedtls_mpi_sub_int>
200296fa:	4604      	mov	r4, r0
200296fc:	2800      	cmp	r0, #0
200296fe:	d142      	bne.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
20029700:	aa0a      	add	r2, sp, #40	@ 0x28
20029702:	a907      	add	r1, sp, #28
20029704:	a80d      	add	r0, sp, #52	@ 0x34
20029706:	f7fe fe51 	bl	200283ac <mbedtls_mpi_mul_mpi>
2002970a:	4604      	mov	r4, r0
2002970c:	2800      	cmp	r0, #0
2002970e:	d13a      	bne.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
20029710:	4649      	mov	r1, r9
20029712:	aa0d      	add	r2, sp, #52	@ 0x34
20029714:	a813      	add	r0, sp, #76	@ 0x4c
20029716:	f7ff fb04 	bl	20028d22 <mbedtls_mpi_gcd>
2002971a:	4604      	mov	r4, r0
2002971c:	2800      	cmp	r0, #0
2002971e:	d132      	bne.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
20029720:	aa0a      	add	r2, sp, #40	@ 0x28
20029722:	a907      	add	r1, sp, #28
20029724:	a816      	add	r0, sp, #88	@ 0x58
20029726:	f7ff fafc 	bl	20028d22 <mbedtls_mpi_gcd>
2002972a:	4604      	mov	r4, r0
2002972c:	bb58      	cbnz	r0, 20029786 <mbedtls_rsa_check_privkey+0x14e>
2002972e:	ab16      	add	r3, sp, #88	@ 0x58
20029730:	aa0d      	add	r2, sp, #52	@ 0x34
20029732:	a91c      	add	r1, sp, #112	@ 0x70
20029734:	a819      	add	r0, sp, #100	@ 0x64
20029736:	f7fe feaa 	bl	2002848e <mbedtls_mpi_div_mpi>
2002973a:	4604      	mov	r4, r0
2002973c:	bb18      	cbnz	r0, 20029786 <mbedtls_rsa_check_privkey+0x14e>
2002973e:	aa19      	add	r2, sp, #100	@ 0x64
20029740:	a904      	add	r1, sp, #16
20029742:	a810      	add	r0, sp, #64	@ 0x40
20029744:	f7ff f8a7 	bl	20028896 <mbedtls_mpi_mod_mpi>
20029748:	4604      	mov	r4, r0
2002974a:	b9e0      	cbnz	r0, 20029786 <mbedtls_rsa_check_privkey+0x14e>
2002974c:	4641      	mov	r1, r8
2002974e:	aa07      	add	r2, sp, #28
20029750:	a81f      	add	r0, sp, #124	@ 0x7c
20029752:	f7ff f8a0 	bl	20028896 <mbedtls_mpi_mod_mpi>
20029756:	4604      	mov	r4, r0
20029758:	b9a8      	cbnz	r0, 20029786 <mbedtls_rsa_check_privkey+0x14e>
2002975a:	4641      	mov	r1, r8
2002975c:	aa0a      	add	r2, sp, #40	@ 0x28
2002975e:	a822      	add	r0, sp, #136	@ 0x88
20029760:	f7ff f899 	bl	20028896 <mbedtls_mpi_mod_mpi>
20029764:	4604      	mov	r4, r0
20029766:	b970      	cbnz	r0, 20029786 <mbedtls_rsa_check_privkey+0x14e>
20029768:	463a      	mov	r2, r7
2002976a:	4631      	mov	r1, r6
2002976c:	a825      	add	r0, sp, #148	@ 0x94
2002976e:	f7ff fb73 	bl	20028e58 <mbedtls_mpi_inv_mod>
20029772:	4604      	mov	r4, r0
20029774:	b938      	cbnz	r0, 20029786 <mbedtls_rsa_check_privkey+0x14e>
20029776:	f105 0108 	add.w	r1, r5, #8
2002977a:	a801      	add	r0, sp, #4
2002977c:	f7fe fcc6 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20029780:	2800      	cmp	r0, #0
20029782:	d031      	beq.n	200297e8 <mbedtls_rsa_check_privkey+0x1b0>
20029784:	4c2d      	ldr	r4, [pc, #180]	@ (2002983c <mbedtls_rsa_check_privkey+0x204>)
20029786:	a801      	add	r0, sp, #4
20029788:	f7fe fa6f 	bl	20027c6a <mbedtls_mpi_free>
2002978c:	a804      	add	r0, sp, #16
2002978e:	f7fe fa6c 	bl	20027c6a <mbedtls_mpi_free>
20029792:	a807      	add	r0, sp, #28
20029794:	f7fe fa69 	bl	20027c6a <mbedtls_mpi_free>
20029798:	a80a      	add	r0, sp, #40	@ 0x28
2002979a:	f7fe fa66 	bl	20027c6a <mbedtls_mpi_free>
2002979e:	a80d      	add	r0, sp, #52	@ 0x34
200297a0:	f7fe fa63 	bl	20027c6a <mbedtls_mpi_free>
200297a4:	a810      	add	r0, sp, #64	@ 0x40
200297a6:	f7fe fa60 	bl	20027c6a <mbedtls_mpi_free>
200297aa:	a813      	add	r0, sp, #76	@ 0x4c
200297ac:	f7fe fa5d 	bl	20027c6a <mbedtls_mpi_free>
200297b0:	a816      	add	r0, sp, #88	@ 0x58
200297b2:	f7fe fa5a 	bl	20027c6a <mbedtls_mpi_free>
200297b6:	a819      	add	r0, sp, #100	@ 0x64
200297b8:	f7fe fa57 	bl	20027c6a <mbedtls_mpi_free>
200297bc:	a81c      	add	r0, sp, #112	@ 0x70
200297be:	f7fe fa54 	bl	20027c6a <mbedtls_mpi_free>
200297c2:	a81f      	add	r0, sp, #124	@ 0x7c
200297c4:	f7fe fa51 	bl	20027c6a <mbedtls_mpi_free>
200297c8:	a822      	add	r0, sp, #136	@ 0x88
200297ca:	f7fe fa4e 	bl	20027c6a <mbedtls_mpi_free>
200297ce:	a825      	add	r0, sp, #148	@ 0x94
200297d0:	f7fe fa4b 	bl	20027c6a <mbedtls_mpi_free>
200297d4:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
200297d8:	f43f af35 	beq.w	20029646 <mbedtls_rsa_check_privkey+0xe>
200297dc:	2c00      	cmp	r4, #0
200297de:	f43f af33 	beq.w	20029648 <mbedtls_rsa_check_privkey+0x10>
200297e2:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
200297e6:	e72f      	b.n	20029648 <mbedtls_rsa_check_privkey+0x10>
200297e8:	f105 0144 	add.w	r1, r5, #68	@ 0x44
200297ec:	a81f      	add	r0, sp, #124	@ 0x7c
200297ee:	f7fe fc8d 	bl	2002810c <mbedtls_mpi_cmp_mpi>
200297f2:	2800      	cmp	r0, #0
200297f4:	d1c6      	bne.n	20029784 <mbedtls_rsa_check_privkey+0x14c>
200297f6:	f105 0150 	add.w	r1, r5, #80	@ 0x50
200297fa:	a822      	add	r0, sp, #136	@ 0x88
200297fc:	f7fe fc86 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20029800:	2800      	cmp	r0, #0
20029802:	d1bf      	bne.n	20029784 <mbedtls_rsa_check_privkey+0x14c>
20029804:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
20029808:	a825      	add	r0, sp, #148	@ 0x94
2002980a:	f7fe fc7f 	bl	2002810c <mbedtls_mpi_cmp_mpi>
2002980e:	2800      	cmp	r0, #0
20029810:	d1b8      	bne.n	20029784 <mbedtls_rsa_check_privkey+0x14c>
20029812:	2100      	movs	r1, #0
20029814:	a81c      	add	r0, sp, #112	@ 0x70
20029816:	f7fe fcba 	bl	2002818e <mbedtls_mpi_cmp_int>
2002981a:	2800      	cmp	r0, #0
2002981c:	d1b2      	bne.n	20029784 <mbedtls_rsa_check_privkey+0x14c>
2002981e:	2101      	movs	r1, #1
20029820:	a810      	add	r0, sp, #64	@ 0x40
20029822:	f7fe fcb4 	bl	2002818e <mbedtls_mpi_cmp_int>
20029826:	2800      	cmp	r0, #0
20029828:	d1ac      	bne.n	20029784 <mbedtls_rsa_check_privkey+0x14c>
2002982a:	2101      	movs	r1, #1
2002982c:	a813      	add	r0, sp, #76	@ 0x4c
2002982e:	f7fe fcae 	bl	2002818e <mbedtls_mpi_cmp_int>
20029832:	4604      	mov	r4, r0
20029834:	2800      	cmp	r0, #0
20029836:	d1a5      	bne.n	20029784 <mbedtls_rsa_check_privkey+0x14c>
20029838:	e7a5      	b.n	20029786 <mbedtls_rsa_check_privkey+0x14e>
2002983a:	bf00      	nop
2002983c:	ffffbe00 	.word	0xffffbe00

20029840 <mbedtls_rsa_check_pub_priv>:
20029840:	b538      	push	{r3, r4, r5, lr}
20029842:	4605      	mov	r5, r0
20029844:	460c      	mov	r4, r1
20029846:	f7ff fecb 	bl	200295e0 <mbedtls_rsa_check_pubkey>
2002984a:	b918      	cbnz	r0, 20029854 <mbedtls_rsa_check_pub_priv+0x14>
2002984c:	4620      	mov	r0, r4
2002984e:	f7ff fef3 	bl	20029638 <mbedtls_rsa_check_privkey>
20029852:	b108      	cbz	r0, 20029858 <mbedtls_rsa_check_pub_priv+0x18>
20029854:	4809      	ldr	r0, [pc, #36]	@ (2002987c <mbedtls_rsa_check_pub_priv+0x3c>)
20029856:	bd38      	pop	{r3, r4, r5, pc}
20029858:	f104 0108 	add.w	r1, r4, #8
2002985c:	f105 0008 	add.w	r0, r5, #8
20029860:	f7fe fc54 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20029864:	2800      	cmp	r0, #0
20029866:	d1f5      	bne.n	20029854 <mbedtls_rsa_check_pub_priv+0x14>
20029868:	f104 0114 	add.w	r1, r4, #20
2002986c:	f105 0014 	add.w	r0, r5, #20
20029870:	f7fe fc4c 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20029874:	2800      	cmp	r0, #0
20029876:	d0ee      	beq.n	20029856 <mbedtls_rsa_check_pub_priv+0x16>
20029878:	e7ec      	b.n	20029854 <mbedtls_rsa_check_pub_priv+0x14>
2002987a:	bf00      	nop
2002987c:	ffffbe00 	.word	0xffffbe00

20029880 <mbedtls_rsa_public>:
20029880:	b5f0      	push	{r4, r5, r6, r7, lr}
20029882:	460c      	mov	r4, r1
20029884:	4605      	mov	r5, r0
20029886:	b087      	sub	sp, #28
20029888:	a803      	add	r0, sp, #12
2002988a:	4616      	mov	r6, r2
2002988c:	f7fe f9e6 	bl	20027c5c <mbedtls_mpi_init>
20029890:	4621      	mov	r1, r4
20029892:	686a      	ldr	r2, [r5, #4]
20029894:	a803      	add	r0, sp, #12
20029896:	f7fe faa9 	bl	20027dec <mbedtls_mpi_read_binary>
2002989a:	4604      	mov	r4, r0
2002989c:	b9d0      	cbnz	r0, 200298d4 <mbedtls_rsa_public+0x54>
2002989e:	f105 0408 	add.w	r4, r5, #8
200298a2:	4621      	mov	r1, r4
200298a4:	a803      	add	r0, sp, #12
200298a6:	f7fe fc31 	bl	2002810c <mbedtls_mpi_cmp_mpi>
200298aa:	2800      	cmp	r0, #0
200298ac:	da1b      	bge.n	200298e6 <mbedtls_rsa_public+0x66>
200298ae:	f105 0368 	add.w	r3, r5, #104	@ 0x68
200298b2:	a903      	add	r1, sp, #12
200298b4:	686f      	ldr	r7, [r5, #4]
200298b6:	4608      	mov	r0, r1
200298b8:	9300      	str	r3, [sp, #0]
200298ba:	f105 0214 	add.w	r2, r5, #20
200298be:	4623      	mov	r3, r4
200298c0:	f7ff f81b 	bl	200288fa <mbedtls_mpi_exp_mod>
200298c4:	4604      	mov	r4, r0
200298c6:	b928      	cbnz	r0, 200298d4 <mbedtls_rsa_public+0x54>
200298c8:	463a      	mov	r2, r7
200298ca:	4631      	mov	r1, r6
200298cc:	a803      	add	r0, sp, #12
200298ce:	f7fe fac2 	bl	20027e56 <mbedtls_mpi_write_binary>
200298d2:	4604      	mov	r4, r0
200298d4:	a803      	add	r0, sp, #12
200298d6:	f7fe f9c8 	bl	20027c6a <mbedtls_mpi_free>
200298da:	b10c      	cbz	r4, 200298e0 <mbedtls_rsa_public+0x60>
200298dc:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
200298e0:	4620      	mov	r0, r4
200298e2:	b007      	add	sp, #28
200298e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200298e6:	f06f 0403 	mvn.w	r4, #3
200298ea:	e7f3      	b.n	200298d4 <mbedtls_rsa_public+0x54>

200298ec <mbedtls_rsa_private>:
200298ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200298f0:	461e      	mov	r6, r3
200298f2:	6b43      	ldr	r3, [r0, #52]	@ 0x34
200298f4:	4604      	mov	r4, r0
200298f6:	460d      	mov	r5, r1
200298f8:	4617      	mov	r7, r2
200298fa:	b09d      	sub	sp, #116	@ 0x74
200298fc:	2b00      	cmp	r3, #0
200298fe:	f000 8179 	beq.w	20029bf4 <mbedtls_rsa_private+0x308>
20029902:	6c03      	ldr	r3, [r0, #64]	@ 0x40
20029904:	2b00      	cmp	r3, #0
20029906:	f000 8175 	beq.w	20029bf4 <mbedtls_rsa_private+0x308>
2002990a:	6a83      	ldr	r3, [r0, #40]	@ 0x28
2002990c:	2b00      	cmp	r3, #0
2002990e:	f000 8171 	beq.w	20029bf4 <mbedtls_rsa_private+0x308>
20029912:	a804      	add	r0, sp, #16
20029914:	f7fe f9a2 	bl	20027c5c <mbedtls_mpi_init>
20029918:	a807      	add	r0, sp, #28
2002991a:	f7fe f99f 	bl	20027c5c <mbedtls_mpi_init>
2002991e:	a80a      	add	r0, sp, #40	@ 0x28
20029920:	f7fe f99c 	bl	20027c5c <mbedtls_mpi_init>
20029924:	a80d      	add	r0, sp, #52	@ 0x34
20029926:	f7fe f999 	bl	20027c5c <mbedtls_mpi_init>
2002992a:	a810      	add	r0, sp, #64	@ 0x40
2002992c:	f7fe f996 	bl	20027c5c <mbedtls_mpi_init>
20029930:	a813      	add	r0, sp, #76	@ 0x4c
20029932:	f7fe f993 	bl	20027c5c <mbedtls_mpi_init>
20029936:	b12d      	cbz	r5, 20029944 <mbedtls_rsa_private+0x58>
20029938:	a816      	add	r0, sp, #88	@ 0x58
2002993a:	f7fe f98f 	bl	20027c5c <mbedtls_mpi_init>
2002993e:	a819      	add	r0, sp, #100	@ 0x64
20029940:	f7fe f98c 	bl	20027c5c <mbedtls_mpi_init>
20029944:	4631      	mov	r1, r6
20029946:	6862      	ldr	r2, [r4, #4]
20029948:	a804      	add	r0, sp, #16
2002994a:	f7fe fa4f 	bl	20027dec <mbedtls_mpi_read_binary>
2002994e:	4603      	mov	r3, r0
20029950:	2800      	cmp	r0, #0
20029952:	f040 80e0 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
20029956:	f104 0608 	add.w	r6, r4, #8
2002995a:	4631      	mov	r1, r6
2002995c:	a804      	add	r0, sp, #16
2002995e:	f7fe fbd5 	bl	2002810c <mbedtls_mpi_cmp_mpi>
20029962:	2800      	cmp	r0, #0
20029964:	f280 8143 	bge.w	20029bee <mbedtls_rsa_private+0x302>
20029968:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
2002996c:	f104 0950 	add.w	r9, r4, #80	@ 0x50
20029970:	2d00      	cmp	r5, #0
20029972:	f000 8089 	beq.w	20029a88 <mbedtls_rsa_private+0x19c>
20029976:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
2002997a:	2b00      	cmp	r3, #0
2002997c:	f000 80f4 	beq.w	20029b68 <mbedtls_rsa_private+0x27c>
20029980:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029984:	4642      	mov	r2, r8
20029986:	4641      	mov	r1, r8
20029988:	4640      	mov	r0, r8
2002998a:	f7fe fd0f 	bl	200283ac <mbedtls_mpi_mul_mpi>
2002998e:	4603      	mov	r3, r0
20029990:	2800      	cmp	r0, #0
20029992:	f040 80c0 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
20029996:	4632      	mov	r2, r6
20029998:	4641      	mov	r1, r8
2002999a:	4640      	mov	r0, r8
2002999c:	f7fe ff7b 	bl	20028896 <mbedtls_mpi_mod_mpi>
200299a0:	4603      	mov	r3, r0
200299a2:	2800      	cmp	r0, #0
200299a4:	f040 80b7 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
200299a8:	f104 0898 	add.w	r8, r4, #152	@ 0x98
200299ac:	4642      	mov	r2, r8
200299ae:	4641      	mov	r1, r8
200299b0:	4640      	mov	r0, r8
200299b2:	f7fe fcfb 	bl	200283ac <mbedtls_mpi_mul_mpi>
200299b6:	4603      	mov	r3, r0
200299b8:	2800      	cmp	r0, #0
200299ba:	f040 80ac 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
200299be:	4632      	mov	r2, r6
200299c0:	4641      	mov	r1, r8
200299c2:	4640      	mov	r0, r8
200299c4:	f7fe ff67 	bl	20028896 <mbedtls_mpi_mod_mpi>
200299c8:	4603      	mov	r3, r0
200299ca:	2800      	cmp	r0, #0
200299cc:	f040 80a3 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
200299d0:	a904      	add	r1, sp, #16
200299d2:	4608      	mov	r0, r1
200299d4:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
200299d8:	f7fe fce8 	bl	200283ac <mbedtls_mpi_mul_mpi>
200299dc:	4603      	mov	r3, r0
200299de:	2800      	cmp	r0, #0
200299e0:	f040 8099 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
200299e4:	a904      	add	r1, sp, #16
200299e6:	4632      	mov	r2, r6
200299e8:	4608      	mov	r0, r1
200299ea:	f7fe ff54 	bl	20028896 <mbedtls_mpi_mod_mpi>
200299ee:	4603      	mov	r3, r0
200299f0:	2800      	cmp	r0, #0
200299f2:	f040 8090 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
200299f6:	2201      	movs	r2, #1
200299f8:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
200299fc:	a80d      	add	r0, sp, #52	@ 0x34
200299fe:	f7fe fcbf 	bl	20028380 <mbedtls_mpi_sub_int>
20029a02:	4603      	mov	r3, r0
20029a04:	2800      	cmp	r0, #0
20029a06:	f040 8086 	bne.w	20029b16 <mbedtls_rsa_private+0x22a>
20029a0a:	2201      	movs	r2, #1
20029a0c:	f104 0138 	add.w	r1, r4, #56	@ 0x38
20029a10:	a810      	add	r0, sp, #64	@ 0x40
20029a12:	f7fe fcb5 	bl	20028380 <mbedtls_mpi_sub_int>
20029a16:	4603      	mov	r3, r0
20029a18:	2800      	cmp	r0, #0
20029a1a:	d17c      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a1c:	463b      	mov	r3, r7
20029a1e:	462a      	mov	r2, r5
20029a20:	211c      	movs	r1, #28
20029a22:	a813      	add	r0, sp, #76	@ 0x4c
20029a24:	f7ff f9fb 	bl	20028e1e <mbedtls_mpi_fill_random>
20029a28:	4603      	mov	r3, r0
20029a2a:	2800      	cmp	r0, #0
20029a2c:	d173      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a2e:	aa13      	add	r2, sp, #76	@ 0x4c
20029a30:	a90d      	add	r1, sp, #52	@ 0x34
20029a32:	a816      	add	r0, sp, #88	@ 0x58
20029a34:	f7fe fcba 	bl	200283ac <mbedtls_mpi_mul_mpi>
20029a38:	4603      	mov	r3, r0
20029a3a:	2800      	cmp	r0, #0
20029a3c:	d16b      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a3e:	a916      	add	r1, sp, #88	@ 0x58
20029a40:	4652      	mov	r2, sl
20029a42:	4608      	mov	r0, r1
20029a44:	f7fe fc4f 	bl	200282e6 <mbedtls_mpi_add_mpi>
20029a48:	4603      	mov	r3, r0
20029a4a:	2800      	cmp	r0, #0
20029a4c:	d163      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a4e:	463b      	mov	r3, r7
20029a50:	462a      	mov	r2, r5
20029a52:	211c      	movs	r1, #28
20029a54:	a813      	add	r0, sp, #76	@ 0x4c
20029a56:	f7ff f9e2 	bl	20028e1e <mbedtls_mpi_fill_random>
20029a5a:	4603      	mov	r3, r0
20029a5c:	2800      	cmp	r0, #0
20029a5e:	d15a      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a60:	aa13      	add	r2, sp, #76	@ 0x4c
20029a62:	a910      	add	r1, sp, #64	@ 0x40
20029a64:	a819      	add	r0, sp, #100	@ 0x64
20029a66:	f7fe fca1 	bl	200283ac <mbedtls_mpi_mul_mpi>
20029a6a:	4603      	mov	r3, r0
20029a6c:	2800      	cmp	r0, #0
20029a6e:	d152      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a70:	a919      	add	r1, sp, #100	@ 0x64
20029a72:	464a      	mov	r2, r9
20029a74:	4608      	mov	r0, r1
20029a76:	f7fe fc36 	bl	200282e6 <mbedtls_mpi_add_mpi>
20029a7a:	4603      	mov	r3, r0
20029a7c:	2800      	cmp	r0, #0
20029a7e:	d14a      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029a80:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029a84:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029a88:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029a8c:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029a90:	9300      	str	r3, [sp, #0]
20029a92:	4652      	mov	r2, sl
20029a94:	4643      	mov	r3, r8
20029a96:	a904      	add	r1, sp, #16
20029a98:	a807      	add	r0, sp, #28
20029a9a:	f7fe ff2e 	bl	200288fa <mbedtls_mpi_exp_mod>
20029a9e:	4603      	mov	r3, r0
20029aa0:	2800      	cmp	r0, #0
20029aa2:	d138      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029aa4:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029aa8:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029aac:	9300      	str	r3, [sp, #0]
20029aae:	464a      	mov	r2, r9
20029ab0:	463b      	mov	r3, r7
20029ab2:	a904      	add	r1, sp, #16
20029ab4:	a80a      	add	r0, sp, #40	@ 0x28
20029ab6:	f7fe ff20 	bl	200288fa <mbedtls_mpi_exp_mod>
20029aba:	4603      	mov	r3, r0
20029abc:	bb58      	cbnz	r0, 20029b16 <mbedtls_rsa_private+0x22a>
20029abe:	aa0a      	add	r2, sp, #40	@ 0x28
20029ac0:	a907      	add	r1, sp, #28
20029ac2:	a804      	add	r0, sp, #16
20029ac4:	f7fe fc35 	bl	20028332 <mbedtls_mpi_sub_mpi>
20029ac8:	4603      	mov	r3, r0
20029aca:	bb20      	cbnz	r0, 20029b16 <mbedtls_rsa_private+0x22a>
20029acc:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029ad0:	a904      	add	r1, sp, #16
20029ad2:	a807      	add	r0, sp, #28
20029ad4:	f7fe fc6a 	bl	200283ac <mbedtls_mpi_mul_mpi>
20029ad8:	4603      	mov	r3, r0
20029ada:	b9e0      	cbnz	r0, 20029b16 <mbedtls_rsa_private+0x22a>
20029adc:	4642      	mov	r2, r8
20029ade:	a907      	add	r1, sp, #28
20029ae0:	a804      	add	r0, sp, #16
20029ae2:	f7fe fed8 	bl	20028896 <mbedtls_mpi_mod_mpi>
20029ae6:	4603      	mov	r3, r0
20029ae8:	b9a8      	cbnz	r0, 20029b16 <mbedtls_rsa_private+0x22a>
20029aea:	463a      	mov	r2, r7
20029aec:	a904      	add	r1, sp, #16
20029aee:	a807      	add	r0, sp, #28
20029af0:	f7fe fc5c 	bl	200283ac <mbedtls_mpi_mul_mpi>
20029af4:	4603      	mov	r3, r0
20029af6:	b970      	cbnz	r0, 20029b16 <mbedtls_rsa_private+0x22a>
20029af8:	aa07      	add	r2, sp, #28
20029afa:	a90a      	add	r1, sp, #40	@ 0x28
20029afc:	a804      	add	r0, sp, #16
20029afe:	f7fe fbf2 	bl	200282e6 <mbedtls_mpi_add_mpi>
20029b02:	4603      	mov	r3, r0
20029b04:	b938      	cbnz	r0, 20029b16 <mbedtls_rsa_private+0x22a>
20029b06:	2d00      	cmp	r5, #0
20029b08:	d15f      	bne.n	20029bca <mbedtls_rsa_private+0x2de>
20029b0a:	6862      	ldr	r2, [r4, #4]
20029b0c:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029b0e:	a804      	add	r0, sp, #16
20029b10:	f7fe f9a1 	bl	20027e56 <mbedtls_mpi_write_binary>
20029b14:	4603      	mov	r3, r0
20029b16:	a804      	add	r0, sp, #16
20029b18:	9303      	str	r3, [sp, #12]
20029b1a:	f7fe f8a6 	bl	20027c6a <mbedtls_mpi_free>
20029b1e:	a807      	add	r0, sp, #28
20029b20:	f7fe f8a3 	bl	20027c6a <mbedtls_mpi_free>
20029b24:	a80a      	add	r0, sp, #40	@ 0x28
20029b26:	f7fe f8a0 	bl	20027c6a <mbedtls_mpi_free>
20029b2a:	a80d      	add	r0, sp, #52	@ 0x34
20029b2c:	f7fe f89d 	bl	20027c6a <mbedtls_mpi_free>
20029b30:	a810      	add	r0, sp, #64	@ 0x40
20029b32:	f7fe f89a 	bl	20027c6a <mbedtls_mpi_free>
20029b36:	a813      	add	r0, sp, #76	@ 0x4c
20029b38:	f7fe f897 	bl	20027c6a <mbedtls_mpi_free>
20029b3c:	9b03      	ldr	r3, [sp, #12]
20029b3e:	b135      	cbz	r5, 20029b4e <mbedtls_rsa_private+0x262>
20029b40:	a816      	add	r0, sp, #88	@ 0x58
20029b42:	f7fe f892 	bl	20027c6a <mbedtls_mpi_free>
20029b46:	a819      	add	r0, sp, #100	@ 0x64
20029b48:	f7fe f88f 	bl	20027c6a <mbedtls_mpi_free>
20029b4c:	9b03      	ldr	r3, [sp, #12]
20029b4e:	b10b      	cbz	r3, 20029b54 <mbedtls_rsa_private+0x268>
20029b50:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029b54:	4618      	mov	r0, r3
20029b56:	b01d      	add	sp, #116	@ 0x74
20029b58:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029b5c:	9b03      	ldr	r3, [sp, #12]
20029b5e:	3b01      	subs	r3, #1
20029b60:	9303      	str	r3, [sp, #12]
20029b62:	d107      	bne.n	20029b74 <mbedtls_rsa_private+0x288>
20029b64:	4b24      	ldr	r3, [pc, #144]	@ (20029bf8 <mbedtls_rsa_private+0x30c>)
20029b66:	e7d6      	b.n	20029b16 <mbedtls_rsa_private+0x22a>
20029b68:	230b      	movs	r3, #11
20029b6a:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029b6e:	9303      	str	r3, [sp, #12]
20029b70:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029b74:	6861      	ldr	r1, [r4, #4]
20029b76:	463b      	mov	r3, r7
20029b78:	462a      	mov	r2, r5
20029b7a:	4658      	mov	r0, fp
20029b7c:	3901      	subs	r1, #1
20029b7e:	f7ff f94e 	bl	20028e1e <mbedtls_mpi_fill_random>
20029b82:	4603      	mov	r3, r0
20029b84:	2800      	cmp	r0, #0
20029b86:	d1c6      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029b88:	4632      	mov	r2, r6
20029b8a:	4659      	mov	r1, fp
20029b8c:	4640      	mov	r0, r8
20029b8e:	f7ff f8c8 	bl	20028d22 <mbedtls_mpi_gcd>
20029b92:	4603      	mov	r3, r0
20029b94:	2800      	cmp	r0, #0
20029b96:	d1be      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029b98:	2101      	movs	r1, #1
20029b9a:	4640      	mov	r0, r8
20029b9c:	f7fe faf7 	bl	2002818e <mbedtls_mpi_cmp_int>
20029ba0:	2800      	cmp	r0, #0
20029ba2:	d1db      	bne.n	20029b5c <mbedtls_rsa_private+0x270>
20029ba4:	4632      	mov	r2, r6
20029ba6:	4659      	mov	r1, fp
20029ba8:	4640      	mov	r0, r8
20029baa:	f7ff f955 	bl	20028e58 <mbedtls_mpi_inv_mod>
20029bae:	4603      	mov	r3, r0
20029bb0:	2800      	cmp	r0, #0
20029bb2:	d1b0      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029bb4:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029bb8:	9300      	str	r3, [sp, #0]
20029bba:	4641      	mov	r1, r8
20029bbc:	4633      	mov	r3, r6
20029bbe:	4640      	mov	r0, r8
20029bc0:	f104 0214 	add.w	r2, r4, #20
20029bc4:	f7fe fe99 	bl	200288fa <mbedtls_mpi_exp_mod>
20029bc8:	e6fe      	b.n	200299c8 <mbedtls_rsa_private+0xdc>
20029bca:	a904      	add	r1, sp, #16
20029bcc:	4608      	mov	r0, r1
20029bce:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029bd2:	f7fe fbeb 	bl	200283ac <mbedtls_mpi_mul_mpi>
20029bd6:	4603      	mov	r3, r0
20029bd8:	2800      	cmp	r0, #0
20029bda:	d19c      	bne.n	20029b16 <mbedtls_rsa_private+0x22a>
20029bdc:	a904      	add	r1, sp, #16
20029bde:	4632      	mov	r2, r6
20029be0:	4608      	mov	r0, r1
20029be2:	f7fe fe58 	bl	20028896 <mbedtls_mpi_mod_mpi>
20029be6:	4603      	mov	r3, r0
20029be8:	2800      	cmp	r0, #0
20029bea:	d08e      	beq.n	20029b0a <mbedtls_rsa_private+0x21e>
20029bec:	e793      	b.n	20029b16 <mbedtls_rsa_private+0x22a>
20029bee:	f06f 0303 	mvn.w	r3, #3
20029bf2:	e790      	b.n	20029b16 <mbedtls_rsa_private+0x22a>
20029bf4:	4b01      	ldr	r3, [pc, #4]	@ (20029bfc <mbedtls_rsa_private+0x310>)
20029bf6:	e7ad      	b.n	20029b54 <mbedtls_rsa_private+0x268>
20029bf8:	ffffbb80 	.word	0xffffbb80
20029bfc:	ffffbf80 	.word	0xffffbf80

20029c00 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029c00:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029c04:	4698      	mov	r8, r3
20029c06:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029c0a:	f1b8 0f01 	cmp.w	r8, #1
20029c0e:	4606      	mov	r6, r0
20029c10:	460f      	mov	r7, r1
20029c12:	4691      	mov	r9, r2
20029c14:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029c16:	d103      	bne.n	20029c20 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029c18:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029c1c:	2a00      	cmp	r2, #0
20029c1e:	d162      	bne.n	20029ce6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c20:	2f00      	cmp	r7, #0
20029c22:	d060      	beq.n	20029ce6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c24:	2b00      	cmp	r3, #0
20029c26:	d05e      	beq.n	20029ce6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c28:	2d00      	cmp	r5, #0
20029c2a:	d05c      	beq.n	20029ce6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c2c:	f11a 0f0c 	cmn.w	sl, #12
20029c30:	6874      	ldr	r4, [r6, #4]
20029c32:	d858      	bhi.n	20029ce6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c34:	f10a 020b 	add.w	r2, sl, #11
20029c38:	42a2      	cmp	r2, r4
20029c3a:	d854      	bhi.n	20029ce6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029c3c:	4629      	mov	r1, r5
20029c3e:	2200      	movs	r2, #0
20029c40:	eba4 040a 	sub.w	r4, r4, sl
20029c44:	3c03      	subs	r4, #3
20029c46:	f801 2b02 	strb.w	r2, [r1], #2
20029c4a:	f1b8 0f00 	cmp.w	r8, #0
20029c4e:	d131      	bne.n	20029cb4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029c50:	2202      	movs	r2, #2
20029c52:	4414      	add	r4, r2
20029c54:	706a      	strb	r2, [r5, #1]
20029c56:	442c      	add	r4, r5
20029c58:	42a1      	cmp	r1, r4
20029c5a:	d112      	bne.n	20029c82 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029c5c:	2200      	movs	r2, #0
20029c5e:	4620      	mov	r0, r4
20029c60:	4619      	mov	r1, r3
20029c62:	f800 2b01 	strb.w	r2, [r0], #1
20029c66:	4652      	mov	r2, sl
20029c68:	f000 fdaa 	bl	2002a7c0 <memcpy>
20029c6c:	f1b8 0f00 	cmp.w	r8, #0
20029c70:	d12f      	bne.n	20029cd2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029c72:	462a      	mov	r2, r5
20029c74:	4629      	mov	r1, r5
20029c76:	4630      	mov	r0, r6
20029c78:	b003      	add	sp, #12
20029c7a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029c7e:	f7ff bdff 	b.w	20029880 <mbedtls_rsa_public>
20029c82:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029c86:	2201      	movs	r2, #1
20029c88:	4648      	mov	r0, r9
20029c8a:	9301      	str	r3, [sp, #4]
20029c8c:	9100      	str	r1, [sp, #0]
20029c8e:	47b8      	blx	r7
20029c90:	9900      	ldr	r1, [sp, #0]
20029c92:	9b01      	ldr	r3, [sp, #4]
20029c94:	780a      	ldrb	r2, [r1, #0]
20029c96:	b94a      	cbnz	r2, 20029cac <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029c98:	f1bb 0b01 	subs.w	fp, fp, #1
20029c9c:	d001      	beq.n	20029ca2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029c9e:	2800      	cmp	r0, #0
20029ca0:	d0f1      	beq.n	20029c86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029ca2:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029ca6:	b003      	add	sp, #12
20029ca8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029cac:	2800      	cmp	r0, #0
20029cae:	d1f8      	bne.n	20029ca2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029cb0:	3101      	adds	r1, #1
20029cb2:	e7d1      	b.n	20029c58 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029cb4:	2001      	movs	r0, #1
20029cb6:	462a      	mov	r2, r5
20029cb8:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029cbc:	f802 0f01 	strb.w	r0, [r2, #1]!
20029cc0:	1820      	adds	r0, r4, r0
20029cc2:	4428      	add	r0, r5
20029cc4:	4282      	cmp	r2, r0
20029cc6:	d101      	bne.n	20029ccc <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029cc8:	440c      	add	r4, r1
20029cca:	e7c7      	b.n	20029c5c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029ccc:	f802 cf01 	strb.w	ip, [r2, #1]!
20029cd0:	e7f8      	b.n	20029cc4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029cd2:	462b      	mov	r3, r5
20029cd4:	464a      	mov	r2, r9
20029cd6:	4639      	mov	r1, r7
20029cd8:	4630      	mov	r0, r6
20029cda:	950c      	str	r5, [sp, #48]	@ 0x30
20029cdc:	b003      	add	sp, #12
20029cde:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029ce2:	f7ff be03 	b.w	200298ec <mbedtls_rsa_private>
20029ce6:	4801      	ldr	r0, [pc, #4]	@ (20029cec <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029ce8:	e7dd      	b.n	20029ca6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029cea:	bf00      	nop
20029cec:	ffffbf80 	.word	0xffffbf80

20029cf0 <mbedtls_rsa_pkcs1_encrypt>:
20029cf0:	b410      	push	{r4}
20029cf2:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029cf6:	b91c      	cbnz	r4, 20029d00 <mbedtls_rsa_pkcs1_encrypt+0x10>
20029cf8:	f85d 4b04 	ldr.w	r4, [sp], #4
20029cfc:	f7ff bf80 	b.w	20029c00 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029d00:	4801      	ldr	r0, [pc, #4]	@ (20029d08 <mbedtls_rsa_pkcs1_encrypt+0x18>)
20029d02:	f85d 4b04 	ldr.w	r4, [sp], #4
20029d06:	4770      	bx	lr
20029d08:	ffffbf00 	.word	0xffffbf00

20029d0c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029d0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029d10:	4698      	mov	r8, r3
20029d12:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029d16:	f1b8 0f01 	cmp.w	r8, #1
20029d1a:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029d1e:	d103      	bne.n	20029d28 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029d20:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029d24:	2c00      	cmp	r4, #0
20029d26:	d17c      	bne.n	20029e22 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029d28:	6845      	ldr	r5, [r0, #4]
20029d2a:	f1a5 0410 	sub.w	r4, r5, #16
20029d2e:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029d32:	d876      	bhi.n	20029e22 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029d34:	ae02      	add	r6, sp, #8
20029d36:	f1b8 0f00 	cmp.w	r8, #0
20029d3a:	d153      	bne.n	20029de4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029d3c:	4632      	mov	r2, r6
20029d3e:	4619      	mov	r1, r3
20029d40:	f7ff fd9e 	bl	20029880 <mbedtls_rsa_public>
20029d44:	4604      	mov	r4, r0
20029d46:	2800      	cmp	r0, #0
20029d48:	d140      	bne.n	20029dcc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029d4a:	f1b8 0f01 	cmp.w	r8, #1
20029d4e:	7831      	ldrb	r1, [r6, #0]
20029d50:	7872      	ldrb	r2, [r6, #1]
20029d52:	f1a5 0703 	sub.w	r7, r5, #3
20029d56:	d149      	bne.n	20029dec <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029d58:	f082 0202 	eor.w	r2, r2, #2
20029d5c:	ea41 0302 	orr.w	r3, r1, r2
20029d60:	4684      	mov	ip, r0
20029d62:	4686      	mov	lr, r0
20029d64:	4602      	mov	r2, r0
20029d66:	f10d 0109 	add.w	r1, sp, #9
20029d6a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
20029d6e:	f10e 0e01 	add.w	lr, lr, #1
20029d72:	f1c0 0800 	rsb	r8, r0, #0
20029d76:	ea40 0008 	orr.w	r0, r0, r8
20029d7a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029d7e:	f080 0001 	eor.w	r0, r0, #1
20029d82:	ea4c 0c00 	orr.w	ip, ip, r0
20029d86:	f1cc 0000 	rsb	r0, ip, #0
20029d8a:	ea4c 0000 	orr.w	r0, ip, r0
20029d8e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029d92:	f080 0001 	eor.w	r0, r0, #1
20029d96:	45be      	cmp	lr, r7
20029d98:	4402      	add	r2, r0
20029d9a:	d3e6      	bcc.n	20029d6a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
20029d9c:	f10d 000a 	add.w	r0, sp, #10
20029da0:	1881      	adds	r1, r0, r2
20029da2:	5c80      	ldrb	r0, [r0, r2]
20029da4:	3101      	adds	r1, #1
20029da6:	4303      	orrs	r3, r0
20029da8:	2a07      	cmp	r2, #7
20029daa:	bf98      	it	ls
20029dac:	f043 0301 	orrls.w	r3, r3, #1
20029db0:	bb9b      	cbnz	r3, 20029e1a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
20029db2:	1b8b      	subs	r3, r1, r6
20029db4:	1aea      	subs	r2, r5, r3
20029db6:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
20029dba:	429a      	cmp	r2, r3
20029dbc:	d82f      	bhi.n	20029e1e <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
20029dbe:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
20029dc2:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
20029dc6:	601a      	str	r2, [r3, #0]
20029dc8:	f000 fcfa 	bl	2002a7c0 <memcpy>
20029dcc:	2300      	movs	r3, #0
20029dce:	461a      	mov	r2, r3
20029dd0:	54f2      	strb	r2, [r6, r3]
20029dd2:	3301      	adds	r3, #1
20029dd4:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
20029dd8:	d1fa      	bne.n	20029dd0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
20029dda:	4620      	mov	r0, r4
20029ddc:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
20029de0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20029de4:	9600      	str	r6, [sp, #0]
20029de6:	f7ff fd81 	bl	200298ec <mbedtls_rsa_private>
20029dea:	e7ab      	b.n	20029d44 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
20029dec:	f082 0201 	eor.w	r2, r2, #1
20029df0:	ea41 0302 	orr.w	r3, r1, r2
20029df4:	4684      	mov	ip, r0
20029df6:	4602      	mov	r2, r0
20029df8:	f10d 0109 	add.w	r1, sp, #9
20029dfc:	f811 ef01 	ldrb.w	lr, [r1, #1]!
20029e00:	3001      	adds	r0, #1
20029e02:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
20029e06:	bf18      	it	ne
20029e08:	f04c 0c01 	orrne.w	ip, ip, #1
20029e0c:	42b8      	cmp	r0, r7
20029e0e:	f08c 0e01 	eor.w	lr, ip, #1
20029e12:	fa52 f28e 	uxtab	r2, r2, lr
20029e16:	d3f1      	bcc.n	20029dfc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
20029e18:	e7c0      	b.n	20029d9c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
20029e1a:	4c03      	ldr	r4, [pc, #12]	@ (20029e28 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
20029e1c:	e7d6      	b.n	20029dcc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e1e:	4c03      	ldr	r4, [pc, #12]	@ (20029e2c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
20029e20:	e7d4      	b.n	20029dcc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e22:	4c03      	ldr	r4, [pc, #12]	@ (20029e30 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
20029e24:	e7d9      	b.n	20029dda <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
20029e26:	bf00      	nop
20029e28:	ffffbf00 	.word	0xffffbf00
20029e2c:	ffffbc00 	.word	0xffffbc00
20029e30:	ffffbf80 	.word	0xffffbf80

20029e34 <mbedtls_rsa_pkcs1_decrypt>:
20029e34:	b410      	push	{r4}
20029e36:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029e3a:	b91c      	cbnz	r4, 20029e44 <mbedtls_rsa_pkcs1_decrypt+0x10>
20029e3c:	f85d 4b04 	ldr.w	r4, [sp], #4
20029e40:	f7ff bf64 	b.w	20029d0c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
20029e44:	4801      	ldr	r0, [pc, #4]	@ (20029e4c <mbedtls_rsa_pkcs1_decrypt+0x18>)
20029e46:	f85d 4b04 	ldr.w	r4, [sp], #4
20029e4a:	4770      	bx	lr
20029e4c:	ffffbf00 	.word	0xffffbf00

20029e50 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
20029e50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029e54:	4692      	mov	sl, r2
20029e56:	2200      	movs	r2, #0
20029e58:	b089      	sub	sp, #36	@ 0x24
20029e5a:	2b01      	cmp	r3, #1
20029e5c:	4604      	mov	r4, r0
20029e5e:	461f      	mov	r7, r3
20029e60:	e9cd 2206 	strd	r2, r2, [sp, #24]
20029e64:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
20029e68:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
20029e6c:	9e15      	ldr	r6, [sp, #84]	@ 0x54
20029e6e:	9102      	str	r1, [sp, #8]
20029e70:	d107      	bne.n	20029e82 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029e72:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029e76:	b122      	cbz	r2, 20029e82 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029e78:	4d59      	ldr	r5, [pc, #356]	@ (20029fe0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
20029e7a:	4628      	mov	r0, r5
20029e7c:	b009      	add	sp, #36	@ 0x24
20029e7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029e82:	f8d4 b004 	ldr.w	fp, [r4, #4]
20029e86:	f1ab 0503 	sub.w	r5, fp, #3
20029e8a:	f1b8 0f00 	cmp.w	r8, #0
20029e8e:	d014      	beq.n	20029eba <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
20029e90:	4640      	mov	r0, r8
20029e92:	f7fb ff75 	bl	20025d80 <mbedtls_md_info_from_type>
20029e96:	4681      	mov	r9, r0
20029e98:	2800      	cmp	r0, #0
20029e9a:	d0ed      	beq.n	20029e78 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029e9c:	4640      	mov	r0, r8
20029e9e:	aa06      	add	r2, sp, #24
20029ea0:	a907      	add	r1, sp, #28
20029ea2:	f7ff f9d3 	bl	2002924c <mbedtls_oid_get_oid_by_md>
20029ea6:	2800      	cmp	r0, #0
20029ea8:	d1e6      	bne.n	20029e78 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029eaa:	9a06      	ldr	r2, [sp, #24]
20029eac:	4648      	mov	r0, r9
20029eae:	1aaa      	subs	r2, r5, r2
20029eb0:	f1a2 050a 	sub.w	r5, r2, #10
20029eb4:	f7fb ff70 	bl	20025d98 <mbedtls_md_get_size>
20029eb8:	4681      	mov	r9, r0
20029eba:	eba5 0209 	sub.w	r2, r5, r9
20029ebe:	2a07      	cmp	r2, #7
20029ec0:	d9da      	bls.n	20029e78 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029ec2:	4593      	cmp	fp, r2
20029ec4:	d3d8      	bcc.n	20029e78 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029ec6:	46b3      	mov	fp, r6
20029ec8:	2500      	movs	r5, #0
20029eca:	2101      	movs	r1, #1
20029ecc:	f80b 5b02 	strb.w	r5, [fp], #2
20029ed0:	4658      	mov	r0, fp
20029ed2:	7071      	strb	r1, [r6, #1]
20029ed4:	21ff      	movs	r1, #255	@ 0xff
20029ed6:	9203      	str	r2, [sp, #12]
20029ed8:	f000 fc58 	bl	2002a78c <memset>
20029edc:	9a03      	ldr	r2, [sp, #12]
20029ede:	eb0b 0002 	add.w	r0, fp, r2
20029ee2:	f80b 5002 	strb.w	r5, [fp, r2]
20029ee6:	f1b8 0f00 	cmp.w	r8, #0
20029eea:	d10c      	bne.n	20029f06 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
20029eec:	464a      	mov	r2, r9
20029eee:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029ef0:	3001      	adds	r0, #1
20029ef2:	f000 fc65 	bl	2002a7c0 <memcpy>
20029ef6:	bb8f      	cbnz	r7, 20029f5c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
20029ef8:	4632      	mov	r2, r6
20029efa:	4631      	mov	r1, r6
20029efc:	4620      	mov	r0, r4
20029efe:	f7ff fcbf 	bl	20029880 <mbedtls_rsa_public>
20029f02:	4605      	mov	r5, r0
20029f04:	e7b9      	b.n	20029e7a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f06:	2130      	movs	r1, #48	@ 0x30
20029f08:	7041      	strb	r1, [r0, #1]
20029f0a:	9a06      	ldr	r2, [sp, #24]
20029f0c:	70c1      	strb	r1, [r0, #3]
20029f0e:	3208      	adds	r2, #8
20029f10:	fa52 f289 	uxtab	r2, r2, r9
20029f14:	7082      	strb	r2, [r0, #2]
20029f16:	9a06      	ldr	r2, [sp, #24]
20029f18:	f100 0807 	add.w	r8, r0, #7
20029f1c:	b2d1      	uxtb	r1, r2
20029f1e:	f101 0c04 	add.w	ip, r1, #4
20029f22:	f880 c004 	strb.w	ip, [r0, #4]
20029f26:	f04f 0c06 	mov.w	ip, #6
20029f2a:	7181      	strb	r1, [r0, #6]
20029f2c:	f880 c005 	strb.w	ip, [r0, #5]
20029f30:	9907      	ldr	r1, [sp, #28]
20029f32:	4640      	mov	r0, r8
20029f34:	9203      	str	r2, [sp, #12]
20029f36:	f000 fc43 	bl	2002a7c0 <memcpy>
20029f3a:	2105      	movs	r1, #5
20029f3c:	9a03      	ldr	r2, [sp, #12]
20029f3e:	fa5f fb89 	uxtb.w	fp, r9
20029f42:	eb08 0002 	add.w	r0, r8, r2
20029f46:	f808 1002 	strb.w	r1, [r8, r2]
20029f4a:	2204      	movs	r2, #4
20029f4c:	7045      	strb	r5, [r0, #1]
20029f4e:	7082      	strb	r2, [r0, #2]
20029f50:	f880 b003 	strb.w	fp, [r0, #3]
20029f54:	464a      	mov	r2, r9
20029f56:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029f58:	3004      	adds	r0, #4
20029f5a:	e7ca      	b.n	20029ef2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
20029f5c:	6865      	ldr	r5, [r4, #4]
20029f5e:	2001      	movs	r0, #1
20029f60:	4629      	mov	r1, r5
20029f62:	f000 fb31 	bl	2002a5c8 <calloc>
20029f66:	4607      	mov	r7, r0
20029f68:	b140      	cbz	r0, 20029f7c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
20029f6a:	4629      	mov	r1, r5
20029f6c:	2001      	movs	r0, #1
20029f6e:	f000 fb2b 	bl	2002a5c8 <calloc>
20029f72:	4680      	mov	r8, r0
20029f74:	b928      	cbnz	r0, 20029f82 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
20029f76:	4638      	mov	r0, r7
20029f78:	f000 fb42 	bl	2002a600 <free>
20029f7c:	f06f 050f 	mvn.w	r5, #15
20029f80:	e77b      	b.n	20029e7a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029f82:	4633      	mov	r3, r6
20029f84:	4652      	mov	r2, sl
20029f86:	4620      	mov	r0, r4
20029f88:	9902      	ldr	r1, [sp, #8]
20029f8a:	9700      	str	r7, [sp, #0]
20029f8c:	f7ff fcae 	bl	200298ec <mbedtls_rsa_private>
20029f90:	4605      	mov	r5, r0
20029f92:	b9a0      	cbnz	r0, 20029fbe <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029f94:	4642      	mov	r2, r8
20029f96:	4639      	mov	r1, r7
20029f98:	4620      	mov	r0, r4
20029f9a:	f7ff fc71 	bl	20029880 <mbedtls_rsa_public>
20029f9e:	4605      	mov	r5, r0
20029fa0:	b968      	cbnz	r0, 20029fbe <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029fa2:	4601      	mov	r1, r0
20029fa4:	4603      	mov	r3, r0
20029fa6:	6862      	ldr	r2, [r4, #4]
20029fa8:	429a      	cmp	r2, r3
20029faa:	d10f      	bne.n	20029fcc <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
20029fac:	f88d 1017 	strb.w	r1, [sp, #23]
20029fb0:	f89d 3017 	ldrb.w	r3, [sp, #23]
20029fb4:	b98b      	cbnz	r3, 20029fda <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
20029fb6:	4639      	mov	r1, r7
20029fb8:	4630      	mov	r0, r6
20029fba:	f000 fc01 	bl	2002a7c0 <memcpy>
20029fbe:	4638      	mov	r0, r7
20029fc0:	f000 fb1e 	bl	2002a600 <free>
20029fc4:	4640      	mov	r0, r8
20029fc6:	f000 fb1b 	bl	2002a600 <free>
20029fca:	e756      	b.n	20029e7a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029fcc:	f818 0003 	ldrb.w	r0, [r8, r3]
20029fd0:	5cf4      	ldrb	r4, [r6, r3]
20029fd2:	3301      	adds	r3, #1
20029fd4:	4060      	eors	r0, r4
20029fd6:	4301      	orrs	r1, r0
20029fd8:	e7e6      	b.n	20029fa8 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
20029fda:	4d02      	ldr	r5, [pc, #8]	@ (20029fe4 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
20029fdc:	e7ef      	b.n	20029fbe <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
20029fde:	bf00      	nop
20029fe0:	ffffbf80 	.word	0xffffbf80
20029fe4:	ffffbd00 	.word	0xffffbd00

20029fe8 <mbedtls_rsa_pkcs1_sign>:
20029fe8:	b430      	push	{r4, r5}
20029fea:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
20029fee:	f89d 4008 	ldrb.w	r4, [sp, #8]
20029ff2:	b91d      	cbnz	r5, 20029ffc <mbedtls_rsa_pkcs1_sign+0x14>
20029ff4:	9402      	str	r4, [sp, #8]
20029ff6:	bc30      	pop	{r4, r5}
20029ff8:	f7ff bf2a 	b.w	20029e50 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
20029ffc:	4801      	ldr	r0, [pc, #4]	@ (2002a004 <mbedtls_rsa_pkcs1_sign+0x1c>)
20029ffe:	bc30      	pop	{r4, r5}
2002a000:	4770      	bx	lr
2002a002:	bf00      	nop
2002a004:	ffffbf00 	.word	0xffffbf00

2002a008 <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
2002a008:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a00c:	461c      	mov	r4, r3
2002a00e:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
2002a012:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
2002a016:	2c01      	cmp	r4, #1
2002a018:	9303      	str	r3, [sp, #12]
2002a01a:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
2002a01e:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
2002a022:	d108      	bne.n	2002a036 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a024:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a028:	b12d      	cbz	r5, 2002a036 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a02a:	4d60      	ldr	r5, [pc, #384]	@ (2002a1ac <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
2002a02c:	4628      	mov	r0, r5
2002a02e:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
2002a032:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a036:	6846      	ldr	r6, [r0, #4]
2002a038:	f1a6 0510 	sub.w	r5, r6, #16
2002a03c:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
2002a040:	d8f3      	bhi.n	2002a02a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a042:	af0a      	add	r7, sp, #40	@ 0x28
2002a044:	b954      	cbnz	r4, 2002a05c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
2002a046:	463a      	mov	r2, r7
2002a048:	4619      	mov	r1, r3
2002a04a:	f7ff fc19 	bl	20029880 <mbedtls_rsa_public>
2002a04e:	4605      	mov	r5, r0
2002a050:	2800      	cmp	r0, #0
2002a052:	d1eb      	bne.n	2002a02c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a054:	783b      	ldrb	r3, [r7, #0]
2002a056:	b12b      	cbz	r3, 2002a064 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
2002a058:	4d55      	ldr	r5, [pc, #340]	@ (2002a1b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
2002a05a:	e7e7      	b.n	2002a02c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a05c:	9700      	str	r7, [sp, #0]
2002a05e:	f7ff fc45 	bl	200298ec <mbedtls_rsa_private>
2002a062:	e7f4      	b.n	2002a04e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
2002a064:	787b      	ldrb	r3, [r7, #1]
2002a066:	ac06      	add	r4, sp, #24
2002a068:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
2002a06c:	2b01      	cmp	r3, #1
2002a06e:	6020      	str	r0, [r4, #0]
2002a070:	d1f2      	bne.n	2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a072:	1e73      	subs	r3, r6, #1
2002a074:	443b      	add	r3, r7
2002a076:	7802      	ldrb	r2, [r0, #0]
2002a078:	b992      	cbnz	r2, 2002a0a0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
2002a07a:	3001      	adds	r0, #1
2002a07c:	1bc7      	subs	r7, r0, r7
2002a07e:	2f0a      	cmp	r7, #10
2002a080:	6020      	str	r0, [r4, #0]
2002a082:	dde9      	ble.n	2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a084:	1bf6      	subs	r6, r6, r7
2002a086:	4546      	cmp	r6, r8
2002a088:	d112      	bne.n	2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a08a:	9b03      	ldr	r3, [sp, #12]
2002a08c:	b983      	cbnz	r3, 2002a0b0 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a08e:	4642      	mov	r2, r8
2002a090:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a094:	f000 fb6a 	bl	2002a76c <memcmp>
2002a098:	2800      	cmp	r0, #0
2002a09a:	d0c7      	beq.n	2002a02c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a09c:	4d45      	ldr	r5, [pc, #276]	@ (2002a1b4 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a09e:	e7c5      	b.n	2002a02c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a0a0:	4298      	cmp	r0, r3
2002a0a2:	d2d9      	bcs.n	2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a0a4:	2aff      	cmp	r2, #255	@ 0xff
2002a0a6:	f100 0001 	add.w	r0, r0, #1
2002a0aa:	d1d5      	bne.n	2002a058 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a0ac:	6020      	str	r0, [r4, #0]
2002a0ae:	e7e2      	b.n	2002a076 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a0b0:	9803      	ldr	r0, [sp, #12]
2002a0b2:	f7fb fe65 	bl	20025d80 <mbedtls_md_info_from_type>
2002a0b6:	2800      	cmp	r0, #0
2002a0b8:	d0b7      	beq.n	2002a02a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a0ba:	f7fb fe6d 	bl	20025d98 <mbedtls_md_get_size>
2002a0be:	f8d4 a000 	ldr.w	sl, [r4]
2002a0c2:	af05      	add	r7, sp, #20
2002a0c4:	eb0a 0806 	add.w	r8, sl, r6
2002a0c8:	4681      	mov	r9, r0
2002a0ca:	2330      	movs	r3, #48	@ 0x30
2002a0cc:	463a      	mov	r2, r7
2002a0ce:	4641      	mov	r1, r8
2002a0d0:	4620      	mov	r0, r4
2002a0d2:	f7fd fb95 	bl	20027800 <mbedtls_asn1_get_tag>
2002a0d6:	2800      	cmp	r0, #0
2002a0d8:	d1e0      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0da:	f8d4 b000 	ldr.w	fp, [r4]
2002a0de:	f10a 0a02 	add.w	sl, sl, #2
2002a0e2:	45d3      	cmp	fp, sl
2002a0e4:	d1da      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0e6:	683b      	ldr	r3, [r7, #0]
2002a0e8:	3302      	adds	r3, #2
2002a0ea:	42b3      	cmp	r3, r6
2002a0ec:	d1d6      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0ee:	2330      	movs	r3, #48	@ 0x30
2002a0f0:	463a      	mov	r2, r7
2002a0f2:	4641      	mov	r1, r8
2002a0f4:	4620      	mov	r0, r4
2002a0f6:	f7fd fb83 	bl	20027800 <mbedtls_asn1_get_tag>
2002a0fa:	2800      	cmp	r0, #0
2002a0fc:	d1ce      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a0fe:	f8d4 a000 	ldr.w	sl, [r4]
2002a102:	f10b 0b02 	add.w	fp, fp, #2
2002a106:	45da      	cmp	sl, fp
2002a108:	d1c8      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a10a:	683b      	ldr	r3, [r7, #0]
2002a10c:	3306      	adds	r3, #6
2002a10e:	444b      	add	r3, r9
2002a110:	42b3      	cmp	r3, r6
2002a112:	d1c3      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a114:	2306      	movs	r3, #6
2002a116:	4641      	mov	r1, r8
2002a118:	4620      	mov	r0, r4
2002a11a:	aa08      	add	r2, sp, #32
2002a11c:	ae07      	add	r6, sp, #28
2002a11e:	f7fd fb6f 	bl	20027800 <mbedtls_asn1_get_tag>
2002a122:	2800      	cmp	r0, #0
2002a124:	d1ba      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a126:	6823      	ldr	r3, [r4, #0]
2002a128:	f10a 0a02 	add.w	sl, sl, #2
2002a12c:	4553      	cmp	r3, sl
2002a12e:	d1b5      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a130:	9a08      	ldr	r2, [sp, #32]
2002a132:	f10d 0a13 	add.w	sl, sp, #19
2002a136:	9309      	str	r3, [sp, #36]	@ 0x24
2002a138:	4651      	mov	r1, sl
2002a13a:	4413      	add	r3, r2
2002a13c:	4630      	mov	r0, r6
2002a13e:	6023      	str	r3, [r4, #0]
2002a140:	f7ff f86a 	bl	20029218 <mbedtls_oid_get_md_alg>
2002a144:	2800      	cmp	r0, #0
2002a146:	d1a9      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a148:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a14c:	9a03      	ldr	r2, [sp, #12]
2002a14e:	4293      	cmp	r3, r2
2002a150:	d1a4      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a152:	2305      	movs	r3, #5
2002a154:	463a      	mov	r2, r7
2002a156:	4641      	mov	r1, r8
2002a158:	4620      	mov	r0, r4
2002a15a:	f8d4 a000 	ldr.w	sl, [r4]
2002a15e:	f7fd fb4f 	bl	20027800 <mbedtls_asn1_get_tag>
2002a162:	2800      	cmp	r0, #0
2002a164:	d19a      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a166:	6826      	ldr	r6, [r4, #0]
2002a168:	f10a 0a02 	add.w	sl, sl, #2
2002a16c:	4556      	cmp	r6, sl
2002a16e:	d195      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a170:	2304      	movs	r3, #4
2002a172:	463a      	mov	r2, r7
2002a174:	4641      	mov	r1, r8
2002a176:	4620      	mov	r0, r4
2002a178:	f7fd fb42 	bl	20027800 <mbedtls_asn1_get_tag>
2002a17c:	2800      	cmp	r0, #0
2002a17e:	d18d      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a180:	6824      	ldr	r4, [r4, #0]
2002a182:	3602      	adds	r6, #2
2002a184:	42b4      	cmp	r4, r6
2002a186:	d189      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a188:	683b      	ldr	r3, [r7, #0]
2002a18a:	454b      	cmp	r3, r9
2002a18c:	d186      	bne.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a18e:	464a      	mov	r2, r9
2002a190:	4620      	mov	r0, r4
2002a192:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a196:	f000 fae9 	bl	2002a76c <memcmp>
2002a19a:	2800      	cmp	r0, #0
2002a19c:	f47f af7e 	bne.w	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1a0:	444c      	add	r4, r9
2002a1a2:	45a0      	cmp	r8, r4
2002a1a4:	f43f af42 	beq.w	2002a02c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a1a8:	e778      	b.n	2002a09c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1aa:	bf00      	nop
2002a1ac:	ffffbf80 	.word	0xffffbf80
2002a1b0:	ffffbf00 	.word	0xffffbf00
2002a1b4:	ffffbc80 	.word	0xffffbc80

2002a1b8 <mbedtls_rsa_pkcs1_verify>:
2002a1b8:	b430      	push	{r4, r5}
2002a1ba:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a1be:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a1c2:	b91d      	cbnz	r5, 2002a1cc <mbedtls_rsa_pkcs1_verify+0x14>
2002a1c4:	9402      	str	r4, [sp, #8]
2002a1c6:	bc30      	pop	{r4, r5}
2002a1c8:	f7ff bf1e 	b.w	2002a008 <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a1cc:	4801      	ldr	r0, [pc, #4]	@ (2002a1d4 <mbedtls_rsa_pkcs1_verify+0x1c>)
2002a1ce:	bc30      	pop	{r4, r5}
2002a1d0:	4770      	bx	lr
2002a1d2:	bf00      	nop
2002a1d4:	ffffbf00 	.word	0xffffbf00

2002a1d8 <mbedtls_rsa_free>:
2002a1d8:	b510      	push	{r4, lr}
2002a1da:	4604      	mov	r4, r0
2002a1dc:	308c      	adds	r0, #140	@ 0x8c
2002a1de:	f7fd fd44 	bl	20027c6a <mbedtls_mpi_free>
2002a1e2:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a1e6:	f7fd fd40 	bl	20027c6a <mbedtls_mpi_free>
2002a1ea:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a1ee:	f7fd fd3c 	bl	20027c6a <mbedtls_mpi_free>
2002a1f2:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a1f6:	f7fd fd38 	bl	20027c6a <mbedtls_mpi_free>
2002a1fa:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a1fe:	f7fd fd34 	bl	20027c6a <mbedtls_mpi_free>
2002a202:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a206:	f7fd fd30 	bl	20027c6a <mbedtls_mpi_free>
2002a20a:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a20e:	f7fd fd2c 	bl	20027c6a <mbedtls_mpi_free>
2002a212:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a216:	f7fd fd28 	bl	20027c6a <mbedtls_mpi_free>
2002a21a:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a21e:	f7fd fd24 	bl	20027c6a <mbedtls_mpi_free>
2002a222:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a226:	f7fd fd20 	bl	20027c6a <mbedtls_mpi_free>
2002a22a:	f104 0020 	add.w	r0, r4, #32
2002a22e:	f7fd fd1c 	bl	20027c6a <mbedtls_mpi_free>
2002a232:	f104 0014 	add.w	r0, r4, #20
2002a236:	f7fd fd18 	bl	20027c6a <mbedtls_mpi_free>
2002a23a:	f104 0008 	add.w	r0, r4, #8
2002a23e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a242:	f7fd bd12 	b.w	20027c6a <mbedtls_mpi_free>
	...

2002a248 <__aeabi_uldivmod>:
2002a248:	b953      	cbnz	r3, 2002a260 <__aeabi_uldivmod+0x18>
2002a24a:	b94a      	cbnz	r2, 2002a260 <__aeabi_uldivmod+0x18>
2002a24c:	2900      	cmp	r1, #0
2002a24e:	bf08      	it	eq
2002a250:	2800      	cmpeq	r0, #0
2002a252:	bf1c      	itt	ne
2002a254:	f04f 31ff 	movne.w	r1, #4294967295
2002a258:	f04f 30ff 	movne.w	r0, #4294967295
2002a25c:	f000 b9b2 	b.w	2002a5c4 <__aeabi_idiv0>
2002a260:	f1ad 0c08 	sub.w	ip, sp, #8
2002a264:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a268:	f000 f806 	bl	2002a278 <__udivmoddi4>
2002a26c:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a270:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a274:	b004      	add	sp, #16
2002a276:	4770      	bx	lr

2002a278 <__udivmoddi4>:
2002a278:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a27c:	468c      	mov	ip, r1
2002a27e:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a280:	4604      	mov	r4, r0
2002a282:	460f      	mov	r7, r1
2002a284:	2b00      	cmp	r3, #0
2002a286:	d148      	bne.n	2002a31a <__udivmoddi4+0xa2>
2002a288:	428a      	cmp	r2, r1
2002a28a:	4615      	mov	r5, r2
2002a28c:	d95e      	bls.n	2002a34c <__udivmoddi4+0xd4>
2002a28e:	fab2 f382 	clz	r3, r2
2002a292:	b13b      	cbz	r3, 2002a2a4 <__udivmoddi4+0x2c>
2002a294:	f1c3 0220 	rsb	r2, r3, #32
2002a298:	409f      	lsls	r7, r3
2002a29a:	409d      	lsls	r5, r3
2002a29c:	409c      	lsls	r4, r3
2002a29e:	fa20 f202 	lsr.w	r2, r0, r2
2002a2a2:	4317      	orrs	r7, r2
2002a2a4:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a2a8:	fa1f fc85 	uxth.w	ip, r5
2002a2ac:	0c22      	lsrs	r2, r4, #16
2002a2ae:	fbb7 f1fe 	udiv	r1, r7, lr
2002a2b2:	fb0e 7711 	mls	r7, lr, r1, r7
2002a2b6:	fb01 f00c 	mul.w	r0, r1, ip
2002a2ba:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a2be:	4290      	cmp	r0, r2
2002a2c0:	d907      	bls.n	2002a2d2 <__udivmoddi4+0x5a>
2002a2c2:	18aa      	adds	r2, r5, r2
2002a2c4:	f101 37ff 	add.w	r7, r1, #4294967295
2002a2c8:	d202      	bcs.n	2002a2d0 <__udivmoddi4+0x58>
2002a2ca:	4290      	cmp	r0, r2
2002a2cc:	f200 8158 	bhi.w	2002a580 <__udivmoddi4+0x308>
2002a2d0:	4639      	mov	r1, r7
2002a2d2:	1a12      	subs	r2, r2, r0
2002a2d4:	b2a4      	uxth	r4, r4
2002a2d6:	fbb2 f0fe 	udiv	r0, r2, lr
2002a2da:	fb0e 2210 	mls	r2, lr, r0, r2
2002a2de:	fb00 fc0c 	mul.w	ip, r0, ip
2002a2e2:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a2e6:	45a4      	cmp	ip, r4
2002a2e8:	d90b      	bls.n	2002a302 <__udivmoddi4+0x8a>
2002a2ea:	192c      	adds	r4, r5, r4
2002a2ec:	f100 32ff 	add.w	r2, r0, #4294967295
2002a2f0:	bf2c      	ite	cs
2002a2f2:	2701      	movcs	r7, #1
2002a2f4:	2700      	movcc	r7, #0
2002a2f6:	45a4      	cmp	ip, r4
2002a2f8:	d902      	bls.n	2002a300 <__udivmoddi4+0x88>
2002a2fa:	2f00      	cmp	r7, #0
2002a2fc:	f000 8143 	beq.w	2002a586 <__udivmoddi4+0x30e>
2002a300:	4610      	mov	r0, r2
2002a302:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a306:	eba4 040c 	sub.w	r4, r4, ip
2002a30a:	2100      	movs	r1, #0
2002a30c:	b11e      	cbz	r6, 2002a316 <__udivmoddi4+0x9e>
2002a30e:	40dc      	lsrs	r4, r3
2002a310:	2300      	movs	r3, #0
2002a312:	e9c6 4300 	strd	r4, r3, [r6]
2002a316:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a31a:	428b      	cmp	r3, r1
2002a31c:	d906      	bls.n	2002a32c <__udivmoddi4+0xb4>
2002a31e:	b10e      	cbz	r6, 2002a324 <__udivmoddi4+0xac>
2002a320:	e9c6 0100 	strd	r0, r1, [r6]
2002a324:	2100      	movs	r1, #0
2002a326:	4608      	mov	r0, r1
2002a328:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a32c:	fab3 f183 	clz	r1, r3
2002a330:	2900      	cmp	r1, #0
2002a332:	d151      	bne.n	2002a3d8 <__udivmoddi4+0x160>
2002a334:	4563      	cmp	r3, ip
2002a336:	f0c0 8116 	bcc.w	2002a566 <__udivmoddi4+0x2ee>
2002a33a:	4282      	cmp	r2, r0
2002a33c:	f240 8113 	bls.w	2002a566 <__udivmoddi4+0x2ee>
2002a340:	4608      	mov	r0, r1
2002a342:	2e00      	cmp	r6, #0
2002a344:	d0e7      	beq.n	2002a316 <__udivmoddi4+0x9e>
2002a346:	e9c6 4700 	strd	r4, r7, [r6]
2002a34a:	e7e4      	b.n	2002a316 <__udivmoddi4+0x9e>
2002a34c:	2a00      	cmp	r2, #0
2002a34e:	f000 80af 	beq.w	2002a4b0 <__udivmoddi4+0x238>
2002a352:	fab2 f382 	clz	r3, r2
2002a356:	2b00      	cmp	r3, #0
2002a358:	f040 80c2 	bne.w	2002a4e0 <__udivmoddi4+0x268>
2002a35c:	1a8a      	subs	r2, r1, r2
2002a35e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a362:	b2af      	uxth	r7, r5
2002a364:	2101      	movs	r1, #1
2002a366:	0c20      	lsrs	r0, r4, #16
2002a368:	fbb2 fcfe 	udiv	ip, r2, lr
2002a36c:	fb0e 221c 	mls	r2, lr, ip, r2
2002a370:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a374:	fb07 f00c 	mul.w	r0, r7, ip
2002a378:	4290      	cmp	r0, r2
2002a37a:	d90e      	bls.n	2002a39a <__udivmoddi4+0x122>
2002a37c:	18aa      	adds	r2, r5, r2
2002a37e:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a382:	bf2c      	ite	cs
2002a384:	f04f 0901 	movcs.w	r9, #1
2002a388:	f04f 0900 	movcc.w	r9, #0
2002a38c:	4290      	cmp	r0, r2
2002a38e:	d903      	bls.n	2002a398 <__udivmoddi4+0x120>
2002a390:	f1b9 0f00 	cmp.w	r9, #0
2002a394:	f000 80f0 	beq.w	2002a578 <__udivmoddi4+0x300>
2002a398:	46c4      	mov	ip, r8
2002a39a:	1a12      	subs	r2, r2, r0
2002a39c:	b2a4      	uxth	r4, r4
2002a39e:	fbb2 f0fe 	udiv	r0, r2, lr
2002a3a2:	fb0e 2210 	mls	r2, lr, r0, r2
2002a3a6:	fb00 f707 	mul.w	r7, r0, r7
2002a3aa:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a3ae:	42a7      	cmp	r7, r4
2002a3b0:	d90e      	bls.n	2002a3d0 <__udivmoddi4+0x158>
2002a3b2:	192c      	adds	r4, r5, r4
2002a3b4:	f100 32ff 	add.w	r2, r0, #4294967295
2002a3b8:	bf2c      	ite	cs
2002a3ba:	f04f 0e01 	movcs.w	lr, #1
2002a3be:	f04f 0e00 	movcc.w	lr, #0
2002a3c2:	42a7      	cmp	r7, r4
2002a3c4:	d903      	bls.n	2002a3ce <__udivmoddi4+0x156>
2002a3c6:	f1be 0f00 	cmp.w	lr, #0
2002a3ca:	f000 80d2 	beq.w	2002a572 <__udivmoddi4+0x2fa>
2002a3ce:	4610      	mov	r0, r2
2002a3d0:	1be4      	subs	r4, r4, r7
2002a3d2:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a3d6:	e799      	b.n	2002a30c <__udivmoddi4+0x94>
2002a3d8:	f1c1 0520 	rsb	r5, r1, #32
2002a3dc:	408b      	lsls	r3, r1
2002a3de:	fa0c f401 	lsl.w	r4, ip, r1
2002a3e2:	fa00 f901 	lsl.w	r9, r0, r1
2002a3e6:	fa22 f705 	lsr.w	r7, r2, r5
2002a3ea:	fa2c fc05 	lsr.w	ip, ip, r5
2002a3ee:	408a      	lsls	r2, r1
2002a3f0:	431f      	orrs	r7, r3
2002a3f2:	fa20 f305 	lsr.w	r3, r0, r5
2002a3f6:	0c38      	lsrs	r0, r7, #16
2002a3f8:	4323      	orrs	r3, r4
2002a3fa:	fa1f fe87 	uxth.w	lr, r7
2002a3fe:	0c1c      	lsrs	r4, r3, #16
2002a400:	fbbc f8f0 	udiv	r8, ip, r0
2002a404:	fb00 cc18 	mls	ip, r0, r8, ip
2002a408:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a40c:	fb08 fc0e 	mul.w	ip, r8, lr
2002a410:	45a4      	cmp	ip, r4
2002a412:	d90e      	bls.n	2002a432 <__udivmoddi4+0x1ba>
2002a414:	193c      	adds	r4, r7, r4
2002a416:	f108 3aff 	add.w	sl, r8, #4294967295
2002a41a:	bf2c      	ite	cs
2002a41c:	f04f 0b01 	movcs.w	fp, #1
2002a420:	f04f 0b00 	movcc.w	fp, #0
2002a424:	45a4      	cmp	ip, r4
2002a426:	d903      	bls.n	2002a430 <__udivmoddi4+0x1b8>
2002a428:	f1bb 0f00 	cmp.w	fp, #0
2002a42c:	f000 80b8 	beq.w	2002a5a0 <__udivmoddi4+0x328>
2002a430:	46d0      	mov	r8, sl
2002a432:	eba4 040c 	sub.w	r4, r4, ip
2002a436:	fa1f fc83 	uxth.w	ip, r3
2002a43a:	fbb4 f3f0 	udiv	r3, r4, r0
2002a43e:	fb00 4413 	mls	r4, r0, r3, r4
2002a442:	fb03 fe0e 	mul.w	lr, r3, lr
2002a446:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a44a:	45a6      	cmp	lr, r4
2002a44c:	d90e      	bls.n	2002a46c <__udivmoddi4+0x1f4>
2002a44e:	193c      	adds	r4, r7, r4
2002a450:	f103 30ff 	add.w	r0, r3, #4294967295
2002a454:	bf2c      	ite	cs
2002a456:	f04f 0c01 	movcs.w	ip, #1
2002a45a:	f04f 0c00 	movcc.w	ip, #0
2002a45e:	45a6      	cmp	lr, r4
2002a460:	d903      	bls.n	2002a46a <__udivmoddi4+0x1f2>
2002a462:	f1bc 0f00 	cmp.w	ip, #0
2002a466:	f000 809f 	beq.w	2002a5a8 <__udivmoddi4+0x330>
2002a46a:	4603      	mov	r3, r0
2002a46c:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a470:	eba4 040e 	sub.w	r4, r4, lr
2002a474:	fba0 ec02 	umull	lr, ip, r0, r2
2002a478:	4564      	cmp	r4, ip
2002a47a:	4673      	mov	r3, lr
2002a47c:	46e0      	mov	r8, ip
2002a47e:	d302      	bcc.n	2002a486 <__udivmoddi4+0x20e>
2002a480:	d107      	bne.n	2002a492 <__udivmoddi4+0x21a>
2002a482:	45f1      	cmp	r9, lr
2002a484:	d205      	bcs.n	2002a492 <__udivmoddi4+0x21a>
2002a486:	ebbe 0302 	subs.w	r3, lr, r2
2002a48a:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a48e:	3801      	subs	r0, #1
2002a490:	46e0      	mov	r8, ip
2002a492:	b15e      	cbz	r6, 2002a4ac <__udivmoddi4+0x234>
2002a494:	ebb9 0203 	subs.w	r2, r9, r3
2002a498:	eb64 0408 	sbc.w	r4, r4, r8
2002a49c:	fa04 f505 	lsl.w	r5, r4, r5
2002a4a0:	fa22 f301 	lsr.w	r3, r2, r1
2002a4a4:	40cc      	lsrs	r4, r1
2002a4a6:	431d      	orrs	r5, r3
2002a4a8:	e9c6 5400 	strd	r5, r4, [r6]
2002a4ac:	2100      	movs	r1, #0
2002a4ae:	e732      	b.n	2002a316 <__udivmoddi4+0x9e>
2002a4b0:	0842      	lsrs	r2, r0, #1
2002a4b2:	462f      	mov	r7, r5
2002a4b4:	084b      	lsrs	r3, r1, #1
2002a4b6:	46ac      	mov	ip, r5
2002a4b8:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a4bc:	46ae      	mov	lr, r5
2002a4be:	07c4      	lsls	r4, r0, #31
2002a4c0:	0c11      	lsrs	r1, r2, #16
2002a4c2:	b292      	uxth	r2, r2
2002a4c4:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a4c8:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a4cc:	fbb1 f1f5 	udiv	r1, r1, r5
2002a4d0:	fbb3 f0f5 	udiv	r0, r3, r5
2002a4d4:	231f      	movs	r3, #31
2002a4d6:	eba2 020c 	sub.w	r2, r2, ip
2002a4da:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a4de:	e742      	b.n	2002a366 <__udivmoddi4+0xee>
2002a4e0:	409d      	lsls	r5, r3
2002a4e2:	f1c3 0220 	rsb	r2, r3, #32
2002a4e6:	4099      	lsls	r1, r3
2002a4e8:	409c      	lsls	r4, r3
2002a4ea:	fa2c fc02 	lsr.w	ip, ip, r2
2002a4ee:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a4f2:	fa20 f202 	lsr.w	r2, r0, r2
2002a4f6:	b2af      	uxth	r7, r5
2002a4f8:	fbbc f8fe 	udiv	r8, ip, lr
2002a4fc:	430a      	orrs	r2, r1
2002a4fe:	fb0e cc18 	mls	ip, lr, r8, ip
2002a502:	0c11      	lsrs	r1, r2, #16
2002a504:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a508:	fb08 fc07 	mul.w	ip, r8, r7
2002a50c:	458c      	cmp	ip, r1
2002a50e:	d950      	bls.n	2002a5b2 <__udivmoddi4+0x33a>
2002a510:	1869      	adds	r1, r5, r1
2002a512:	f108 30ff 	add.w	r0, r8, #4294967295
2002a516:	bf2c      	ite	cs
2002a518:	f04f 0901 	movcs.w	r9, #1
2002a51c:	f04f 0900 	movcc.w	r9, #0
2002a520:	458c      	cmp	ip, r1
2002a522:	d902      	bls.n	2002a52a <__udivmoddi4+0x2b2>
2002a524:	f1b9 0f00 	cmp.w	r9, #0
2002a528:	d030      	beq.n	2002a58c <__udivmoddi4+0x314>
2002a52a:	eba1 010c 	sub.w	r1, r1, ip
2002a52e:	fbb1 f8fe 	udiv	r8, r1, lr
2002a532:	fb08 fc07 	mul.w	ip, r8, r7
2002a536:	fb0e 1118 	mls	r1, lr, r8, r1
2002a53a:	b292      	uxth	r2, r2
2002a53c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a540:	4562      	cmp	r2, ip
2002a542:	d234      	bcs.n	2002a5ae <__udivmoddi4+0x336>
2002a544:	18aa      	adds	r2, r5, r2
2002a546:	f108 31ff 	add.w	r1, r8, #4294967295
2002a54a:	bf2c      	ite	cs
2002a54c:	f04f 0901 	movcs.w	r9, #1
2002a550:	f04f 0900 	movcc.w	r9, #0
2002a554:	4562      	cmp	r2, ip
2002a556:	d2be      	bcs.n	2002a4d6 <__udivmoddi4+0x25e>
2002a558:	f1b9 0f00 	cmp.w	r9, #0
2002a55c:	d1bb      	bne.n	2002a4d6 <__udivmoddi4+0x25e>
2002a55e:	f1a8 0102 	sub.w	r1, r8, #2
2002a562:	442a      	add	r2, r5
2002a564:	e7b7      	b.n	2002a4d6 <__udivmoddi4+0x25e>
2002a566:	1a84      	subs	r4, r0, r2
2002a568:	eb6c 0203 	sbc.w	r2, ip, r3
2002a56c:	2001      	movs	r0, #1
2002a56e:	4617      	mov	r7, r2
2002a570:	e6e7      	b.n	2002a342 <__udivmoddi4+0xca>
2002a572:	442c      	add	r4, r5
2002a574:	3802      	subs	r0, #2
2002a576:	e72b      	b.n	2002a3d0 <__udivmoddi4+0x158>
2002a578:	f1ac 0c02 	sub.w	ip, ip, #2
2002a57c:	442a      	add	r2, r5
2002a57e:	e70c      	b.n	2002a39a <__udivmoddi4+0x122>
2002a580:	3902      	subs	r1, #2
2002a582:	442a      	add	r2, r5
2002a584:	e6a5      	b.n	2002a2d2 <__udivmoddi4+0x5a>
2002a586:	442c      	add	r4, r5
2002a588:	3802      	subs	r0, #2
2002a58a:	e6ba      	b.n	2002a302 <__udivmoddi4+0x8a>
2002a58c:	eba5 0c0c 	sub.w	ip, r5, ip
2002a590:	f1a8 0002 	sub.w	r0, r8, #2
2002a594:	4461      	add	r1, ip
2002a596:	fbb1 f8fe 	udiv	r8, r1, lr
2002a59a:	fb08 fc07 	mul.w	ip, r8, r7
2002a59e:	e7ca      	b.n	2002a536 <__udivmoddi4+0x2be>
2002a5a0:	f1a8 0802 	sub.w	r8, r8, #2
2002a5a4:	443c      	add	r4, r7
2002a5a6:	e744      	b.n	2002a432 <__udivmoddi4+0x1ba>
2002a5a8:	3b02      	subs	r3, #2
2002a5aa:	443c      	add	r4, r7
2002a5ac:	e75e      	b.n	2002a46c <__udivmoddi4+0x1f4>
2002a5ae:	4641      	mov	r1, r8
2002a5b0:	e791      	b.n	2002a4d6 <__udivmoddi4+0x25e>
2002a5b2:	eba1 010c 	sub.w	r1, r1, ip
2002a5b6:	4640      	mov	r0, r8
2002a5b8:	fbb1 f8fe 	udiv	r8, r1, lr
2002a5bc:	fb08 fc07 	mul.w	ip, r8, r7
2002a5c0:	e7b9      	b.n	2002a536 <__udivmoddi4+0x2be>
2002a5c2:	bf00      	nop

2002a5c4 <__aeabi_idiv0>:
2002a5c4:	4770      	bx	lr
2002a5c6:	bf00      	nop

2002a5c8 <calloc>:
2002a5c8:	4b02      	ldr	r3, [pc, #8]	@ (2002a5d4 <calloc+0xc>)
2002a5ca:	460a      	mov	r2, r1
2002a5cc:	4601      	mov	r1, r0
2002a5ce:	6818      	ldr	r0, [r3, #0]
2002a5d0:	f000 b802 	b.w	2002a5d8 <_calloc_r>
2002a5d4:	20044948 	.word	0x20044948

2002a5d8 <_calloc_r>:
2002a5d8:	b570      	push	{r4, r5, r6, lr}
2002a5da:	fba1 5402 	umull	r5, r4, r1, r2
2002a5de:	b934      	cbnz	r4, 2002a5ee <_calloc_r+0x16>
2002a5e0:	4629      	mov	r1, r5
2002a5e2:	f000 f837 	bl	2002a654 <_malloc_r>
2002a5e6:	4606      	mov	r6, r0
2002a5e8:	b928      	cbnz	r0, 2002a5f6 <_calloc_r+0x1e>
2002a5ea:	4630      	mov	r0, r6
2002a5ec:	bd70      	pop	{r4, r5, r6, pc}
2002a5ee:	220c      	movs	r2, #12
2002a5f0:	2600      	movs	r6, #0
2002a5f2:	6002      	str	r2, [r0, #0]
2002a5f4:	e7f9      	b.n	2002a5ea <_calloc_r+0x12>
2002a5f6:	462a      	mov	r2, r5
2002a5f8:	4621      	mov	r1, r4
2002a5fa:	f000 f8c7 	bl	2002a78c <memset>
2002a5fe:	e7f4      	b.n	2002a5ea <_calloc_r+0x12>

2002a600 <free>:
2002a600:	4b02      	ldr	r3, [pc, #8]	@ (2002a60c <free+0xc>)
2002a602:	4601      	mov	r1, r0
2002a604:	6818      	ldr	r0, [r3, #0]
2002a606:	f000 b8e9 	b.w	2002a7dc <_free_r>
2002a60a:	bf00      	nop
2002a60c:	20044948 	.word	0x20044948

2002a610 <sbrk_aligned>:
2002a610:	b570      	push	{r4, r5, r6, lr}
2002a612:	4e0f      	ldr	r6, [pc, #60]	@ (2002a650 <sbrk_aligned+0x40>)
2002a614:	460c      	mov	r4, r1
2002a616:	4605      	mov	r5, r0
2002a618:	6831      	ldr	r1, [r6, #0]
2002a61a:	b911      	cbnz	r1, 2002a622 <sbrk_aligned+0x12>
2002a61c:	f000 f8be 	bl	2002a79c <_sbrk_r>
2002a620:	6030      	str	r0, [r6, #0]
2002a622:	4621      	mov	r1, r4
2002a624:	4628      	mov	r0, r5
2002a626:	f000 f8b9 	bl	2002a79c <_sbrk_r>
2002a62a:	1c43      	adds	r3, r0, #1
2002a62c:	d103      	bne.n	2002a636 <sbrk_aligned+0x26>
2002a62e:	f04f 34ff 	mov.w	r4, #4294967295
2002a632:	4620      	mov	r0, r4
2002a634:	bd70      	pop	{r4, r5, r6, pc}
2002a636:	1cc4      	adds	r4, r0, #3
2002a638:	f024 0403 	bic.w	r4, r4, #3
2002a63c:	42a0      	cmp	r0, r4
2002a63e:	d0f8      	beq.n	2002a632 <sbrk_aligned+0x22>
2002a640:	1a21      	subs	r1, r4, r0
2002a642:	4628      	mov	r0, r5
2002a644:	f000 f8aa 	bl	2002a79c <_sbrk_r>
2002a648:	3001      	adds	r0, #1
2002a64a:	d1f2      	bne.n	2002a632 <sbrk_aligned+0x22>
2002a64c:	e7ef      	b.n	2002a62e <sbrk_aligned+0x1e>
2002a64e:	bf00      	nop
2002a650:	2004d008 	.word	0x2004d008

2002a654 <_malloc_r>:
2002a654:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a658:	1ccd      	adds	r5, r1, #3
2002a65a:	4606      	mov	r6, r0
2002a65c:	f025 0503 	bic.w	r5, r5, #3
2002a660:	3508      	adds	r5, #8
2002a662:	2d0c      	cmp	r5, #12
2002a664:	bf38      	it	cc
2002a666:	250c      	movcc	r5, #12
2002a668:	2d00      	cmp	r5, #0
2002a66a:	db01      	blt.n	2002a670 <_malloc_r+0x1c>
2002a66c:	42a9      	cmp	r1, r5
2002a66e:	d904      	bls.n	2002a67a <_malloc_r+0x26>
2002a670:	230c      	movs	r3, #12
2002a672:	6033      	str	r3, [r6, #0]
2002a674:	2000      	movs	r0, #0
2002a676:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a67a:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a750 <_malloc_r+0xfc>
2002a67e:	f000 f869 	bl	2002a754 <__malloc_lock>
2002a682:	f8d8 3000 	ldr.w	r3, [r8]
2002a686:	461c      	mov	r4, r3
2002a688:	bb44      	cbnz	r4, 2002a6dc <_malloc_r+0x88>
2002a68a:	4629      	mov	r1, r5
2002a68c:	4630      	mov	r0, r6
2002a68e:	f7ff ffbf 	bl	2002a610 <sbrk_aligned>
2002a692:	1c43      	adds	r3, r0, #1
2002a694:	4604      	mov	r4, r0
2002a696:	d158      	bne.n	2002a74a <_malloc_r+0xf6>
2002a698:	f8d8 4000 	ldr.w	r4, [r8]
2002a69c:	4627      	mov	r7, r4
2002a69e:	2f00      	cmp	r7, #0
2002a6a0:	d143      	bne.n	2002a72a <_malloc_r+0xd6>
2002a6a2:	2c00      	cmp	r4, #0
2002a6a4:	d04b      	beq.n	2002a73e <_malloc_r+0xea>
2002a6a6:	6823      	ldr	r3, [r4, #0]
2002a6a8:	4639      	mov	r1, r7
2002a6aa:	4630      	mov	r0, r6
2002a6ac:	eb04 0903 	add.w	r9, r4, r3
2002a6b0:	f000 f874 	bl	2002a79c <_sbrk_r>
2002a6b4:	4581      	cmp	r9, r0
2002a6b6:	d142      	bne.n	2002a73e <_malloc_r+0xea>
2002a6b8:	6821      	ldr	r1, [r4, #0]
2002a6ba:	4630      	mov	r0, r6
2002a6bc:	1a6d      	subs	r5, r5, r1
2002a6be:	4629      	mov	r1, r5
2002a6c0:	f7ff ffa6 	bl	2002a610 <sbrk_aligned>
2002a6c4:	3001      	adds	r0, #1
2002a6c6:	d03a      	beq.n	2002a73e <_malloc_r+0xea>
2002a6c8:	6823      	ldr	r3, [r4, #0]
2002a6ca:	442b      	add	r3, r5
2002a6cc:	6023      	str	r3, [r4, #0]
2002a6ce:	f8d8 3000 	ldr.w	r3, [r8]
2002a6d2:	685a      	ldr	r2, [r3, #4]
2002a6d4:	bb62      	cbnz	r2, 2002a730 <_malloc_r+0xdc>
2002a6d6:	f8c8 7000 	str.w	r7, [r8]
2002a6da:	e00f      	b.n	2002a6fc <_malloc_r+0xa8>
2002a6dc:	6822      	ldr	r2, [r4, #0]
2002a6de:	1b52      	subs	r2, r2, r5
2002a6e0:	d420      	bmi.n	2002a724 <_malloc_r+0xd0>
2002a6e2:	2a0b      	cmp	r2, #11
2002a6e4:	d917      	bls.n	2002a716 <_malloc_r+0xc2>
2002a6e6:	1961      	adds	r1, r4, r5
2002a6e8:	42a3      	cmp	r3, r4
2002a6ea:	6025      	str	r5, [r4, #0]
2002a6ec:	bf18      	it	ne
2002a6ee:	6059      	strne	r1, [r3, #4]
2002a6f0:	6863      	ldr	r3, [r4, #4]
2002a6f2:	bf08      	it	eq
2002a6f4:	f8c8 1000 	streq.w	r1, [r8]
2002a6f8:	5162      	str	r2, [r4, r5]
2002a6fa:	604b      	str	r3, [r1, #4]
2002a6fc:	4630      	mov	r0, r6
2002a6fe:	f000 f82f 	bl	2002a760 <__malloc_unlock>
2002a702:	f104 000b 	add.w	r0, r4, #11
2002a706:	1d23      	adds	r3, r4, #4
2002a708:	f020 0007 	bic.w	r0, r0, #7
2002a70c:	1ac2      	subs	r2, r0, r3
2002a70e:	bf1c      	itt	ne
2002a710:	1a1b      	subne	r3, r3, r0
2002a712:	50a3      	strne	r3, [r4, r2]
2002a714:	e7af      	b.n	2002a676 <_malloc_r+0x22>
2002a716:	6862      	ldr	r2, [r4, #4]
2002a718:	42a3      	cmp	r3, r4
2002a71a:	bf0c      	ite	eq
2002a71c:	f8c8 2000 	streq.w	r2, [r8]
2002a720:	605a      	strne	r2, [r3, #4]
2002a722:	e7eb      	b.n	2002a6fc <_malloc_r+0xa8>
2002a724:	4623      	mov	r3, r4
2002a726:	6864      	ldr	r4, [r4, #4]
2002a728:	e7ae      	b.n	2002a688 <_malloc_r+0x34>
2002a72a:	463c      	mov	r4, r7
2002a72c:	687f      	ldr	r7, [r7, #4]
2002a72e:	e7b6      	b.n	2002a69e <_malloc_r+0x4a>
2002a730:	461a      	mov	r2, r3
2002a732:	685b      	ldr	r3, [r3, #4]
2002a734:	42a3      	cmp	r3, r4
2002a736:	d1fb      	bne.n	2002a730 <_malloc_r+0xdc>
2002a738:	2300      	movs	r3, #0
2002a73a:	6053      	str	r3, [r2, #4]
2002a73c:	e7de      	b.n	2002a6fc <_malloc_r+0xa8>
2002a73e:	230c      	movs	r3, #12
2002a740:	4630      	mov	r0, r6
2002a742:	6033      	str	r3, [r6, #0]
2002a744:	f000 f80c 	bl	2002a760 <__malloc_unlock>
2002a748:	e794      	b.n	2002a674 <_malloc_r+0x20>
2002a74a:	6005      	str	r5, [r0, #0]
2002a74c:	e7d6      	b.n	2002a6fc <_malloc_r+0xa8>
2002a74e:	bf00      	nop
2002a750:	2004d00c 	.word	0x2004d00c

2002a754 <__malloc_lock>:
2002a754:	4801      	ldr	r0, [pc, #4]	@ (2002a75c <__malloc_lock+0x8>)
2002a756:	f000 b831 	b.w	2002a7bc <__retarget_lock_acquire_recursive>
2002a75a:	bf00      	nop
2002a75c:	2004d14c 	.word	0x2004d14c

2002a760 <__malloc_unlock>:
2002a760:	4801      	ldr	r0, [pc, #4]	@ (2002a768 <__malloc_unlock+0x8>)
2002a762:	f000 b82c 	b.w	2002a7be <__retarget_lock_release_recursive>
2002a766:	bf00      	nop
2002a768:	2004d14c 	.word	0x2004d14c

2002a76c <memcmp>:
2002a76c:	3901      	subs	r1, #1
2002a76e:	4402      	add	r2, r0
2002a770:	b510      	push	{r4, lr}
2002a772:	4290      	cmp	r0, r2
2002a774:	d101      	bne.n	2002a77a <memcmp+0xe>
2002a776:	2000      	movs	r0, #0
2002a778:	e005      	b.n	2002a786 <memcmp+0x1a>
2002a77a:	7803      	ldrb	r3, [r0, #0]
2002a77c:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002a780:	42a3      	cmp	r3, r4
2002a782:	d001      	beq.n	2002a788 <memcmp+0x1c>
2002a784:	1b18      	subs	r0, r3, r4
2002a786:	bd10      	pop	{r4, pc}
2002a788:	3001      	adds	r0, #1
2002a78a:	e7f2      	b.n	2002a772 <memcmp+0x6>

2002a78c <memset>:
2002a78c:	4402      	add	r2, r0
2002a78e:	4603      	mov	r3, r0
2002a790:	4293      	cmp	r3, r2
2002a792:	d100      	bne.n	2002a796 <memset+0xa>
2002a794:	4770      	bx	lr
2002a796:	f803 1b01 	strb.w	r1, [r3], #1
2002a79a:	e7f9      	b.n	2002a790 <memset+0x4>

2002a79c <_sbrk_r>:
2002a79c:	b538      	push	{r3, r4, r5, lr}
2002a79e:	2300      	movs	r3, #0
2002a7a0:	4d05      	ldr	r5, [pc, #20]	@ (2002a7b8 <_sbrk_r+0x1c>)
2002a7a2:	4604      	mov	r4, r0
2002a7a4:	4608      	mov	r0, r1
2002a7a6:	602b      	str	r3, [r5, #0]
2002a7a8:	f000 f862 	bl	2002a870 <_sbrk>
2002a7ac:	1c43      	adds	r3, r0, #1
2002a7ae:	d102      	bne.n	2002a7b6 <_sbrk_r+0x1a>
2002a7b0:	682b      	ldr	r3, [r5, #0]
2002a7b2:	b103      	cbz	r3, 2002a7b6 <_sbrk_r+0x1a>
2002a7b4:	6023      	str	r3, [r4, #0]
2002a7b6:	bd38      	pop	{r3, r4, r5, pc}
2002a7b8:	2004d148 	.word	0x2004d148

2002a7bc <__retarget_lock_acquire_recursive>:
2002a7bc:	4770      	bx	lr

2002a7be <__retarget_lock_release_recursive>:
2002a7be:	4770      	bx	lr

2002a7c0 <memcpy>:
2002a7c0:	440a      	add	r2, r1
2002a7c2:	1e43      	subs	r3, r0, #1
2002a7c4:	4291      	cmp	r1, r2
2002a7c6:	d100      	bne.n	2002a7ca <memcpy+0xa>
2002a7c8:	4770      	bx	lr
2002a7ca:	b510      	push	{r4, lr}
2002a7cc:	f811 4b01 	ldrb.w	r4, [r1], #1
2002a7d0:	4291      	cmp	r1, r2
2002a7d2:	f803 4f01 	strb.w	r4, [r3, #1]!
2002a7d6:	d1f9      	bne.n	2002a7cc <memcpy+0xc>
2002a7d8:	bd10      	pop	{r4, pc}
	...

2002a7dc <_free_r>:
2002a7dc:	b538      	push	{r3, r4, r5, lr}
2002a7de:	4605      	mov	r5, r0
2002a7e0:	2900      	cmp	r1, #0
2002a7e2:	d041      	beq.n	2002a868 <_free_r+0x8c>
2002a7e4:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002a7e8:	1f0c      	subs	r4, r1, #4
2002a7ea:	2b00      	cmp	r3, #0
2002a7ec:	bfb8      	it	lt
2002a7ee:	18e4      	addlt	r4, r4, r3
2002a7f0:	f7ff ffb0 	bl	2002a754 <__malloc_lock>
2002a7f4:	4a1d      	ldr	r2, [pc, #116]	@ (2002a86c <_free_r+0x90>)
2002a7f6:	6813      	ldr	r3, [r2, #0]
2002a7f8:	b933      	cbnz	r3, 2002a808 <_free_r+0x2c>
2002a7fa:	6063      	str	r3, [r4, #4]
2002a7fc:	6014      	str	r4, [r2, #0]
2002a7fe:	4628      	mov	r0, r5
2002a800:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002a804:	f7ff bfac 	b.w	2002a760 <__malloc_unlock>
2002a808:	42a3      	cmp	r3, r4
2002a80a:	d908      	bls.n	2002a81e <_free_r+0x42>
2002a80c:	6820      	ldr	r0, [r4, #0]
2002a80e:	1821      	adds	r1, r4, r0
2002a810:	428b      	cmp	r3, r1
2002a812:	bf01      	itttt	eq
2002a814:	6819      	ldreq	r1, [r3, #0]
2002a816:	685b      	ldreq	r3, [r3, #4]
2002a818:	1809      	addeq	r1, r1, r0
2002a81a:	6021      	streq	r1, [r4, #0]
2002a81c:	e7ed      	b.n	2002a7fa <_free_r+0x1e>
2002a81e:	461a      	mov	r2, r3
2002a820:	685b      	ldr	r3, [r3, #4]
2002a822:	b10b      	cbz	r3, 2002a828 <_free_r+0x4c>
2002a824:	42a3      	cmp	r3, r4
2002a826:	d9fa      	bls.n	2002a81e <_free_r+0x42>
2002a828:	6811      	ldr	r1, [r2, #0]
2002a82a:	1850      	adds	r0, r2, r1
2002a82c:	42a0      	cmp	r0, r4
2002a82e:	d10b      	bne.n	2002a848 <_free_r+0x6c>
2002a830:	6820      	ldr	r0, [r4, #0]
2002a832:	4401      	add	r1, r0
2002a834:	1850      	adds	r0, r2, r1
2002a836:	6011      	str	r1, [r2, #0]
2002a838:	4283      	cmp	r3, r0
2002a83a:	d1e0      	bne.n	2002a7fe <_free_r+0x22>
2002a83c:	6818      	ldr	r0, [r3, #0]
2002a83e:	685b      	ldr	r3, [r3, #4]
2002a840:	4408      	add	r0, r1
2002a842:	6053      	str	r3, [r2, #4]
2002a844:	6010      	str	r0, [r2, #0]
2002a846:	e7da      	b.n	2002a7fe <_free_r+0x22>
2002a848:	d902      	bls.n	2002a850 <_free_r+0x74>
2002a84a:	230c      	movs	r3, #12
2002a84c:	602b      	str	r3, [r5, #0]
2002a84e:	e7d6      	b.n	2002a7fe <_free_r+0x22>
2002a850:	6820      	ldr	r0, [r4, #0]
2002a852:	1821      	adds	r1, r4, r0
2002a854:	428b      	cmp	r3, r1
2002a856:	bf02      	ittt	eq
2002a858:	6819      	ldreq	r1, [r3, #0]
2002a85a:	685b      	ldreq	r3, [r3, #4]
2002a85c:	1809      	addeq	r1, r1, r0
2002a85e:	6063      	str	r3, [r4, #4]
2002a860:	bf08      	it	eq
2002a862:	6021      	streq	r1, [r4, #0]
2002a864:	6054      	str	r4, [r2, #4]
2002a866:	e7ca      	b.n	2002a7fe <_free_r+0x22>
2002a868:	bd38      	pop	{r3, r4, r5, pc}
2002a86a:	bf00      	nop
2002a86c:	2004d00c 	.word	0x2004d00c

2002a870 <_sbrk>:
2002a870:	4a05      	ldr	r2, [pc, #20]	@ (2002a888 <_sbrk+0x18>)
2002a872:	4603      	mov	r3, r0
2002a874:	6810      	ldr	r0, [r2, #0]
2002a876:	b110      	cbz	r0, 2002a87e <_sbrk+0xe>
2002a878:	4403      	add	r3, r0
2002a87a:	6013      	str	r3, [r2, #0]
2002a87c:	4770      	bx	lr
2002a87e:	4803      	ldr	r0, [pc, #12]	@ (2002a88c <_sbrk+0x1c>)
2002a880:	4403      	add	r3, r0
2002a882:	6013      	str	r3, [r2, #0]
2002a884:	4770      	bx	lr
2002a886:	bf00      	nop
2002a888:	2004d150 	.word	0x2004d150
2002a88c:	20042000 	.word	0x20042000
2002a890:	50041000 	.word	0x50041000
2002a894:	00000002 	.word	0x00000002
2002a898:	10000000 	.word	0x10000000
2002a89c:	00000004 	.word	0x00000004
2002a8a0:	00000000 	.word	0x00000000
2002a8a4:	50081008 	.word	0x50081008
2002a8a8:	00000000 	.word	0x00000000
2002a8ac:	00000032 	.word	0x00000032
2002a8b0:	00000000 	.word	0x00000000
2002a8b4:	50042000 	.word	0x50042000
2002a8b8:	00000002 	.word	0x00000002
2002a8bc:	12000000 	.word	0x12000000
2002a8c0:	00000004 	.word	0x00000004
2002a8c4:	00000000 	.word	0x00000000
2002a8c8:	5008101c 	.word	0x5008101c
2002a8cc:	00000000 	.word	0x00000000
2002a8d0:	00000033 	.word	0x00000033
2002a8d4:	00000001 	.word	0x00000001
2002a8d8:	62636573 	.word	0x62636573
2002a8dc:	20746f6f 	.word	0x20746f6f
2002a8e0:	6b676973 	.word	0x6b676973
2002a8e4:	70207965 	.word	0x70207965
2002a8e8:	65206275 	.word	0x65206275
2002a8ec:	00217272 	.word	0x00217272
2002a8f0:	62636573 	.word	0x62636573
2002a8f4:	20746f6f 	.word	0x20746f6f
2002a8f8:	20676d69 	.word	0x20676d69
2002a8fc:	68736168 	.word	0x68736168
2002a900:	67697320 	.word	0x67697320
2002a904:	72726520 	.word	0x72726520
2002a908:	65730021 	.word	0x65730021
2002a90c:	6f6f6263 	.word	0x6f6f6263
2002a910:	78652074 	.word	0x78652074
2002a914:	20747063 	.word	0x20747063
2002a918:	6c6c756e 	.word	0x6c6c756e
2002a91c:	41480021 	.word	0x41480021
2002a920:	535f4853 	.word	0x535f4853
2002a924:	49545445 	.word	0x49545445
2002a928:	253d474e 	.word	0x253d474e
2002a92c:	0a583830 	.word	0x0a583830
2002a930:	616f4c00 	.word	0x616f4c00
2002a934:	56492064 	.word	0x56492064
2002a938:	646e6120 	.word	0x646e6120
2002a93c:	6e656c20 	.word	0x6e656c20
2002a940:	20687467 	.word	0x20687467
2002a944:	48534148 	.word	0x48534148
2002a948:	5445535f 	.word	0x5445535f
2002a94c:	474e4954 	.word	0x474e4954
2002a950:	3830253d 	.word	0x3830253d
2002a954:	69202c58 	.word	0x69202c58
2002a958:	656c2076 	.word	0x656c2076
2002a95c:	6874676e 	.word	0x6874676e
2002a960:	0a64253d 	.word	0x0a64253d
2002a964:	73655200 	.word	0x73655200
2002a968:	20746c75 	.word	0x20746c75
2002a96c:	3d6e656c 	.word	0x3d6e656c
2002a970:	000a6425 	.word	0x000a6425
2002a974:	2070614d 	.word	0x2070614d
2002a978:	6f727265 	.word	0x6f727265
2002a97c:	6c203a72 	.word	0x6c203a72
2002a980:	6369676f 	.word	0x6369676f
2002a984:	2c642520 	.word	0x2c642520
2002a988:	79687020 	.word	0x79687020
2002a98c:	0a642520 	.word	0x0a642520
2002a990:	52524500 	.word	0x52524500
2002a994:	2032203a 	.word	0x2032203a
2002a998:	69676f6c 	.word	0x69676f6c
2002a99c:	6c622063 	.word	0x6c622063
2002a9a0:	736b636f 	.word	0x736b636f
2002a9a4:	70616d20 	.word	0x70616d20
2002a9a8:	206f7420 	.word	0x206f7420
2002a9ac:	656d6173 	.word	0x656d6173
2002a9b0:	6b6c6220 	.word	0x6b6c6220
2002a9b4:	6f6c203a 	.word	0x6f6c203a
2002a9b8:	30636967 	.word	0x30636967
2002a9bc:	2c642520 	.word	0x2c642520
2002a9c0:	79687020 	.word	0x79687020
2002a9c4:	64252030 	.word	0x64252030
2002a9c8:	6f6c202c 	.word	0x6f6c202c
2002a9cc:	31636967 	.word	0x31636967
2002a9d0:	2c642520 	.word	0x2c642520
2002a9d4:	79687020 	.word	0x79687020
2002a9d8:	64252031 	.word	0x64252031
2002a9dc:	614d000a 	.word	0x614d000a
2002a9e0:	72652070 	.word	0x72652070
2002a9e4:	30726f72 	.word	0x30726f72
2002a9e8:	6f6c203a 	.word	0x6f6c203a
2002a9ec:	20636967 	.word	0x20636967
2002a9f0:	202c6425 	.word	0x202c6425
2002a9f4:	20796870 	.word	0x20796870
2002a9f8:	000a6425 	.word	0x000a6425
2002a9fc:	20746547 	.word	0x20746547
2002aa00:	2070616d 	.word	0x2070616d
2002aa04:	636f6c62 	.word	0x636f6c62
2002aa08:	7265206b 	.word	0x7265206b
2002aa0c:	20726f72 	.word	0x20726f72
2002aa10:	2d206425 	.word	0x2d206425
2002aa14:	25203e2d 	.word	0x25203e2d
2002aa18:	42000a64 	.word	0x42000a64
2002aa1c:	76204d42 	.word	0x76204d42
2002aa20:	69737265 	.word	0x69737265
2002aa24:	6e206e6f 	.word	0x6e206e6f
2002aa28:	6920746f 	.word	0x6920746f
2002aa2c:	6572636e 	.word	0x6572636e
2002aa30:	64657361 	.word	0x64657361
2002aa34:	7270203a 	.word	0x7270203a
2002aa38:	25207665 	.word	0x25207665
2002aa3c:	63202c64 	.word	0x63202c64
2002aa40:	20727275 	.word	0x20727275
2002aa44:	000a6425 	.word	0x000a6425
2002aa48:	41544144 	.word	0x41544144
2002aa4c:	746f6e20 	.word	0x746f6e20
2002aa50:	61657220 	.word	0x61657220
2002aa54:	616e6f73 	.word	0x616e6f73
2002aa58:	20656c62 	.word	0x20656c62
2002aa5c:	42206e69 	.word	0x42206e69
2002aa60:	62204d42 	.word	0x62204d42
2002aa64:	25206b6c 	.word	0x25206b6c
2002aa68:	61702064 	.word	0x61702064
2002aa6c:	25206567 	.word	0x25206567
2002aa70:	30203a64 	.word	0x30203a64
2002aa74:	0a782578 	.word	0x0a782578
2002aa78:	61655200 	.word	0x61655200
2002aa7c:	62622064 	.word	0x62622064
2002aa80:	6c62206d 	.word	0x6c62206d
2002aa84:	6425206b 	.word	0x6425206b
2002aa88:	67617020 	.word	0x67617020
2002aa8c:	64252065 	.word	0x64252065
2002aa90:	69616620 	.word	0x69616620
2002aa94:	49000a6c 	.word	0x49000a6c
2002aa98:	6c61766e 	.word	0x6c61766e
2002aa9c:	42206469 	.word	0x42206469
2002aaa0:	49204d42 	.word	0x49204d42
2002aaa4:	25205844 	.word	0x25205844
2002aaa8:	56000a64 	.word	0x56000a64
2002aaac:	64252031 	.word	0x64252031
2002aab0:	206e6920 	.word	0x206e6920
2002aab4:	636f6c62 	.word	0x636f6c62
2002aab8:	6425206b 	.word	0x6425206b
2002aabc:	3256202c 	.word	0x3256202c
2002aac0:	20642520 	.word	0x20642520
2002aac4:	62206e69 	.word	0x62206e69
2002aac8:	6b636f6c 	.word	0x6b636f6c
2002aacc:	0a642520 	.word	0x0a642520
2002aad0:	6d615300 	.word	0x6d615300
2002aad4:	69687465 	.word	0x69687465
2002aad8:	6d20676e 	.word	0x6d20676e
2002aadc:	20747375 	.word	0x20747375
2002aae0:	77206562 	.word	0x77206562
2002aae4:	676e6f72 	.word	0x676e6f72
2002aae8:	6567202c 	.word	0x6567202c
2002aaec:	656e2074 	.word	0x656e2074
2002aaf0:	65762077 	.word	0x65762077
2002aaf4:	6f697372 	.word	0x6f697372
2002aaf8:	6425206e 	.word	0x6425206e
2002aafc:	206f6420 	.word	0x206f6420
2002ab00:	20746f6e 	.word	0x20746f6e
2002ab04:	656d6173 	.word	0x656d6173
2002ab08:	206f7420 	.word	0x206f7420
2002ab0c:	76657270 	.word	0x76657270
2002ab10:	65686320 	.word	0x65686320
2002ab14:	25206b63 	.word	0x25206b63
2002ab18:	43000a64 	.word	0x43000a64
2002ab1c:	63204352 	.word	0x63204352
2002ab20:	6b636568 	.word	0x6b636568
2002ab24:	72726520 	.word	0x72726520
2002ab28:	0a20726f 	.word	0x0a20726f
2002ab2c:	61655200 	.word	0x61655200
2002ab30:	62622064 	.word	0x62622064
2002ab34:	6c62206d 	.word	0x6c62206d
2002ab38:	6425206b 	.word	0x6425206b
2002ab3c:	67617020 	.word	0x67617020
2002ab40:	64252065 	.word	0x64252065
2002ab44:	74616420 	.word	0x74616420
2002ab48:	6f6e2061 	.word	0x6f6e2061
2002ab4c:	72772074 	.word	0x72772074
2002ab50:	20657469 	.word	0x20657469
2002ab54:	20726f66 	.word	0x20726f66
2002ab58:	20646e32 	.word	0x20646e32
2002ab5c:	656d6974 	.word	0x656d6974
2002ab60:	6552000a 	.word	0x6552000a
2002ab64:	62206461 	.word	0x62206461
2002ab68:	62206d62 	.word	0x62206d62
2002ab6c:	25206b6c 	.word	0x25206b6c
2002ab70:	61702064 	.word	0x61702064
2002ab74:	25206567 	.word	0x25206567
2002ab78:	61662064 	.word	0x61662064
2002ab7c:	66206c69 	.word	0x66206c69
2002ab80:	3220726f 	.word	0x3220726f
2002ab84:	7420646e 	.word	0x7420646e
2002ab88:	3f656d69 	.word	0x3f656d69
2002ab8c:	614c000a 	.word	0x614c000a
2002ab90:	74736574 	.word	0x74736574
2002ab94:	72657620 	.word	0x72657620
2002ab98:	6e6f6973 	.word	0x6e6f6973
2002ab9c:	0a642520 	.word	0x0a642520
2002aba0:	74654700 	.word	0x74654700
2002aba4:	79687020 	.word	0x79687020
2002aba8:	6b6c6220 	.word	0x6b6c6220
2002abac:	726f6620 	.word	0x726f6620
2002abb0:	20642520 	.word	0x20642520
2002abb4:	6c696166 	.word	0x6c696166
2002abb8:	65687720 	.word	0x65687720
2002abbc:	6572206e 	.word	0x6572206e
2002abc0:	000a6461 	.word	0x000a6461
2002abc4:	636f6c42 	.word	0x636f6c42
2002abc8:	6425206b 	.word	0x6425206b
2002abcc:	61726520 	.word	0x61726520
2002abd0:	66206573 	.word	0x66206573
2002abd4:	2c6c6961 	.word	0x2c6c6961
2002abd8:	72616d20 	.word	0x72616d20
2002abdc:	7361206b 	.word	0x7361206b
2002abe0:	64616220 	.word	0x64616220
2002abe4:	6c42000a 	.word	0x6c42000a
2002abe8:	206b636f 	.word	0x206b636f
2002abec:	63206425 	.word	0x63206425
2002abf0:	6b636568 	.word	0x6b636568
2002abf4:	20736120 	.word	0x20736120
2002abf8:	20646162 	.word	0x20646162
2002abfc:	636f6c62 	.word	0x636f6c62
2002ac00:	42000a6b 	.word	0x42000a6b
2002ac04:	6b636f6c 	.word	0x6b636f6c
2002ac08:	20642520 	.word	0x20642520
2002ac0c:	62207369 	.word	0x62207369
2002ac10:	69206461 	.word	0x69206461
2002ac14:	7375206e 	.word	0x7375206e
2002ac18:	62207265 	.word	0x62207265
2002ac1c:	6b636f6c 	.word	0x6b636f6c
2002ac20:	6162000a 	.word	0x6162000a
2002ac24:	64252064 	.word	0x64252064
2002ac28:	6572202c 	.word	0x6572202c
2002ac2c:	63616c70 	.word	0x63616c70
2002ac30:	64252065 	.word	0x64252065
2002ac34:	6f4e000a 	.word	0x6f4e000a
2002ac38:	63616220 	.word	0x63616220
2002ac3c:	2070756b 	.word	0x2070756b
2002ac40:	636f6c62 	.word	0x636f6c62
2002ac44:	6e61206b 	.word	0x6e61206b
2002ac48:	6f6d2079 	.word	0x6f6d2079
2002ac4c:	000a6572 	.word	0x000a6572
2002ac50:	74706d65 	.word	0x74706d65
2002ac54:	61742079 	.word	0x61742079
2002ac58:	20656c62 	.word	0x20656c62
2002ac5c:	6e206425 	.word	0x6e206425
2002ac60:	6520746f 	.word	0x6520746f
2002ac64:	67756f6e 	.word	0x67756f6e
2002ac68:	6f662068 	.word	0x6f662068
2002ac6c:	6e692072 	.word	0x6e692072
2002ac70:	61697469 	.word	0x61697469
2002ac74:	55000a6c 	.word	0x55000a6c
2002ac78:	74616470 	.word	0x74616470
2002ac7c:	61742065 	.word	0x61742065
2002ac80:	20656c62 	.word	0x20656c62
2002ac84:	66206f74 	.word	0x66206f74
2002ac88:	6873616c 	.word	0x6873616c
2002ac8c:	6e6f6420 	.word	0x6e6f6420
2002ac90:	49000a65 	.word	0x49000a65
2002ac94:	6974696e 	.word	0x6974696e
2002ac98:	74206c61 	.word	0x74206c61
2002ac9c:	656c6261 	.word	0x656c6261
2002aca0:	69616620 	.word	0x69616620
2002aca4:	42000a6c 	.word	0x42000a6c
2002aca8:	69204d42 	.word	0x69204d42
2002acac:	6974696e 	.word	0x6974696e
2002acb0:	7a696c61 	.word	0x7a696c61
2002acb4:	62206465 	.word	0x62206465
2002acb8:	726f6665 	.word	0x726f6665
2002acbc:	64202c65 	.word	0x64202c65
2002acc0:	6f6e206f 	.word	0x6f6e206f
2002acc4:	6e692074 	.word	0x6e692074
2002acc8:	61207469 	.word	0x61207469
2002accc:	6d20796e 	.word	0x6d20796e
2002acd0:	0a65726f 	.word	0x0a65726f
2002acd4:	54454400 	.word	0x54454400
2002acd8:	20642520 	.word	0x20642520
2002acdc:	0a646162 	.word	0x0a646162
2002ace0:	4b4c4200 	.word	0x4b4c4200
2002ace4:	20642520 	.word	0x20642520
2002ace8:	64616572 	.word	0x64616572
2002acec:	69616620 	.word	0x69616620
2002acf0:	6d202c6c 	.word	0x6d202c6c
2002acf4:	206b7261 	.word	0x206b7261
2002acf8:	62207361 	.word	0x62207361
2002acfc:	000a6461 	.word	0x000a6461
2002ad00:	20746564 	.word	0x20746564
2002ad04:	206d6262 	.word	0x206d6262
2002ad08:	6c626174 	.word	0x6c626174
2002ad0c:	69772065 	.word	0x69772065
2002ad10:	25206874 	.word	0x25206874
2002ad14:	25202c64 	.word	0x25202c64
2002ad18:	25202c64 	.word	0x25202c64
2002ad1c:	64000a64 	.word	0x64000a64
2002ad20:	63657465 	.word	0x63657465
2002ad24:	65722074 	.word	0x65722074
2002ad28:	746c7573 	.word	0x746c7573
2002ad2c:	0a642520 	.word	0x0a642520
2002ad30:	20317600 	.word	0x20317600
2002ad34:	69206425 	.word	0x69206425
2002ad38:	6c62206e 	.word	0x6c62206e
2002ad3c:	6425206b 	.word	0x6425206b
2002ad40:	3276202c 	.word	0x3276202c
2002ad44:	20642520 	.word	0x20642520
2002ad48:	62206e69 	.word	0x62206e69
2002ad4c:	6b636f6c 	.word	0x6b636f6c
2002ad50:	0a642520 	.word	0x0a642520
2002ad54:	65684300 	.word	0x65684300
2002ad58:	62206b63 	.word	0x62206b63
2002ad5c:	74206d62 	.word	0x74206d62
2002ad60:	656c6261 	.word	0x656c6261
2002ad64:	69616620 	.word	0x69616620
2002ad68:	64000a6c 	.word	0x64000a6c
2002ad6c:	63657465 	.word	0x63657465
2002ad70:	65722074 	.word	0x65722074
2002ad74:	746c7573 	.word	0x746c7573
2002ad78:	20642520 	.word	0x20642520
2002ad7c:	20746f6e 	.word	0x20746f6e
2002ad80:	73616572 	.word	0x73616572
2002ad84:	62616e6f 	.word	0x62616e6f
2002ad88:	000a656c 	.word	0x000a656c
2002ad8c:	204d4242 	.word	0x204d4242
2002ad90:	3a4d454d 	.word	0x3a4d454d
2002ad94:	78746320 	.word	0x78746320
2002ad98:	2c702520 	.word	0x2c702520
2002ad9c:	70616d20 	.word	0x70616d20
2002ada0:	70252031 	.word	0x70252031
2002ada4:	616d202c 	.word	0x616d202c
2002ada8:	25203270 	.word	0x25203270
2002adac:	000a2070 	.word	0x000a2070
2002adb0:	5f666973 	.word	0x5f666973
2002adb4:	5f6d6262 	.word	0x5f6d6262
2002adb8:	74696e69 	.word	0x74696e69
2002adbc:	6e6f6420 	.word	0x6e6f6420
2002adc0:	53000a65 	.word	0x53000a65
2002adc4:	31354148 	.word	0x31354148
2002adc8:	48530032 	.word	0x48530032
2002adcc:	34383341 	.word	0x34383341
2002add0:	41485300 	.word	0x41485300
2002add4:	00363532 	.word	0x00363532
2002add8:	32414853 	.word	0x32414853
2002addc:	60003432 	.word	0x60003432
2002ade0:	65014886 	.word	0x65014886
2002ade4:	04020403 	.word	0x04020403
2002ade8:	2d646900 	.word	0x2d646900
2002adec:	32616873 	.word	0x32616873
2002adf0:	60003432 	.word	0x60003432
2002adf4:	65014886 	.word	0x65014886
2002adf8:	01020403 	.word	0x01020403
2002adfc:	2d646900 	.word	0x2d646900
2002ae00:	32616873 	.word	0x32616873
2002ae04:	60003635 	.word	0x60003635
2002ae08:	65014886 	.word	0x65014886
2002ae0c:	02020403 	.word	0x02020403
2002ae10:	2d646900 	.word	0x2d646900
2002ae14:	33616873 	.word	0x33616873
2002ae18:	60003438 	.word	0x60003438
2002ae1c:	65014886 	.word	0x65014886
2002ae20:	03020403 	.word	0x03020403
2002ae24:	2d646900 	.word	0x2d646900
2002ae28:	35616873 	.word	0x35616873
2002ae2c:	2b003231 	.word	0x2b003231
2002ae30:	0702030e 	.word	0x0702030e
2002ae34:	73656400 	.word	0x73656400
2002ae38:	00434243 	.word	0x00434243
2002ae3c:	2d534544 	.word	0x2d534544
2002ae40:	00434243 	.word	0x00434243
2002ae44:	8648862a 	.word	0x8648862a
2002ae48:	07030df7 	.word	0x07030df7
2002ae4c:	73656400 	.word	0x73656400
2002ae50:	6564652d 	.word	0x6564652d
2002ae54:	62632d33 	.word	0x62632d33
2002ae58:	45440063 	.word	0x45440063
2002ae5c:	44452d53 	.word	0x44452d53
2002ae60:	432d3345 	.word	0x432d3345
2002ae64:	2a004342 	.word	0x2a004342
2002ae68:	f7864886 	.word	0xf7864886
2002ae6c:	0101010d 	.word	0x0101010d
2002ae70:	61737200 	.word	0x61737200
2002ae74:	72636e45 	.word	0x72636e45
2002ae78:	69747079 	.word	0x69747079
2002ae7c:	52006e6f 	.word	0x52006e6f
2002ae80:	2a004153 	.word	0x2a004153
2002ae84:	3dce4886 	.word	0x3dce4886
2002ae88:	69000102 	.word	0x69000102
2002ae8c:	63652d64 	.word	0x63652d64
2002ae90:	6c627550 	.word	0x6c627550
2002ae94:	654b6369 	.word	0x654b6369
2002ae98:	65470079 	.word	0x65470079
2002ae9c:	6972656e 	.word	0x6972656e
2002aea0:	43452063 	.word	0x43452063
2002aea4:	79656b20 	.word	0x79656b20
2002aea8:	04812b00 	.word	0x04812b00
2002aeac:	69000c01 	.word	0x69000c01
2002aeb0:	63652d64 	.word	0x63652d64
2002aeb4:	45004844 	.word	0x45004844
2002aeb8:	656b2043 	.word	0x656b2043
2002aebc:	6f662079 	.word	0x6f662079
2002aec0:	43452072 	.word	0x43452072
2002aec4:	2a004844 	.word	0x2a004844
2002aec8:	f7864886 	.word	0xf7864886
2002aecc:	0e01010d 	.word	0x0e01010d
2002aed0:	61687300 	.word	0x61687300
2002aed4:	57343232 	.word	0x57343232
2002aed8:	52687469 	.word	0x52687469
2002aedc:	6e454153 	.word	0x6e454153
2002aee0:	70797263 	.word	0x70797263
2002aee4:	6e6f6974 	.word	0x6e6f6974
2002aee8:	41535200 	.word	0x41535200
2002aeec:	74697720 	.word	0x74697720
2002aef0:	48532068 	.word	0x48532068
2002aef4:	32322d41 	.word	0x32322d41
2002aef8:	862a0034 	.word	0x862a0034
2002aefc:	0df78648 	.word	0x0df78648
2002af00:	000b0101 	.word	0x000b0101
2002af04:	32616873 	.word	0x32616873
2002af08:	69573635 	.word	0x69573635
2002af0c:	53526874 	.word	0x53526874
2002af10:	636e4541 	.word	0x636e4541
2002af14:	74707972 	.word	0x74707972
2002af18:	006e6f69 	.word	0x006e6f69
2002af1c:	20415352 	.word	0x20415352
2002af20:	68746977 	.word	0x68746977
2002af24:	41485320 	.word	0x41485320
2002af28:	3635322d 	.word	0x3635322d
2002af2c:	48862a00 	.word	0x48862a00
2002af30:	010df786 	.word	0x010df786
2002af34:	73000c01 	.word	0x73000c01
2002af38:	38336168 	.word	0x38336168
2002af3c:	74695734 	.word	0x74695734
2002af40:	41535268 	.word	0x41535268
2002af44:	72636e45 	.word	0x72636e45
2002af48:	69747079 	.word	0x69747079
2002af4c:	52006e6f 	.word	0x52006e6f
2002af50:	77204153 	.word	0x77204153
2002af54:	20687469 	.word	0x20687469
2002af58:	2d414853 	.word	0x2d414853
2002af5c:	00343833 	.word	0x00343833
2002af60:	8648862a 	.word	0x8648862a
2002af64:	01010df7 	.word	0x01010df7
2002af68:	6873000d 	.word	0x6873000d
2002af6c:	32313561 	.word	0x32313561
2002af70:	68746957 	.word	0x68746957
2002af74:	45415352 	.word	0x45415352
2002af78:	7972636e 	.word	0x7972636e
2002af7c:	6f697470 	.word	0x6f697470
2002af80:	5352006e 	.word	0x5352006e
2002af84:	69772041 	.word	0x69772041
2002af88:	53206874 	.word	0x53206874
2002af8c:	352d4148 	.word	0x352d4148
2002af90:	2a003231 	.word	0x2a003231
2002af94:	f7864886 	.word	0xf7864886
2002af98:	0a01010d 	.word	0x0a01010d
2002af9c:	41535200 	.word	0x41535200
2002afa0:	2d415353 	.word	0x2d415353
2002afa4:	00535350 	.word	0x00535350
2002afa8:	2e617372 	.word	0x2e617372
2002afac:	7372004e 	.word	0x7372004e
2002afb0:	00452e61 	.word	0x00452e61

2002afb4 <pin_pad_func_lcpu>:
	...
2002afd4:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002afe4:	00000237 00000000 00000000 00000000     7...............
2002aff4:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002b004:	00000238 00000000 00000000 00000000     8...............
2002b014:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002b024:	0000023a 00000000 00000000 00000000     :...............
2002b034:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002b044:	00000239 00000000 00000000 00000000     9...............

2002b054 <pin_pad_func_hcpu>:
	...
2002b074:	000400f2 00000000 000b0000 00000000     ................
	...
2002b094:	000900f3 00000000 00030000 00000000     ................
	...
2002b0b4:	000a00f4 00000000 000a0000 00000000     ................
	...
2002b0d4:	000b00f5 00000000 000b0000 00000000     ................
	...
2002b0f4:	000c00f6 00000000 00030000 00000000     ................
	...
2002b114:	000300f7 000d0000 00000009 00000000     ................
	...
2002b134:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b154:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b174:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b194:	000e00fb 00060000 00010001 00000000     ................
	...
2002b1b4:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b1d4:	001000fd 00030000 00090000 00000000     ................
	...
2002b1f4:	000500fe 00000006 00000000 00000000     ................
	...
2002b214:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b234:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b254:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b264:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b274:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b284:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b294:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b2a4:	023d0000 02290000 00000000 00000000     ..=...).........
2002b2b4:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b2c4:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b2d4:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b2e4:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b2f4:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b304:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b314:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b324:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b334:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b344:	02420000 00000239 00000000 00000000     ..B.9...........
2002b354:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b374:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b384:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b394:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b3a4:	00000000 02220238 00000000 00000000     ....8.".........
2002b3b4:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b3c4:	00000000 02230000 00000000 00000000     ......#.........
2002b3d4:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b3e4:	00000000 02240000 00000000 00000000     ......$.........
2002b3f4:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b404:	00000000 02250000 00000000 00000000     ......%.........
2002b414:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b424:	00000000 02260000 00000000 00000000     ......&.........
2002b434:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b454:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b474:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b494:	00000066 00000000 027702c6 00000000     f.........w.....
2002b4a4:	024b0000 00000000 00000000 00000000     ..K.............
2002b4b4:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b4d4:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b4f4:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b514:	0000006a 01c60149 027b02ca 03620361     j...I.....{.a.b.
2002b524:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b534:	0000006b 01c80148 027c02cb 03620361     k...H.....|.a.b.
2002b544:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b554:	0000006c 00000000 027d02cc 03620361     l.........}.a.b.
2002b564:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b574:	0000006d 00000000 027e02cd 03620361     m.........~.a.b.
2002b584:	03640363 03660365 00000000 00000000     c.d.e.f.........
2002b594:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b5b4:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b5d4:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b5f4:	00000071 00000000 028202d1 00000000     q...............
2002b604:	02430000 00000000 00000000 00000000     ..C.............
2002b614:	00000072 00000000 028302d2 00000000     r...............
	...
2002b634:	00000073 00000000 028402d3 00000000     s...............
	...
2002b654:	00000074 00000000 028502d4 00000000     t...............
	...
2002b674:	00000075 00000000 028602d5 00000000     u...............
	...
2002b694:	00000076 00000000 028702d6 00000000     v...............
	...
2002b6b4:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b6c4:	02440000 00000000 00000000 00000000     ..D.............
2002b6d4:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b6f4:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b704:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b714:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b724:	02460000 02300000 00000000 00000000     ..F...0.........
2002b734:	0000007b 00000000 028c02db 01650193     {.............e.
2002b744:	02470000 02310000 00000000 00000000     ..G...1.........
2002b754:	0000007c 00000000 028d02dc 01660196     |.............f.
2002b764:	02480000 02320000 00000000 00000000     ..H...2.........
2002b774:	0000007d 00000000 028e02dd 01670198     }.............g.
2002b784:	02490000 02330000 00000000 00000000     ..I...3.........
2002b794:	0000007e 00000000 028f02de 00000000     ~...............
2002b7a4:	024a0000 02340000 00000000 00000000     ..J...4.........

2002b7b4 <HASH_SIZE>:
2002b7b4:	20202014 00000000 04030201 00000000     .   ............
2002b7c4:	01060204                                ....

2002b7c8 <CSWTCH.52>:
2002b7c8:	0000003f 00003f00 003f0000              ?....?....?.

2002b7d4 <hpsys_dll2_limit>:
	...
2002b7dc:	112a8800 112a8800                       ..*...*.

2002b7e4 <hpsys_dvfs_config>:
2002b7e4:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002b7f4:	000d0b00 00130213 000f0d02 00130213     ................

2002b804 <crc32tab>:
2002b804:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002b814:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002b824:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002b834:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002b844:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002b854:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002b864:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002b874:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002b884:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002b894:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002b8a4:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002b8b4:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002b8c4:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002b8d4:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002b8e4:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002b8f4:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002b904:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002b914:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002b924:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002b934:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002b944:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002b954:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002b964:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002b974:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002b984:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002b994:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002b9a4:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002b9b4:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002b9c4:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002b9d4:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002b9e4:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002b9f4:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002ba04:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002ba14:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002ba24:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002ba34:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002ba44:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002ba54:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002ba64:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002ba74:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002ba84:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002ba94:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002baa4:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002bab4:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002bac4:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002bad4:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002bae4:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002baf4:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002bb04:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002bb14:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002bb24:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002bb34:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002bb44:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002bb54:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002bb64:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002bb74:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002bb84:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002bb94:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002bba4:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002bbb4:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002bbc4:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002bbd4:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002bbe4:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002bbf4:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002bc04 <CSWTCH.5>:
2002bc04:	2002bca4 2002bc74 2002bc44 2002bc14     ... t.. D.. ... 

2002bc14 <mbedtls_sha512_info>:
2002bc14:	00000008 2002adc3 00000040 00000080     ....... @.......
2002bc24:	20025e39 20025e2f 20025e2b 20025e25     9^. /^. +^. %^. 
2002bc34:	20025e09 20025df7 20025df3 20025def     .^. .]. .]. .]. 

2002bc44 <mbedtls_sha384_info>:
2002bc44:	00000007 2002adca 00000030 00000080     ....... 0.......
2002bc54:	20025e33 20025e2f 20025e2b 20025e1f     3^. /^. +^. .^. 
2002bc64:	20025e09 20025df7 20025df3 20025def     .^. .]. .]. .]. 

2002bc74 <mbedtls_sha256_info>:
2002bc74:	00000006 2002add1 00000020 00000040     .......  ...@...
2002bc84:	20025de9 20025ddf 20025ddb 20025dd5     .]. .]. .]. .]. 
2002bc94:	20025db9 20025da7 20025da3 20025d9f     .]. .]. .]. .]. 

2002bca4 <mbedtls_sha224_info>:
2002bca4:	00000005 2002add8 0000001c 00000040     ....... ....@...
2002bcb4:	20025de3 20025ddf 20025ddb 20025dcf     .]. .]. .]. .]. 
2002bcc4:	20025db9 20025da7 20025da3 20025d9f     .]. .]. .]. .]. 

2002bcd4 <sha256_padding>:
2002bcd4:	00000080 00000000 00000000 00000000     ................
	...

2002bd14 <K>:
2002bd14:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002bd24:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002bd34:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002bd44:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002bd54:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002bd64:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002bd74:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002bd84:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002bd94:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002bda4:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002bdb4:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002bdc4:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002bdd4:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002bde4:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002bdf4:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002be04:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002be14 <sha512_padding>:
2002be14:	00000080 00000000 00000000 00000000     ................
	...

2002be98 <K>:
2002be98:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002bea8:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002beb8:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002bec8:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002bed8:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002bee8:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002bef8:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002bf08:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002bf18:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002bf28:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002bf38:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002bf48:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002bf58:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002bf68:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002bf78:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002bf88:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002bf98:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002bfa8:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002bfb8:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002bfc8:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002bfd8:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002bfe8:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002bff8:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002c008:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002c018:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002c028:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002c038:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002c048:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002c058:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002c068:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002c078:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002c088:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002c098:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002c0a8:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002c0b8:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002c0c8:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002c0d8:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002c0e8:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002c0f8:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c108:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c118 <oid_md_alg>:
2002c118:	2002addf 00000009 2002ade9 2002aef2     ... ....... ... 
2002c128:	00000005 2002adf3 00000009 2002adfd     ....... ....... 
2002c138:	2002af25 00000006 2002ae07 00000009     %.. ....... ....
2002c148:	2002ae11 2002af58 00000007 2002ae1b     ... X.. ....... 
2002c158:	00000009 2002ae25 2002af8b 00000008     ....%.. ... ....
	...

2002c17c <oid_pk_alg>:
2002c17c:	2002ae67 00000009 2002ae71 2002ae7f     g.. ....q.. ... 
2002c18c:	00000001 2002ae83 00000007 2002ae8b     ....... ....... 
2002c19c:	2002ae9a 00000002 2002aea9 00000005     ... ....... ....
2002c1ac:	2002aeaf 2002aeb7 00000003 00000000     ... ... ........
	...

2002c1cc <mbedtls_rsa_info>:
2002c1cc:	00000001 2002ae7f 200294af 200294a3     ....... ... ... 
2002c1dc:	20029589 20029565 20029539 20029509     ... e.. 9.. ... 
2002c1ec:	20029505 200294eb 200294d9 200294b5     ... ... ... ... 

2002c1fc <_init>:
2002c1fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c1fe:	bf00      	nop
2002c200:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c202:	bc08      	pop	{r3}
2002c204:	469e      	mov	lr, r3
2002c206:	4770      	bx	lr

2002c208 <_fini>:
2002c208:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c20a:	bf00      	nop
2002c20c:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c20e:	bc08      	pop	{r3}
2002c210:	469e      	mov	lr, r3
2002c212:	4770      	bx	lr

2002c214 <__EH_FRAME_BEGIN__>:
2002c214:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_Set_backup:

2002c218 <HAL_Set_backup>:
2002c218:	4b01      	ldr	r3, [pc, #4]	@ (2002c220 <HAL_Set_backup+0x8>)
2002c21a:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
2002c21e:	4770      	bx	lr
2002c220:	500cb030 	.word	0x500cb030

Disassembly of section .l1_ret_text_HAL_Get_backup:

2002c224 <HAL_Get_backup>:
2002c224:	4b01      	ldr	r3, [pc, #4]	@ (2002c22c <HAL_Get_backup+0x8>)
2002c226:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
2002c22a:	4770      	bx	lr
2002c22c:	500cb030 	.word	0x500cb030

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c230 <HAL_PMU_ConfigPeriLdo>:
2002c230:	b538      	push	{r3, r4, r5, lr}
2002c232:	b150      	cbz	r0, 2002c24a <HAL_PMU_ConfigPeriLdo+0x1a>
2002c234:	4c18      	ldr	r4, [pc, #96]	@ (2002c298 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c236:	6863      	ldr	r3, [r4, #4]
2002c238:	b2db      	uxtb	r3, r3
2002c23a:	2b07      	cmp	r3, #7
2002c23c:	d101      	bne.n	2002c242 <HAL_PMU_ConfigPeriLdo+0x12>
2002c23e:	2000      	movs	r0, #0
2002c240:	bd38      	pop	{r3, r4, r5, pc}
2002c242:	6863      	ldr	r3, [r4, #4]
2002c244:	b2db      	uxtb	r3, r3
2002c246:	2b0f      	cmp	r3, #15
2002c248:	d0f9      	beq.n	2002c23e <HAL_PMU_ConfigPeriLdo+0xe>
2002c24a:	4c13      	ldr	r4, [pc, #76]	@ (2002c298 <HAL_PMU_ConfigPeriLdo+0x68>)
2002c24c:	6863      	ldr	r3, [r4, #4]
2002c24e:	b2db      	uxtb	r3, r3
2002c250:	2b07      	cmp	r3, #7
2002c252:	d0f4      	beq.n	2002c23e <HAL_PMU_ConfigPeriLdo+0xe>
2002c254:	6863      	ldr	r3, [r4, #4]
2002c256:	b2db      	uxtb	r3, r3
2002c258:	2b0f      	cmp	r3, #15
2002c25a:	d0f0      	beq.n	2002c23e <HAL_PMU_ConfigPeriLdo+0xe>
2002c25c:	2810      	cmp	r0, #16
2002c25e:	d818      	bhi.n	2002c292 <HAL_PMU_ConfigPeriLdo+0x62>
2002c260:	4b0e      	ldr	r3, [pc, #56]	@ (2002c29c <HAL_PMU_ConfigPeriLdo+0x6c>)
2002c262:	40c3      	lsrs	r3, r0
2002c264:	07db      	lsls	r3, r3, #31
2002c266:	d514      	bpl.n	2002c292 <HAL_PMU_ConfigPeriLdo+0x62>
2002c268:	2900      	cmp	r1, #0
2002c26a:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c26e:	bf0c      	ite	eq
2002c270:	2120      	moveq	r1, #32
2002c272:	2101      	movne	r1, #1
2002c274:	4d0a      	ldr	r5, [pc, #40]	@ (2002c2a0 <HAL_PMU_ConfigPeriLdo+0x70>)
2002c276:	4084      	lsls	r4, r0
2002c278:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c27a:	4081      	lsls	r1, r0
2002c27c:	ea23 0304 	bic.w	r3, r3, r4
2002c280:	430b      	orrs	r3, r1
2002c282:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c284:	2a00      	cmp	r2, #0
2002c286:	d0da      	beq.n	2002c23e <HAL_PMU_ConfigPeriLdo+0xe>
2002c288:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c28c:	f7f5 fe91 	bl	20021fb2 <HAL_Delay_us>
2002c290:	e7d5      	b.n	2002c23e <HAL_PMU_ConfigPeriLdo+0xe>
2002c292:	2001      	movs	r0, #1
2002c294:	e7d4      	b.n	2002c240 <HAL_PMU_ConfigPeriLdo+0x10>
2002c296:	bf00      	nop
2002c298:	5000b000 	.word	0x5000b000
2002c29c:	00010101 	.word	0x00010101
2002c2a0:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c2a4 <HAL_PMU_Reboot>:
2002c2a4:	b538      	push	{r3, r4, r5, lr}
2002c2a6:	f3ef 8310 	mrs	r3, PRIMASK
2002c2aa:	2501      	movs	r5, #1
2002c2ac:	f385 8810 	msr	PRIMASK, r5
2002c2b0:	2002      	movs	r0, #2
2002c2b2:	f7f6 fb8f 	bl	200229d4 <HAL_HPAON_WakeCore>
2002c2b6:	4628      	mov	r0, r5
2002c2b8:	f7f8 ff90 	bl	200251dc <HAL_RCC_Reset_and_Halt_LCPU>
2002c2bc:	462a      	mov	r2, r5
2002c2be:	2100      	movs	r1, #0
2002c2c0:	2008      	movs	r0, #8
2002c2c2:	f7ff ffb5 	bl	2002c230 <HAL_PMU_ConfigPeriLdo>
2002c2c6:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c2ca:	f7f5 fe13 	bl	20021ef4 <HAL_Delay_us_>
2002c2ce:	2000      	movs	r0, #0
2002c2d0:	f7f8 fd84 	bl	20024ddc <HAL_RCC_HCPU_GetClockSrc>
2002c2d4:	4604      	mov	r4, r0
2002c2d6:	b928      	cbnz	r0, 2002c2e4 <HAL_PMU_Reboot+0x40>
2002c2d8:	f7f6 fba6 	bl	20022a28 <HAL_HPAON_EnableXT48>
2002c2dc:	4629      	mov	r1, r5
2002c2de:	4620      	mov	r0, r4
2002c2e0:	f7f8 fe44 	bl	20024f6c <HAL_RCC_HCPU_ClockSelect>
2002c2e4:	4b10      	ldr	r3, [pc, #64]	@ (2002c328 <HAL_PMU_Reboot+0x84>)
2002c2e6:	4c11      	ldr	r4, [pc, #68]	@ (2002c32c <HAL_PMU_Reboot+0x88>)
2002c2e8:	2000      	movs	r0, #0
2002c2ea:	6763      	str	r3, [r4, #116]	@ 0x74
2002c2ec:	f7ff ff9a 	bl	2002c224 <HAL_Get_backup>
2002c2f0:	4601      	mov	r1, r0
2002c2f2:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002c2f6:	f020 000f 	bic.w	r0, r0, #15
2002c2fa:	b928      	cbnz	r0, 2002c308 <HAL_PMU_Reboot+0x64>
2002c2fc:	f441 41a0 	orr.w	r1, r1, #20480	@ 0x5000
2002c300:	f041 0150 	orr.w	r1, r1, #80	@ 0x50
2002c304:	f7ff ff88 	bl	2002c218 <HAL_Set_backup>
2002c308:	6823      	ldr	r3, [r4, #0]
2002c30a:	075b      	lsls	r3, r3, #29
2002c30c:	d506      	bpl.n	2002c31c <HAL_PMU_Reboot+0x78>
2002c30e:	6823      	ldr	r3, [r4, #0]
2002c310:	4807      	ldr	r0, [pc, #28]	@ (2002c330 <HAL_PMU_Reboot+0x8c>)
2002c312:	f023 0304 	bic.w	r3, r3, #4
2002c316:	6023      	str	r3, [r4, #0]
2002c318:	f7f5 fe4b 	bl	20021fb2 <HAL_Delay_us>
2002c31c:	4a03      	ldr	r2, [pc, #12]	@ (2002c32c <HAL_PMU_Reboot+0x88>)
2002c31e:	6813      	ldr	r3, [r2, #0]
2002c320:	f043 0304 	orr.w	r3, r3, #4
2002c324:	6013      	str	r3, [r2, #0]
2002c326:	e7fe      	b.n	2002c326 <HAL_PMU_Reboot+0x82>
2002c328:	0a50c015 	.word	0x0a50c015
2002c32c:	500ca000 	.word	0x500ca000
2002c330:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c334 <HAL_PMU_GetHpsysVoutRef>:
2002c334:	4b04      	ldr	r3, [pc, #16]	@ (2002c348 <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c336:	781a      	ldrb	r2, [r3, #0]
2002c338:	b122      	cbz	r2, 2002c344 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c33a:	b118      	cbz	r0, 2002c344 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c33c:	78db      	ldrb	r3, [r3, #3]
2002c33e:	7003      	strb	r3, [r0, #0]
2002c340:	2000      	movs	r0, #0
2002c342:	4770      	bx	lr
2002c344:	2001      	movs	r0, #1
2002c346:	4770      	bx	lr
2002c348:	2004cbb8 	.word	0x2004cbb8

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c34c <HAL_PMU_GetHpsysVoutRef2>:
2002c34c:	4b04      	ldr	r3, [pc, #16]	@ (2002c360 <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c34e:	781a      	ldrb	r2, [r3, #0]
2002c350:	b122      	cbz	r2, 2002c35c <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c352:	b118      	cbz	r0, 2002c35c <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c354:	7b5b      	ldrb	r3, [r3, #13]
2002c356:	7003      	strb	r3, [r0, #0]
2002c358:	2000      	movs	r0, #0
2002c35a:	4770      	bx	lr
2002c35c:	2001      	movs	r0, #1
2002c35e:	4770      	bx	lr
2002c360:	2004cbb8 	.word	0x2004cbb8
