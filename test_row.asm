
_test_row:     file format elf32-i386


Disassembly of section .text:

00000000 <RowBoat>:
void MissionaryArrives(void *arg_ptr);

void CannibalArrives(void *arg_ptr);


void RowBoat() {
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
	printf(1, "rowing and rowing\n");
   6:	c7 44 24 04 ae 0d 00 	movl   $0xdae,0x4(%esp)
   d:	00 
   e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  15:	e8 93 06 00 00       	call   6ad <printf>
	sem_signal(&seats);
  1a:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
  21:	e8 2f 0d 00 00       	call   d55 <sem_signal>
	sem_signal(&seats);
  26:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
  2d:	e8 23 0d 00 00       	call   d55 <sem_signal>
	sem_signal(&seats);
  32:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
  39:	e8 17 0d 00 00       	call   d55 <sem_signal>
	missionaries = 0;
  3e:	c7 05 18 0f 00 00 00 	movl   $0x0,0xf18
  45:	00 00 00 
	cannibals = 0;
  48:	c7 05 1c 0f 00 00 00 	movl   $0x0,0xf1c
  4f:	00 00 00 
}
  52:	c9                   	leave  
  53:	c3                   	ret    

00000054 <main>:


int main(int argc, char *argv[]){
  54:	55                   	push   %ebp
  55:	89 e5                	mov    %esp,%ebp
  57:	83 e4 f0             	and    $0xfffffff0,%esp
  5a:	83 ec 20             	sub    $0x20,%esp
	init_semaphore(&seats, 3);
  5d:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
  64:	00 
  65:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
  6c:	e8 4b 0c 00 00       	call   cbc <init_semaphore>

	int pid = fork();
  71:	e8 8e 04 00 00       	call   504 <fork>
  76:	89 44 24 1c          	mov    %eax,0x1c(%esp)
	if (pid == 0)
  7a:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  7f:	0f 85 dc 00 00 00    	jne    161 <main+0x10d>
	{
					printf(1, "---TEST 1---\n");
  85:	c7 44 24 04 c1 0d 00 	movl   $0xdc1,0x4(%esp)
  8c:	00 
  8d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  94:	e8 14 06 00 00       	call   6ad <printf>
					void *tid = thread_create(MissionaryArrives,(void *)0);
  99:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  a0:	00 
  a1:	c7 04 24 84 01 00 00 	movl   $0x184,(%esp)
  a8:	e8 29 0a 00 00       	call   ad6 <thread_create>
  ad:	89 44 24 18          	mov    %eax,0x18(%esp)
					if(tid == 0){
  b1:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  b6:	75 19                	jne    d1 <main+0x7d>
						printf(1,"thread_create fails\n");
  b8:	c7 44 24 04 cf 0d 00 	movl   $0xdcf,0x4(%esp)
  bf:	00 
  c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  c7:	e8 e1 05 00 00       	call   6ad <printf>
						exit();
  cc:	e8 3b 04 00 00       	call   50c <exit>
					}
					tid = thread_create(MissionaryArrives,(void *)0);
  d1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  d8:	00 
  d9:	c7 04 24 84 01 00 00 	movl   $0x184,(%esp)
  e0:	e8 f1 09 00 00       	call   ad6 <thread_create>
  e5:	89 44 24 18          	mov    %eax,0x18(%esp)
					if(tid == 0){
  e9:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  ee:	75 19                	jne    109 <main+0xb5>
						printf(1,"thread_create fails\n");
  f0:	c7 44 24 04 cf 0d 00 	movl   $0xdcf,0x4(%esp)
  f7:	00 
  f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  ff:	e8 a9 05 00 00       	call   6ad <printf>
						exit();
 104:	e8 03 04 00 00       	call   50c <exit>
					}
					tid = thread_create(MissionaryArrives,(void *)0);
 109:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 110:	00 
 111:	c7 04 24 84 01 00 00 	movl   $0x184,(%esp)
 118:	e8 b9 09 00 00       	call   ad6 <thread_create>
 11d:	89 44 24 18          	mov    %eax,0x18(%esp)
					if(tid == 0){
 121:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 126:	75 19                	jne    141 <main+0xed>
						printf(1,"thread_create fails\n");
 128:	c7 44 24 04 cf 0d 00 	movl   $0xdcf,0x4(%esp)
 12f:	00 
 130:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 137:	e8 71 05 00 00       	call   6ad <printf>
						exit();
 13c:	e8 cb 03 00 00       	call   50c <exit>
					}
		
					while(wait() >= 0);
 141:	90                   	nop
 142:	e8 cd 03 00 00       	call   514 <wait>
 147:	85 c0                	test   %eax,%eax
 149:	79 f7                	jns    142 <main+0xee>
					printf(1, "done \n");			
 14b:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 152:	00 
 153:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 15a:	e8 4e 05 00 00       	call   6ad <printf>
 15f:	eb 1e                	jmp    17f <main+0x12b>
	}
	else
	{
		while(wait() >= 0);
 161:	90                   	nop
 162:	e8 ad 03 00 00       	call   514 <wait>
 167:	85 c0                	test   %eax,%eax
 169:	79 f7                	jns    162 <main+0x10e>
		printf(1, "done \n");			
 16b:	c7 44 24 04 e4 0d 00 	movl   $0xde4,0x4(%esp)
 172:	00 
 173:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 17a:	e8 2e 05 00 00       	call   6ad <printf>
	}
	exit();
 17f:	e8 88 03 00 00       	call   50c <exit>

00000184 <MissionaryArrives>:
}

void MissionaryArrives(void *arg_ptr){
 184:	55                   	push   %ebp
 185:	89 e5                	mov    %esp,%ebp
 187:	83 ec 18             	sub    $0x18,%esp
	printf(1, "%d Missionary arrived!\n", getpid());
 18a:	e8 fd 03 00 00       	call   58c <getpid>
 18f:	89 44 24 08          	mov    %eax,0x8(%esp)
 193:	c7 44 24 04 eb 0d 00 	movl   $0xdeb,0x4(%esp)
 19a:	00 
 19b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1a2:	e8 06 05 00 00       	call   6ad <printf>
	while(1) {
					sem_acquire(&seats);
 1a7:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
 1ae:	e8 35 0b 00 00       	call   ce8 <sem_acquire>
					if (cannibals != 1 && missionaries != 1) {
 1b3:	a1 1c 0f 00 00       	mov    0xf1c,%eax
 1b8:	83 f8 01             	cmp    $0x1,%eax
 1bb:	74 2c                	je     1e9 <MissionaryArrives+0x65>
 1bd:	a1 18 0f 00 00       	mov    0xf18,%eax
 1c2:	83 f8 01             	cmp    $0x1,%eax
 1c5:	74 22                	je     1e9 <MissionaryArrives+0x65>
						missionaries = missionaries + 1;
 1c7:	a1 18 0f 00 00       	mov    0xf18,%eax
 1cc:	83 c0 01             	add    $0x1,%eax
 1cf:	a3 18 0f 00 00       	mov    %eax,0xf18
						break;
 1d4:	90                   	nop
					}
					else {
						sem_signal(&seats);
					}
	}
	if (missionaries + cannibals == 3) {
 1d5:	8b 15 18 0f 00 00    	mov    0xf18,%edx
 1db:	a1 1c 0f 00 00       	mov    0xf1c,%eax
 1e0:	01 d0                	add    %edx,%eax
 1e2:	83 f8 03             	cmp    $0x3,%eax
 1e5:	75 29                	jne    210 <MissionaryArrives+0x8c>
 1e7:	eb 0e                	jmp    1f7 <MissionaryArrives+0x73>
					if (cannibals != 1 && missionaries != 1) {
						missionaries = missionaries + 1;
						break;
					}
					else {
						sem_signal(&seats);
 1e9:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
 1f0:	e8 60 0b 00 00       	call   d55 <sem_signal>
					}
	}
 1f5:	eb b0                	jmp    1a7 <MissionaryArrives+0x23>
	if (missionaries + cannibals == 3) {
		printf(1, "setting sail\n");
 1f7:	c7 44 24 04 03 0e 00 	movl   $0xe03,0x4(%esp)
 1fe:	00 
 1ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 206:	e8 a2 04 00 00       	call   6ad <printf>
		RowBoat();
 20b:	e8 f0 fd ff ff       	call   0 <RowBoat>
	}
	printf(1, "missionaries = %d\n", missionaries);
 210:	a1 18 0f 00 00       	mov    0xf18,%eax
 215:	89 44 24 08          	mov    %eax,0x8(%esp)
 219:	c7 44 24 04 11 0e 00 	movl   $0xe11,0x4(%esp)
 220:	00 
 221:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 228:	e8 80 04 00 00       	call   6ad <printf>
	printf(1, "exiting\n");
 22d:	c7 44 24 04 24 0e 00 	movl   $0xe24,0x4(%esp)
 234:	00 
 235:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 23c:	e8 6c 04 00 00       	call   6ad <printf>
	texit();
 241:	e8 6e 03 00 00       	call   5b4 <texit>

00000246 <CannibalArrives>:
}

void CannibalArrives(void *arg_ptr){
 246:	55                   	push   %ebp
 247:	89 e5                	mov    %esp,%ebp
 249:	83 ec 18             	sub    $0x18,%esp
	while(1) {
					sem_acquire(&seats);
 24c:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
 253:	e8 90 0a 00 00       	call   ce8 <sem_acquire>
					if (cannibals != 1 && missionaries != 1) {
 258:	a1 1c 0f 00 00       	mov    0xf1c,%eax
 25d:	83 f8 01             	cmp    $0x1,%eax
 260:	74 2c                	je     28e <CannibalArrives+0x48>
 262:	a1 18 0f 00 00       	mov    0xf18,%eax
 267:	83 f8 01             	cmp    $0x1,%eax
 26a:	74 22                	je     28e <CannibalArrives+0x48>
						cannibals++;
 26c:	a1 1c 0f 00 00       	mov    0xf1c,%eax
 271:	83 c0 01             	add    $0x1,%eax
 274:	a3 1c 0f 00 00       	mov    %eax,0xf1c
						break;
 279:	90                   	nop
					}
					else {
						sem_signal(&seats);
					}
	}
	if (missionaries + cannibals == 3) {
 27a:	8b 15 18 0f 00 00    	mov    0xf18,%edx
 280:	a1 1c 0f 00 00       	mov    0xf1c,%eax
 285:	01 d0                	add    %edx,%eax
 287:	83 f8 03             	cmp    $0x3,%eax
 28a:	75 15                	jne    2a1 <CannibalArrives+0x5b>
 28c:	eb 0e                	jmp    29c <CannibalArrives+0x56>
					if (cannibals != 1 && missionaries != 1) {
						cannibals++;
						break;
					}
					else {
						sem_signal(&seats);
 28e:	c7 04 24 2c 0f 00 00 	movl   $0xf2c,(%esp)
 295:	e8 bb 0a 00 00       	call   d55 <sem_signal>
					}
	}
 29a:	eb b0                	jmp    24c <CannibalArrives+0x6>
	if (missionaries + cannibals == 3) {
		RowBoat();
 29c:	e8 5f fd ff ff       	call   0 <RowBoat>
	}
	texit();
 2a1:	e8 0e 03 00 00       	call   5b4 <texit>
 2a6:	66 90                	xchg   %ax,%ax

000002a8 <stosb>:
 2a8:	55                   	push   %ebp
 2a9:	89 e5                	mov    %esp,%ebp
 2ab:	57                   	push   %edi
 2ac:	53                   	push   %ebx
 2ad:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2b0:	8b 55 10             	mov    0x10(%ebp),%edx
 2b3:	8b 45 0c             	mov    0xc(%ebp),%eax
 2b6:	89 cb                	mov    %ecx,%ebx
 2b8:	89 df                	mov    %ebx,%edi
 2ba:	89 d1                	mov    %edx,%ecx
 2bc:	fc                   	cld    
 2bd:	f3 aa                	rep stos %al,%es:(%edi)
 2bf:	89 ca                	mov    %ecx,%edx
 2c1:	89 fb                	mov    %edi,%ebx
 2c3:	89 5d 08             	mov    %ebx,0x8(%ebp)
 2c6:	89 55 10             	mov    %edx,0x10(%ebp)
 2c9:	5b                   	pop    %ebx
 2ca:	5f                   	pop    %edi
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret    

000002cd <strcpy>:
 2cd:	55                   	push   %ebp
 2ce:	89 e5                	mov    %esp,%ebp
 2d0:	83 ec 10             	sub    $0x10,%esp
 2d3:	8b 45 08             	mov    0x8(%ebp),%eax
 2d6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 2d9:	8b 45 0c             	mov    0xc(%ebp),%eax
 2dc:	0f b6 10             	movzbl (%eax),%edx
 2df:	8b 45 08             	mov    0x8(%ebp),%eax
 2e2:	88 10                	mov    %dl,(%eax)
 2e4:	8b 45 08             	mov    0x8(%ebp),%eax
 2e7:	0f b6 00             	movzbl (%eax),%eax
 2ea:	84 c0                	test   %al,%al
 2ec:	0f 95 c0             	setne  %al
 2ef:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 2f3:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 2f7:	84 c0                	test   %al,%al
 2f9:	75 de                	jne    2d9 <strcpy+0xc>
 2fb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 2fe:	c9                   	leave  
 2ff:	c3                   	ret    

00000300 <strcmp>:
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	eb 08                	jmp    30d <strcmp+0xd>
 305:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 309:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 30d:	8b 45 08             	mov    0x8(%ebp),%eax
 310:	0f b6 00             	movzbl (%eax),%eax
 313:	84 c0                	test   %al,%al
 315:	74 10                	je     327 <strcmp+0x27>
 317:	8b 45 08             	mov    0x8(%ebp),%eax
 31a:	0f b6 10             	movzbl (%eax),%edx
 31d:	8b 45 0c             	mov    0xc(%ebp),%eax
 320:	0f b6 00             	movzbl (%eax),%eax
 323:	38 c2                	cmp    %al,%dl
 325:	74 de                	je     305 <strcmp+0x5>
 327:	8b 45 08             	mov    0x8(%ebp),%eax
 32a:	0f b6 00             	movzbl (%eax),%eax
 32d:	0f b6 d0             	movzbl %al,%edx
 330:	8b 45 0c             	mov    0xc(%ebp),%eax
 333:	0f b6 00             	movzbl (%eax),%eax
 336:	0f b6 c0             	movzbl %al,%eax
 339:	89 d1                	mov    %edx,%ecx
 33b:	29 c1                	sub    %eax,%ecx
 33d:	89 c8                	mov    %ecx,%eax
 33f:	5d                   	pop    %ebp
 340:	c3                   	ret    

00000341 <strlen>:
 341:	55                   	push   %ebp
 342:	89 e5                	mov    %esp,%ebp
 344:	83 ec 10             	sub    $0x10,%esp
 347:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 34e:	eb 04                	jmp    354 <strlen+0x13>
 350:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 354:	8b 45 fc             	mov    -0x4(%ebp),%eax
 357:	03 45 08             	add    0x8(%ebp),%eax
 35a:	0f b6 00             	movzbl (%eax),%eax
 35d:	84 c0                	test   %al,%al
 35f:	75 ef                	jne    350 <strlen+0xf>
 361:	8b 45 fc             	mov    -0x4(%ebp),%eax
 364:	c9                   	leave  
 365:	c3                   	ret    

00000366 <memset>:
 366:	55                   	push   %ebp
 367:	89 e5                	mov    %esp,%ebp
 369:	83 ec 0c             	sub    $0xc,%esp
 36c:	8b 45 10             	mov    0x10(%ebp),%eax
 36f:	89 44 24 08          	mov    %eax,0x8(%esp)
 373:	8b 45 0c             	mov    0xc(%ebp),%eax
 376:	89 44 24 04          	mov    %eax,0x4(%esp)
 37a:	8b 45 08             	mov    0x8(%ebp),%eax
 37d:	89 04 24             	mov    %eax,(%esp)
 380:	e8 23 ff ff ff       	call   2a8 <stosb>
 385:	8b 45 08             	mov    0x8(%ebp),%eax
 388:	c9                   	leave  
 389:	c3                   	ret    

0000038a <strchr>:
 38a:	55                   	push   %ebp
 38b:	89 e5                	mov    %esp,%ebp
 38d:	83 ec 04             	sub    $0x4,%esp
 390:	8b 45 0c             	mov    0xc(%ebp),%eax
 393:	88 45 fc             	mov    %al,-0x4(%ebp)
 396:	eb 14                	jmp    3ac <strchr+0x22>
 398:	8b 45 08             	mov    0x8(%ebp),%eax
 39b:	0f b6 00             	movzbl (%eax),%eax
 39e:	3a 45 fc             	cmp    -0x4(%ebp),%al
 3a1:	75 05                	jne    3a8 <strchr+0x1e>
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	eb 13                	jmp    3bb <strchr+0x31>
 3a8:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 3ac:	8b 45 08             	mov    0x8(%ebp),%eax
 3af:	0f b6 00             	movzbl (%eax),%eax
 3b2:	84 c0                	test   %al,%al
 3b4:	75 e2                	jne    398 <strchr+0xe>
 3b6:	b8 00 00 00 00       	mov    $0x0,%eax
 3bb:	c9                   	leave  
 3bc:	c3                   	ret    

000003bd <gets>:
 3bd:	55                   	push   %ebp
 3be:	89 e5                	mov    %esp,%ebp
 3c0:	83 ec 28             	sub    $0x28,%esp
 3c3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 3ca:	eb 44                	jmp    410 <gets+0x53>
 3cc:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3d3:	00 
 3d4:	8d 45 ef             	lea    -0x11(%ebp),%eax
 3d7:	89 44 24 04          	mov    %eax,0x4(%esp)
 3db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 3e2:	e8 3d 01 00 00       	call   524 <read>
 3e7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 3ea:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 3ee:	7e 2d                	jle    41d <gets+0x60>
 3f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 3f3:	03 45 08             	add    0x8(%ebp),%eax
 3f6:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
 3fa:	88 10                	mov    %dl,(%eax)
 3fc:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 400:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 404:	3c 0a                	cmp    $0xa,%al
 406:	74 16                	je     41e <gets+0x61>
 408:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 40c:	3c 0d                	cmp    $0xd,%al
 40e:	74 0e                	je     41e <gets+0x61>
 410:	8b 45 f0             	mov    -0x10(%ebp),%eax
 413:	83 c0 01             	add    $0x1,%eax
 416:	3b 45 0c             	cmp    0xc(%ebp),%eax
 419:	7c b1                	jl     3cc <gets+0xf>
 41b:	eb 01                	jmp    41e <gets+0x61>
 41d:	90                   	nop
 41e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 421:	03 45 08             	add    0x8(%ebp),%eax
 424:	c6 00 00             	movb   $0x0,(%eax)
 427:	8b 45 08             	mov    0x8(%ebp),%eax
 42a:	c9                   	leave  
 42b:	c3                   	ret    

0000042c <stat>:
 42c:	55                   	push   %ebp
 42d:	89 e5                	mov    %esp,%ebp
 42f:	83 ec 28             	sub    $0x28,%esp
 432:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 439:	00 
 43a:	8b 45 08             	mov    0x8(%ebp),%eax
 43d:	89 04 24             	mov    %eax,(%esp)
 440:	e8 07 01 00 00       	call   54c <open>
 445:	89 45 f0             	mov    %eax,-0x10(%ebp)
 448:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 44c:	79 07                	jns    455 <stat+0x29>
 44e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 453:	eb 23                	jmp    478 <stat+0x4c>
 455:	8b 45 0c             	mov    0xc(%ebp),%eax
 458:	89 44 24 04          	mov    %eax,0x4(%esp)
 45c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 45f:	89 04 24             	mov    %eax,(%esp)
 462:	e8 fd 00 00 00       	call   564 <fstat>
 467:	89 45 f4             	mov    %eax,-0xc(%ebp)
 46a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 46d:	89 04 24             	mov    %eax,(%esp)
 470:	e8 bf 00 00 00       	call   534 <close>
 475:	8b 45 f4             	mov    -0xc(%ebp),%eax
 478:	c9                   	leave  
 479:	c3                   	ret    

0000047a <atoi>:
 47a:	55                   	push   %ebp
 47b:	89 e5                	mov    %esp,%ebp
 47d:	83 ec 10             	sub    $0x10,%esp
 480:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 487:	eb 24                	jmp    4ad <atoi+0x33>
 489:	8b 55 fc             	mov    -0x4(%ebp),%edx
 48c:	89 d0                	mov    %edx,%eax
 48e:	c1 e0 02             	shl    $0x2,%eax
 491:	01 d0                	add    %edx,%eax
 493:	01 c0                	add    %eax,%eax
 495:	89 c2                	mov    %eax,%edx
 497:	8b 45 08             	mov    0x8(%ebp),%eax
 49a:	0f b6 00             	movzbl (%eax),%eax
 49d:	0f be c0             	movsbl %al,%eax
 4a0:	8d 04 02             	lea    (%edx,%eax,1),%eax
 4a3:	83 e8 30             	sub    $0x30,%eax
 4a6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 4a9:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 4ad:	8b 45 08             	mov    0x8(%ebp),%eax
 4b0:	0f b6 00             	movzbl (%eax),%eax
 4b3:	3c 2f                	cmp    $0x2f,%al
 4b5:	7e 0a                	jle    4c1 <atoi+0x47>
 4b7:	8b 45 08             	mov    0x8(%ebp),%eax
 4ba:	0f b6 00             	movzbl (%eax),%eax
 4bd:	3c 39                	cmp    $0x39,%al
 4bf:	7e c8                	jle    489 <atoi+0xf>
 4c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 4c4:	c9                   	leave  
 4c5:	c3                   	ret    

000004c6 <memmove>:
 4c6:	55                   	push   %ebp
 4c7:	89 e5                	mov    %esp,%ebp
 4c9:	83 ec 10             	sub    $0x10,%esp
 4cc:	8b 45 08             	mov    0x8(%ebp),%eax
 4cf:	89 45 f8             	mov    %eax,-0x8(%ebp)
 4d2:	8b 45 0c             	mov    0xc(%ebp),%eax
 4d5:	89 45 fc             	mov    %eax,-0x4(%ebp)
 4d8:	eb 13                	jmp    4ed <memmove+0x27>
 4da:	8b 45 fc             	mov    -0x4(%ebp),%eax
 4dd:	0f b6 10             	movzbl (%eax),%edx
 4e0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 4e3:	88 10                	mov    %dl,(%eax)
 4e5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 4e9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 4ed:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 4f1:	0f 9f c0             	setg   %al
 4f4:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 4f8:	84 c0                	test   %al,%al
 4fa:	75 de                	jne    4da <memmove+0x14>
 4fc:	8b 45 08             	mov    0x8(%ebp),%eax
 4ff:	c9                   	leave  
 500:	c3                   	ret    
 501:	66 90                	xchg   %ax,%ax
 503:	90                   	nop

00000504 <fork>:
 504:	b8 01 00 00 00       	mov    $0x1,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <exit>:
 50c:	b8 02 00 00 00       	mov    $0x2,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <wait>:
 514:	b8 03 00 00 00       	mov    $0x3,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <pipe>:
 51c:	b8 04 00 00 00       	mov    $0x4,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <read>:
 524:	b8 05 00 00 00       	mov    $0x5,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <write>:
 52c:	b8 10 00 00 00       	mov    $0x10,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <close>:
 534:	b8 15 00 00 00       	mov    $0x15,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <kill>:
 53c:	b8 06 00 00 00       	mov    $0x6,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <exec>:
 544:	b8 07 00 00 00       	mov    $0x7,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <open>:
 54c:	b8 0f 00 00 00       	mov    $0xf,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <mknod>:
 554:	b8 11 00 00 00       	mov    $0x11,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <unlink>:
 55c:	b8 12 00 00 00       	mov    $0x12,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <fstat>:
 564:	b8 08 00 00 00       	mov    $0x8,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <link>:
 56c:	b8 13 00 00 00       	mov    $0x13,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <mkdir>:
 574:	b8 14 00 00 00       	mov    $0x14,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <chdir>:
 57c:	b8 09 00 00 00       	mov    $0x9,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <dup>:
 584:	b8 0a 00 00 00       	mov    $0xa,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <getpid>:
 58c:	b8 0b 00 00 00       	mov    $0xb,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <sbrk>:
 594:	b8 0c 00 00 00       	mov    $0xc,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <sleep>:
 59c:	b8 0d 00 00 00       	mov    $0xd,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <uptime>:
 5a4:	b8 0e 00 00 00       	mov    $0xe,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <clone>:
 5ac:	b8 16 00 00 00       	mov    $0x16,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <texit>:
 5b4:	b8 17 00 00 00       	mov    $0x17,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <tsleep>:
 5bc:	b8 18 00 00 00       	mov    $0x18,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <twakeup>:
 5c4:	b8 19 00 00 00       	mov    $0x19,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <thread_yield>:
 5cc:	b8 1a 00 00 00       	mov    $0x1a,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    

000005d4 <putc>:
 5d4:	55                   	push   %ebp
 5d5:	89 e5                	mov    %esp,%ebp
 5d7:	83 ec 28             	sub    $0x28,%esp
 5da:	8b 45 0c             	mov    0xc(%ebp),%eax
 5dd:	88 45 f4             	mov    %al,-0xc(%ebp)
 5e0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5e7:	00 
 5e8:	8d 45 f4             	lea    -0xc(%ebp),%eax
 5eb:	89 44 24 04          	mov    %eax,0x4(%esp)
 5ef:	8b 45 08             	mov    0x8(%ebp),%eax
 5f2:	89 04 24             	mov    %eax,(%esp)
 5f5:	e8 32 ff ff ff       	call   52c <write>
 5fa:	c9                   	leave  
 5fb:	c3                   	ret    

000005fc <printint>:
 5fc:	55                   	push   %ebp
 5fd:	89 e5                	mov    %esp,%ebp
 5ff:	53                   	push   %ebx
 600:	83 ec 44             	sub    $0x44,%esp
 603:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 60a:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 60e:	74 17                	je     627 <printint+0x2b>
 610:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 614:	79 11                	jns    627 <printint+0x2b>
 616:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 61d:	8b 45 0c             	mov    0xc(%ebp),%eax
 620:	f7 d8                	neg    %eax
 622:	89 45 f4             	mov    %eax,-0xc(%ebp)
 625:	eb 06                	jmp    62d <printint+0x31>
 627:	8b 45 0c             	mov    0xc(%ebp),%eax
 62a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 62d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 634:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 637:	8b 5d 10             	mov    0x10(%ebp),%ebx
 63a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 63d:	ba 00 00 00 00       	mov    $0x0,%edx
 642:	f7 f3                	div    %ebx
 644:	89 d0                	mov    %edx,%eax
 646:	0f b6 80 04 0f 00 00 	movzbl 0xf04(%eax),%eax
 64d:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
 651:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 655:	8b 45 10             	mov    0x10(%ebp),%eax
 658:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 65b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 65e:	ba 00 00 00 00       	mov    $0x0,%edx
 663:	f7 75 d4             	divl   -0x2c(%ebp)
 666:	89 45 f4             	mov    %eax,-0xc(%ebp)
 669:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 66d:	75 c5                	jne    634 <printint+0x38>
 66f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 673:	74 28                	je     69d <printint+0xa1>
 675:	8b 45 ec             	mov    -0x14(%ebp),%eax
 678:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
 67d:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 681:	eb 1a                	jmp    69d <printint+0xa1>
 683:	8b 45 ec             	mov    -0x14(%ebp),%eax
 686:	0f b6 44 05 dc       	movzbl -0x24(%ebp,%eax,1),%eax
 68b:	0f be c0             	movsbl %al,%eax
 68e:	89 44 24 04          	mov    %eax,0x4(%esp)
 692:	8b 45 08             	mov    0x8(%ebp),%eax
 695:	89 04 24             	mov    %eax,(%esp)
 698:	e8 37 ff ff ff       	call   5d4 <putc>
 69d:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 6a1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 6a5:	79 dc                	jns    683 <printint+0x87>
 6a7:	83 c4 44             	add    $0x44,%esp
 6aa:	5b                   	pop    %ebx
 6ab:	5d                   	pop    %ebp
 6ac:	c3                   	ret    

000006ad <printf>:
 6ad:	55                   	push   %ebp
 6ae:	89 e5                	mov    %esp,%ebp
 6b0:	83 ec 38             	sub    $0x38,%esp
 6b3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 6ba:	8d 45 0c             	lea    0xc(%ebp),%eax
 6bd:	83 c0 04             	add    $0x4,%eax
 6c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 6c3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 6ca:	e9 7e 01 00 00       	jmp    84d <printf+0x1a0>
 6cf:	8b 55 0c             	mov    0xc(%ebp),%edx
 6d2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 6d5:	8d 04 02             	lea    (%edx,%eax,1),%eax
 6d8:	0f b6 00             	movzbl (%eax),%eax
 6db:	0f be c0             	movsbl %al,%eax
 6de:	25 ff 00 00 00       	and    $0xff,%eax
 6e3:	89 45 e8             	mov    %eax,-0x18(%ebp)
 6e6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 6ea:	75 2c                	jne    718 <printf+0x6b>
 6ec:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 6f0:	75 0c                	jne    6fe <printf+0x51>
 6f2:	c7 45 f0 25 00 00 00 	movl   $0x25,-0x10(%ebp)
 6f9:	e9 4b 01 00 00       	jmp    849 <printf+0x19c>
 6fe:	8b 45 e8             	mov    -0x18(%ebp),%eax
 701:	0f be c0             	movsbl %al,%eax
 704:	89 44 24 04          	mov    %eax,0x4(%esp)
 708:	8b 45 08             	mov    0x8(%ebp),%eax
 70b:	89 04 24             	mov    %eax,(%esp)
 70e:	e8 c1 fe ff ff       	call   5d4 <putc>
 713:	e9 31 01 00 00       	jmp    849 <printf+0x19c>
 718:	83 7d f0 25          	cmpl   $0x25,-0x10(%ebp)
 71c:	0f 85 27 01 00 00    	jne    849 <printf+0x19c>
 722:	83 7d e8 64          	cmpl   $0x64,-0x18(%ebp)
 726:	75 2d                	jne    755 <printf+0xa8>
 728:	8b 45 f4             	mov    -0xc(%ebp),%eax
 72b:	8b 00                	mov    (%eax),%eax
 72d:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 734:	00 
 735:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 73c:	00 
 73d:	89 44 24 04          	mov    %eax,0x4(%esp)
 741:	8b 45 08             	mov    0x8(%ebp),%eax
 744:	89 04 24             	mov    %eax,(%esp)
 747:	e8 b0 fe ff ff       	call   5fc <printint>
 74c:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 750:	e9 ed 00 00 00       	jmp    842 <printf+0x195>
 755:	83 7d e8 78          	cmpl   $0x78,-0x18(%ebp)
 759:	74 06                	je     761 <printf+0xb4>
 75b:	83 7d e8 70          	cmpl   $0x70,-0x18(%ebp)
 75f:	75 2d                	jne    78e <printf+0xe1>
 761:	8b 45 f4             	mov    -0xc(%ebp),%eax
 764:	8b 00                	mov    (%eax),%eax
 766:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 76d:	00 
 76e:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 775:	00 
 776:	89 44 24 04          	mov    %eax,0x4(%esp)
 77a:	8b 45 08             	mov    0x8(%ebp),%eax
 77d:	89 04 24             	mov    %eax,(%esp)
 780:	e8 77 fe ff ff       	call   5fc <printint>
 785:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 789:	e9 b4 00 00 00       	jmp    842 <printf+0x195>
 78e:	83 7d e8 73          	cmpl   $0x73,-0x18(%ebp)
 792:	75 46                	jne    7da <printf+0x12d>
 794:	8b 45 f4             	mov    -0xc(%ebp),%eax
 797:	8b 00                	mov    (%eax),%eax
 799:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 79c:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 7a0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 7a4:	75 27                	jne    7cd <printf+0x120>
 7a6:	c7 45 e4 2d 0e 00 00 	movl   $0xe2d,-0x1c(%ebp)
 7ad:	eb 1f                	jmp    7ce <printf+0x121>
 7af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7b2:	0f b6 00             	movzbl (%eax),%eax
 7b5:	0f be c0             	movsbl %al,%eax
 7b8:	89 44 24 04          	mov    %eax,0x4(%esp)
 7bc:	8b 45 08             	mov    0x8(%ebp),%eax
 7bf:	89 04 24             	mov    %eax,(%esp)
 7c2:	e8 0d fe ff ff       	call   5d4 <putc>
 7c7:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 7cb:	eb 01                	jmp    7ce <printf+0x121>
 7cd:	90                   	nop
 7ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7d1:	0f b6 00             	movzbl (%eax),%eax
 7d4:	84 c0                	test   %al,%al
 7d6:	75 d7                	jne    7af <printf+0x102>
 7d8:	eb 68                	jmp    842 <printf+0x195>
 7da:	83 7d e8 63          	cmpl   $0x63,-0x18(%ebp)
 7de:	75 1d                	jne    7fd <printf+0x150>
 7e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7e3:	8b 00                	mov    (%eax),%eax
 7e5:	0f be c0             	movsbl %al,%eax
 7e8:	89 44 24 04          	mov    %eax,0x4(%esp)
 7ec:	8b 45 08             	mov    0x8(%ebp),%eax
 7ef:	89 04 24             	mov    %eax,(%esp)
 7f2:	e8 dd fd ff ff       	call   5d4 <putc>
 7f7:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 7fb:	eb 45                	jmp    842 <printf+0x195>
 7fd:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 801:	75 17                	jne    81a <printf+0x16d>
 803:	8b 45 e8             	mov    -0x18(%ebp),%eax
 806:	0f be c0             	movsbl %al,%eax
 809:	89 44 24 04          	mov    %eax,0x4(%esp)
 80d:	8b 45 08             	mov    0x8(%ebp),%eax
 810:	89 04 24             	mov    %eax,(%esp)
 813:	e8 bc fd ff ff       	call   5d4 <putc>
 818:	eb 28                	jmp    842 <printf+0x195>
 81a:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 821:	00 
 822:	8b 45 08             	mov    0x8(%ebp),%eax
 825:	89 04 24             	mov    %eax,(%esp)
 828:	e8 a7 fd ff ff       	call   5d4 <putc>
 82d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 830:	0f be c0             	movsbl %al,%eax
 833:	89 44 24 04          	mov    %eax,0x4(%esp)
 837:	8b 45 08             	mov    0x8(%ebp),%eax
 83a:	89 04 24             	mov    %eax,(%esp)
 83d:	e8 92 fd ff ff       	call   5d4 <putc>
 842:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 849:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 84d:	8b 55 0c             	mov    0xc(%ebp),%edx
 850:	8b 45 ec             	mov    -0x14(%ebp),%eax
 853:	8d 04 02             	lea    (%edx,%eax,1),%eax
 856:	0f b6 00             	movzbl (%eax),%eax
 859:	84 c0                	test   %al,%al
 85b:	0f 85 6e fe ff ff    	jne    6cf <printf+0x22>
 861:	c9                   	leave  
 862:	c3                   	ret    
 863:	90                   	nop

00000864 <free>:
 864:	55                   	push   %ebp
 865:	89 e5                	mov    %esp,%ebp
 867:	83 ec 10             	sub    $0x10,%esp
 86a:	8b 45 08             	mov    0x8(%ebp),%eax
 86d:	83 e8 08             	sub    $0x8,%eax
 870:	89 45 f8             	mov    %eax,-0x8(%ebp)
 873:	a1 28 0f 00 00       	mov    0xf28,%eax
 878:	89 45 fc             	mov    %eax,-0x4(%ebp)
 87b:	eb 24                	jmp    8a1 <free+0x3d>
 87d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 880:	8b 00                	mov    (%eax),%eax
 882:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 885:	77 12                	ja     899 <free+0x35>
 887:	8b 45 f8             	mov    -0x8(%ebp),%eax
 88a:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 88d:	77 24                	ja     8b3 <free+0x4f>
 88f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 892:	8b 00                	mov    (%eax),%eax
 894:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 897:	77 1a                	ja     8b3 <free+0x4f>
 899:	8b 45 fc             	mov    -0x4(%ebp),%eax
 89c:	8b 00                	mov    (%eax),%eax
 89e:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8a1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8a4:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8a7:	76 d4                	jbe    87d <free+0x19>
 8a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8ac:	8b 00                	mov    (%eax),%eax
 8ae:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8b1:	76 ca                	jbe    87d <free+0x19>
 8b3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8b6:	8b 40 04             	mov    0x4(%eax),%eax
 8b9:	c1 e0 03             	shl    $0x3,%eax
 8bc:	89 c2                	mov    %eax,%edx
 8be:	03 55 f8             	add    -0x8(%ebp),%edx
 8c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8c4:	8b 00                	mov    (%eax),%eax
 8c6:	39 c2                	cmp    %eax,%edx
 8c8:	75 24                	jne    8ee <free+0x8a>
 8ca:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8cd:	8b 50 04             	mov    0x4(%eax),%edx
 8d0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8d3:	8b 00                	mov    (%eax),%eax
 8d5:	8b 40 04             	mov    0x4(%eax),%eax
 8d8:	01 c2                	add    %eax,%edx
 8da:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8dd:	89 50 04             	mov    %edx,0x4(%eax)
 8e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8e3:	8b 00                	mov    (%eax),%eax
 8e5:	8b 10                	mov    (%eax),%edx
 8e7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8ea:	89 10                	mov    %edx,(%eax)
 8ec:	eb 0a                	jmp    8f8 <free+0x94>
 8ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8f1:	8b 10                	mov    (%eax),%edx
 8f3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8f6:	89 10                	mov    %edx,(%eax)
 8f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8fb:	8b 40 04             	mov    0x4(%eax),%eax
 8fe:	c1 e0 03             	shl    $0x3,%eax
 901:	03 45 fc             	add    -0x4(%ebp),%eax
 904:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 907:	75 20                	jne    929 <free+0xc5>
 909:	8b 45 fc             	mov    -0x4(%ebp),%eax
 90c:	8b 50 04             	mov    0x4(%eax),%edx
 90f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 912:	8b 40 04             	mov    0x4(%eax),%eax
 915:	01 c2                	add    %eax,%edx
 917:	8b 45 fc             	mov    -0x4(%ebp),%eax
 91a:	89 50 04             	mov    %edx,0x4(%eax)
 91d:	8b 45 f8             	mov    -0x8(%ebp),%eax
 920:	8b 10                	mov    (%eax),%edx
 922:	8b 45 fc             	mov    -0x4(%ebp),%eax
 925:	89 10                	mov    %edx,(%eax)
 927:	eb 08                	jmp    931 <free+0xcd>
 929:	8b 45 fc             	mov    -0x4(%ebp),%eax
 92c:	8b 55 f8             	mov    -0x8(%ebp),%edx
 92f:	89 10                	mov    %edx,(%eax)
 931:	8b 45 fc             	mov    -0x4(%ebp),%eax
 934:	a3 28 0f 00 00       	mov    %eax,0xf28
 939:	c9                   	leave  
 93a:	c3                   	ret    

0000093b <morecore>:
 93b:	55                   	push   %ebp
 93c:	89 e5                	mov    %esp,%ebp
 93e:	83 ec 28             	sub    $0x28,%esp
 941:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 948:	77 07                	ja     951 <morecore+0x16>
 94a:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
 951:	8b 45 08             	mov    0x8(%ebp),%eax
 954:	c1 e0 03             	shl    $0x3,%eax
 957:	89 04 24             	mov    %eax,(%esp)
 95a:	e8 35 fc ff ff       	call   594 <sbrk>
 95f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 962:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 966:	75 07                	jne    96f <morecore+0x34>
 968:	b8 00 00 00 00       	mov    $0x0,%eax
 96d:	eb 22                	jmp    991 <morecore+0x56>
 96f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 972:	89 45 f4             	mov    %eax,-0xc(%ebp)
 975:	8b 45 f4             	mov    -0xc(%ebp),%eax
 978:	8b 55 08             	mov    0x8(%ebp),%edx
 97b:	89 50 04             	mov    %edx,0x4(%eax)
 97e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 981:	83 c0 08             	add    $0x8,%eax
 984:	89 04 24             	mov    %eax,(%esp)
 987:	e8 d8 fe ff ff       	call   864 <free>
 98c:	a1 28 0f 00 00       	mov    0xf28,%eax
 991:	c9                   	leave  
 992:	c3                   	ret    

00000993 <malloc>:
 993:	55                   	push   %ebp
 994:	89 e5                	mov    %esp,%ebp
 996:	83 ec 28             	sub    $0x28,%esp
 999:	8b 45 08             	mov    0x8(%ebp),%eax
 99c:	83 c0 07             	add    $0x7,%eax
 99f:	c1 e8 03             	shr    $0x3,%eax
 9a2:	83 c0 01             	add    $0x1,%eax
 9a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 9a8:	a1 28 0f 00 00       	mov    0xf28,%eax
 9ad:	89 45 f0             	mov    %eax,-0x10(%ebp)
 9b0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 9b4:	75 23                	jne    9d9 <malloc+0x46>
 9b6:	c7 45 f0 20 0f 00 00 	movl   $0xf20,-0x10(%ebp)
 9bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9c0:	a3 28 0f 00 00       	mov    %eax,0xf28
 9c5:	a1 28 0f 00 00       	mov    0xf28,%eax
 9ca:	a3 20 0f 00 00       	mov    %eax,0xf20
 9cf:	c7 05 24 0f 00 00 00 	movl   $0x0,0xf24
 9d6:	00 00 00 
 9d9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9dc:	8b 00                	mov    (%eax),%eax
 9de:	89 45 ec             	mov    %eax,-0x14(%ebp)
 9e1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9e4:	8b 40 04             	mov    0x4(%eax),%eax
 9e7:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 9ea:	72 4d                	jb     a39 <malloc+0xa6>
 9ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9ef:	8b 40 04             	mov    0x4(%eax),%eax
 9f2:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 9f5:	75 0c                	jne    a03 <malloc+0x70>
 9f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9fa:	8b 10                	mov    (%eax),%edx
 9fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9ff:	89 10                	mov    %edx,(%eax)
 a01:	eb 26                	jmp    a29 <malloc+0x96>
 a03:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a06:	8b 40 04             	mov    0x4(%eax),%eax
 a09:	89 c2                	mov    %eax,%edx
 a0b:	2b 55 f4             	sub    -0xc(%ebp),%edx
 a0e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a11:	89 50 04             	mov    %edx,0x4(%eax)
 a14:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a17:	8b 40 04             	mov    0x4(%eax),%eax
 a1a:	c1 e0 03             	shl    $0x3,%eax
 a1d:	01 45 ec             	add    %eax,-0x14(%ebp)
 a20:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a23:	8b 55 f4             	mov    -0xc(%ebp),%edx
 a26:	89 50 04             	mov    %edx,0x4(%eax)
 a29:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a2c:	a3 28 0f 00 00       	mov    %eax,0xf28
 a31:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a34:	83 c0 08             	add    $0x8,%eax
 a37:	eb 38                	jmp    a71 <malloc+0xde>
 a39:	a1 28 0f 00 00       	mov    0xf28,%eax
 a3e:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 a41:	75 1b                	jne    a5e <malloc+0xcb>
 a43:	8b 45 f4             	mov    -0xc(%ebp),%eax
 a46:	89 04 24             	mov    %eax,(%esp)
 a49:	e8 ed fe ff ff       	call   93b <morecore>
 a4e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 a51:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a55:	75 07                	jne    a5e <malloc+0xcb>
 a57:	b8 00 00 00 00       	mov    $0x0,%eax
 a5c:	eb 13                	jmp    a71 <malloc+0xde>
 a5e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a61:	89 45 f0             	mov    %eax,-0x10(%ebp)
 a64:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a67:	8b 00                	mov    (%eax),%eax
 a69:	89 45 ec             	mov    %eax,-0x14(%ebp)
 a6c:	e9 70 ff ff ff       	jmp    9e1 <malloc+0x4e>
 a71:	c9                   	leave  
 a72:	c3                   	ret    
 a73:	90                   	nop

00000a74 <xchg>:
 a74:	55                   	push   %ebp
 a75:	89 e5                	mov    %esp,%ebp
 a77:	83 ec 10             	sub    $0x10,%esp
 a7a:	8b 55 08             	mov    0x8(%ebp),%edx
 a7d:	8b 45 0c             	mov    0xc(%ebp),%eax
 a80:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a83:	f0 87 02             	lock xchg %eax,(%edx)
 a86:	89 45 fc             	mov    %eax,-0x4(%ebp)
 a89:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a8c:	c9                   	leave  
 a8d:	c3                   	ret    

00000a8e <lock_init>:
 a8e:	55                   	push   %ebp
 a8f:	89 e5                	mov    %esp,%ebp
 a91:	8b 45 08             	mov    0x8(%ebp),%eax
 a94:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 a9a:	5d                   	pop    %ebp
 a9b:	c3                   	ret    

00000a9c <lock_acquire>:
 a9c:	55                   	push   %ebp
 a9d:	89 e5                	mov    %esp,%ebp
 a9f:	83 ec 08             	sub    $0x8,%esp
 aa2:	8b 45 08             	mov    0x8(%ebp),%eax
 aa5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 aac:	00 
 aad:	89 04 24             	mov    %eax,(%esp)
 ab0:	e8 bf ff ff ff       	call   a74 <xchg>
 ab5:	85 c0                	test   %eax,%eax
 ab7:	75 e9                	jne    aa2 <lock_acquire+0x6>
 ab9:	c9                   	leave  
 aba:	c3                   	ret    

00000abb <lock_release>:
 abb:	55                   	push   %ebp
 abc:	89 e5                	mov    %esp,%ebp
 abe:	83 ec 08             	sub    $0x8,%esp
 ac1:	8b 45 08             	mov    0x8(%ebp),%eax
 ac4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 acb:	00 
 acc:	89 04 24             	mov    %eax,(%esp)
 acf:	e8 a0 ff ff ff       	call   a74 <xchg>
 ad4:	c9                   	leave  
 ad5:	c3                   	ret    

00000ad6 <thread_create>:
 ad6:	55                   	push   %ebp
 ad7:	89 e5                	mov    %esp,%ebp
 ad9:	83 ec 28             	sub    $0x28,%esp
 adc:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
 ae3:	e8 ab fe ff ff       	call   993 <malloc>
 ae8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 aeb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 aee:	89 45 f4             	mov    %eax,-0xc(%ebp)
 af1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 af4:	25 ff 0f 00 00       	and    $0xfff,%eax
 af9:	85 c0                	test   %eax,%eax
 afb:	74 15                	je     b12 <thread_create+0x3c>
 afd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b00:	89 c2                	mov    %eax,%edx
 b02:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 b08:	b8 00 10 00 00       	mov    $0x1000,%eax
 b0d:	29 d0                	sub    %edx,%eax
 b0f:	01 45 f0             	add    %eax,-0x10(%ebp)
 b12:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 b16:	75 1b                	jne    b33 <thread_create+0x5d>
 b18:	c7 44 24 04 34 0e 00 	movl   $0xe34,0x4(%esp)
 b1f:	00 
 b20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b27:	e8 81 fb ff ff       	call   6ad <printf>
 b2c:	b8 00 00 00 00       	mov    $0x0,%eax
 b31:	eb 6f                	jmp    ba2 <thread_create+0xcc>
 b33:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b36:	8b 55 08             	mov    0x8(%ebp),%edx
 b39:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b3c:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 b40:	89 54 24 08          	mov    %edx,0x8(%esp)
 b44:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
 b4b:	00 
 b4c:	89 04 24             	mov    %eax,(%esp)
 b4f:	e8 58 fa ff ff       	call   5ac <clone>
 b54:	89 45 ec             	mov    %eax,-0x14(%ebp)
 b57:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b5b:	79 1b                	jns    b78 <thread_create+0xa2>
 b5d:	c7 44 24 04 42 0e 00 	movl   $0xe42,0x4(%esp)
 b64:	00 
 b65:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b6c:	e8 3c fb ff ff       	call   6ad <printf>
 b71:	b8 00 00 00 00       	mov    $0x0,%eax
 b76:	eb 2a                	jmp    ba2 <thread_create+0xcc>
 b78:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b7c:	7e 05                	jle    b83 <thread_create+0xad>
 b7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 b81:	eb 1f                	jmp    ba2 <thread_create+0xcc>
 b83:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b87:	75 14                	jne    b9d <thread_create+0xc7>
 b89:	c7 44 24 04 4f 0e 00 	movl   $0xe4f,0x4(%esp)
 b90:	00 
 b91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b98:	e8 10 fb ff ff       	call   6ad <printf>
 b9d:	b8 00 00 00 00       	mov    $0x0,%eax
 ba2:	c9                   	leave  
 ba3:	c3                   	ret    

00000ba4 <init_q>:
 ba4:	55                   	push   %ebp
 ba5:	89 e5                	mov    %esp,%ebp
 ba7:	8b 45 08             	mov    0x8(%ebp),%eax
 baa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 bb0:	8b 45 08             	mov    0x8(%ebp),%eax
 bb3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 bba:	8b 45 08             	mov    0x8(%ebp),%eax
 bbd:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 bc4:	5d                   	pop    %ebp
 bc5:	c3                   	ret    

00000bc6 <add_q>:
 bc6:	55                   	push   %ebp
 bc7:	89 e5                	mov    %esp,%ebp
 bc9:	83 ec 28             	sub    $0x28,%esp
 bcc:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 bd3:	e8 bb fd ff ff       	call   993 <malloc>
 bd8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 bdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bde:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 be5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 be8:	8b 55 0c             	mov    0xc(%ebp),%edx
 beb:	89 10                	mov    %edx,(%eax)
 bed:	8b 45 08             	mov    0x8(%ebp),%eax
 bf0:	8b 40 04             	mov    0x4(%eax),%eax
 bf3:	85 c0                	test   %eax,%eax
 bf5:	75 0b                	jne    c02 <add_q+0x3c>
 bf7:	8b 45 08             	mov    0x8(%ebp),%eax
 bfa:	8b 55 f4             	mov    -0xc(%ebp),%edx
 bfd:	89 50 04             	mov    %edx,0x4(%eax)
 c00:	eb 0c                	jmp    c0e <add_q+0x48>
 c02:	8b 45 08             	mov    0x8(%ebp),%eax
 c05:	8b 40 08             	mov    0x8(%eax),%eax
 c08:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c0b:	89 50 04             	mov    %edx,0x4(%eax)
 c0e:	8b 45 08             	mov    0x8(%ebp),%eax
 c11:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c14:	89 50 08             	mov    %edx,0x8(%eax)
 c17:	8b 45 08             	mov    0x8(%ebp),%eax
 c1a:	8b 00                	mov    (%eax),%eax
 c1c:	8d 50 01             	lea    0x1(%eax),%edx
 c1f:	8b 45 08             	mov    0x8(%ebp),%eax
 c22:	89 10                	mov    %edx,(%eax)
 c24:	c9                   	leave  
 c25:	c3                   	ret    

00000c26 <empty_q>:
 c26:	55                   	push   %ebp
 c27:	89 e5                	mov    %esp,%ebp
 c29:	8b 45 08             	mov    0x8(%ebp),%eax
 c2c:	8b 00                	mov    (%eax),%eax
 c2e:	85 c0                	test   %eax,%eax
 c30:	75 07                	jne    c39 <empty_q+0x13>
 c32:	b8 01 00 00 00       	mov    $0x1,%eax
 c37:	eb 05                	jmp    c3e <empty_q+0x18>
 c39:	b8 00 00 00 00       	mov    $0x0,%eax
 c3e:	5d                   	pop    %ebp
 c3f:	c3                   	ret    

00000c40 <pop_q>:
 c40:	55                   	push   %ebp
 c41:	89 e5                	mov    %esp,%ebp
 c43:	83 ec 28             	sub    $0x28,%esp
 c46:	8b 45 08             	mov    0x8(%ebp),%eax
 c49:	89 04 24             	mov    %eax,(%esp)
 c4c:	e8 d5 ff ff ff       	call   c26 <empty_q>
 c51:	85 c0                	test   %eax,%eax
 c53:	75 5d                	jne    cb2 <pop_q+0x72>
 c55:	8b 45 08             	mov    0x8(%ebp),%eax
 c58:	8b 40 04             	mov    0x4(%eax),%eax
 c5b:	8b 00                	mov    (%eax),%eax
 c5d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 c60:	8b 45 08             	mov    0x8(%ebp),%eax
 c63:	8b 40 04             	mov    0x4(%eax),%eax
 c66:	89 45 f4             	mov    %eax,-0xc(%ebp)
 c69:	8b 45 08             	mov    0x8(%ebp),%eax
 c6c:	8b 40 04             	mov    0x4(%eax),%eax
 c6f:	8b 50 04             	mov    0x4(%eax),%edx
 c72:	8b 45 08             	mov    0x8(%ebp),%eax
 c75:	89 50 04             	mov    %edx,0x4(%eax)
 c78:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c7b:	89 04 24             	mov    %eax,(%esp)
 c7e:	e8 e1 fb ff ff       	call   864 <free>
 c83:	8b 45 08             	mov    0x8(%ebp),%eax
 c86:	8b 00                	mov    (%eax),%eax
 c88:	8d 50 ff             	lea    -0x1(%eax),%edx
 c8b:	8b 45 08             	mov    0x8(%ebp),%eax
 c8e:	89 10                	mov    %edx,(%eax)
 c90:	8b 45 08             	mov    0x8(%ebp),%eax
 c93:	8b 00                	mov    (%eax),%eax
 c95:	85 c0                	test   %eax,%eax
 c97:	75 14                	jne    cad <pop_q+0x6d>
 c99:	8b 45 08             	mov    0x8(%ebp),%eax
 c9c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 ca3:	8b 45 08             	mov    0x8(%ebp),%eax
 ca6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 cad:	8b 45 f0             	mov    -0x10(%ebp),%eax
 cb0:	eb 05                	jmp    cb7 <pop_q+0x77>
 cb2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 cb7:	c9                   	leave  
 cb8:	c3                   	ret    
 cb9:	66 90                	xchg   %ax,%ax
 cbb:	90                   	nop

00000cbc <init_semaphore>:
 cbc:	55                   	push   %ebp
 cbd:	89 e5                	mov    %esp,%ebp
 cbf:	83 ec 18             	sub    $0x18,%esp
 cc2:	8b 45 08             	mov    0x8(%ebp),%eax
 cc5:	8b 55 0c             	mov    0xc(%ebp),%edx
 cc8:	89 10                	mov    %edx,(%eax)
 cca:	8b 45 08             	mov    0x8(%ebp),%eax
 ccd:	83 c0 04             	add    $0x4,%eax
 cd0:	89 04 24             	mov    %eax,(%esp)
 cd3:	e8 cc fe ff ff       	call   ba4 <init_q>
 cd8:	8b 45 08             	mov    0x8(%ebp),%eax
 cdb:	83 c0 10             	add    $0x10,%eax
 cde:	89 04 24             	mov    %eax,(%esp)
 ce1:	e8 a8 fd ff ff       	call   a8e <lock_init>
 ce6:	c9                   	leave  
 ce7:	c3                   	ret    

00000ce8 <sem_acquire>:
 ce8:	55                   	push   %ebp
 ce9:	89 e5                	mov    %esp,%ebp
 ceb:	83 ec 18             	sub    $0x18,%esp
 cee:	8b 45 08             	mov    0x8(%ebp),%eax
 cf1:	8b 00                	mov    (%eax),%eax
 cf3:	85 c0                	test   %eax,%eax
 cf5:	7e 2c                	jle    d23 <sem_acquire+0x3b>
 cf7:	8b 45 08             	mov    0x8(%ebp),%eax
 cfa:	83 c0 10             	add    $0x10,%eax
 cfd:	89 04 24             	mov    %eax,(%esp)
 d00:	e8 97 fd ff ff       	call   a9c <lock_acquire>
 d05:	8b 45 08             	mov    0x8(%ebp),%eax
 d08:	8b 00                	mov    (%eax),%eax
 d0a:	8d 50 ff             	lea    -0x1(%eax),%edx
 d0d:	8b 45 08             	mov    0x8(%ebp),%eax
 d10:	89 10                	mov    %edx,(%eax)
 d12:	8b 45 08             	mov    0x8(%ebp),%eax
 d15:	83 c0 10             	add    $0x10,%eax
 d18:	89 04 24             	mov    %eax,(%esp)
 d1b:	e8 9b fd ff ff       	call   abb <lock_release>
 d20:	90                   	nop
 d21:	c9                   	leave  
 d22:	c3                   	ret    
 d23:	c7 44 24 04 60 0e 00 	movl   $0xe60,0x4(%esp)
 d2a:	00 
 d2b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 d32:	e8 76 f9 ff ff       	call   6ad <printf>
 d37:	e8 50 f8 ff ff       	call   58c <getpid>
 d3c:	8b 55 08             	mov    0x8(%ebp),%edx
 d3f:	83 c2 04             	add    $0x4,%edx
 d42:	89 44 24 04          	mov    %eax,0x4(%esp)
 d46:	89 14 24             	mov    %edx,(%esp)
 d49:	e8 78 fe ff ff       	call   bc6 <add_q>
 d4e:	e8 69 f8 ff ff       	call   5bc <tsleep>
 d53:	eb 99                	jmp    cee <sem_acquire+0x6>

00000d55 <sem_signal>:
 d55:	55                   	push   %ebp
 d56:	89 e5                	mov    %esp,%ebp
 d58:	83 ec 18             	sub    $0x18,%esp
 d5b:	8b 45 08             	mov    0x8(%ebp),%eax
 d5e:	83 c0 10             	add    $0x10,%eax
 d61:	89 04 24             	mov    %eax,(%esp)
 d64:	e8 33 fd ff ff       	call   a9c <lock_acquire>
 d69:	8b 45 08             	mov    0x8(%ebp),%eax
 d6c:	8b 00                	mov    (%eax),%eax
 d6e:	8d 50 01             	lea    0x1(%eax),%edx
 d71:	8b 45 08             	mov    0x8(%ebp),%eax
 d74:	89 10                	mov    %edx,(%eax)
 d76:	8b 45 08             	mov    0x8(%ebp),%eax
 d79:	83 c0 10             	add    $0x10,%eax
 d7c:	89 04 24             	mov    %eax,(%esp)
 d7f:	e8 37 fd ff ff       	call   abb <lock_release>
 d84:	8b 45 08             	mov    0x8(%ebp),%eax
 d87:	83 c0 04             	add    $0x4,%eax
 d8a:	89 04 24             	mov    %eax,(%esp)
 d8d:	e8 94 fe ff ff       	call   c26 <empty_q>
 d92:	85 c0                	test   %eax,%eax
 d94:	75 16                	jne    dac <sem_signal+0x57>
 d96:	8b 45 08             	mov    0x8(%ebp),%eax
 d99:	83 c0 04             	add    $0x4,%eax
 d9c:	89 04 24             	mov    %eax,(%esp)
 d9f:	e8 9c fe ff ff       	call   c40 <pop_q>
 da4:	89 04 24             	mov    %eax,(%esp)
 da7:	e8 18 f8 ff ff       	call   5c4 <twakeup>
 dac:	c9                   	leave  
 dad:	c3                   	ret    
