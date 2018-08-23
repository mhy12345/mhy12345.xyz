
cpp-o2:     file format elf64-x86-64


Disassembly of section .init:

00000000004006b8 <_init>:
  4006b8:	48 83 ec 08          	sub    $0x8,%rsp
  4006bc:	48 8b 05 35 09 20 00 	mov    0x200935(%rip),%rax        # 600ff8 <_DYNAMIC+0x1e0>
  4006c3:	48 85 c0             	test   %rax,%rax
  4006c6:	74 05                	je     4006cd <_init+0x15>
  4006c8:	e8 a3 00 00 00       	callq  400770 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x10>
  4006cd:	48 83 c4 08          	add    $0x8,%rsp
  4006d1:	c3                   	retq   

Disassembly of section .plt:

00000000004006e0 <_ZNSolsEi@plt-0x10>:
  4006e0:	ff 35 22 09 20 00    	pushq  0x200922(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006e6:	ff 25 24 09 20 00    	jmpq   *0x200924(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006f0 <_ZNSolsEi@plt>:
  4006f0:	ff 25 22 09 20 00    	jmpq   *0x200922(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4006f6:	68 00 00 00 00       	pushq  $0x0
  4006fb:	e9 e0 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400700 <_ZNSt8ios_base4InitC1Ev@plt>:
  400700:	ff 25 1a 09 20 00    	jmpq   *0x20091a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400706:	68 01 00 00 00       	pushq  $0x1
  40070b:	e9 d0 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400710 <__libc_start_main@plt>:
  400710:	ff 25 12 09 20 00    	jmpq   *0x200912(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400716:	68 02 00 00 00       	pushq  $0x2
  40071b:	e9 c0 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400720 <__cxa_atexit@plt>:
  400720:	ff 25 0a 09 20 00    	jmpq   *0x20090a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400726:	68 03 00 00 00       	pushq  $0x3
  40072b:	e9 b0 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400730 <_ZNSt8ios_base4InitD1Ev@plt>:
  400730:	ff 25 02 09 20 00    	jmpq   *0x200902(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400736:	68 04 00 00 00       	pushq  $0x4
  40073b:	e9 a0 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400740 <gets@plt>:
  400740:	ff 25 fa 08 20 00    	jmpq   *0x2008fa(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400746:	68 05 00 00 00       	pushq  $0x5
  40074b:	e9 90 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400750 <__stack_chk_fail@plt>:
  400750:	ff 25 f2 08 20 00    	jmpq   *0x2008f2(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400756:	68 06 00 00 00       	pushq  $0x6
  40075b:	e9 80 ff ff ff       	jmpq   4006e0 <_init+0x28>

0000000000400760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400760:	ff 25 ea 08 20 00    	jmpq   *0x2008ea(%rip)        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400766:	68 07 00 00 00       	pushq  $0x7
  40076b:	e9 70 ff ff ff       	jmpq   4006e0 <_init+0x28>

Disassembly of section .plt.got:

0000000000400770 <.plt.got>:
  400770:	ff 25 82 08 20 00    	jmpq   *0x200882(%rip)        # 600ff8 <_DYNAMIC+0x1e0>
  400776:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400780 <main>:
  400780:	48 83 ec 18          	sub    $0x18,%rsp
  400784:	48 89 e7             	mov    %rsp,%rdi
  400787:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40078e:	00 00 
  400790:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400795:	31 c0                	xor    %eax,%eax
  400797:	e8 a4 ff ff ff       	callq  400740 <gets@plt>
  40079c:	be 01 00 00 00       	mov    $0x1,%esi
  4007a1:	bf 80 10 60 00       	mov    $0x601080,%edi
  4007a6:	e8 45 ff ff ff       	callq  4006f0 <_ZNSolsEi@plt>
  4007ab:	48 89 c7             	mov    %rax,%rdi
  4007ae:	e8 ad ff ff ff       	callq  400760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
  4007b3:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4007b8:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4007bf:	00 00 
  4007c1:	75 07                	jne    4007ca <main+0x4a>
  4007c3:	31 c0                	xor    %eax,%eax
  4007c5:	48 83 c4 18          	add    $0x18,%rsp
  4007c9:	c3                   	retq   
  4007ca:	e8 81 ff ff ff       	callq  400750 <__stack_chk_fail@plt>
  4007cf:	90                   	nop

00000000004007d0 <_GLOBAL__sub_I__Z6getbufv>:
  4007d0:	48 83 ec 08          	sub    $0x8,%rsp
  4007d4:	bf 91 11 60 00       	mov    $0x601191,%edi
  4007d9:	e8 22 ff ff ff       	callq  400700 <_ZNSt8ios_base4InitC1Ev@plt>
  4007de:	ba 60 10 60 00       	mov    $0x601060,%edx
  4007e3:	be 91 11 60 00       	mov    $0x601191,%esi
  4007e8:	bf 30 07 40 00       	mov    $0x400730,%edi
  4007ed:	48 83 c4 08          	add    $0x8,%rsp
  4007f1:	e9 2a ff ff ff       	jmpq   400720 <__cxa_atexit@plt>
  4007f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007fd:	00 00 00 

0000000000400800 <_start>:
  400800:	31 ed                	xor    %ebp,%ebp
  400802:	49 89 d1             	mov    %rdx,%r9
  400805:	5e                   	pop    %rsi
  400806:	48 89 e2             	mov    %rsp,%rdx
  400809:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40080d:	50                   	push   %rax
  40080e:	54                   	push   %rsp
  40080f:	49 c7 c0 b0 09 40 00 	mov    $0x4009b0,%r8
  400816:	48 c7 c1 40 09 40 00 	mov    $0x400940,%rcx
  40081d:	48 c7 c7 80 07 40 00 	mov    $0x400780,%rdi
  400824:	e8 e7 fe ff ff       	callq  400710 <__libc_start_main@plt>
  400829:	f4                   	hlt    
  40082a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400830 <deregister_tm_clones>:
  400830:	b8 6f 10 60 00       	mov    $0x60106f,%eax
  400835:	55                   	push   %rbp
  400836:	48 2d 68 10 60 00    	sub    $0x601068,%rax
  40083c:	48 83 f8 0e          	cmp    $0xe,%rax
  400840:	48 89 e5             	mov    %rsp,%rbp
  400843:	76 1b                	jbe    400860 <deregister_tm_clones+0x30>
  400845:	b8 00 00 00 00       	mov    $0x0,%eax
  40084a:	48 85 c0             	test   %rax,%rax
  40084d:	74 11                	je     400860 <deregister_tm_clones+0x30>
  40084f:	5d                   	pop    %rbp
  400850:	bf 68 10 60 00       	mov    $0x601068,%edi
  400855:	ff e0                	jmpq   *%rax
  400857:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40085e:	00 00 
  400860:	5d                   	pop    %rbp
  400861:	c3                   	retq   
  400862:	0f 1f 40 00          	nopl   0x0(%rax)
  400866:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40086d:	00 00 00 

0000000000400870 <register_tm_clones>:
  400870:	be 68 10 60 00       	mov    $0x601068,%esi
  400875:	55                   	push   %rbp
  400876:	48 81 ee 68 10 60 00 	sub    $0x601068,%rsi
  40087d:	48 c1 fe 03          	sar    $0x3,%rsi
  400881:	48 89 e5             	mov    %rsp,%rbp
  400884:	48 89 f0             	mov    %rsi,%rax
  400887:	48 c1 e8 3f          	shr    $0x3f,%rax
  40088b:	48 01 c6             	add    %rax,%rsi
  40088e:	48 d1 fe             	sar    %rsi
  400891:	74 15                	je     4008a8 <register_tm_clones+0x38>
  400893:	b8 00 00 00 00       	mov    $0x0,%eax
  400898:	48 85 c0             	test   %rax,%rax
  40089b:	74 0b                	je     4008a8 <register_tm_clones+0x38>
  40089d:	5d                   	pop    %rbp
  40089e:	bf 68 10 60 00       	mov    $0x601068,%edi
  4008a3:	ff e0                	jmpq   *%rax
  4008a5:	0f 1f 00             	nopl   (%rax)
  4008a8:	5d                   	pop    %rbp
  4008a9:	c3                   	retq   
  4008aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004008b0 <__do_global_dtors_aux>:
  4008b0:	80 3d d9 08 20 00 00 	cmpb   $0x0,0x2008d9(%rip)        # 601190 <completed.7594>
  4008b7:	75 11                	jne    4008ca <__do_global_dtors_aux+0x1a>
  4008b9:	55                   	push   %rbp
  4008ba:	48 89 e5             	mov    %rsp,%rbp
  4008bd:	e8 6e ff ff ff       	callq  400830 <deregister_tm_clones>
  4008c2:	5d                   	pop    %rbp
  4008c3:	c6 05 c6 08 20 00 01 	movb   $0x1,0x2008c6(%rip)        # 601190 <completed.7594>
  4008ca:	f3 c3                	repz retq 
  4008cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008d0 <frame_dummy>:
  4008d0:	bf 10 0e 60 00       	mov    $0x600e10,%edi
  4008d5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4008d9:	75 05                	jne    4008e0 <frame_dummy+0x10>
  4008db:	eb 93                	jmp    400870 <register_tm_clones>
  4008dd:	0f 1f 00             	nopl   (%rax)
  4008e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4008e5:	48 85 c0             	test   %rax,%rax
  4008e8:	74 f1                	je     4008db <frame_dummy+0xb>
  4008ea:	55                   	push   %rbp
  4008eb:	48 89 e5             	mov    %rsp,%rbp
  4008ee:	ff d0                	callq  *%rax
  4008f0:	5d                   	pop    %rbp
  4008f1:	e9 7a ff ff ff       	jmpq   400870 <register_tm_clones>
  4008f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4008fd:	00 00 00 

0000000000400900 <_Z6getbufv>:
  400900:	48 83 ec 18          	sub    $0x18,%rsp
  400904:	48 89 e7             	mov    %rsp,%rdi
  400907:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40090e:	00 00 
  400910:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400915:	31 c0                	xor    %eax,%eax
  400917:	e8 24 fe ff ff       	callq  400740 <gets@plt>
  40091c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  400921:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  400928:	00 00 
  40092a:	75 0a                	jne    400936 <_Z6getbufv+0x36>
  40092c:	b8 01 00 00 00       	mov    $0x1,%eax
  400931:	48 83 c4 18          	add    $0x18,%rsp
  400935:	c3                   	retq   
  400936:	e8 15 fe ff ff       	callq  400750 <__stack_chk_fail@plt>
  40093b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400940 <__libc_csu_init>:
  400940:	41 57                	push   %r15
  400942:	41 56                	push   %r14
  400944:	41 89 ff             	mov    %edi,%r15d
  400947:	41 55                	push   %r13
  400949:	41 54                	push   %r12
  40094b:	4c 8d 25 a6 04 20 00 	lea    0x2004a6(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400952:	55                   	push   %rbp
  400953:	48 8d 2d ae 04 20 00 	lea    0x2004ae(%rip),%rbp        # 600e08 <__init_array_end>
  40095a:	53                   	push   %rbx
  40095b:	49 89 f6             	mov    %rsi,%r14
  40095e:	49 89 d5             	mov    %rdx,%r13
  400961:	4c 29 e5             	sub    %r12,%rbp
  400964:	48 83 ec 08          	sub    $0x8,%rsp
  400968:	48 c1 fd 03          	sar    $0x3,%rbp
  40096c:	e8 47 fd ff ff       	callq  4006b8 <_init>
  400971:	48 85 ed             	test   %rbp,%rbp
  400974:	74 20                	je     400996 <__libc_csu_init+0x56>
  400976:	31 db                	xor    %ebx,%ebx
  400978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40097f:	00 
  400980:	4c 89 ea             	mov    %r13,%rdx
  400983:	4c 89 f6             	mov    %r14,%rsi
  400986:	44 89 ff             	mov    %r15d,%edi
  400989:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40098d:	48 83 c3 01          	add    $0x1,%rbx
  400991:	48 39 eb             	cmp    %rbp,%rbx
  400994:	75 ea                	jne    400980 <__libc_csu_init+0x40>
  400996:	48 83 c4 08          	add    $0x8,%rsp
  40099a:	5b                   	pop    %rbx
  40099b:	5d                   	pop    %rbp
  40099c:	41 5c                	pop    %r12
  40099e:	41 5d                	pop    %r13
  4009a0:	41 5e                	pop    %r14
  4009a2:	41 5f                	pop    %r15
  4009a4:	c3                   	retq   
  4009a5:	90                   	nop
  4009a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009ad:	00 00 00 

00000000004009b0 <__libc_csu_fini>:
  4009b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004009b4 <_fini>:
  4009b4:	48 83 ec 08          	sub    $0x8,%rsp
  4009b8:	48 83 c4 08          	add    $0x8,%rsp
  4009bc:	c3                   	retq   
