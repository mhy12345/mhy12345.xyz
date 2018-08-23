
cpp:     file format elf64-x86-64


Disassembly of section .init:

00000000004006a8 <_init>:
  4006a8:	48 83 ec 08          	sub    $0x8,%rsp
  4006ac:	48 8b 05 45 09 20 00 	mov    0x200945(%rip),%rax        # 600ff8 <_DYNAMIC+0x1e0>
  4006b3:	48 85 c0             	test   %rax,%rax
  4006b6:	74 05                	je     4006bd <_init+0x15>
  4006b8:	e8 a3 00 00 00       	callq  400760 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt+0x10>
  4006bd:	48 83 c4 08          	add    $0x8,%rsp
  4006c1:	c3                   	retq   

Disassembly of section .plt:

00000000004006d0 <_ZNSolsEi@plt-0x10>:
  4006d0:	ff 35 32 09 20 00    	pushq  0x200932(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006d6:	ff 25 34 09 20 00    	jmpq   *0x200934(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006e0 <_ZNSolsEi@plt>:
  4006e0:	ff 25 32 09 20 00    	jmpq   *0x200932(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4006e6:	68 00 00 00 00       	pushq  $0x0
  4006eb:	e9 e0 ff ff ff       	jmpq   4006d0 <_init+0x28>

00000000004006f0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4006f0:	ff 25 2a 09 20 00    	jmpq   *0x20092a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4006f6:	68 01 00 00 00       	pushq  $0x1
  4006fb:	e9 d0 ff ff ff       	jmpq   4006d0 <_init+0x28>

0000000000400700 <__libc_start_main@plt>:
  400700:	ff 25 22 09 20 00    	jmpq   *0x200922(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400706:	68 02 00 00 00       	pushq  $0x2
  40070b:	e9 c0 ff ff ff       	jmpq   4006d0 <_init+0x28>

0000000000400710 <__cxa_atexit@plt>:
  400710:	ff 25 1a 09 20 00    	jmpq   *0x20091a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400716:	68 03 00 00 00       	pushq  $0x3
  40071b:	e9 b0 ff ff ff       	jmpq   4006d0 <_init+0x28>

0000000000400720 <_ZNSt8ios_base4InitD1Ev@plt>:
  400720:	ff 25 12 09 20 00    	jmpq   *0x200912(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400726:	68 04 00 00 00       	pushq  $0x4
  40072b:	e9 a0 ff ff ff       	jmpq   4006d0 <_init+0x28>

0000000000400730 <gets@plt>:
  400730:	ff 25 0a 09 20 00    	jmpq   *0x20090a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400736:	68 05 00 00 00       	pushq  $0x5
  40073b:	e9 90 ff ff ff       	jmpq   4006d0 <_init+0x28>

0000000000400740 <_ZNSolsEPFRSoS_E@plt>:
  400740:	ff 25 02 09 20 00    	jmpq   *0x200902(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400746:	68 06 00 00 00       	pushq  $0x6
  40074b:	e9 80 ff ff ff       	jmpq   4006d0 <_init+0x28>

0000000000400750 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  400750:	ff 25 fa 08 20 00    	jmpq   *0x2008fa(%rip)        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400756:	68 07 00 00 00       	pushq  $0x7
  40075b:	e9 70 ff ff ff       	jmpq   4006d0 <_init+0x28>

Disassembly of section .plt.got:

0000000000400760 <.plt.got>:
  400760:	ff 25 92 08 20 00    	jmpq   *0x200892(%rip)        # 600ff8 <_DYNAMIC+0x1e0>
  400766:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400770 <_start>:
  400770:	31 ed                	xor    %ebp,%ebp
  400772:	49 89 d1             	mov    %rdx,%r9
  400775:	5e                   	pop    %rsi
  400776:	48 89 e2             	mov    %rsp,%rdx
  400779:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40077d:	50                   	push   %rax
  40077e:	54                   	push   %rsp
  40077f:	49 c7 c0 80 09 40 00 	mov    $0x400980,%r8
  400786:	48 c7 c1 10 09 40 00 	mov    $0x400910,%rcx
  40078d:	48 c7 c7 81 08 40 00 	mov    $0x400881,%rdi
  400794:	e8 67 ff ff ff       	callq  400700 <__libc_start_main@plt>
  400799:	f4                   	hlt    
  40079a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007a0 <deregister_tm_clones>:
  4007a0:	b8 6f 10 60 00       	mov    $0x60106f,%eax
  4007a5:	55                   	push   %rbp
  4007a6:	48 2d 68 10 60 00    	sub    $0x601068,%rax
  4007ac:	48 83 f8 0e          	cmp    $0xe,%rax
  4007b0:	48 89 e5             	mov    %rsp,%rbp
  4007b3:	76 1b                	jbe    4007d0 <deregister_tm_clones+0x30>
  4007b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ba:	48 85 c0             	test   %rax,%rax
  4007bd:	74 11                	je     4007d0 <deregister_tm_clones+0x30>
  4007bf:	5d                   	pop    %rbp
  4007c0:	bf 68 10 60 00       	mov    $0x601068,%edi
  4007c5:	ff e0                	jmpq   *%rax
  4007c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4007ce:	00 00 
  4007d0:	5d                   	pop    %rbp
  4007d1:	c3                   	retq   
  4007d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4007d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4007dd:	00 00 00 

00000000004007e0 <register_tm_clones>:
  4007e0:	be 68 10 60 00       	mov    $0x601068,%esi
  4007e5:	55                   	push   %rbp
  4007e6:	48 81 ee 68 10 60 00 	sub    $0x601068,%rsi
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
  40080e:	bf 68 10 60 00       	mov    $0x601068,%edi
  400813:	ff e0                	jmpq   *%rax
  400815:	0f 1f 00             	nopl   (%rax)
  400818:	5d                   	pop    %rbp
  400819:	c3                   	retq   
  40081a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 69 09 20 00 00 	cmpb   $0x0,0x200969(%rip)        # 601190 <completed.7594>
  400827:	75 11                	jne    40083a <__do_global_dtors_aux+0x1a>
  400829:	55                   	push   %rbp
  40082a:	48 89 e5             	mov    %rsp,%rbp
  40082d:	e8 6e ff ff ff       	callq  4007a0 <deregister_tm_clones>
  400832:	5d                   	pop    %rbp
  400833:	c6 05 56 09 20 00 01 	movb   $0x1,0x200956(%rip)        # 601190 <completed.7594>
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

0000000000400866 <_Z6getbufv>:
  400866:	55                   	push   %rbp
  400867:	48 89 e5             	mov    %rsp,%rbp
  40086a:	48 83 ec 10          	sub    $0x10,%rsp
  40086e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400872:	48 89 c7             	mov    %rax,%rdi
  400875:	e8 b6 fe ff ff       	callq  400730 <gets@plt>
  40087a:	b8 01 00 00 00       	mov    $0x1,%eax
  40087f:	c9                   	leaveq 
  400880:	c3                   	retq   

0000000000400881 <main>:
  400881:	55                   	push   %rbp
  400882:	48 89 e5             	mov    %rsp,%rbp
  400885:	48 83 ec 10          	sub    $0x10,%rsp
  400889:	e8 d8 ff ff ff       	callq  400866 <_Z6getbufv>
  40088e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400891:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400894:	89 c6                	mov    %eax,%esi
  400896:	bf 80 10 60 00       	mov    $0x601080,%edi
  40089b:	e8 40 fe ff ff       	callq  4006e0 <_ZNSolsEi@plt>
  4008a0:	be 50 07 40 00       	mov    $0x400750,%esi
  4008a5:	48 89 c7             	mov    %rax,%rdi
  4008a8:	e8 93 fe ff ff       	callq  400740 <_ZNSolsEPFRSoS_E@plt>
  4008ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b2:	c9                   	leaveq 
  4008b3:	c3                   	retq   

00000000004008b4 <_Z41__static_initialization_and_destruction_0ii>:
  4008b4:	55                   	push   %rbp
  4008b5:	48 89 e5             	mov    %rsp,%rbp
  4008b8:	48 83 ec 10          	sub    $0x10,%rsp
  4008bc:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4008bf:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4008c2:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  4008c6:	75 27                	jne    4008ef <_Z41__static_initialization_and_destruction_0ii+0x3b>
  4008c8:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  4008cf:	75 1e                	jne    4008ef <_Z41__static_initialization_and_destruction_0ii+0x3b>
  4008d1:	bf 91 11 60 00       	mov    $0x601191,%edi
  4008d6:	e8 15 fe ff ff       	callq  4006f0 <_ZNSt8ios_base4InitC1Ev@plt>
  4008db:	ba 60 10 60 00       	mov    $0x601060,%edx
  4008e0:	be 91 11 60 00       	mov    $0x601191,%esi
  4008e5:	bf 20 07 40 00       	mov    $0x400720,%edi
  4008ea:	e8 21 fe ff ff       	callq  400710 <__cxa_atexit@plt>
  4008ef:	90                   	nop
  4008f0:	c9                   	leaveq 
  4008f1:	c3                   	retq   

00000000004008f2 <_GLOBAL__sub_I__Z6getbufv>:
  4008f2:	55                   	push   %rbp
  4008f3:	48 89 e5             	mov    %rsp,%rbp
  4008f6:	be ff ff 00 00       	mov    $0xffff,%esi
  4008fb:	bf 01 00 00 00       	mov    $0x1,%edi
  400900:	e8 af ff ff ff       	callq  4008b4 <_Z41__static_initialization_and_destruction_0ii>
  400905:	5d                   	pop    %rbp
  400906:	c3                   	retq   
  400907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40090e:	00 00 

0000000000400910 <__libc_csu_init>:
  400910:	41 57                	push   %r15
  400912:	41 56                	push   %r14
  400914:	41 89 ff             	mov    %edi,%r15d
  400917:	41 55                	push   %r13
  400919:	41 54                	push   %r12
  40091b:	4c 8d 25 d6 04 20 00 	lea    0x2004d6(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400922:	55                   	push   %rbp
  400923:	48 8d 2d de 04 20 00 	lea    0x2004de(%rip),%rbp        # 600e08 <__init_array_end>
  40092a:	53                   	push   %rbx
  40092b:	49 89 f6             	mov    %rsi,%r14
  40092e:	49 89 d5             	mov    %rdx,%r13
  400931:	4c 29 e5             	sub    %r12,%rbp
  400934:	48 83 ec 08          	sub    $0x8,%rsp
  400938:	48 c1 fd 03          	sar    $0x3,%rbp
  40093c:	e8 67 fd ff ff       	callq  4006a8 <_init>
  400941:	48 85 ed             	test   %rbp,%rbp
  400944:	74 20                	je     400966 <__libc_csu_init+0x56>
  400946:	31 db                	xor    %ebx,%ebx
  400948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40094f:	00 
  400950:	4c 89 ea             	mov    %r13,%rdx
  400953:	4c 89 f6             	mov    %r14,%rsi
  400956:	44 89 ff             	mov    %r15d,%edi
  400959:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40095d:	48 83 c3 01          	add    $0x1,%rbx
  400961:	48 39 eb             	cmp    %rbp,%rbx
  400964:	75 ea                	jne    400950 <__libc_csu_init+0x40>
  400966:	48 83 c4 08          	add    $0x8,%rsp
  40096a:	5b                   	pop    %rbx
  40096b:	5d                   	pop    %rbp
  40096c:	41 5c                	pop    %r12
  40096e:	41 5d                	pop    %r13
  400970:	41 5e                	pop    %r14
  400972:	41 5f                	pop    %r15
  400974:	c3                   	retq   
  400975:	90                   	nop
  400976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40097d:	00 00 00 

0000000000400980 <__libc_csu_fini>:
  400980:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400984 <_fini>:
  400984:	48 83 ec 08          	sub    $0x8,%rsp
  400988:	48 83 c4 08          	add    $0x8,%rsp
  40098c:	c3                   	retq   
