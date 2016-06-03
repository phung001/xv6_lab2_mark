
_test_h2o:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void hydrogen(void *arg_ptr);

void oxygen(void *arg_ptr);

int main(int argc, char *argv[]){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 20             	sub    $0x20,%esp
	init_semaphore(&h, 0);
   9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  10:	00 
  11:	c7 04 24 f4 0e 00 00 	movl   $0xef4,(%esp)
  18:	e8 db 0c 00 00       	call   cf8 <init_semaphore>
	init_semaphore(&o, 0);
  1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  24:	00 
  25:	c7 04 24 cc 0e 00 00 	movl   $0xecc,(%esp)
  2c:	e8 c7 0c 00 00       	call   cf8 <init_semaphore>
	init_semaphore(&l, 1);
  31:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  38:	00 
  39:	c7 04 24 e0 0e 00 00 	movl   $0xee0,(%esp)
  40:	e8 b3 0c 00 00       	call   cf8 <init_semaphore>

	int pid = fork();
  45:	e8 f6 04 00 00       	call   540 <fork>
  4a:	89 44 24 18          	mov    %eax,0x18(%esp)
	if (pid == 0)
  4e:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  53:	0f 85 78 01 00 00    	jne    1d1 <main+0x1d1>
	{
					//water molecule 1
					void *tid = thread_create(hydrogen,(void *)0);
  59:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  60:	00 
  61:	c7 04 24 10 02 00 00 	movl   $0x210,(%esp)
  68:	e8 a5 0a 00 00       	call   b12 <thread_create>
  6d:	89 44 24 1c          	mov    %eax,0x1c(%esp)
					if(tid == 0){
  71:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  76:	75 19                	jne    91 <main+0x91>
						printf(1,"thread_create fails\n");
  78:	c7 44 24 04 ea 0d 00 	movl   $0xdea,0x4(%esp)
  7f:	00 
  80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  87:	e8 5d 06 00 00       	call   6e9 <printf>
						exit();
  8c:	e8 b7 04 00 00       	call   548 <exit>
					}
					tid = thread_create(hydrogen,(void *)0);
  91:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  98:	00 
  99:	c7 04 24 10 02 00 00 	movl   $0x210,(%esp)
  a0:	e8 6d 0a 00 00       	call   b12 <thread_create>
  a5:	89 44 24 1c          	mov    %eax,0x1c(%esp)
					if(tid == 0){
  a9:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  ae:	75 19                	jne    c9 <main+0xc9>
						printf(1,"thread_create fails\n");
  b0:	c7 44 24 04 ea 0d 00 	movl   $0xdea,0x4(%esp)
  b7:	00 
  b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  bf:	e8 25 06 00 00       	call   6e9 <printf>
						exit();
  c4:	e8 7f 04 00 00       	call   548 <exit>
					}
					tid = thread_create(oxygen,(void *)0);
  c9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  d0:	00 
  d1:	c7 04 24 6f 02 00 00 	movl   $0x26f,(%esp)
  d8:	e8 35 0a 00 00       	call   b12 <thread_create>
  dd:	89 44 24 1c          	mov    %eax,0x1c(%esp)
					if(tid == 0){
  e1:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
  e6:	75 19                	jne    101 <main+0x101>
						printf(1,"thread_create fails\n");
  e8:	c7 44 24 04 ea 0d 00 	movl   $0xdea,0x4(%esp)
  ef:	00 
  f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  f7:	e8 ed 05 00 00       	call   6e9 <printf>
						exit();
  fc:	e8 47 04 00 00       	call   548 <exit>
					}
					
					//water molecule 2	
					tid = thread_create(oxygen,(void *)0);
 101:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 108:	00 
 109:	c7 04 24 6f 02 00 00 	movl   $0x26f,(%esp)
 110:	e8 fd 09 00 00       	call   b12 <thread_create>
 115:	89 44 24 1c          	mov    %eax,0x1c(%esp)
					if(tid == 0){
 119:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 11e:	75 19                	jne    139 <main+0x139>
						printf(1,"thread_create fails\n");
 120:	c7 44 24 04 ea 0d 00 	movl   $0xdea,0x4(%esp)
 127:	00 
 128:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 12f:	e8 b5 05 00 00       	call   6e9 <printf>
						exit();
 134:	e8 0f 04 00 00       	call   548 <exit>
					}
					tid = thread_create(hydrogen,(void *)0);
 139:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 140:	00 
 141:	c7 04 24 10 02 00 00 	movl   $0x210,(%esp)
 148:	e8 c5 09 00 00       	call   b12 <thread_create>
 14d:	89 44 24 1c          	mov    %eax,0x1c(%esp)
					if(tid == 0){
 151:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 156:	75 19                	jne    171 <main+0x171>
						printf(1,"thread_create fails\n");
 158:	c7 44 24 04 ea 0d 00 	movl   $0xdea,0x4(%esp)
 15f:	00 
 160:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 167:	e8 7d 05 00 00       	call   6e9 <printf>
						exit();
 16c:	e8 d7 03 00 00       	call   548 <exit>
					}
					tid = thread_create(hydrogen,(void *)0);
 171:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 178:	00 
 179:	c7 04 24 10 02 00 00 	movl   $0x210,(%esp)
 180:	e8 8d 09 00 00       	call   b12 <thread_create>
 185:	89 44 24 1c          	mov    %eax,0x1c(%esp)
					if(tid == 0){
 189:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 18e:	75 19                	jne    1a9 <main+0x1a9>
						printf(1,"thread_create fails\n");
 190:	c7 44 24 04 ea 0d 00 	movl   $0xdea,0x4(%esp)
 197:	00 
 198:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 19f:	e8 45 05 00 00       	call   6e9 <printf>
						exit();
 1a4:	e8 9f 03 00 00       	call   548 <exit>
					}
					while(wait() >= 0);
 1a9:	e8 a2 03 00 00       	call   550 <wait>
 1ae:	85 c0                	test   %eax,%eax
 1b0:	79 f7                	jns    1a9 <main+0x1a9>
					//printf(1, "done \n");			
					printf(1, "child water = %d \n", water_molecules);
 1b2:	a1 bc 0e 00 00       	mov    0xebc,%eax
 1b7:	89 44 24 08          	mov    %eax,0x8(%esp)
 1bb:	c7 44 24 04 ff 0d 00 	movl   $0xdff,0x4(%esp)
 1c2:	00 
 1c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1ca:	e8 1a 05 00 00       	call   6e9 <printf>
 1cf:	eb 3a                	jmp    20b <main+0x20b>
	}
	else
	{
		while(wait() >= 0);
 1d1:	e8 7a 03 00 00       	call   550 <wait>
 1d6:	85 c0                	test   %eax,%eax
 1d8:	79 f7                	jns    1d1 <main+0x1d1>
		printf(1, "done \n");			
 1da:	c7 44 24 04 12 0e 00 	movl   $0xe12,0x4(%esp)
 1e1:	00 
 1e2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1e9:	e8 fb 04 00 00       	call   6e9 <printf>
		printf(1, "parent water = %d \n", water_molecules);
 1ee:	a1 bc 0e 00 00       	mov    0xebc,%eax
 1f3:	89 44 24 08          	mov    %eax,0x8(%esp)
 1f7:	c7 44 24 04 19 0e 00 	movl   $0xe19,0x4(%esp)
 1fe:	00 
 1ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 206:	e8 de 04 00 00       	call   6e9 <printf>
	}
	exit();
 20b:	e8 38 03 00 00       	call   548 <exit>

00000210 <hydrogen>:
}

void hydrogen(void *arg_ptr){
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	83 ec 18             	sub    $0x18,%esp
  printf(1,"hydrogen!\n");
 216:	c7 44 24 04 2d 0e 00 	movl   $0xe2d,0x4(%esp)
 21d:	00 
 21e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 225:	e8 bf 04 00 00       	call   6e9 <printf>
	sem_signal(&h);
 22a:	c7 04 24 f4 0e 00 00 	movl   $0xef4,(%esp)
 231:	e8 5b 0b 00 00       	call   d91 <sem_signal>
	printf(1, "acquired h \n");
 236:	c7 44 24 04 38 0e 00 	movl   $0xe38,0x4(%esp)
 23d:	00 
 23e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 245:	e8 9f 04 00 00       	call   6e9 <printf>
	sem_acquire(&o);  
 24a:	c7 04 24 cc 0e 00 00 	movl   $0xecc,(%esp)
 251:	e8 ce 0a 00 00       	call   d24 <sem_acquire>
	printf(1, "acquired o \n");	
 256:	c7 44 24 04 45 0e 00 	movl   $0xe45,0x4(%esp)
 25d:	00 
 25e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 265:	e8 7f 04 00 00       	call   6e9 <printf>
	texit();
 26a:	e8 81 03 00 00       	call   5f0 <texit>

0000026f <oxygen>:
}

void oxygen(void *arg_ptr){
 26f:	55                   	push   %ebp
 270:	89 e5                	mov    %esp,%ebp
 272:	83 ec 18             	sub    $0x18,%esp
	printf(1,"oxygen!\n");
 275:	c7 44 24 04 52 0e 00 	movl   $0xe52,0x4(%esp)
 27c:	00 
 27d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 284:	e8 60 04 00 00       	call   6e9 <printf>
	sem_acquire(&h);
 289:	c7 04 24 f4 0e 00 00 	movl   $0xef4,(%esp)
 290:	e8 8f 0a 00 00       	call   d24 <sem_acquire>
	sem_acquire(&h);
 295:	c7 04 24 f4 0e 00 00 	movl   $0xef4,(%esp)
 29c:	e8 83 0a 00 00       	call   d24 <sem_acquire>
	sem_signal(&o);
 2a1:	c7 04 24 cc 0e 00 00 	movl   $0xecc,(%esp)
 2a8:	e8 e4 0a 00 00       	call   d91 <sem_signal>
	sem_signal(&o);
 2ad:	c7 04 24 cc 0e 00 00 	movl   $0xecc,(%esp)
 2b4:	e8 d8 0a 00 00       	call   d91 <sem_signal>
	sem_acquire(&l);
 2b9:	c7 04 24 e0 0e 00 00 	movl   $0xee0,(%esp)
 2c0:	e8 5f 0a 00 00       	call   d24 <sem_acquire>
	//printf(1, "ALMOST DONE\n");
	water_molecules++;
 2c5:	a1 bc 0e 00 00       	mov    0xebc,%eax
 2ca:	83 c0 01             	add    $0x1,%eax
 2cd:	a3 bc 0e 00 00       	mov    %eax,0xebc
	//printf(1, "WATER = %d\n", water_molecules);
	sem_signal(&l);
 2d2:	c7 04 24 e0 0e 00 00 	movl   $0xee0,(%esp)
 2d9:	e8 b3 0a 00 00       	call   d91 <sem_signal>
	texit();
 2de:	e8 0d 03 00 00       	call   5f0 <texit>
 2e3:	90                   	nop

000002e4 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 2e4:	55                   	push   %ebp
 2e5:	89 e5                	mov    %esp,%ebp
 2e7:	57                   	push   %edi
 2e8:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 2e9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2ec:	8b 55 10             	mov    0x10(%ebp),%edx
 2ef:	8b 45 0c             	mov    0xc(%ebp),%eax
 2f2:	89 cb                	mov    %ecx,%ebx
 2f4:	89 df                	mov    %ebx,%edi
 2f6:	89 d1                	mov    %edx,%ecx
 2f8:	fc                   	cld    
 2f9:	f3 aa                	rep stos %al,%es:(%edi)
 2fb:	89 ca                	mov    %ecx,%edx
 2fd:	89 fb                	mov    %edi,%ebx
 2ff:	89 5d 08             	mov    %ebx,0x8(%ebp)
 302:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 305:	5b                   	pop    %ebx
 306:	5f                   	pop    %edi
 307:	5d                   	pop    %ebp
 308:	c3                   	ret    

00000309 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 309:	55                   	push   %ebp
 30a:	89 e5                	mov    %esp,%ebp
 30c:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 30f:	8b 45 08             	mov    0x8(%ebp),%eax
 312:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 315:	8b 45 0c             	mov    0xc(%ebp),%eax
 318:	0f b6 10             	movzbl (%eax),%edx
 31b:	8b 45 08             	mov    0x8(%ebp),%eax
 31e:	88 10                	mov    %dl,(%eax)
 320:	8b 45 08             	mov    0x8(%ebp),%eax
 323:	0f b6 00             	movzbl (%eax),%eax
 326:	84 c0                	test   %al,%al
 328:	0f 95 c0             	setne  %al
 32b:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 32f:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 333:	84 c0                	test   %al,%al
 335:	75 de                	jne    315 <strcpy+0xc>
    ;
  return os;
 337:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 33a:	c9                   	leave  
 33b:	c3                   	ret    

0000033c <strcmp>:

int
strcmp(const char *p, const char *q)
{
 33c:	55                   	push   %ebp
 33d:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 33f:	eb 08                	jmp    349 <strcmp+0xd>
    p++, q++;
 341:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 345:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 349:	8b 45 08             	mov    0x8(%ebp),%eax
 34c:	0f b6 00             	movzbl (%eax),%eax
 34f:	84 c0                	test   %al,%al
 351:	74 10                	je     363 <strcmp+0x27>
 353:	8b 45 08             	mov    0x8(%ebp),%eax
 356:	0f b6 10             	movzbl (%eax),%edx
 359:	8b 45 0c             	mov    0xc(%ebp),%eax
 35c:	0f b6 00             	movzbl (%eax),%eax
 35f:	38 c2                	cmp    %al,%dl
 361:	74 de                	je     341 <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 363:	8b 45 08             	mov    0x8(%ebp),%eax
 366:	0f b6 00             	movzbl (%eax),%eax
 369:	0f b6 d0             	movzbl %al,%edx
 36c:	8b 45 0c             	mov    0xc(%ebp),%eax
 36f:	0f b6 00             	movzbl (%eax),%eax
 372:	0f b6 c0             	movzbl %al,%eax
 375:	89 d1                	mov    %edx,%ecx
 377:	29 c1                	sub    %eax,%ecx
 379:	89 c8                	mov    %ecx,%eax
}
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret    

0000037d <strlen>:

uint
strlen(char *s)
{
 37d:	55                   	push   %ebp
 37e:	89 e5                	mov    %esp,%ebp
 380:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 383:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 38a:	eb 04                	jmp    390 <strlen+0x13>
 38c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 390:	8b 45 fc             	mov    -0x4(%ebp),%eax
 393:	03 45 08             	add    0x8(%ebp),%eax
 396:	0f b6 00             	movzbl (%eax),%eax
 399:	84 c0                	test   %al,%al
 39b:	75 ef                	jne    38c <strlen+0xf>
    ;
  return n;
 39d:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 3a0:	c9                   	leave  
 3a1:	c3                   	ret    

000003a2 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a2:	55                   	push   %ebp
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 3a8:	8b 45 10             	mov    0x10(%ebp),%eax
 3ab:	89 44 24 08          	mov    %eax,0x8(%esp)
 3af:	8b 45 0c             	mov    0xc(%ebp),%eax
 3b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 3b6:	8b 45 08             	mov    0x8(%ebp),%eax
 3b9:	89 04 24             	mov    %eax,(%esp)
 3bc:	e8 23 ff ff ff       	call   2e4 <stosb>
  return dst;
 3c1:	8b 45 08             	mov    0x8(%ebp),%eax
}
 3c4:	c9                   	leave  
 3c5:	c3                   	ret    

000003c6 <strchr>:

char*
strchr(const char *s, char c)
{
 3c6:	55                   	push   %ebp
 3c7:	89 e5                	mov    %esp,%ebp
 3c9:	83 ec 04             	sub    $0x4,%esp
 3cc:	8b 45 0c             	mov    0xc(%ebp),%eax
 3cf:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 3d2:	eb 14                	jmp    3e8 <strchr+0x22>
    if(*s == c)
 3d4:	8b 45 08             	mov    0x8(%ebp),%eax
 3d7:	0f b6 00             	movzbl (%eax),%eax
 3da:	3a 45 fc             	cmp    -0x4(%ebp),%al
 3dd:	75 05                	jne    3e4 <strchr+0x1e>
      return (char*)s;
 3df:	8b 45 08             	mov    0x8(%ebp),%eax
 3e2:	eb 13                	jmp    3f7 <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 3e4:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 3e8:	8b 45 08             	mov    0x8(%ebp),%eax
 3eb:	0f b6 00             	movzbl (%eax),%eax
 3ee:	84 c0                	test   %al,%al
 3f0:	75 e2                	jne    3d4 <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
 3f2:	b8 00 00 00 00       	mov    $0x0,%eax
}
 3f7:	c9                   	leave  
 3f8:	c3                   	ret    

000003f9 <gets>:

char*
gets(char *buf, int max)
{
 3f9:	55                   	push   %ebp
 3fa:	89 e5                	mov    %esp,%ebp
 3fc:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3ff:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 406:	eb 44                	jmp    44c <gets+0x53>
    cc = read(0, &c, 1);
 408:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 40f:	00 
 410:	8d 45 ef             	lea    -0x11(%ebp),%eax
 413:	89 44 24 04          	mov    %eax,0x4(%esp)
 417:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 41e:	e8 3d 01 00 00       	call   560 <read>
 423:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(cc < 1)
 426:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 42a:	7e 2d                	jle    459 <gets+0x60>
      break;
    buf[i++] = c;
 42c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 42f:	03 45 08             	add    0x8(%ebp),%eax
 432:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
 436:	88 10                	mov    %dl,(%eax)
 438:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    if(c == '\n' || c == '\r')
 43c:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 440:	3c 0a                	cmp    $0xa,%al
 442:	74 16                	je     45a <gets+0x61>
 444:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 448:	3c 0d                	cmp    $0xd,%al
 44a:	74 0e                	je     45a <gets+0x61>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 44c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 44f:	83 c0 01             	add    $0x1,%eax
 452:	3b 45 0c             	cmp    0xc(%ebp),%eax
 455:	7c b1                	jl     408 <gets+0xf>
 457:	eb 01                	jmp    45a <gets+0x61>
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
 459:	90                   	nop
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 45a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 45d:	03 45 08             	add    0x8(%ebp),%eax
 460:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 463:	8b 45 08             	mov    0x8(%ebp),%eax
}
 466:	c9                   	leave  
 467:	c3                   	ret    

00000468 <stat>:

int
stat(char *n, struct stat *st)
{
 468:	55                   	push   %ebp
 469:	89 e5                	mov    %esp,%ebp
 46b:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 46e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 475:	00 
 476:	8b 45 08             	mov    0x8(%ebp),%eax
 479:	89 04 24             	mov    %eax,(%esp)
 47c:	e8 07 01 00 00       	call   588 <open>
 481:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(fd < 0)
 484:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 488:	79 07                	jns    491 <stat+0x29>
    return -1;
 48a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 48f:	eb 23                	jmp    4b4 <stat+0x4c>
  r = fstat(fd, st);
 491:	8b 45 0c             	mov    0xc(%ebp),%eax
 494:	89 44 24 04          	mov    %eax,0x4(%esp)
 498:	8b 45 f0             	mov    -0x10(%ebp),%eax
 49b:	89 04 24             	mov    %eax,(%esp)
 49e:	e8 fd 00 00 00       	call   5a0 <fstat>
 4a3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  close(fd);
 4a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 4a9:	89 04 24             	mov    %eax,(%esp)
 4ac:	e8 bf 00 00 00       	call   570 <close>
  return r;
 4b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
 4b4:	c9                   	leave  
 4b5:	c3                   	ret    

000004b6 <atoi>:

int
atoi(const char *s)
{
 4b6:	55                   	push   %ebp
 4b7:	89 e5                	mov    %esp,%ebp
 4b9:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 4bc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 4c3:	eb 24                	jmp    4e9 <atoi+0x33>
    n = n*10 + *s++ - '0';
 4c5:	8b 55 fc             	mov    -0x4(%ebp),%edx
 4c8:	89 d0                	mov    %edx,%eax
 4ca:	c1 e0 02             	shl    $0x2,%eax
 4cd:	01 d0                	add    %edx,%eax
 4cf:	01 c0                	add    %eax,%eax
 4d1:	89 c2                	mov    %eax,%edx
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	0f b6 00             	movzbl (%eax),%eax
 4d9:	0f be c0             	movsbl %al,%eax
 4dc:	8d 04 02             	lea    (%edx,%eax,1),%eax
 4df:	83 e8 30             	sub    $0x30,%eax
 4e2:	89 45 fc             	mov    %eax,-0x4(%ebp)
 4e5:	83 45 08 01          	addl   $0x1,0x8(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4e9:	8b 45 08             	mov    0x8(%ebp),%eax
 4ec:	0f b6 00             	movzbl (%eax),%eax
 4ef:	3c 2f                	cmp    $0x2f,%al
 4f1:	7e 0a                	jle    4fd <atoi+0x47>
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
 4f6:	0f b6 00             	movzbl (%eax),%eax
 4f9:	3c 39                	cmp    $0x39,%al
 4fb:	7e c8                	jle    4c5 <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
 4fd:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 500:	c9                   	leave  
 501:	c3                   	ret    

00000502 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 502:	55                   	push   %ebp
 503:	89 e5                	mov    %esp,%ebp
 505:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
 508:	8b 45 08             	mov    0x8(%ebp),%eax
 50b:	89 45 f8             	mov    %eax,-0x8(%ebp)
  src = vsrc;
 50e:	8b 45 0c             	mov    0xc(%ebp),%eax
 511:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while(n-- > 0)
 514:	eb 13                	jmp    529 <memmove+0x27>
    *dst++ = *src++;
 516:	8b 45 fc             	mov    -0x4(%ebp),%eax
 519:	0f b6 10             	movzbl (%eax),%edx
 51c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 51f:	88 10                	mov    %dl,(%eax)
 521:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 525:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 529:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 52d:	0f 9f c0             	setg   %al
 530:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 534:	84 c0                	test   %al,%al
 536:	75 de                	jne    516 <memmove+0x14>
    *dst++ = *src++;
  return vdst;
 538:	8b 45 08             	mov    0x8(%ebp),%eax
}
 53b:	c9                   	leave  
 53c:	c3                   	ret    
 53d:	90                   	nop
 53e:	90                   	nop
 53f:	90                   	nop

00000540 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 540:	b8 01 00 00 00       	mov    $0x1,%eax
 545:	cd 40                	int    $0x40
 547:	c3                   	ret    

00000548 <exit>:
SYSCALL(exit)
 548:	b8 02 00 00 00       	mov    $0x2,%eax
 54d:	cd 40                	int    $0x40
 54f:	c3                   	ret    

00000550 <wait>:
SYSCALL(wait)
 550:	b8 03 00 00 00       	mov    $0x3,%eax
 555:	cd 40                	int    $0x40
 557:	c3                   	ret    

00000558 <pipe>:
SYSCALL(pipe)
 558:	b8 04 00 00 00       	mov    $0x4,%eax
 55d:	cd 40                	int    $0x40
 55f:	c3                   	ret    

00000560 <read>:
SYSCALL(read)
 560:	b8 05 00 00 00       	mov    $0x5,%eax
 565:	cd 40                	int    $0x40
 567:	c3                   	ret    

00000568 <write>:
SYSCALL(write)
 568:	b8 10 00 00 00       	mov    $0x10,%eax
 56d:	cd 40                	int    $0x40
 56f:	c3                   	ret    

00000570 <close>:
SYSCALL(close)
 570:	b8 15 00 00 00       	mov    $0x15,%eax
 575:	cd 40                	int    $0x40
 577:	c3                   	ret    

00000578 <kill>:
SYSCALL(kill)
 578:	b8 06 00 00 00       	mov    $0x6,%eax
 57d:	cd 40                	int    $0x40
 57f:	c3                   	ret    

00000580 <exec>:
SYSCALL(exec)
 580:	b8 07 00 00 00       	mov    $0x7,%eax
 585:	cd 40                	int    $0x40
 587:	c3                   	ret    

00000588 <open>:
SYSCALL(open)
 588:	b8 0f 00 00 00       	mov    $0xf,%eax
 58d:	cd 40                	int    $0x40
 58f:	c3                   	ret    

00000590 <mknod>:
SYSCALL(mknod)
 590:	b8 11 00 00 00       	mov    $0x11,%eax
 595:	cd 40                	int    $0x40
 597:	c3                   	ret    

00000598 <unlink>:
SYSCALL(unlink)
 598:	b8 12 00 00 00       	mov    $0x12,%eax
 59d:	cd 40                	int    $0x40
 59f:	c3                   	ret    

000005a0 <fstat>:
SYSCALL(fstat)
 5a0:	b8 08 00 00 00       	mov    $0x8,%eax
 5a5:	cd 40                	int    $0x40
 5a7:	c3                   	ret    

000005a8 <link>:
SYSCALL(link)
 5a8:	b8 13 00 00 00       	mov    $0x13,%eax
 5ad:	cd 40                	int    $0x40
 5af:	c3                   	ret    

000005b0 <mkdir>:
SYSCALL(mkdir)
 5b0:	b8 14 00 00 00       	mov    $0x14,%eax
 5b5:	cd 40                	int    $0x40
 5b7:	c3                   	ret    

000005b8 <chdir>:
SYSCALL(chdir)
 5b8:	b8 09 00 00 00       	mov    $0x9,%eax
 5bd:	cd 40                	int    $0x40
 5bf:	c3                   	ret    

000005c0 <dup>:
SYSCALL(dup)
 5c0:	b8 0a 00 00 00       	mov    $0xa,%eax
 5c5:	cd 40                	int    $0x40
 5c7:	c3                   	ret    

000005c8 <getpid>:
SYSCALL(getpid)
 5c8:	b8 0b 00 00 00       	mov    $0xb,%eax
 5cd:	cd 40                	int    $0x40
 5cf:	c3                   	ret    

000005d0 <sbrk>:
SYSCALL(sbrk)
 5d0:	b8 0c 00 00 00       	mov    $0xc,%eax
 5d5:	cd 40                	int    $0x40
 5d7:	c3                   	ret    

000005d8 <sleep>:
SYSCALL(sleep)
 5d8:	b8 0d 00 00 00       	mov    $0xd,%eax
 5dd:	cd 40                	int    $0x40
 5df:	c3                   	ret    

000005e0 <uptime>:
SYSCALL(uptime)
 5e0:	b8 0e 00 00 00       	mov    $0xe,%eax
 5e5:	cd 40                	int    $0x40
 5e7:	c3                   	ret    

000005e8 <clone>:
SYSCALL(clone)
 5e8:	b8 16 00 00 00       	mov    $0x16,%eax
 5ed:	cd 40                	int    $0x40
 5ef:	c3                   	ret    

000005f0 <texit>:
SYSCALL(texit)
 5f0:	b8 17 00 00 00       	mov    $0x17,%eax
 5f5:	cd 40                	int    $0x40
 5f7:	c3                   	ret    

000005f8 <tsleep>:
SYSCALL(tsleep)
 5f8:	b8 18 00 00 00       	mov    $0x18,%eax
 5fd:	cd 40                	int    $0x40
 5ff:	c3                   	ret    

00000600 <twakeup>:
SYSCALL(twakeup)
 600:	b8 19 00 00 00       	mov    $0x19,%eax
 605:	cd 40                	int    $0x40
 607:	c3                   	ret    

00000608 <thread_yield>:
SYSCALL(thread_yield)
 608:	b8 1a 00 00 00       	mov    $0x1a,%eax
 60d:	cd 40                	int    $0x40
 60f:	c3                   	ret    

00000610 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	83 ec 28             	sub    $0x28,%esp
 616:	8b 45 0c             	mov    0xc(%ebp),%eax
 619:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 61c:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 623:	00 
 624:	8d 45 f4             	lea    -0xc(%ebp),%eax
 627:	89 44 24 04          	mov    %eax,0x4(%esp)
 62b:	8b 45 08             	mov    0x8(%ebp),%eax
 62e:	89 04 24             	mov    %eax,(%esp)
 631:	e8 32 ff ff ff       	call   568 <write>
}
 636:	c9                   	leave  
 637:	c3                   	ret    

00000638 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 638:	55                   	push   %ebp
 639:	89 e5                	mov    %esp,%ebp
 63b:	53                   	push   %ebx
 63c:	83 ec 44             	sub    $0x44,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 63f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 646:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 64a:	74 17                	je     663 <printint+0x2b>
 64c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 650:	79 11                	jns    663 <printint+0x2b>
    neg = 1;
 652:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 659:	8b 45 0c             	mov    0xc(%ebp),%eax
 65c:	f7 d8                	neg    %eax
 65e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 661:	eb 06                	jmp    669 <printint+0x31>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 663:	8b 45 0c             	mov    0xc(%ebp),%eax
 666:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }

  i = 0;
 669:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  do{
    buf[i++] = digits[x % base];
 670:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 673:	8b 5d 10             	mov    0x10(%ebp),%ebx
 676:	8b 45 f4             	mov    -0xc(%ebp),%eax
 679:	ba 00 00 00 00       	mov    $0x0,%edx
 67e:	f7 f3                	div    %ebx
 680:	89 d0                	mov    %edx,%eax
 682:	0f b6 80 a8 0e 00 00 	movzbl 0xea8(%eax),%eax
 689:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
 68d:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  }while((x /= base) != 0);
 691:	8b 45 10             	mov    0x10(%ebp),%eax
 694:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 697:	8b 45 f4             	mov    -0xc(%ebp),%eax
 69a:	ba 00 00 00 00       	mov    $0x0,%edx
 69f:	f7 75 d4             	divl   -0x2c(%ebp)
 6a2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 6a5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 6a9:	75 c5                	jne    670 <printint+0x38>
  if(neg)
 6ab:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 6af:	74 28                	je     6d9 <printint+0xa1>
    buf[i++] = '-';
 6b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 6b4:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
 6b9:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)

  while(--i >= 0)
 6bd:	eb 1a                	jmp    6d9 <printint+0xa1>
    putc(fd, buf[i]);
 6bf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 6c2:	0f b6 44 05 dc       	movzbl -0x24(%ebp,%eax,1),%eax
 6c7:	0f be c0             	movsbl %al,%eax
 6ca:	89 44 24 04          	mov    %eax,0x4(%esp)
 6ce:	8b 45 08             	mov    0x8(%ebp),%eax
 6d1:	89 04 24             	mov    %eax,(%esp)
 6d4:	e8 37 ff ff ff       	call   610 <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 6d9:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 6dd:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 6e1:	79 dc                	jns    6bf <printint+0x87>
    putc(fd, buf[i]);
}
 6e3:	83 c4 44             	add    $0x44,%esp
 6e6:	5b                   	pop    %ebx
 6e7:	5d                   	pop    %ebp
 6e8:	c3                   	ret    

000006e9 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6e9:	55                   	push   %ebp
 6ea:	89 e5                	mov    %esp,%ebp
 6ec:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 6ef:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 6f6:	8d 45 0c             	lea    0xc(%ebp),%eax
 6f9:	83 c0 04             	add    $0x4,%eax
 6fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for(i = 0; fmt[i]; i++){
 6ff:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 706:	e9 7e 01 00 00       	jmp    889 <printf+0x1a0>
    c = fmt[i] & 0xff;
 70b:	8b 55 0c             	mov    0xc(%ebp),%edx
 70e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 711:	8d 04 02             	lea    (%edx,%eax,1),%eax
 714:	0f b6 00             	movzbl (%eax),%eax
 717:	0f be c0             	movsbl %al,%eax
 71a:	25 ff 00 00 00       	and    $0xff,%eax
 71f:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(state == 0){
 722:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 726:	75 2c                	jne    754 <printf+0x6b>
      if(c == '%'){
 728:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 72c:	75 0c                	jne    73a <printf+0x51>
        state = '%';
 72e:	c7 45 f0 25 00 00 00 	movl   $0x25,-0x10(%ebp)
 735:	e9 4b 01 00 00       	jmp    885 <printf+0x19c>
      } else {
        putc(fd, c);
 73a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 73d:	0f be c0             	movsbl %al,%eax
 740:	89 44 24 04          	mov    %eax,0x4(%esp)
 744:	8b 45 08             	mov    0x8(%ebp),%eax
 747:	89 04 24             	mov    %eax,(%esp)
 74a:	e8 c1 fe ff ff       	call   610 <putc>
 74f:	e9 31 01 00 00       	jmp    885 <printf+0x19c>
      }
    } else if(state == '%'){
 754:	83 7d f0 25          	cmpl   $0x25,-0x10(%ebp)
 758:	0f 85 27 01 00 00    	jne    885 <printf+0x19c>
      if(c == 'd'){
 75e:	83 7d e8 64          	cmpl   $0x64,-0x18(%ebp)
 762:	75 2d                	jne    791 <printf+0xa8>
        printint(fd, *ap, 10, 1);
 764:	8b 45 f4             	mov    -0xc(%ebp),%eax
 767:	8b 00                	mov    (%eax),%eax
 769:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 770:	00 
 771:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 778:	00 
 779:	89 44 24 04          	mov    %eax,0x4(%esp)
 77d:	8b 45 08             	mov    0x8(%ebp),%eax
 780:	89 04 24             	mov    %eax,(%esp)
 783:	e8 b0 fe ff ff       	call   638 <printint>
        ap++;
 788:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 78c:	e9 ed 00 00 00       	jmp    87e <printf+0x195>
      } else if(c == 'x' || c == 'p'){
 791:	83 7d e8 78          	cmpl   $0x78,-0x18(%ebp)
 795:	74 06                	je     79d <printf+0xb4>
 797:	83 7d e8 70          	cmpl   $0x70,-0x18(%ebp)
 79b:	75 2d                	jne    7ca <printf+0xe1>
        printint(fd, *ap, 16, 0);
 79d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7a0:	8b 00                	mov    (%eax),%eax
 7a2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 7a9:	00 
 7aa:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 7b1:	00 
 7b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 7b6:	8b 45 08             	mov    0x8(%ebp),%eax
 7b9:	89 04 24             	mov    %eax,(%esp)
 7bc:	e8 77 fe ff ff       	call   638 <printint>
        ap++;
 7c1:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 7c5:	e9 b4 00 00 00       	jmp    87e <printf+0x195>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 7ca:	83 7d e8 73          	cmpl   $0x73,-0x18(%ebp)
 7ce:	75 46                	jne    816 <printf+0x12d>
        s = (char*)*ap;
 7d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7d3:	8b 00                	mov    (%eax),%eax
 7d5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        ap++;
 7d8:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
        if(s == 0)
 7dc:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 7e0:	75 27                	jne    809 <printf+0x120>
          s = "(null)";
 7e2:	c7 45 e4 5b 0e 00 00 	movl   $0xe5b,-0x1c(%ebp)
        while(*s != 0){
 7e9:	eb 1f                	jmp    80a <printf+0x121>
          putc(fd, *s);
 7eb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7ee:	0f b6 00             	movzbl (%eax),%eax
 7f1:	0f be c0             	movsbl %al,%eax
 7f4:	89 44 24 04          	mov    %eax,0x4(%esp)
 7f8:	8b 45 08             	mov    0x8(%ebp),%eax
 7fb:	89 04 24             	mov    %eax,(%esp)
 7fe:	e8 0d fe ff ff       	call   610 <putc>
          s++;
 803:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 807:	eb 01                	jmp    80a <printf+0x121>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 809:	90                   	nop
 80a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80d:	0f b6 00             	movzbl (%eax),%eax
 810:	84 c0                	test   %al,%al
 812:	75 d7                	jne    7eb <printf+0x102>
 814:	eb 68                	jmp    87e <printf+0x195>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 816:	83 7d e8 63          	cmpl   $0x63,-0x18(%ebp)
 81a:	75 1d                	jne    839 <printf+0x150>
        putc(fd, *ap);
 81c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 81f:	8b 00                	mov    (%eax),%eax
 821:	0f be c0             	movsbl %al,%eax
 824:	89 44 24 04          	mov    %eax,0x4(%esp)
 828:	8b 45 08             	mov    0x8(%ebp),%eax
 82b:	89 04 24             	mov    %eax,(%esp)
 82e:	e8 dd fd ff ff       	call   610 <putc>
        ap++;
 833:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 837:	eb 45                	jmp    87e <printf+0x195>
      } else if(c == '%'){
 839:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 83d:	75 17                	jne    856 <printf+0x16d>
        putc(fd, c);
 83f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 842:	0f be c0             	movsbl %al,%eax
 845:	89 44 24 04          	mov    %eax,0x4(%esp)
 849:	8b 45 08             	mov    0x8(%ebp),%eax
 84c:	89 04 24             	mov    %eax,(%esp)
 84f:	e8 bc fd ff ff       	call   610 <putc>
 854:	eb 28                	jmp    87e <printf+0x195>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 856:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 85d:	00 
 85e:	8b 45 08             	mov    0x8(%ebp),%eax
 861:	89 04 24             	mov    %eax,(%esp)
 864:	e8 a7 fd ff ff       	call   610 <putc>
        putc(fd, c);
 869:	8b 45 e8             	mov    -0x18(%ebp),%eax
 86c:	0f be c0             	movsbl %al,%eax
 86f:	89 44 24 04          	mov    %eax,0x4(%esp)
 873:	8b 45 08             	mov    0x8(%ebp),%eax
 876:	89 04 24             	mov    %eax,(%esp)
 879:	e8 92 fd ff ff       	call   610 <putc>
      }
      state = 0;
 87e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 885:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 889:	8b 55 0c             	mov    0xc(%ebp),%edx
 88c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 88f:	8d 04 02             	lea    (%edx,%eax,1),%eax
 892:	0f b6 00             	movzbl (%eax),%eax
 895:	84 c0                	test   %al,%al
 897:	0f 85 6e fe ff ff    	jne    70b <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 89d:	c9                   	leave  
 89e:	c3                   	ret    
 89f:	90                   	nop

000008a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 8a6:	8b 45 08             	mov    0x8(%ebp),%eax
 8a9:	83 e8 08             	sub    $0x8,%eax
 8ac:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8af:	a1 c8 0e 00 00       	mov    0xec8,%eax
 8b4:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8b7:	eb 24                	jmp    8dd <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8bc:	8b 00                	mov    (%eax),%eax
 8be:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8c1:	77 12                	ja     8d5 <free+0x35>
 8c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8c6:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8c9:	77 24                	ja     8ef <free+0x4f>
 8cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8ce:	8b 00                	mov    (%eax),%eax
 8d0:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8d3:	77 1a                	ja     8ef <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8d8:	8b 00                	mov    (%eax),%eax
 8da:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8dd:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8e0:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8e3:	76 d4                	jbe    8b9 <free+0x19>
 8e5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8e8:	8b 00                	mov    (%eax),%eax
 8ea:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8ed:	76 ca                	jbe    8b9 <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
 8ef:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8f2:	8b 40 04             	mov    0x4(%eax),%eax
 8f5:	c1 e0 03             	shl    $0x3,%eax
 8f8:	89 c2                	mov    %eax,%edx
 8fa:	03 55 f8             	add    -0x8(%ebp),%edx
 8fd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 900:	8b 00                	mov    (%eax),%eax
 902:	39 c2                	cmp    %eax,%edx
 904:	75 24                	jne    92a <free+0x8a>
    bp->s.size += p->s.ptr->s.size;
 906:	8b 45 f8             	mov    -0x8(%ebp),%eax
 909:	8b 50 04             	mov    0x4(%eax),%edx
 90c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 90f:	8b 00                	mov    (%eax),%eax
 911:	8b 40 04             	mov    0x4(%eax),%eax
 914:	01 c2                	add    %eax,%edx
 916:	8b 45 f8             	mov    -0x8(%ebp),%eax
 919:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 91c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 91f:	8b 00                	mov    (%eax),%eax
 921:	8b 10                	mov    (%eax),%edx
 923:	8b 45 f8             	mov    -0x8(%ebp),%eax
 926:	89 10                	mov    %edx,(%eax)
 928:	eb 0a                	jmp    934 <free+0x94>
  } else
    bp->s.ptr = p->s.ptr;
 92a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 92d:	8b 10                	mov    (%eax),%edx
 92f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 932:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 934:	8b 45 fc             	mov    -0x4(%ebp),%eax
 937:	8b 40 04             	mov    0x4(%eax),%eax
 93a:	c1 e0 03             	shl    $0x3,%eax
 93d:	03 45 fc             	add    -0x4(%ebp),%eax
 940:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 943:	75 20                	jne    965 <free+0xc5>
    p->s.size += bp->s.size;
 945:	8b 45 fc             	mov    -0x4(%ebp),%eax
 948:	8b 50 04             	mov    0x4(%eax),%edx
 94b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 94e:	8b 40 04             	mov    0x4(%eax),%eax
 951:	01 c2                	add    %eax,%edx
 953:	8b 45 fc             	mov    -0x4(%ebp),%eax
 956:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 959:	8b 45 f8             	mov    -0x8(%ebp),%eax
 95c:	8b 10                	mov    (%eax),%edx
 95e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 961:	89 10                	mov    %edx,(%eax)
 963:	eb 08                	jmp    96d <free+0xcd>
  } else
    p->s.ptr = bp;
 965:	8b 45 fc             	mov    -0x4(%ebp),%eax
 968:	8b 55 f8             	mov    -0x8(%ebp),%edx
 96b:	89 10                	mov    %edx,(%eax)
  freep = p;
 96d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 970:	a3 c8 0e 00 00       	mov    %eax,0xec8
}
 975:	c9                   	leave  
 976:	c3                   	ret    

00000977 <morecore>:

static Header*
morecore(uint nu)
{
 977:	55                   	push   %ebp
 978:	89 e5                	mov    %esp,%ebp
 97a:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 97d:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 984:	77 07                	ja     98d <morecore+0x16>
    nu = 4096;
 986:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 98d:	8b 45 08             	mov    0x8(%ebp),%eax
 990:	c1 e0 03             	shl    $0x3,%eax
 993:	89 04 24             	mov    %eax,(%esp)
 996:	e8 35 fc ff ff       	call   5d0 <sbrk>
 99b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(p == (char*)-1)
 99e:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 9a2:	75 07                	jne    9ab <morecore+0x34>
    return 0;
 9a4:	b8 00 00 00 00       	mov    $0x0,%eax
 9a9:	eb 22                	jmp    9cd <morecore+0x56>
  hp = (Header*)p;
 9ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9ae:	89 45 f4             	mov    %eax,-0xc(%ebp)
  hp->s.size = nu;
 9b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 9b4:	8b 55 08             	mov    0x8(%ebp),%edx
 9b7:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 9ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
 9bd:	83 c0 08             	add    $0x8,%eax
 9c0:	89 04 24             	mov    %eax,(%esp)
 9c3:	e8 d8 fe ff ff       	call   8a0 <free>
  return freep;
 9c8:	a1 c8 0e 00 00       	mov    0xec8,%eax
}
 9cd:	c9                   	leave  
 9ce:	c3                   	ret    

000009cf <malloc>:

void*
malloc(uint nbytes)
{
 9cf:	55                   	push   %ebp
 9d0:	89 e5                	mov    %esp,%ebp
 9d2:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d5:	8b 45 08             	mov    0x8(%ebp),%eax
 9d8:	83 c0 07             	add    $0x7,%eax
 9db:	c1 e8 03             	shr    $0x3,%eax
 9de:	83 c0 01             	add    $0x1,%eax
 9e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if((prevp = freep) == 0){
 9e4:	a1 c8 0e 00 00       	mov    0xec8,%eax
 9e9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 9ec:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 9f0:	75 23                	jne    a15 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 9f2:	c7 45 f0 c0 0e 00 00 	movl   $0xec0,-0x10(%ebp)
 9f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9fc:	a3 c8 0e 00 00       	mov    %eax,0xec8
 a01:	a1 c8 0e 00 00       	mov    0xec8,%eax
 a06:	a3 c0 0e 00 00       	mov    %eax,0xec0
    base.s.size = 0;
 a0b:	c7 05 c4 0e 00 00 00 	movl   $0x0,0xec4
 a12:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a15:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a18:	8b 00                	mov    (%eax),%eax
 a1a:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(p->s.size >= nunits){
 a1d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a20:	8b 40 04             	mov    0x4(%eax),%eax
 a23:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 a26:	72 4d                	jb     a75 <malloc+0xa6>
      if(p->s.size == nunits)
 a28:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a2b:	8b 40 04             	mov    0x4(%eax),%eax
 a2e:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 a31:	75 0c                	jne    a3f <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 a33:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a36:	8b 10                	mov    (%eax),%edx
 a38:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a3b:	89 10                	mov    %edx,(%eax)
 a3d:	eb 26                	jmp    a65 <malloc+0x96>
      else {
        p->s.size -= nunits;
 a3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a42:	8b 40 04             	mov    0x4(%eax),%eax
 a45:	89 c2                	mov    %eax,%edx
 a47:	2b 55 f4             	sub    -0xc(%ebp),%edx
 a4a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a4d:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 a50:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a53:	8b 40 04             	mov    0x4(%eax),%eax
 a56:	c1 e0 03             	shl    $0x3,%eax
 a59:	01 45 ec             	add    %eax,-0x14(%ebp)
        p->s.size = nunits;
 a5c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a5f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 a62:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 a65:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a68:	a3 c8 0e 00 00       	mov    %eax,0xec8
      return (void*)(p + 1);
 a6d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a70:	83 c0 08             	add    $0x8,%eax
 a73:	eb 38                	jmp    aad <malloc+0xde>
    }
    if(p == freep)
 a75:	a1 c8 0e 00 00       	mov    0xec8,%eax
 a7a:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 a7d:	75 1b                	jne    a9a <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 a7f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 a82:	89 04 24             	mov    %eax,(%esp)
 a85:	e8 ed fe ff ff       	call   977 <morecore>
 a8a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 a8d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a91:	75 07                	jne    a9a <malloc+0xcb>
        return 0;
 a93:	b8 00 00 00 00       	mov    $0x0,%eax
 a98:	eb 13                	jmp    aad <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a9a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a9d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 aa0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 aa3:	8b 00                	mov    (%eax),%eax
 aa5:	89 45 ec             	mov    %eax,-0x14(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
 aa8:	e9 70 ff ff ff       	jmp    a1d <malloc+0x4e>
}
 aad:	c9                   	leave  
 aae:	c3                   	ret    
 aaf:	90                   	nop

00000ab0 <xchg>:
  asm volatile("sti");
}

static inline uint
xchg(volatile uint *addr, uint newval)
{
 ab0:	55                   	push   %ebp
 ab1:	89 e5                	mov    %esp,%ebp
 ab3:	83 ec 10             	sub    $0x10,%esp
  uint result;
  
  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 ab6:	8b 55 08             	mov    0x8(%ebp),%edx
 ab9:	8b 45 0c             	mov    0xc(%ebp),%eax
 abc:	8b 4d 08             	mov    0x8(%ebp),%ecx
 abf:	f0 87 02             	lock xchg %eax,(%edx)
 ac2:	89 45 fc             	mov    %eax,-0x4(%ebp)
               "+m" (*addr), "=a" (result) :
               "1" (newval) :
               "cc");
  return result;
 ac5:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 ac8:	c9                   	leave  
 ac9:	c3                   	ret    

00000aca <lock_init>:
#include "x86.h"
#include "proc.h"



void lock_init(lock_t *lock){
 aca:	55                   	push   %ebp
 acb:	89 e5                	mov    %esp,%ebp
    lock->locked = 0;
 acd:	8b 45 08             	mov    0x8(%ebp),%eax
 ad0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 ad6:	5d                   	pop    %ebp
 ad7:	c3                   	ret    

00000ad8 <lock_acquire>:
void lock_acquire(lock_t *lock){
 ad8:	55                   	push   %ebp
 ad9:	89 e5                	mov    %esp,%ebp
 adb:	83 ec 08             	sub    $0x8,%esp
    while(xchg(&lock->locked,1) != 0);
 ade:	8b 45 08             	mov    0x8(%ebp),%eax
 ae1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 ae8:	00 
 ae9:	89 04 24             	mov    %eax,(%esp)
 aec:	e8 bf ff ff ff       	call   ab0 <xchg>
 af1:	85 c0                	test   %eax,%eax
 af3:	75 e9                	jne    ade <lock_acquire+0x6>
}
 af5:	c9                   	leave  
 af6:	c3                   	ret    

00000af7 <lock_release>:
void lock_release(lock_t *lock){
 af7:	55                   	push   %ebp
 af8:	89 e5                	mov    %esp,%ebp
 afa:	83 ec 08             	sub    $0x8,%esp
    xchg(&lock->locked,0);
 afd:	8b 45 08             	mov    0x8(%ebp),%eax
 b00:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 b07:	00 
 b08:	89 04 24             	mov    %eax,(%esp)
 b0b:	e8 a0 ff ff ff       	call   ab0 <xchg>
}
 b10:	c9                   	leave  
 b11:	c3                   	ret    

00000b12 <thread_create>:

void *thread_create(void(*start_routine)(void*), void *arg){
 b12:	55                   	push   %ebp
 b13:	89 e5                	mov    %esp,%ebp
 b15:	83 ec 28             	sub    $0x28,%esp
    int tid;
    void * stack = malloc(2 * 4096);
 b18:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
 b1f:	e8 ab fe ff ff       	call   9cf <malloc>
 b24:	89 45 f0             	mov    %eax,-0x10(%ebp)
    void *garbage_stack = stack; 
 b27:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b2a:	89 45 f4             	mov    %eax,-0xc(%ebp)
   // printf(1,"start routine addr : %d\n",(uint)start_routine);


    if((uint)stack % 4096){
 b2d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b30:	25 ff 0f 00 00       	and    $0xfff,%eax
 b35:	85 c0                	test   %eax,%eax
 b37:	74 15                	je     b4e <thread_create+0x3c>
        stack = stack + (4096 - (uint)stack % 4096);
 b39:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b3c:	89 c2                	mov    %eax,%edx
 b3e:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 b44:	b8 00 10 00 00       	mov    $0x1000,%eax
 b49:	29 d0                	sub    %edx,%eax
 b4b:	01 45 f0             	add    %eax,-0x10(%ebp)
    }
    if (stack == 0){
 b4e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 b52:	75 1b                	jne    b6f <thread_create+0x5d>

        printf(1,"malloc fail \n");
 b54:	c7 44 24 04 62 0e 00 	movl   $0xe62,0x4(%esp)
 b5b:	00 
 b5c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b63:	e8 81 fb ff ff       	call   6e9 <printf>
        return 0;
 b68:	b8 00 00 00 00       	mov    $0x0,%eax
 b6d:	eb 6f                	jmp    bde <thread_create+0xcc>
    }

    tid = clone((uint)stack,PSIZE,(uint)start_routine,(int)arg);
 b6f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b72:	8b 55 08             	mov    0x8(%ebp),%edx
 b75:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b78:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 b7c:	89 54 24 08          	mov    %edx,0x8(%esp)
 b80:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
 b87:	00 
 b88:	89 04 24             	mov    %eax,(%esp)
 b8b:	e8 58 fa ff ff       	call   5e8 <clone>
 b90:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(tid < 0){
 b93:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b97:	79 1b                	jns    bb4 <thread_create+0xa2>
        printf(1,"clone fails\n");
 b99:	c7 44 24 04 70 0e 00 	movl   $0xe70,0x4(%esp)
 ba0:	00 
 ba1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 ba8:	e8 3c fb ff ff       	call   6e9 <printf>
        return 0;
 bad:	b8 00 00 00 00       	mov    $0x0,%eax
 bb2:	eb 2a                	jmp    bde <thread_create+0xcc>
    }
    if(tid > 0){
 bb4:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 bb8:	7e 05                	jle    bbf <thread_create+0xad>
        //store threads on thread table
        return garbage_stack;
 bba:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bbd:	eb 1f                	jmp    bde <thread_create+0xcc>
    }
    if(tid == 0){
 bbf:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 bc3:	75 14                	jne    bd9 <thread_create+0xc7>
        printf(1,"tid = 0 return \n");
 bc5:	c7 44 24 04 7d 0e 00 	movl   $0xe7d,0x4(%esp)
 bcc:	00 
 bcd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 bd4:	e8 10 fb ff ff       	call   6e9 <printf>
    }
//    wait();
//    free(garbage_stack);

    return 0;
 bd9:	b8 00 00 00 00       	mov    $0x0,%eax
}
 bde:	c9                   	leave  
 bdf:	c3                   	ret    

00000be0 <init_q>:
#include "queue.h"
#include "types.h"
#include "user.h"

void init_q(struct queue *q){
 be0:	55                   	push   %ebp
 be1:	89 e5                	mov    %esp,%ebp
    q->size = 0;
 be3:	8b 45 08             	mov    0x8(%ebp),%eax
 be6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    q->head = 0;
 bec:	8b 45 08             	mov    0x8(%ebp),%eax
 bef:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    q->tail = 0;
 bf6:	8b 45 08             	mov    0x8(%ebp),%eax
 bf9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
 c00:	5d                   	pop    %ebp
 c01:	c3                   	ret    

00000c02 <add_q>:

void add_q(struct queue *q, int v){
 c02:	55                   	push   %ebp
 c03:	89 e5                	mov    %esp,%ebp
 c05:	83 ec 28             	sub    $0x28,%esp
    //printf(1, "here \n");
		struct node * n = malloc(sizeof(struct node));
 c08:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 c0f:	e8 bb fd ff ff       	call   9cf <malloc>
 c14:	89 45 f4             	mov    %eax,-0xc(%ebp)
    n->next = 0;
 c17:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c1a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    n->value = v;
 c21:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c24:	8b 55 0c             	mov    0xc(%ebp),%edx
 c27:	89 10                	mov    %edx,(%eax)
    if(q->head == 0){
 c29:	8b 45 08             	mov    0x8(%ebp),%eax
 c2c:	8b 40 04             	mov    0x4(%eax),%eax
 c2f:	85 c0                	test   %eax,%eax
 c31:	75 0b                	jne    c3e <add_q+0x3c>
        q->head = n;
 c33:	8b 45 08             	mov    0x8(%ebp),%eax
 c36:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c39:	89 50 04             	mov    %edx,0x4(%eax)
 c3c:	eb 0c                	jmp    c4a <add_q+0x48>
    }else{
        q->tail->next = n;
 c3e:	8b 45 08             	mov    0x8(%ebp),%eax
 c41:	8b 40 08             	mov    0x8(%eax),%eax
 c44:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c47:	89 50 04             	mov    %edx,0x4(%eax)
    }
    q->tail = n;
 c4a:	8b 45 08             	mov    0x8(%ebp),%eax
 c4d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c50:	89 50 08             	mov    %edx,0x8(%eax)
    q->size++;
 c53:	8b 45 08             	mov    0x8(%ebp),%eax
 c56:	8b 00                	mov    (%eax),%eax
 c58:	8d 50 01             	lea    0x1(%eax),%edx
 c5b:	8b 45 08             	mov    0x8(%ebp),%eax
 c5e:	89 10                	mov    %edx,(%eax)
}
 c60:	c9                   	leave  
 c61:	c3                   	ret    

00000c62 <empty_q>:

int empty_q(struct queue *q){
 c62:	55                   	push   %ebp
 c63:	89 e5                	mov    %esp,%ebp
    if(q->size == 0)
 c65:	8b 45 08             	mov    0x8(%ebp),%eax
 c68:	8b 00                	mov    (%eax),%eax
 c6a:	85 c0                	test   %eax,%eax
 c6c:	75 07                	jne    c75 <empty_q+0x13>
        return 1;
 c6e:	b8 01 00 00 00       	mov    $0x1,%eax
 c73:	eb 05                	jmp    c7a <empty_q+0x18>
    else
        return 0;
 c75:	b8 00 00 00 00       	mov    $0x0,%eax
} 
 c7a:	5d                   	pop    %ebp
 c7b:	c3                   	ret    

00000c7c <pop_q>:
int pop_q(struct queue *q){
 c7c:	55                   	push   %ebp
 c7d:	89 e5                	mov    %esp,%ebp
 c7f:	83 ec 28             	sub    $0x28,%esp
    int val;
    struct node *destroy;
    if(!empty_q(q)){
 c82:	8b 45 08             	mov    0x8(%ebp),%eax
 c85:	89 04 24             	mov    %eax,(%esp)
 c88:	e8 d5 ff ff ff       	call   c62 <empty_q>
 c8d:	85 c0                	test   %eax,%eax
 c8f:	75 5d                	jne    cee <pop_q+0x72>
       val = q->head->value; 
 c91:	8b 45 08             	mov    0x8(%ebp),%eax
 c94:	8b 40 04             	mov    0x4(%eax),%eax
 c97:	8b 00                	mov    (%eax),%eax
 c99:	89 45 f0             	mov    %eax,-0x10(%ebp)
       destroy = q->head;
 c9c:	8b 45 08             	mov    0x8(%ebp),%eax
 c9f:	8b 40 04             	mov    0x4(%eax),%eax
 ca2:	89 45 f4             	mov    %eax,-0xc(%ebp)
       q->head = q->head->next;
 ca5:	8b 45 08             	mov    0x8(%ebp),%eax
 ca8:	8b 40 04             	mov    0x4(%eax),%eax
 cab:	8b 50 04             	mov    0x4(%eax),%edx
 cae:	8b 45 08             	mov    0x8(%ebp),%eax
 cb1:	89 50 04             	mov    %edx,0x4(%eax)
       free(destroy);
 cb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 cb7:	89 04 24             	mov    %eax,(%esp)
 cba:	e8 e1 fb ff ff       	call   8a0 <free>
       q->size--;
 cbf:	8b 45 08             	mov    0x8(%ebp),%eax
 cc2:	8b 00                	mov    (%eax),%eax
 cc4:	8d 50 ff             	lea    -0x1(%eax),%edx
 cc7:	8b 45 08             	mov    0x8(%ebp),%eax
 cca:	89 10                	mov    %edx,(%eax)
       if(q->size == 0){
 ccc:	8b 45 08             	mov    0x8(%ebp),%eax
 ccf:	8b 00                	mov    (%eax),%eax
 cd1:	85 c0                	test   %eax,%eax
 cd3:	75 14                	jne    ce9 <pop_q+0x6d>
            q->head = 0;
 cd5:	8b 45 08             	mov    0x8(%ebp),%eax
 cd8:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
            q->tail = 0;
 cdf:	8b 45 08             	mov    0x8(%ebp),%eax
 ce2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
       }
       return val;
 ce9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 cec:	eb 05                	jmp    cf3 <pop_q+0x77>
    }
    return -1;
 cee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 cf3:	c9                   	leave  
 cf4:	c3                   	ret    
 cf5:	90                   	nop
 cf6:	90                   	nop
 cf7:	90                   	nop

00000cf8 <init_semaphore>:
#include "semaphore.h"
#include "user.h"

//lab 2
//Semaphore
void init_semaphore(struct Semaphore *s, int count_num) {
 cf8:	55                   	push   %ebp
 cf9:	89 e5                	mov    %esp,%ebp
 cfb:	83 ec 18             	sub    $0x18,%esp
	s->count = count_num;
 cfe:	8b 45 08             	mov    0x8(%ebp),%eax
 d01:	8b 55 0c             	mov    0xc(%ebp),%edx
 d04:	89 10                	mov    %edx,(%eax)
	init_q(&s->threads);
 d06:	8b 45 08             	mov    0x8(%ebp),%eax
 d09:	83 c0 04             	add    $0x4,%eax
 d0c:	89 04 24             	mov    %eax,(%esp)
 d0f:	e8 cc fe ff ff       	call   be0 <init_q>
	lock_init(&s->lock);
 d14:	8b 45 08             	mov    0x8(%ebp),%eax
 d17:	83 c0 10             	add    $0x10,%eax
 d1a:	89 04 24             	mov    %eax,(%esp)
 d1d:	e8 a8 fd ff ff       	call   aca <lock_init>
}
 d22:	c9                   	leave  
 d23:	c3                   	ret    

00000d24 <sem_acquire>:

void sem_acquire(struct Semaphore *s) {
 d24:	55                   	push   %ebp
 d25:	89 e5                	mov    %esp,%ebp
 d27:	83 ec 18             	sub    $0x18,%esp
	while(1) {
		if (s->count > 0) {												//if there are available resources
 d2a:	8b 45 08             	mov    0x8(%ebp),%eax
 d2d:	8b 00                	mov    (%eax),%eax
 d2f:	85 c0                	test   %eax,%eax
 d31:	7e 2c                	jle    d5f <sem_acquire+0x3b>
			//printf(1, "COUNT IS = %d\n", s->count);
			//printf(1, "acquiring lock\n");
			lock_acquire(&s->lock);									//acquire count lock
 d33:	8b 45 08             	mov    0x8(%ebp),%eax
 d36:	83 c0 10             	add    $0x10,%eax
 d39:	89 04 24             	mov    %eax,(%esp)
 d3c:	e8 97 fd ff ff       	call   ad8 <lock_acquire>
			//printf(1, "acquired lock\n");
			s->count = s->count - 1;																//decrement resource by one
 d41:	8b 45 08             	mov    0x8(%ebp),%eax
 d44:	8b 00                	mov    (%eax),%eax
 d46:	8d 50 ff             	lea    -0x1(%eax),%edx
 d49:	8b 45 08             	mov    0x8(%ebp),%eax
 d4c:	89 10                	mov    %edx,(%eax)
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
 d4e:	8b 45 08             	mov    0x8(%ebp),%eax
 d51:	83 c0 10             	add    $0x10,%eax
 d54:	89 04 24             	mov    %eax,(%esp)
 d57:	e8 9b fd ff ff       	call   af7 <lock_release>
			break;
 d5c:	90                   	nop
			add_q(&s->threads, getpid());						//add thread to sleep queueu
			//printf(1, "asleep \n");
			tsleep();
		}
	}
}
 d5d:	c9                   	leave  
 d5e:	c3                   	ret    
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
			break;
		}
		else {																		//if there are no available resources
			printf(1, "Waiting for semaphore\n");
 d5f:	c7 44 24 04 8e 0e 00 	movl   $0xe8e,0x4(%esp)
 d66:	00 
 d67:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 d6e:	e8 76 f9 ff ff       	call   6e9 <printf>
			//printf(1, "%d", getpid());
			add_q(&s->threads, getpid());						//add thread to sleep queueu
 d73:	e8 50 f8 ff ff       	call   5c8 <getpid>
 d78:	8b 55 08             	mov    0x8(%ebp),%edx
 d7b:	83 c2 04             	add    $0x4,%edx
 d7e:	89 44 24 04          	mov    %eax,0x4(%esp)
 d82:	89 14 24             	mov    %edx,(%esp)
 d85:	e8 78 fe ff ff       	call   c02 <add_q>
			//printf(1, "asleep \n");
			tsleep();
 d8a:	e8 69 f8 ff ff       	call   5f8 <tsleep>
		}
	}
 d8f:	eb 99                	jmp    d2a <sem_acquire+0x6>

00000d91 <sem_signal>:
}

void sem_signal(struct Semaphore *s) {
 d91:	55                   	push   %ebp
 d92:	89 e5                	mov    %esp,%ebp
 d94:	83 ec 18             	sub    $0x18,%esp
	lock_acquire(&s->lock);
 d97:	8b 45 08             	mov    0x8(%ebp),%eax
 d9a:	83 c0 10             	add    $0x10,%eax
 d9d:	89 04 24             	mov    %eax,(%esp)
 da0:	e8 33 fd ff ff       	call   ad8 <lock_acquire>
	s->count++;
 da5:	8b 45 08             	mov    0x8(%ebp),%eax
 da8:	8b 00                	mov    (%eax),%eax
 daa:	8d 50 01             	lea    0x1(%eax),%edx
 dad:	8b 45 08             	mov    0x8(%ebp),%eax
 db0:	89 10                	mov    %edx,(%eax)
	lock_release(&s->lock);
 db2:	8b 45 08             	mov    0x8(%ebp),%eax
 db5:	83 c0 10             	add    $0x10,%eax
 db8:	89 04 24             	mov    %eax,(%esp)
 dbb:	e8 37 fd ff ff       	call   af7 <lock_release>
	if (!empty_q(&s->threads)) {
 dc0:	8b 45 08             	mov    0x8(%ebp),%eax
 dc3:	83 c0 04             	add    $0x4,%eax
 dc6:	89 04 24             	mov    %eax,(%esp)
 dc9:	e8 94 fe ff ff       	call   c62 <empty_q>
 dce:	85 c0                	test   %eax,%eax
 dd0:	75 16                	jne    de8 <sem_signal+0x57>
		twakeup(pop_q(&s->threads));							//remove thread from queue and wake up
 dd2:	8b 45 08             	mov    0x8(%ebp),%eax
 dd5:	83 c0 04             	add    $0x4,%eax
 dd8:	89 04 24             	mov    %eax,(%esp)
 ddb:	e8 9c fe ff ff       	call   c7c <pop_q>
 de0:	89 04 24             	mov    %eax,(%esp)
 de3:	e8 18 f8 ff ff       	call   600 <twakeup>
	}
}
 de8:	c9                   	leave  
 de9:	c3                   	ret    
