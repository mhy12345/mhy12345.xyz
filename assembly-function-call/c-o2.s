
c-o2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400480 <_init>:
  400480:	48 83 ec 08          	sub    $0x8,%rsp
  400484:	48 8b 05 6d 0b 20 00 	mov    0x200b6d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40048b:	48 85 c0             	test   %rax,%rax
  40048e:	74 05                	je     400495 <_init+0x15>
  400490:	e8 5b 00 00 00       	callq  4004f0 <__printf_chk@plt+0x10>
  400495:	48 83 c4 08          	add    $0x8,%rsp
  400499:	c3                   	retq   

Disassembly of section .plt:

00000000004004a0 <__stack_chk_fail@plt-0x10>:
  4004a0:	ff 35 62 0b 20 00    	pushq  0x200b62(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004a6:	ff 25 64 0b 20 00    	jmpq   *0x200b64(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004b0 <__stack_chk_fail@plt>:
  4004b0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004b6:	68 00 00 00 00       	pushq  $0x0
  4004bb:	e9 e0 ff ff ff       	jmpq   4004a0 <_init+0x20>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 5a 0b 20 00    	jmpq   *0x200b5a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004c6:	68 01 00 00 00       	pushq  $0x1
  4004cb:	e9 d0 ff ff ff       	jmpq   4004a0 <_init+0x20>

00000000004004d0 <gets@plt>:
  4004d0:	ff 25 52 0b 20 00    	jmpq   *0x200b52(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004d6:	68 02 00 00 00       	pushq  $0x2
  4004db:	e9 c0 ff ff ff       	jmpq   4004a0 <_init+0x20>

00000000004004e0 <__printf_chk@plt>:
  4004e0:	ff 25 4a 0b 20 00    	jmpq   *0x200b4a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004e6:	68 03 00 00 00       	pushq  $0x3
  4004eb:	e9 b0 ff ff ff       	jmpq   4004a0 <_init+0x20>

Disassembly of section .plt.got:

00000000004004f0 <.plt.got>:
  4004f0:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400500 <main>:
  400500:	48 83 ec 18          	sub    $0x18,%rsp
  400504:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40050b:	00 00 
  40050d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400512:	31 c0                	xor    %eax,%eax
  400514:	48 89 e7             	mov    %rsp,%rdi
  400517:	e8 b4 ff ff ff       	callq  4004d0 <gets@plt>
  40051c:	31 c0                	xor    %eax,%eax
  40051e:	ba 01 00 00 00       	mov    $0x1,%edx
  400523:	be 14 07 40 00       	mov    $0x400714,%esi
  400528:	bf 01 00 00 00       	mov    $0x1,%edi
  40052d:	e8 ae ff ff ff       	callq  4004e0 <__printf_chk@plt>
  400532:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  400537:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40053e:	00 00 
  400540:	75 07                	jne    400549 <main+0x49>
  400542:	31 c0                	xor    %eax,%eax
  400544:	48 83 c4 18          	add    $0x18,%rsp
  400548:	c3                   	retq   
  400549:	e8 62 ff ff ff       	callq  4004b0 <__stack_chk_fail@plt>
  40054e:	66 90                	xchg   %ax,%ax

0000000000400550 <_start>:
  400550:	31 ed                	xor    %ebp,%ebp
  400552:	49 89 d1             	mov    %rdx,%r9
  400555:	5e                   	pop    %rsi
  400556:	48 89 e2             	mov    %rsp,%rdx
  400559:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40055d:	50                   	push   %rax
  40055e:	54                   	push   %rsp
  40055f:	49 c7 c0 00 07 40 00 	mov    $0x400700,%r8
  400566:	48 c7 c1 90 06 40 00 	mov    $0x400690,%rcx
  40056d:	48 c7 c7 00 05 40 00 	mov    $0x400500,%rdi
  400574:	e8 47 ff ff ff       	callq  4004c0 <__libc_start_main@plt>
  400579:	f4                   	hlt    
  40057a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400580 <deregister_tm_clones>:
  400580:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  400585:	55                   	push   %rbp
  400586:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40058c:	48 83 f8 0e          	cmp    $0xe,%rax
  400590:	48 89 e5             	mov    %rsp,%rbp
  400593:	76 1b                	jbe    4005b0 <deregister_tm_clones+0x30>
  400595:	b8 00 00 00 00       	mov    $0x0,%eax
  40059a:	48 85 c0             	test   %rax,%rax
  40059d:	74 11                	je     4005b0 <deregister_tm_clones+0x30>
  40059f:	5d                   	pop    %rbp
  4005a0:	bf 48 10 60 00       	mov    $0x601048,%edi
  4005a5:	ff e0                	jmpq   *%rax
  4005a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4005ae:	00 00 
  4005b0:	5d                   	pop    %rbp
  4005b1:	c3                   	retq   
  4005b2:	0f 1f 40 00          	nopl   0x0(%rax)
  4005b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005bd:	00 00 00 

00000000004005c0 <register_tm_clones>:
  4005c0:	be 48 10 60 00       	mov    $0x601048,%esi
  4005c5:	55                   	push   %rbp
  4005c6:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  4005cd:	48 c1 fe 03          	sar    $0x3,%rsi
  4005d1:	48 89 e5             	mov    %rsp,%rbp
  4005d4:	48 89 f0             	mov    %rsi,%rax
  4005d7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005db:	48 01 c6             	add    %rax,%rsi
  4005de:	48 d1 fe             	sar    %rsi
  4005e1:	74 15                	je     4005f8 <register_tm_clones+0x38>
  4005e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e8:	48 85 c0             	test   %rax,%rax
  4005eb:	74 0b                	je     4005f8 <register_tm_clones+0x38>
  4005ed:	5d                   	pop    %rbp
  4005ee:	bf 48 10 60 00       	mov    $0x601048,%edi
  4005f3:	ff e0                	jmpq   *%rax
  4005f5:	0f 1f 00             	nopl   (%rax)
  4005f8:	5d                   	pop    %rbp
  4005f9:	c3                   	retq   
  4005fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400600 <__do_global_dtors_aux>:
  400600:	80 3d 41 0a 20 00 00 	cmpb   $0x0,0x200a41(%rip)        # 601048 <__TMC_END__>
  400607:	75 11                	jne    40061a <__do_global_dtors_aux+0x1a>
  400609:	55                   	push   %rbp
  40060a:	48 89 e5             	mov    %rsp,%rbp
  40060d:	e8 6e ff ff ff       	callq  400580 <deregister_tm_clones>
  400612:	5d                   	pop    %rbp
  400613:	c6 05 2e 0a 20 00 01 	movb   $0x1,0x200a2e(%rip)        # 601048 <__TMC_END__>
  40061a:	f3 c3                	repz retq 
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400620 <frame_dummy>:
  400620:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400625:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400629:	75 05                	jne    400630 <frame_dummy+0x10>
  40062b:	eb 93                	jmp    4005c0 <register_tm_clones>
  40062d:	0f 1f 00             	nopl   (%rax)
  400630:	b8 00 00 00 00       	mov    $0x0,%eax
  400635:	48 85 c0             	test   %rax,%rax
  400638:	74 f1                	je     40062b <frame_dummy+0xb>
  40063a:	55                   	push   %rbp
  40063b:	48 89 e5             	mov    %rsp,%rbp
  40063e:	ff d0                	callq  *%rax
  400640:	5d                   	pop    %rbp
  400641:	e9 7a ff ff ff       	jmpq   4005c0 <register_tm_clones>
  400646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40064d:	00 00 00 

0000000000400650 <getbuf>:
  400650:	48 83 ec 18          	sub    $0x18,%rsp
  400654:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40065b:	00 00 
  40065d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400662:	31 c0                	xor    %eax,%eax
  400664:	48 89 e7             	mov    %rsp,%rdi
  400667:	e8 64 fe ff ff       	callq  4004d0 <gets@plt>
  40066c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  400671:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  400678:	00 00 
  40067a:	75 0a                	jne    400686 <getbuf+0x36>
  40067c:	b8 01 00 00 00       	mov    $0x1,%eax
  400681:	48 83 c4 18          	add    $0x18,%rsp
  400685:	c3                   	retq   
  400686:	e8 25 fe ff ff       	callq  4004b0 <__stack_chk_fail@plt>
  40068b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400690 <__libc_csu_init>:
  400690:	41 57                	push   %r15
  400692:	41 56                	push   %r14
  400694:	41 89 ff             	mov    %edi,%r15d
  400697:	41 55                	push   %r13
  400699:	41 54                	push   %r12
  40069b:	4c 8d 25 6e 07 20 00 	lea    0x20076e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4006a2:	55                   	push   %rbp
  4006a3:	48 8d 2d 6e 07 20 00 	lea    0x20076e(%rip),%rbp        # 600e18 <__init_array_end>
  4006aa:	53                   	push   %rbx
  4006ab:	49 89 f6             	mov    %rsi,%r14
  4006ae:	49 89 d5             	mov    %rdx,%r13
  4006b1:	4c 29 e5             	sub    %r12,%rbp
  4006b4:	48 83 ec 08          	sub    $0x8,%rsp
  4006b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4006bc:	e8 bf fd ff ff       	callq  400480 <_init>
  4006c1:	48 85 ed             	test   %rbp,%rbp
  4006c4:	74 20                	je     4006e6 <__libc_csu_init+0x56>
  4006c6:	31 db                	xor    %ebx,%ebx
  4006c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006cf:	00 
  4006d0:	4c 89 ea             	mov    %r13,%rdx
  4006d3:	4c 89 f6             	mov    %r14,%rsi
  4006d6:	44 89 ff             	mov    %r15d,%edi
  4006d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006dd:	48 83 c3 01          	add    $0x1,%rbx
  4006e1:	48 39 eb             	cmp    %rbp,%rbx
  4006e4:	75 ea                	jne    4006d0 <__libc_csu_init+0x40>
  4006e6:	48 83 c4 08          	add    $0x8,%rsp
  4006ea:	5b                   	pop    %rbx
  4006eb:	5d                   	pop    %rbp
  4006ec:	41 5c                	pop    %r12
  4006ee:	41 5d                	pop    %r13
  4006f0:	41 5e                	pop    %r14
  4006f2:	41 5f                	pop    %r15
  4006f4:	c3                   	retq   
  4006f5:	90                   	nop
  4006f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006fd:	00 00 00 

0000000000400700 <__libc_csu_fini>:
  400700:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400704 <_fini>:
  400704:	48 83 ec 08          	sub    $0x8,%rsp
  400708:	48 83 c4 08          	add    $0x8,%rsp
  40070c:	c3                   	retq   
