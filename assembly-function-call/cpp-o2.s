
cpp-o2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400658 <_init>:
  400658:	48 83 ec 08          	sub    $0x8,%rsp
  40065c:	48 8b 05 95 09 20 00 	mov    0x200995(%rip),%rax        # 600ff8 <_DYNAMIC+0x1e0>
  400663:	48 85 c0             	test   %rax,%rax
  400666:	74 05                	je     40066d <_init+0x15>
  400668:	e8 93 00 00 00       	callq  400700 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x10>
  40066d:	48 83 c4 08          	add    $0x8,%rsp
  400671:	c3                   	retq   

Disassembly of section .plt:

0000000000400680 <_ZNSolsEi@plt-0x10>:
  400680:	ff 35 82 09 20 00    	pushq  0x200982(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400686:	ff 25 84 09 20 00    	jmpq   *0x200984(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40068c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400690 <_ZNSolsEi@plt>:
  400690:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400696:	68 00 00 00 00       	pushq  $0x0
  40069b:	e9 e0 ff ff ff       	jmpq   400680 <_init+0x28>

00000000004006a0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4006a0:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4006a6:	68 01 00 00 00       	pushq  $0x1
  4006ab:	e9 d0 ff ff ff       	jmpq   400680 <_init+0x28>

00000000004006b0 <__libc_start_main@plt>:
  4006b0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4006b6:	68 02 00 00 00       	pushq  $0x2
  4006bb:	e9 c0 ff ff ff       	jmpq   400680 <_init+0x28>

00000000004006c0 <__cxa_atexit@plt>:
  4006c0:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4006c6:	68 03 00 00 00       	pushq  $0x3
  4006cb:	e9 b0 ff ff ff       	jmpq   400680 <_init+0x28>

00000000004006d0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4006d0:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4006d6:	68 04 00 00 00       	pushq  $0x4
  4006db:	e9 a0 ff ff ff       	jmpq   400680 <_init+0x28>

00000000004006e0 <gets@plt>:
  4006e0:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4006e6:	68 05 00 00 00       	pushq  $0x5
  4006eb:	e9 90 ff ff ff       	jmpq   400680 <_init+0x28>

00000000004006f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  4006f0:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4006f6:	68 06 00 00 00       	pushq  $0x6
  4006fb:	e9 80 ff ff ff       	jmpq   400680 <_init+0x28>

Disassembly of section .plt.got:

0000000000400700 <.plt.got>:
  400700:	ff 25 f2 08 20 00    	jmpq   *0x2008f2(%rip)        # 600ff8 <_DYNAMIC+0x1e0>
  400706:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400710 <main>:
  400710:	48 83 ec 18          	sub    $0x18,%rsp
  400714:	48 89 e7             	mov    %rsp,%rdi
  400717:	e8 c4 ff ff ff       	callq  4006e0 <gets@plt>
  40071c:	be 01 00 00 00       	mov    $0x1,%esi
  400721:	bf 60 10 60 00       	mov    $0x601060,%edi
  400726:	e8 65 ff ff ff       	callq  400690 <_ZNSolsEi@plt>
  40072b:	48 89 c7             	mov    %rax,%rdi
  40072e:	e8 bd ff ff ff       	callq  4006f0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
  400733:	31 c0                	xor    %eax,%eax
  400735:	48 83 c4 18          	add    $0x18,%rsp
  400739:	c3                   	retq   
  40073a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400740 <_GLOBAL__sub_I__Z6getbufv>:
  400740:	48 83 ec 08          	sub    $0x8,%rsp
  400744:	bf 71 11 60 00       	mov    $0x601171,%edi
  400749:	e8 52 ff ff ff       	callq  4006a0 <_ZNSt8ios_base4InitC1Ev@plt>
  40074e:	ba 58 10 60 00       	mov    $0x601058,%edx
  400753:	be 71 11 60 00       	mov    $0x601171,%esi
  400758:	bf d0 06 40 00       	mov    $0x4006d0,%edi
  40075d:	48 83 c4 08          	add    $0x8,%rsp
  400761:	e9 5a ff ff ff       	jmpq   4006c0 <__cxa_atexit@plt>
  400766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40076d:	00 00 00 

0000000000400770 <_start>:
  400770:	31 ed                	xor    %ebp,%ebp
  400772:	49 89 d1             	mov    %rdx,%r9
  400775:	5e                   	pop    %rsi
  400776:	48 89 e2             	mov    %rsp,%rdx
  400779:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40077d:	50                   	push   %rax
  40077e:	54                   	push   %rsp
  40077f:	49 c7 c0 00 09 40 00 	mov    $0x400900,%r8
  400786:	48 c7 c1 90 08 40 00 	mov    $0x400890,%rcx
  40078d:	48 c7 c7 10 07 40 00 	mov    $0x400710,%rdi
  400794:	e8 17 ff ff ff       	callq  4006b0 <__libc_start_main@plt>
  400799:	f4                   	hlt    
  40079a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007a0 <deregister_tm_clones>:
  4007a0:	b8 67 10 60 00       	mov    $0x601067,%eax
  4007a5:	55                   	push   %rbp
  4007a6:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  4007ac:	48 83 f8 0e          	cmp    $0xe,%rax
  4007b0:	48 89 e5             	mov    %rsp,%rbp
  4007b3:	76 1b                	jbe    4007d0 <deregister_tm_clones+0x30>
  4007b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ba:	48 85 c0             	test   %rax,%rax
  4007bd:	74 11                	je     4007d0 <deregister_tm_clones+0x30>
  4007bf:	5d                   	pop    %rbp
  4007c0:	bf 60 10 60 00       	mov    $0x601060,%edi
  4007c5:	ff e0                	jmpq   *%rax
  4007c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ce:	00 00 
  4007d0:	5d                   	pop    %rbp
  4007d1:	c3                   	retq   
  4007d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4007d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007dd:	00 00 00 

00000000004007e0 <register_tm_clones>:
  4007e0:	be 60 10 60 00       	mov    $0x601060,%esi
  4007e5:	55                   	push   %rbp
  4007e6:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
  4007ed:	48 c1 fe 03          	sar    $0x3,%rsi
  4007f1:	48 89 e5             	mov    %rsp,%rbp
  4007f4:	48 89 f0             	mov    %rsi,%rax
  4007f7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4007fb:	48 01 c6             	add    %rax,%rsi
  4007fe:	48 d1 fe             	sar    %rsi
  400801:	74 15                	je     400818 <register_tm_clones+0x38>
  400803:	b8 00 00 00 00       	mov    $0x0,%eax
  400808:	48 85 c0             	test   %rax,%rax
  40080b:	74 0b                	je     400818 <register_tm_clones+0x38>
  40080d:	5d                   	pop    %rbp
  40080e:	bf 60 10 60 00       	mov    $0x601060,%edi
  400813:	ff e0                	jmpq   *%rax
  400815:	0f 1f 00             	nopl   (%rax)
  400818:	5d                   	pop    %rbp
  400819:	c3                   	retq   
  40081a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 49 09 20 00 00 	cmpb   $0x0,0x200949(%rip)        # 601170 <completed.7594>
  400827:	75 11                	jne    40083a <__do_global_dtors_aux+0x1a>
  400829:	55                   	push   %rbp
  40082a:	48 89 e5             	mov    %rsp,%rbp
  40082d:	e8 6e ff ff ff       	callq  4007a0 <deregister_tm_clones>
  400832:	5d                   	pop    %rbp
  400833:	c6 05 36 09 20 00 01 	movb   $0x1,0x200936(%rip)        # 601170 <completed.7594>
  40083a:	f3 c3                	repz retq 
  40083c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400840 <frame_dummy>:
  400840:	bf 10 0e 60 00       	mov    $0x600e10,%edi
  400845:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400849:	75 05                	jne    400850 <frame_dummy+0x10>
  40084b:	eb 93                	jmp    4007e0 <register_tm_clones>
  40084d:	0f 1f 00             	nopl   (%rax)
  400850:	b8 00 00 00 00       	mov    $0x0,%eax
  400855:	48 85 c0             	test   %rax,%rax
  400858:	74 f1                	je     40084b <frame_dummy+0xb>
  40085a:	55                   	push   %rbp
  40085b:	48 89 e5             	mov    %rsp,%rbp
  40085e:	ff d0                	callq  *%rax
  400860:	5d                   	pop    %rbp
  400861:	e9 7a ff ff ff       	jmpq   4007e0 <register_tm_clones>
  400866:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40086d:	00 00 00 

0000000000400870 <_Z6getbufv>:
  400870:	48 83 ec 18          	sub    $0x18,%rsp
  400874:	48 89 e7             	mov    %rsp,%rdi
  400877:	e8 64 fe ff ff       	callq  4006e0 <gets@plt>
  40087c:	b8 01 00 00 00       	mov    $0x1,%eax
  400881:	48 83 c4 18          	add    $0x18,%rsp
  400885:	c3                   	retq   
  400886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40088d:	00 00 00 

0000000000400890 <__libc_csu_init>:
  400890:	41 57                	push   %r15
  400892:	41 56                	push   %r14
  400894:	41 89 ff             	mov    %edi,%r15d
  400897:	41 55                	push   %r13
  400899:	41 54                	push   %r12
  40089b:	4c 8d 25 56 05 20 00 	lea    0x200556(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  4008a2:	55                   	push   %rbp
  4008a3:	48 8d 2d 5e 05 20 00 	lea    0x20055e(%rip),%rbp        # 600e08 <__init_array_end>
  4008aa:	53                   	push   %rbx
  4008ab:	49 89 f6             	mov    %rsi,%r14
  4008ae:	49 89 d5             	mov    %rdx,%r13
  4008b1:	4c 29 e5             	sub    %r12,%rbp
  4008b4:	48 83 ec 08          	sub    $0x8,%rsp
  4008b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4008bc:	e8 97 fd ff ff       	callq  400658 <_init>
  4008c1:	48 85 ed             	test   %rbp,%rbp
  4008c4:	74 20                	je     4008e6 <__libc_csu_init+0x56>
  4008c6:	31 db                	xor    %ebx,%ebx
  4008c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4008cf:	00 
  4008d0:	4c 89 ea             	mov    %r13,%rdx
  4008d3:	4c 89 f6             	mov    %r14,%rsi
  4008d6:	44 89 ff             	mov    %r15d,%edi
  4008d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4008dd:	48 83 c3 01          	add    $0x1,%rbx
  4008e1:	48 39 eb             	cmp    %rbp,%rbx
  4008e4:	75 ea                	jne    4008d0 <__libc_csu_init+0x40>
  4008e6:	48 83 c4 08          	add    $0x8,%rsp
  4008ea:	5b                   	pop    %rbx
  4008eb:	5d                   	pop    %rbp
  4008ec:	41 5c                	pop    %r12
  4008ee:	41 5d                	pop    %r13
  4008f0:	41 5e                	pop    %r14
  4008f2:	41 5f                	pop    %r15
  4008f4:	c3                   	retq   
  4008f5:	90                   	nop
  4008f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008fd:	00 00 00 

0000000000400900 <__libc_csu_fini>:
  400900:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400904 <_fini>:
  400904:	48 83 ec 08          	sub    $0x8,%rsp
  400908:	48 83 c4 08          	add    $0x8,%rsp
  40090c:	c3                   	retq   
