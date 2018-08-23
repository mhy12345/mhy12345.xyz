
c-o2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400420 <_init>:
  400420:	48 83 ec 08          	sub    $0x8,%rsp
  400424:	48 8b 05 cd 0b 20 00 	mov    0x200bcd(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40042b:	48 85 c0             	test   %rax,%rax
  40042e:	74 05                	je     400435 <_init+0x15>
  400430:	e8 4b 00 00 00       	callq  400480 <__printf_chk@plt+0x10>
  400435:	48 83 c4 08          	add    $0x8,%rsp
  400439:	c3                   	retq   

Disassembly of section .plt:

0000000000400440 <__libc_start_main@plt-0x10>:
  400440:	ff 35 c2 0b 20 00    	pushq  0x200bc2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 c4 0b 20 00    	jmpq   *0x200bc4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400450 <__libc_start_main@plt>:
  400450:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400456:	68 00 00 00 00       	pushq  $0x0
  40045b:	e9 e0 ff ff ff       	jmpq   400440 <_init+0x20>

0000000000400460 <gets@plt>:
  400460:	ff 25 ba 0b 20 00    	jmpq   *0x200bba(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400466:	68 01 00 00 00       	pushq  $0x1
  40046b:	e9 d0 ff ff ff       	jmpq   400440 <_init+0x20>

0000000000400470 <__printf_chk@plt>:
  400470:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400476:	68 02 00 00 00       	pushq  $0x2
  40047b:	e9 c0 ff ff ff       	jmpq   400440 <_init+0x20>

Disassembly of section .plt.got:

0000000000400480 <.plt.got>:
  400480:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400486:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400490 <main>:
  400490:	48 83 ec 18          	sub    $0x18,%rsp
  400494:	31 c0                	xor    %eax,%eax
  400496:	48 89 e7             	mov    %rsp,%rdi
  400499:	e8 c2 ff ff ff       	callq  400460 <gets@plt>
  40049e:	ba 01 00 00 00       	mov    $0x1,%edx
  4004a3:	be 64 06 40 00       	mov    $0x400664,%esi
  4004a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4004ad:	31 c0                	xor    %eax,%eax
  4004af:	e8 bc ff ff ff       	callq  400470 <__printf_chk@plt>
  4004b4:	31 c0                	xor    %eax,%eax
  4004b6:	48 83 c4 18          	add    $0x18,%rsp
  4004ba:	c3                   	retq   
  4004bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004004c0 <_start>:
  4004c0:	31 ed                	xor    %ebp,%ebp
  4004c2:	49 89 d1             	mov    %rdx,%r9
  4004c5:	5e                   	pop    %rsi
  4004c6:	48 89 e2             	mov    %rsp,%rdx
  4004c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004cd:	50                   	push   %rax
  4004ce:	54                   	push   %rsp
  4004cf:	49 c7 c0 50 06 40 00 	mov    $0x400650,%r8
  4004d6:	48 c7 c1 e0 05 40 00 	mov    $0x4005e0,%rcx
  4004dd:	48 c7 c7 90 04 40 00 	mov    $0x400490,%rdi
  4004e4:	e8 67 ff ff ff       	callq  400450 <__libc_start_main@plt>
  4004e9:	f4                   	hlt    
  4004ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004f0 <deregister_tm_clones>:
  4004f0:	b8 47 10 60 00       	mov    $0x601047,%eax
  4004f5:	55                   	push   %rbp
  4004f6:	48 2d 40 10 60 00    	sub    $0x601040,%rax
  4004fc:	48 83 f8 0e          	cmp    $0xe,%rax
  400500:	48 89 e5             	mov    %rsp,%rbp
  400503:	76 1b                	jbe    400520 <deregister_tm_clones+0x30>
  400505:	b8 00 00 00 00       	mov    $0x0,%eax
  40050a:	48 85 c0             	test   %rax,%rax
  40050d:	74 11                	je     400520 <deregister_tm_clones+0x30>
  40050f:	5d                   	pop    %rbp
  400510:	bf 40 10 60 00       	mov    $0x601040,%edi
  400515:	ff e0                	jmpq   *%rax
  400517:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40051e:	00 00 
  400520:	5d                   	pop    %rbp
  400521:	c3                   	retq   
  400522:	0f 1f 40 00          	nopl   0x0(%rax)
  400526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40052d:	00 00 00 

0000000000400530 <register_tm_clones>:
  400530:	be 40 10 60 00       	mov    $0x601040,%esi
  400535:	55                   	push   %rbp
  400536:	48 81 ee 40 10 60 00 	sub    $0x601040,%rsi
  40053d:	48 c1 fe 03          	sar    $0x3,%rsi
  400541:	48 89 e5             	mov    %rsp,%rbp
  400544:	48 89 f0             	mov    %rsi,%rax
  400547:	48 c1 e8 3f          	shr    $0x3f,%rax
  40054b:	48 01 c6             	add    %rax,%rsi
  40054e:	48 d1 fe             	sar    %rsi
  400551:	74 15                	je     400568 <register_tm_clones+0x38>
  400553:	b8 00 00 00 00       	mov    $0x0,%eax
  400558:	48 85 c0             	test   %rax,%rax
  40055b:	74 0b                	je     400568 <register_tm_clones+0x38>
  40055d:	5d                   	pop    %rbp
  40055e:	bf 40 10 60 00       	mov    $0x601040,%edi
  400563:	ff e0                	jmpq   *%rax
  400565:	0f 1f 00             	nopl   (%rax)
  400568:	5d                   	pop    %rbp
  400569:	c3                   	retq   
  40056a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400570 <__do_global_dtors_aux>:
  400570:	80 3d c9 0a 20 00 00 	cmpb   $0x0,0x200ac9(%rip)        # 601040 <__TMC_END__>
  400577:	75 11                	jne    40058a <__do_global_dtors_aux+0x1a>
  400579:	55                   	push   %rbp
  40057a:	48 89 e5             	mov    %rsp,%rbp
  40057d:	e8 6e ff ff ff       	callq  4004f0 <deregister_tm_clones>
  400582:	5d                   	pop    %rbp
  400583:	c6 05 b6 0a 20 00 01 	movb   $0x1,0x200ab6(%rip)        # 601040 <__TMC_END__>
  40058a:	f3 c3                	repz retq 
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <frame_dummy>:
  400590:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400595:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400599:	75 05                	jne    4005a0 <frame_dummy+0x10>
  40059b:	eb 93                	jmp    400530 <register_tm_clones>
  40059d:	0f 1f 00             	nopl   (%rax)
  4005a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a5:	48 85 c0             	test   %rax,%rax
  4005a8:	74 f1                	je     40059b <frame_dummy+0xb>
  4005aa:	55                   	push   %rbp
  4005ab:	48 89 e5             	mov    %rsp,%rbp
  4005ae:	ff d0                	callq  *%rax
  4005b0:	5d                   	pop    %rbp
  4005b1:	e9 7a ff ff ff       	jmpq   400530 <register_tm_clones>
  4005b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005bd:	00 00 00 

00000000004005c0 <getbuf>:
  4005c0:	48 83 ec 18          	sub    $0x18,%rsp
  4005c4:	31 c0                	xor    %eax,%eax
  4005c6:	48 89 e7             	mov    %rsp,%rdi
  4005c9:	e8 92 fe ff ff       	callq  400460 <gets@plt>
  4005ce:	b8 01 00 00 00       	mov    $0x1,%eax
  4005d3:	48 83 c4 18          	add    $0x18,%rsp
  4005d7:	c3                   	retq   
  4005d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005df:	00 

00000000004005e0 <__libc_csu_init>:
  4005e0:	41 57                	push   %r15
  4005e2:	41 56                	push   %r14
  4005e4:	41 89 ff             	mov    %edi,%r15d
  4005e7:	41 55                	push   %r13
  4005e9:	41 54                	push   %r12
  4005eb:	4c 8d 25 1e 08 20 00 	lea    0x20081e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4005f2:	55                   	push   %rbp
  4005f3:	48 8d 2d 1e 08 20 00 	lea    0x20081e(%rip),%rbp        # 600e18 <__init_array_end>
  4005fa:	53                   	push   %rbx
  4005fb:	49 89 f6             	mov    %rsi,%r14
  4005fe:	49 89 d5             	mov    %rdx,%r13
  400601:	4c 29 e5             	sub    %r12,%rbp
  400604:	48 83 ec 08          	sub    $0x8,%rsp
  400608:	48 c1 fd 03          	sar    $0x3,%rbp
  40060c:	e8 0f fe ff ff       	callq  400420 <_init>
  400611:	48 85 ed             	test   %rbp,%rbp
  400614:	74 20                	je     400636 <__libc_csu_init+0x56>
  400616:	31 db                	xor    %ebx,%ebx
  400618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40061f:	00 
  400620:	4c 89 ea             	mov    %r13,%rdx
  400623:	4c 89 f6             	mov    %r14,%rsi
  400626:	44 89 ff             	mov    %r15d,%edi
  400629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	75 ea                	jne    400620 <__libc_csu_init+0x40>
  400636:	48 83 c4 08          	add    $0x8,%rsp
  40063a:	5b                   	pop    %rbx
  40063b:	5d                   	pop    %rbp
  40063c:	41 5c                	pop    %r12
  40063e:	41 5d                	pop    %r13
  400640:	41 5e                	pop    %r14
  400642:	41 5f                	pop    %r15
  400644:	c3                   	retq   
  400645:	90                   	nop
  400646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40064d:	00 00 00 

0000000000400650 <__libc_csu_fini>:
  400650:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400654 <_fini>:
  400654:	48 83 ec 08          	sub    $0x8,%rsp
  400658:	48 83 c4 08          	add    $0x8,%rsp
  40065c:	c3                   	retq   
