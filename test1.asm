
_test1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

int n = 1;

void test_func(void *arg_ptr);

int main(int argc, char *argv[]){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 20             	sub    $0x20,%esp
	 init_semaphore(&s, 1);
   9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  10:	00 
  11:	c7 04 24 60 0e 00 00 	movl   $0xe60,(%esp)
  18:	e8 9b 0c 00 00       	call   cb8 <init_semaphore>

   int pid = fork();
  1d:	e8 de 04 00 00       	call   500 <fork>
  22:	89 44 24 14          	mov    %eax,0x14(%esp)
    if(pid == 0){
  26:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
  2b:	0f 85 43 01 00 00    	jne    174 <main+0x174>
        void *tid = thread_create(test_func,(void *)0);
  31:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  38:	00 
  39:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
  40:	e8 8d 0a 00 00       	call   ad2 <thread_create>
  45:	89 44 24 18          	mov    %eax,0x18(%esp)
         if(tid == 0){
  49:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  4e:	75 19                	jne    69 <main+0x69>
            printf(1,"thread_create fails\n");
  50:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
  57:	00 
  58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  5f:	e8 45 06 00 00       	call   6a9 <printf>
            exit();
  64:	e8 9f 04 00 00       	call   508 <exit>
        }
        tid = thread_create(test_func,(void *)0);
  69:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  70:	00 
  71:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
  78:	e8 55 0a 00 00       	call   ad2 <thread_create>
  7d:	89 44 24 18          	mov    %eax,0x18(%esp)
        if(tid == 0){
  81:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  86:	75 19                	jne    a1 <main+0xa1>
            printf(1,"thread_create fails\n");
  88:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
  8f:	00 
  90:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  97:	e8 0d 06 00 00       	call   6a9 <printf>
            exit();
  9c:	e8 67 04 00 00       	call   508 <exit>
        }
        tid = thread_create(test_func,(void *)0);
  a1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  a8:	00 
  a9:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
  b0:	e8 1d 0a 00 00       	call   ad2 <thread_create>
  b5:	89 44 24 18          	mov    %eax,0x18(%esp)
         if(tid == 0){
  b9:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  be:	75 19                	jne    d9 <main+0xd9>
            printf(1,"thread_create fails\n");
  c0:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
  c7:	00 
  c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  cf:	e8 d5 05 00 00       	call   6a9 <printf>
            exit();
  d4:	e8 2f 04 00 00       	call   508 <exit>
        }
        tid = thread_create(test_func,(void *)0);
  d9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  e0:	00 
  e1:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
  e8:	e8 e5 09 00 00       	call   ad2 <thread_create>
  ed:	89 44 24 18          	mov    %eax,0x18(%esp)
          if(tid == 0){
  f1:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
  f6:	75 19                	jne    111 <main+0x111>
            printf(1,"thread_create fails\n");
  f8:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
  ff:	00 
 100:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 107:	e8 9d 05 00 00       	call   6a9 <printf>
            exit();
 10c:	e8 f7 03 00 00       	call   508 <exit>
        }
       tid = thread_create(test_func,(void *)0);
 111:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 118:	00 
 119:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
 120:	e8 ad 09 00 00       	call   ad2 <thread_create>
 125:	89 44 24 18          	mov    %eax,0x18(%esp)
           if(tid == 0){
 129:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 12e:	75 19                	jne    149 <main+0x149>
            printf(1,"thread_create fails\n");
 130:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
 137:	00 
 138:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13f:	e8 65 05 00 00       	call   6a9 <printf>
            exit();
 144:	e8 bf 03 00 00       	call   508 <exit>
        }
      while(wait()>=0);
 149:	e8 c2 03 00 00       	call   510 <wait>
 14e:	85 c0                	test   %eax,%eax
 150:	79 f7                	jns    149 <main+0x149>
        printf(1,"I am child, [6] n = %d\n",n);
 152:	a1 3c 0e 00 00       	mov    0xe3c,%eax
 157:	89 44 24 08          	mov    %eax,0x8(%esp)
 15b:	c7 44 24 04 bf 0d 00 	movl   $0xdbf,0x4(%esp)
 162:	00 
 163:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 16a:	e8 3a 05 00 00       	call   6a9 <printf>
 16f:	e9 11 01 00 00       	jmp    285 <main+0x285>
    }else if(pid > 0){
 174:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
 179:	0f 8e 06 01 00 00    	jle    285 <main+0x285>
        void *tid = thread_create(test_func,(void *)0);
 17f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 186:	00 
 187:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
 18e:	e8 3f 09 00 00       	call   ad2 <thread_create>
 193:	89 44 24 1c          	mov    %eax,0x1c(%esp)
         if(tid == 0){
 197:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 19c:	75 19                	jne    1b7 <main+0x1b7>
            printf(1,"thread_create fails\n");
 19e:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
 1a5:	00 
 1a6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1ad:	e8 f7 04 00 00       	call   6a9 <printf>
            exit();
 1b2:	e8 51 03 00 00       	call   508 <exit>
        }
        tid = thread_create(test_func,(void *)0);
 1b7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1be:	00 
 1bf:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
 1c6:	e8 07 09 00 00       	call   ad2 <thread_create>
 1cb:	89 44 24 1c          	mov    %eax,0x1c(%esp)
         if(tid == 0){
 1cf:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 1d4:	75 19                	jne    1ef <main+0x1ef>
            printf(1,"thread_create fails\n");
 1d6:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
 1dd:	00 
 1de:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1e5:	e8 bf 04 00 00       	call   6a9 <printf>
            exit();
 1ea:	e8 19 03 00 00       	call   508 <exit>
        }
        tid = thread_create(test_func,(void *)0);
 1ef:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1f6:	00 
 1f7:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
 1fe:	e8 cf 08 00 00       	call   ad2 <thread_create>
 203:	89 44 24 1c          	mov    %eax,0x1c(%esp)
         if(tid == 0){
 207:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 20c:	75 19                	jne    227 <main+0x227>
            printf(1,"thread_create fails\n");
 20e:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
 215:	00 
 216:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 21d:	e8 87 04 00 00       	call   6a9 <printf>
            exit();
 222:	e8 e1 02 00 00       	call   508 <exit>
        }
        tid = thread_create(test_func,(void *)0);
 227:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 22e:	00 
 22f:	c7 04 24 8a 02 00 00 	movl   $0x28a,(%esp)
 236:	e8 97 08 00 00       	call   ad2 <thread_create>
 23b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
         if(tid == 0){
 23f:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 244:	75 19                	jne    25f <main+0x25f>
            printf(1,"thread_create fails\n");
 246:	c7 44 24 04 aa 0d 00 	movl   $0xdaa,0x4(%esp)
 24d:	00 
 24e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 255:	e8 4f 04 00 00       	call   6a9 <printf>
            exit();
 25a:	e8 a9 02 00 00       	call   508 <exit>
        }
        while(wait()>=0);
 25f:	e8 ac 02 00 00       	call   510 <wait>
 264:	85 c0                	test   %eax,%eax
 266:	79 f7                	jns    25f <main+0x25f>
        printf(1,"I am parent, [5] n = %d\n",n);
 268:	a1 3c 0e 00 00       	mov    0xe3c,%eax
 26d:	89 44 24 08          	mov    %eax,0x8(%esp)
 271:	c7 44 24 04 d7 0d 00 	movl   $0xdd7,0x4(%esp)
 278:	00 
 279:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 280:	e8 24 04 00 00       	call   6a9 <printf>
    }

   exit();
 285:	e8 7e 02 00 00       	call   508 <exit>

0000028a <test_func>:
}

void test_func(void *arg_ptr){
 28a:	55                   	push   %ebp
 28b:	89 e5                	mov    %esp,%ebp
 28d:	83 ec 08             	sub    $0x8,%esp
//    printf(1,"\n n = %d\n",n);
    n++;
 290:	a1 3c 0e 00 00       	mov    0xe3c,%eax
 295:	83 c0 01             	add    $0x1,%eax
 298:	a3 3c 0e 00 00       	mov    %eax,0xe3c
   // printf(1,"after increase by 1 , n = %d\n\n",n);
    texit();
 29d:	e8 0e 03 00 00       	call   5b0 <texit>
 2a2:	90                   	nop
 2a3:	90                   	nop

000002a4 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 2a4:	55                   	push   %ebp
 2a5:	89 e5                	mov    %esp,%ebp
 2a7:	57                   	push   %edi
 2a8:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 2a9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2ac:	8b 55 10             	mov    0x10(%ebp),%edx
 2af:	8b 45 0c             	mov    0xc(%ebp),%eax
 2b2:	89 cb                	mov    %ecx,%ebx
 2b4:	89 df                	mov    %ebx,%edi
 2b6:	89 d1                	mov    %edx,%ecx
 2b8:	fc                   	cld    
 2b9:	f3 aa                	rep stos %al,%es:(%edi)
 2bb:	89 ca                	mov    %ecx,%edx
 2bd:	89 fb                	mov    %edi,%ebx
 2bf:	89 5d 08             	mov    %ebx,0x8(%ebp)
 2c2:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 2c5:	5b                   	pop    %ebx
 2c6:	5f                   	pop    %edi
 2c7:	5d                   	pop    %ebp
 2c8:	c3                   	ret    

000002c9 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 2c9:	55                   	push   %ebp
 2ca:	89 e5                	mov    %esp,%ebp
 2cc:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 2cf:	8b 45 08             	mov    0x8(%ebp),%eax
 2d2:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 2d5:	8b 45 0c             	mov    0xc(%ebp),%eax
 2d8:	0f b6 10             	movzbl (%eax),%edx
 2db:	8b 45 08             	mov    0x8(%ebp),%eax
 2de:	88 10                	mov    %dl,(%eax)
 2e0:	8b 45 08             	mov    0x8(%ebp),%eax
 2e3:	0f b6 00             	movzbl (%eax),%eax
 2e6:	84 c0                	test   %al,%al
 2e8:	0f 95 c0             	setne  %al
 2eb:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 2ef:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 2f3:	84 c0                	test   %al,%al
 2f5:	75 de                	jne    2d5 <strcpy+0xc>
    ;
  return os;
 2f7:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 2fa:	c9                   	leave  
 2fb:	c3                   	ret    

000002fc <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2fc:	55                   	push   %ebp
 2fd:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 2ff:	eb 08                	jmp    309 <strcmp+0xd>
    p++, q++;
 301:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 305:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 309:	8b 45 08             	mov    0x8(%ebp),%eax
 30c:	0f b6 00             	movzbl (%eax),%eax
 30f:	84 c0                	test   %al,%al
 311:	74 10                	je     323 <strcmp+0x27>
 313:	8b 45 08             	mov    0x8(%ebp),%eax
 316:	0f b6 10             	movzbl (%eax),%edx
 319:	8b 45 0c             	mov    0xc(%ebp),%eax
 31c:	0f b6 00             	movzbl (%eax),%eax
 31f:	38 c2                	cmp    %al,%dl
 321:	74 de                	je     301 <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 323:	8b 45 08             	mov    0x8(%ebp),%eax
 326:	0f b6 00             	movzbl (%eax),%eax
 329:	0f b6 d0             	movzbl %al,%edx
 32c:	8b 45 0c             	mov    0xc(%ebp),%eax
 32f:	0f b6 00             	movzbl (%eax),%eax
 332:	0f b6 c0             	movzbl %al,%eax
 335:	89 d1                	mov    %edx,%ecx
 337:	29 c1                	sub    %eax,%ecx
 339:	89 c8                	mov    %ecx,%eax
}
 33b:	5d                   	pop    %ebp
 33c:	c3                   	ret    

0000033d <strlen>:

uint
strlen(char *s)
{
 33d:	55                   	push   %ebp
 33e:	89 e5                	mov    %esp,%ebp
 340:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 343:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 34a:	eb 04                	jmp    350 <strlen+0x13>
 34c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 350:	8b 45 fc             	mov    -0x4(%ebp),%eax
 353:	03 45 08             	add    0x8(%ebp),%eax
 356:	0f b6 00             	movzbl (%eax),%eax
 359:	84 c0                	test   %al,%al
 35b:	75 ef                	jne    34c <strlen+0xf>
    ;
  return n;
 35d:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 360:	c9                   	leave  
 361:	c3                   	ret    

00000362 <memset>:

void*
memset(void *dst, int c, uint n)
{
 362:	55                   	push   %ebp
 363:	89 e5                	mov    %esp,%ebp
 365:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 368:	8b 45 10             	mov    0x10(%ebp),%eax
 36b:	89 44 24 08          	mov    %eax,0x8(%esp)
 36f:	8b 45 0c             	mov    0xc(%ebp),%eax
 372:	89 44 24 04          	mov    %eax,0x4(%esp)
 376:	8b 45 08             	mov    0x8(%ebp),%eax
 379:	89 04 24             	mov    %eax,(%esp)
 37c:	e8 23 ff ff ff       	call   2a4 <stosb>
  return dst;
 381:	8b 45 08             	mov    0x8(%ebp),%eax
}
 384:	c9                   	leave  
 385:	c3                   	ret    

00000386 <strchr>:

char*
strchr(const char *s, char c)
{
 386:	55                   	push   %ebp
 387:	89 e5                	mov    %esp,%ebp
 389:	83 ec 04             	sub    $0x4,%esp
 38c:	8b 45 0c             	mov    0xc(%ebp),%eax
 38f:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 392:	eb 14                	jmp    3a8 <strchr+0x22>
    if(*s == c)
 394:	8b 45 08             	mov    0x8(%ebp),%eax
 397:	0f b6 00             	movzbl (%eax),%eax
 39a:	3a 45 fc             	cmp    -0x4(%ebp),%al
 39d:	75 05                	jne    3a4 <strchr+0x1e>
      return (char*)s;
 39f:	8b 45 08             	mov    0x8(%ebp),%eax
 3a2:	eb 13                	jmp    3b7 <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 3a4:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 3a8:	8b 45 08             	mov    0x8(%ebp),%eax
 3ab:	0f b6 00             	movzbl (%eax),%eax
 3ae:	84 c0                	test   %al,%al
 3b0:	75 e2                	jne    394 <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
 3b2:	b8 00 00 00 00       	mov    $0x0,%eax
}
 3b7:	c9                   	leave  
 3b8:	c3                   	ret    

000003b9 <gets>:

char*
gets(char *buf, int max)
{
 3b9:	55                   	push   %ebp
 3ba:	89 e5                	mov    %esp,%ebp
 3bc:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 3bf:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 3c6:	eb 44                	jmp    40c <gets+0x53>
    cc = read(0, &c, 1);
 3c8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3cf:	00 
 3d0:	8d 45 ef             	lea    -0x11(%ebp),%eax
 3d3:	89 44 24 04          	mov    %eax,0x4(%esp)
 3d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 3de:	e8 3d 01 00 00       	call   520 <read>
 3e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(cc < 1)
 3e6:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 3ea:	7e 2d                	jle    419 <gets+0x60>
      break;
    buf[i++] = c;
 3ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
 3ef:	03 45 08             	add    0x8(%ebp),%eax
 3f2:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
 3f6:	88 10                	mov    %dl,(%eax)
 3f8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    if(c == '\n' || c == '\r')
 3fc:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 400:	3c 0a                	cmp    $0xa,%al
 402:	74 16                	je     41a <gets+0x61>
 404:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 408:	3c 0d                	cmp    $0xd,%al
 40a:	74 0e                	je     41a <gets+0x61>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 40c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 40f:	83 c0 01             	add    $0x1,%eax
 412:	3b 45 0c             	cmp    0xc(%ebp),%eax
 415:	7c b1                	jl     3c8 <gets+0xf>
 417:	eb 01                	jmp    41a <gets+0x61>
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
 419:	90                   	nop
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 41a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 41d:	03 45 08             	add    0x8(%ebp),%eax
 420:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 423:	8b 45 08             	mov    0x8(%ebp),%eax
}
 426:	c9                   	leave  
 427:	c3                   	ret    

00000428 <stat>:

int
stat(char *n, struct stat *st)
{
 428:	55                   	push   %ebp
 429:	89 e5                	mov    %esp,%ebp
 42b:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 42e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 435:	00 
 436:	8b 45 08             	mov    0x8(%ebp),%eax
 439:	89 04 24             	mov    %eax,(%esp)
 43c:	e8 07 01 00 00       	call   548 <open>
 441:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(fd < 0)
 444:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 448:	79 07                	jns    451 <stat+0x29>
    return -1;
 44a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 44f:	eb 23                	jmp    474 <stat+0x4c>
  r = fstat(fd, st);
 451:	8b 45 0c             	mov    0xc(%ebp),%eax
 454:	89 44 24 04          	mov    %eax,0x4(%esp)
 458:	8b 45 f0             	mov    -0x10(%ebp),%eax
 45b:	89 04 24             	mov    %eax,(%esp)
 45e:	e8 fd 00 00 00       	call   560 <fstat>
 463:	89 45 f4             	mov    %eax,-0xc(%ebp)
  close(fd);
 466:	8b 45 f0             	mov    -0x10(%ebp),%eax
 469:	89 04 24             	mov    %eax,(%esp)
 46c:	e8 bf 00 00 00       	call   530 <close>
  return r;
 471:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
 474:	c9                   	leave  
 475:	c3                   	ret    

00000476 <atoi>:

int
atoi(const char *s)
{
 476:	55                   	push   %ebp
 477:	89 e5                	mov    %esp,%ebp
 479:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 47c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 483:	eb 24                	jmp    4a9 <atoi+0x33>
    n = n*10 + *s++ - '0';
 485:	8b 55 fc             	mov    -0x4(%ebp),%edx
 488:	89 d0                	mov    %edx,%eax
 48a:	c1 e0 02             	shl    $0x2,%eax
 48d:	01 d0                	add    %edx,%eax
 48f:	01 c0                	add    %eax,%eax
 491:	89 c2                	mov    %eax,%edx
 493:	8b 45 08             	mov    0x8(%ebp),%eax
 496:	0f b6 00             	movzbl (%eax),%eax
 499:	0f be c0             	movsbl %al,%eax
 49c:	8d 04 02             	lea    (%edx,%eax,1),%eax
 49f:	83 e8 30             	sub    $0x30,%eax
 4a2:	89 45 fc             	mov    %eax,-0x4(%ebp)
 4a5:	83 45 08 01          	addl   $0x1,0x8(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a9:	8b 45 08             	mov    0x8(%ebp),%eax
 4ac:	0f b6 00             	movzbl (%eax),%eax
 4af:	3c 2f                	cmp    $0x2f,%al
 4b1:	7e 0a                	jle    4bd <atoi+0x47>
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	0f b6 00             	movzbl (%eax),%eax
 4b9:	3c 39                	cmp    $0x39,%al
 4bb:	7e c8                	jle    485 <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
 4bd:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 4c0:	c9                   	leave  
 4c1:	c3                   	ret    

000004c2 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 4c2:	55                   	push   %ebp
 4c3:	89 e5                	mov    %esp,%ebp
 4c5:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
 4c8:	8b 45 08             	mov    0x8(%ebp),%eax
 4cb:	89 45 f8             	mov    %eax,-0x8(%ebp)
  src = vsrc;
 4ce:	8b 45 0c             	mov    0xc(%ebp),%eax
 4d1:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while(n-- > 0)
 4d4:	eb 13                	jmp    4e9 <memmove+0x27>
    *dst++ = *src++;
 4d6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 4d9:	0f b6 10             	movzbl (%eax),%edx
 4dc:	8b 45 f8             	mov    -0x8(%ebp),%eax
 4df:	88 10                	mov    %dl,(%eax)
 4e1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 4e5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4e9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 4ed:	0f 9f c0             	setg   %al
 4f0:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 4f4:	84 c0                	test   %al,%al
 4f6:	75 de                	jne    4d6 <memmove+0x14>
    *dst++ = *src++;
  return vdst;
 4f8:	8b 45 08             	mov    0x8(%ebp),%eax
}
 4fb:	c9                   	leave  
 4fc:	c3                   	ret    
 4fd:	90                   	nop
 4fe:	90                   	nop
 4ff:	90                   	nop

00000500 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 500:	b8 01 00 00 00       	mov    $0x1,%eax
 505:	cd 40                	int    $0x40
 507:	c3                   	ret    

00000508 <exit>:
SYSCALL(exit)
 508:	b8 02 00 00 00       	mov    $0x2,%eax
 50d:	cd 40                	int    $0x40
 50f:	c3                   	ret    

00000510 <wait>:
SYSCALL(wait)
 510:	b8 03 00 00 00       	mov    $0x3,%eax
 515:	cd 40                	int    $0x40
 517:	c3                   	ret    

00000518 <pipe>:
SYSCALL(pipe)
 518:	b8 04 00 00 00       	mov    $0x4,%eax
 51d:	cd 40                	int    $0x40
 51f:	c3                   	ret    

00000520 <read>:
SYSCALL(read)
 520:	b8 05 00 00 00       	mov    $0x5,%eax
 525:	cd 40                	int    $0x40
 527:	c3                   	ret    

00000528 <write>:
SYSCALL(write)
 528:	b8 10 00 00 00       	mov    $0x10,%eax
 52d:	cd 40                	int    $0x40
 52f:	c3                   	ret    

00000530 <close>:
SYSCALL(close)
 530:	b8 15 00 00 00       	mov    $0x15,%eax
 535:	cd 40                	int    $0x40
 537:	c3                   	ret    

00000538 <kill>:
SYSCALL(kill)
 538:	b8 06 00 00 00       	mov    $0x6,%eax
 53d:	cd 40                	int    $0x40
 53f:	c3                   	ret    

00000540 <exec>:
SYSCALL(exec)
 540:	b8 07 00 00 00       	mov    $0x7,%eax
 545:	cd 40                	int    $0x40
 547:	c3                   	ret    

00000548 <open>:
SYSCALL(open)
 548:	b8 0f 00 00 00       	mov    $0xf,%eax
 54d:	cd 40                	int    $0x40
 54f:	c3                   	ret    

00000550 <mknod>:
SYSCALL(mknod)
 550:	b8 11 00 00 00       	mov    $0x11,%eax
 555:	cd 40                	int    $0x40
 557:	c3                   	ret    

00000558 <unlink>:
SYSCALL(unlink)
 558:	b8 12 00 00 00       	mov    $0x12,%eax
 55d:	cd 40                	int    $0x40
 55f:	c3                   	ret    

00000560 <fstat>:
SYSCALL(fstat)
 560:	b8 08 00 00 00       	mov    $0x8,%eax
 565:	cd 40                	int    $0x40
 567:	c3                   	ret    

00000568 <link>:
SYSCALL(link)
 568:	b8 13 00 00 00       	mov    $0x13,%eax
 56d:	cd 40                	int    $0x40
 56f:	c3                   	ret    

00000570 <mkdir>:
SYSCALL(mkdir)
 570:	b8 14 00 00 00       	mov    $0x14,%eax
 575:	cd 40                	int    $0x40
 577:	c3                   	ret    

00000578 <chdir>:
SYSCALL(chdir)
 578:	b8 09 00 00 00       	mov    $0x9,%eax
 57d:	cd 40                	int    $0x40
 57f:	c3                   	ret    

00000580 <dup>:
SYSCALL(dup)
 580:	b8 0a 00 00 00       	mov    $0xa,%eax
 585:	cd 40                	int    $0x40
 587:	c3                   	ret    

00000588 <getpid>:
SYSCALL(getpid)
 588:	b8 0b 00 00 00       	mov    $0xb,%eax
 58d:	cd 40                	int    $0x40
 58f:	c3                   	ret    

00000590 <sbrk>:
SYSCALL(sbrk)
 590:	b8 0c 00 00 00       	mov    $0xc,%eax
 595:	cd 40                	int    $0x40
 597:	c3                   	ret    

00000598 <sleep>:
SYSCALL(sleep)
 598:	b8 0d 00 00 00       	mov    $0xd,%eax
 59d:	cd 40                	int    $0x40
 59f:	c3                   	ret    

000005a0 <uptime>:
SYSCALL(uptime)
 5a0:	b8 0e 00 00 00       	mov    $0xe,%eax
 5a5:	cd 40                	int    $0x40
 5a7:	c3                   	ret    

000005a8 <clone>:
SYSCALL(clone)
 5a8:	b8 16 00 00 00       	mov    $0x16,%eax
 5ad:	cd 40                	int    $0x40
 5af:	c3                   	ret    

000005b0 <texit>:
SYSCALL(texit)
 5b0:	b8 17 00 00 00       	mov    $0x17,%eax
 5b5:	cd 40                	int    $0x40
 5b7:	c3                   	ret    

000005b8 <tsleep>:
SYSCALL(tsleep)
 5b8:	b8 18 00 00 00       	mov    $0x18,%eax
 5bd:	cd 40                	int    $0x40
 5bf:	c3                   	ret    

000005c0 <twakeup>:
SYSCALL(twakeup)
 5c0:	b8 19 00 00 00       	mov    $0x19,%eax
 5c5:	cd 40                	int    $0x40
 5c7:	c3                   	ret    

000005c8 <thread_yield>:
SYSCALL(thread_yield)
 5c8:	b8 1a 00 00 00       	mov    $0x1a,%eax
 5cd:	cd 40                	int    $0x40
 5cf:	c3                   	ret    

000005d0 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	83 ec 28             	sub    $0x28,%esp
 5d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 5d9:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 5dc:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5e3:	00 
 5e4:	8d 45 f4             	lea    -0xc(%ebp),%eax
 5e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 5eb:	8b 45 08             	mov    0x8(%ebp),%eax
 5ee:	89 04 24             	mov    %eax,(%esp)
 5f1:	e8 32 ff ff ff       	call   528 <write>
}
 5f6:	c9                   	leave  
 5f7:	c3                   	ret    

000005f8 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 5f8:	55                   	push   %ebp
 5f9:	89 e5                	mov    %esp,%ebp
 5fb:	53                   	push   %ebx
 5fc:	83 ec 44             	sub    $0x44,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 5ff:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 606:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 60a:	74 17                	je     623 <printint+0x2b>
 60c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 610:	79 11                	jns    623 <printint+0x2b>
    neg = 1;
 612:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 619:	8b 45 0c             	mov    0xc(%ebp),%eax
 61c:	f7 d8                	neg    %eax
 61e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 621:	eb 06                	jmp    629 <printint+0x31>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 623:	8b 45 0c             	mov    0xc(%ebp),%eax
 626:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }

  i = 0;
 629:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  do{
    buf[i++] = digits[x % base];
 630:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 633:	8b 5d 10             	mov    0x10(%ebp),%ebx
 636:	8b 45 f4             	mov    -0xc(%ebp),%eax
 639:	ba 00 00 00 00       	mov    $0x0,%edx
 63e:	f7 f3                	div    %ebx
 640:	89 d0                	mov    %edx,%eax
 642:	0f b6 80 40 0e 00 00 	movzbl 0xe40(%eax),%eax
 649:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
 64d:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  }while((x /= base) != 0);
 651:	8b 45 10             	mov    0x10(%ebp),%eax
 654:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 657:	8b 45 f4             	mov    -0xc(%ebp),%eax
 65a:	ba 00 00 00 00       	mov    $0x0,%edx
 65f:	f7 75 d4             	divl   -0x2c(%ebp)
 662:	89 45 f4             	mov    %eax,-0xc(%ebp)
 665:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 669:	75 c5                	jne    630 <printint+0x38>
  if(neg)
 66b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 66f:	74 28                	je     699 <printint+0xa1>
    buf[i++] = '-';
 671:	8b 45 ec             	mov    -0x14(%ebp),%eax
 674:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
 679:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)

  while(--i >= 0)
 67d:	eb 1a                	jmp    699 <printint+0xa1>
    putc(fd, buf[i]);
 67f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 682:	0f b6 44 05 dc       	movzbl -0x24(%ebp,%eax,1),%eax
 687:	0f be c0             	movsbl %al,%eax
 68a:	89 44 24 04          	mov    %eax,0x4(%esp)
 68e:	8b 45 08             	mov    0x8(%ebp),%eax
 691:	89 04 24             	mov    %eax,(%esp)
 694:	e8 37 ff ff ff       	call   5d0 <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 699:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 69d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 6a1:	79 dc                	jns    67f <printint+0x87>
    putc(fd, buf[i]);
}
 6a3:	83 c4 44             	add    $0x44,%esp
 6a6:	5b                   	pop    %ebx
 6a7:	5d                   	pop    %ebp
 6a8:	c3                   	ret    

000006a9 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6a9:	55                   	push   %ebp
 6aa:	89 e5                	mov    %esp,%ebp
 6ac:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 6af:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 6b6:	8d 45 0c             	lea    0xc(%ebp),%eax
 6b9:	83 c0 04             	add    $0x4,%eax
 6bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for(i = 0; fmt[i]; i++){
 6bf:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 6c6:	e9 7e 01 00 00       	jmp    849 <printf+0x1a0>
    c = fmt[i] & 0xff;
 6cb:	8b 55 0c             	mov    0xc(%ebp),%edx
 6ce:	8b 45 ec             	mov    -0x14(%ebp),%eax
 6d1:	8d 04 02             	lea    (%edx,%eax,1),%eax
 6d4:	0f b6 00             	movzbl (%eax),%eax
 6d7:	0f be c0             	movsbl %al,%eax
 6da:	25 ff 00 00 00       	and    $0xff,%eax
 6df:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(state == 0){
 6e2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 6e6:	75 2c                	jne    714 <printf+0x6b>
      if(c == '%'){
 6e8:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 6ec:	75 0c                	jne    6fa <printf+0x51>
        state = '%';
 6ee:	c7 45 f0 25 00 00 00 	movl   $0x25,-0x10(%ebp)
 6f5:	e9 4b 01 00 00       	jmp    845 <printf+0x19c>
      } else {
        putc(fd, c);
 6fa:	8b 45 e8             	mov    -0x18(%ebp),%eax
 6fd:	0f be c0             	movsbl %al,%eax
 700:	89 44 24 04          	mov    %eax,0x4(%esp)
 704:	8b 45 08             	mov    0x8(%ebp),%eax
 707:	89 04 24             	mov    %eax,(%esp)
 70a:	e8 c1 fe ff ff       	call   5d0 <putc>
 70f:	e9 31 01 00 00       	jmp    845 <printf+0x19c>
      }
    } else if(state == '%'){
 714:	83 7d f0 25          	cmpl   $0x25,-0x10(%ebp)
 718:	0f 85 27 01 00 00    	jne    845 <printf+0x19c>
      if(c == 'd'){
 71e:	83 7d e8 64          	cmpl   $0x64,-0x18(%ebp)
 722:	75 2d                	jne    751 <printf+0xa8>
        printint(fd, *ap, 10, 1);
 724:	8b 45 f4             	mov    -0xc(%ebp),%eax
 727:	8b 00                	mov    (%eax),%eax
 729:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 730:	00 
 731:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 738:	00 
 739:	89 44 24 04          	mov    %eax,0x4(%esp)
 73d:	8b 45 08             	mov    0x8(%ebp),%eax
 740:	89 04 24             	mov    %eax,(%esp)
 743:	e8 b0 fe ff ff       	call   5f8 <printint>
        ap++;
 748:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 74c:	e9 ed 00 00 00       	jmp    83e <printf+0x195>
      } else if(c == 'x' || c == 'p'){
 751:	83 7d e8 78          	cmpl   $0x78,-0x18(%ebp)
 755:	74 06                	je     75d <printf+0xb4>
 757:	83 7d e8 70          	cmpl   $0x70,-0x18(%ebp)
 75b:	75 2d                	jne    78a <printf+0xe1>
        printint(fd, *ap, 16, 0);
 75d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 760:	8b 00                	mov    (%eax),%eax
 762:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 769:	00 
 76a:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 771:	00 
 772:	89 44 24 04          	mov    %eax,0x4(%esp)
 776:	8b 45 08             	mov    0x8(%ebp),%eax
 779:	89 04 24             	mov    %eax,(%esp)
 77c:	e8 77 fe ff ff       	call   5f8 <printint>
        ap++;
 781:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 785:	e9 b4 00 00 00       	jmp    83e <printf+0x195>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 78a:	83 7d e8 73          	cmpl   $0x73,-0x18(%ebp)
 78e:	75 46                	jne    7d6 <printf+0x12d>
        s = (char*)*ap;
 790:	8b 45 f4             	mov    -0xc(%ebp),%eax
 793:	8b 00                	mov    (%eax),%eax
 795:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        ap++;
 798:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
        if(s == 0)
 79c:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 7a0:	75 27                	jne    7c9 <printf+0x120>
          s = "(null)";
 7a2:	c7 45 e4 f0 0d 00 00 	movl   $0xdf0,-0x1c(%ebp)
        while(*s != 0){
 7a9:	eb 1f                	jmp    7ca <printf+0x121>
          putc(fd, *s);
 7ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7ae:	0f b6 00             	movzbl (%eax),%eax
 7b1:	0f be c0             	movsbl %al,%eax
 7b4:	89 44 24 04          	mov    %eax,0x4(%esp)
 7b8:	8b 45 08             	mov    0x8(%ebp),%eax
 7bb:	89 04 24             	mov    %eax,(%esp)
 7be:	e8 0d fe ff ff       	call   5d0 <putc>
          s++;
 7c3:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 7c7:	eb 01                	jmp    7ca <printf+0x121>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 7c9:	90                   	nop
 7ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 7cd:	0f b6 00             	movzbl (%eax),%eax
 7d0:	84 c0                	test   %al,%al
 7d2:	75 d7                	jne    7ab <printf+0x102>
 7d4:	eb 68                	jmp    83e <printf+0x195>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 7d6:	83 7d e8 63          	cmpl   $0x63,-0x18(%ebp)
 7da:	75 1d                	jne    7f9 <printf+0x150>
        putc(fd, *ap);
 7dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7df:	8b 00                	mov    (%eax),%eax
 7e1:	0f be c0             	movsbl %al,%eax
 7e4:	89 44 24 04          	mov    %eax,0x4(%esp)
 7e8:	8b 45 08             	mov    0x8(%ebp),%eax
 7eb:	89 04 24             	mov    %eax,(%esp)
 7ee:	e8 dd fd ff ff       	call   5d0 <putc>
        ap++;
 7f3:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 7f7:	eb 45                	jmp    83e <printf+0x195>
      } else if(c == '%'){
 7f9:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 7fd:	75 17                	jne    816 <printf+0x16d>
        putc(fd, c);
 7ff:	8b 45 e8             	mov    -0x18(%ebp),%eax
 802:	0f be c0             	movsbl %al,%eax
 805:	89 44 24 04          	mov    %eax,0x4(%esp)
 809:	8b 45 08             	mov    0x8(%ebp),%eax
 80c:	89 04 24             	mov    %eax,(%esp)
 80f:	e8 bc fd ff ff       	call   5d0 <putc>
 814:	eb 28                	jmp    83e <printf+0x195>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 816:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 81d:	00 
 81e:	8b 45 08             	mov    0x8(%ebp),%eax
 821:	89 04 24             	mov    %eax,(%esp)
 824:	e8 a7 fd ff ff       	call   5d0 <putc>
        putc(fd, c);
 829:	8b 45 e8             	mov    -0x18(%ebp),%eax
 82c:	0f be c0             	movsbl %al,%eax
 82f:	89 44 24 04          	mov    %eax,0x4(%esp)
 833:	8b 45 08             	mov    0x8(%ebp),%eax
 836:	89 04 24             	mov    %eax,(%esp)
 839:	e8 92 fd ff ff       	call   5d0 <putc>
      }
      state = 0;
 83e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 845:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 849:	8b 55 0c             	mov    0xc(%ebp),%edx
 84c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 84f:	8d 04 02             	lea    (%edx,%eax,1),%eax
 852:	0f b6 00             	movzbl (%eax),%eax
 855:	84 c0                	test   %al,%al
 857:	0f 85 6e fe ff ff    	jne    6cb <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 85d:	c9                   	leave  
 85e:	c3                   	ret    
 85f:	90                   	nop

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 866:	8b 45 08             	mov    0x8(%ebp),%eax
 869:	83 e8 08             	sub    $0x8,%eax
 86c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 86f:	a1 5c 0e 00 00       	mov    0xe5c,%eax
 874:	89 45 fc             	mov    %eax,-0x4(%ebp)
 877:	eb 24                	jmp    89d <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 879:	8b 45 fc             	mov    -0x4(%ebp),%eax
 87c:	8b 00                	mov    (%eax),%eax
 87e:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 881:	77 12                	ja     895 <free+0x35>
 883:	8b 45 f8             	mov    -0x8(%ebp),%eax
 886:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 889:	77 24                	ja     8af <free+0x4f>
 88b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 88e:	8b 00                	mov    (%eax),%eax
 890:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 893:	77 1a                	ja     8af <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 895:	8b 45 fc             	mov    -0x4(%ebp),%eax
 898:	8b 00                	mov    (%eax),%eax
 89a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 89d:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8a0:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8a3:	76 d4                	jbe    879 <free+0x19>
 8a5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8a8:	8b 00                	mov    (%eax),%eax
 8aa:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 8ad:	76 ca                	jbe    879 <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
 8af:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8b2:	8b 40 04             	mov    0x4(%eax),%eax
 8b5:	c1 e0 03             	shl    $0x3,%eax
 8b8:	89 c2                	mov    %eax,%edx
 8ba:	03 55 f8             	add    -0x8(%ebp),%edx
 8bd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8c0:	8b 00                	mov    (%eax),%eax
 8c2:	39 c2                	cmp    %eax,%edx
 8c4:	75 24                	jne    8ea <free+0x8a>
    bp->s.size += p->s.ptr->s.size;
 8c6:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8c9:	8b 50 04             	mov    0x4(%eax),%edx
 8cc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8cf:	8b 00                	mov    (%eax),%eax
 8d1:	8b 40 04             	mov    0x4(%eax),%eax
 8d4:	01 c2                	add    %eax,%edx
 8d6:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8d9:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 8dc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8df:	8b 00                	mov    (%eax),%eax
 8e1:	8b 10                	mov    (%eax),%edx
 8e3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8e6:	89 10                	mov    %edx,(%eax)
 8e8:	eb 0a                	jmp    8f4 <free+0x94>
  } else
    bp->s.ptr = p->s.ptr;
 8ea:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8ed:	8b 10                	mov    (%eax),%edx
 8ef:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8f2:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 8f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8f7:	8b 40 04             	mov    0x4(%eax),%eax
 8fa:	c1 e0 03             	shl    $0x3,%eax
 8fd:	03 45 fc             	add    -0x4(%ebp),%eax
 900:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 903:	75 20                	jne    925 <free+0xc5>
    p->s.size += bp->s.size;
 905:	8b 45 fc             	mov    -0x4(%ebp),%eax
 908:	8b 50 04             	mov    0x4(%eax),%edx
 90b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 90e:	8b 40 04             	mov    0x4(%eax),%eax
 911:	01 c2                	add    %eax,%edx
 913:	8b 45 fc             	mov    -0x4(%ebp),%eax
 916:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 919:	8b 45 f8             	mov    -0x8(%ebp),%eax
 91c:	8b 10                	mov    (%eax),%edx
 91e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 921:	89 10                	mov    %edx,(%eax)
 923:	eb 08                	jmp    92d <free+0xcd>
  } else
    p->s.ptr = bp;
 925:	8b 45 fc             	mov    -0x4(%ebp),%eax
 928:	8b 55 f8             	mov    -0x8(%ebp),%edx
 92b:	89 10                	mov    %edx,(%eax)
  freep = p;
 92d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 930:	a3 5c 0e 00 00       	mov    %eax,0xe5c
}
 935:	c9                   	leave  
 936:	c3                   	ret    

00000937 <morecore>:

static Header*
morecore(uint nu)
{
 937:	55                   	push   %ebp
 938:	89 e5                	mov    %esp,%ebp
 93a:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 93d:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 944:	77 07                	ja     94d <morecore+0x16>
    nu = 4096;
 946:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 94d:	8b 45 08             	mov    0x8(%ebp),%eax
 950:	c1 e0 03             	shl    $0x3,%eax
 953:	89 04 24             	mov    %eax,(%esp)
 956:	e8 35 fc ff ff       	call   590 <sbrk>
 95b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(p == (char*)-1)
 95e:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 962:	75 07                	jne    96b <morecore+0x34>
    return 0;
 964:	b8 00 00 00 00       	mov    $0x0,%eax
 969:	eb 22                	jmp    98d <morecore+0x56>
  hp = (Header*)p;
 96b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 96e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  hp->s.size = nu;
 971:	8b 45 f4             	mov    -0xc(%ebp),%eax
 974:	8b 55 08             	mov    0x8(%ebp),%edx
 977:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 97a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 97d:	83 c0 08             	add    $0x8,%eax
 980:	89 04 24             	mov    %eax,(%esp)
 983:	e8 d8 fe ff ff       	call   860 <free>
  return freep;
 988:	a1 5c 0e 00 00       	mov    0xe5c,%eax
}
 98d:	c9                   	leave  
 98e:	c3                   	ret    

0000098f <malloc>:

void*
malloc(uint nbytes)
{
 98f:	55                   	push   %ebp
 990:	89 e5                	mov    %esp,%ebp
 992:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 995:	8b 45 08             	mov    0x8(%ebp),%eax
 998:	83 c0 07             	add    $0x7,%eax
 99b:	c1 e8 03             	shr    $0x3,%eax
 99e:	83 c0 01             	add    $0x1,%eax
 9a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if((prevp = freep) == 0){
 9a4:	a1 5c 0e 00 00       	mov    0xe5c,%eax
 9a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 9ac:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 9b0:	75 23                	jne    9d5 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 9b2:	c7 45 f0 54 0e 00 00 	movl   $0xe54,-0x10(%ebp)
 9b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9bc:	a3 5c 0e 00 00       	mov    %eax,0xe5c
 9c1:	a1 5c 0e 00 00       	mov    0xe5c,%eax
 9c6:	a3 54 0e 00 00       	mov    %eax,0xe54
    base.s.size = 0;
 9cb:	c7 05 58 0e 00 00 00 	movl   $0x0,0xe58
 9d2:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9d8:	8b 00                	mov    (%eax),%eax
 9da:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(p->s.size >= nunits){
 9dd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9e0:	8b 40 04             	mov    0x4(%eax),%eax
 9e3:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 9e6:	72 4d                	jb     a35 <malloc+0xa6>
      if(p->s.size == nunits)
 9e8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9eb:	8b 40 04             	mov    0x4(%eax),%eax
 9ee:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 9f1:	75 0c                	jne    9ff <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 9f3:	8b 45 ec             	mov    -0x14(%ebp),%eax
 9f6:	8b 10                	mov    (%eax),%edx
 9f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9fb:	89 10                	mov    %edx,(%eax)
 9fd:	eb 26                	jmp    a25 <malloc+0x96>
      else {
        p->s.size -= nunits;
 9ff:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a02:	8b 40 04             	mov    0x4(%eax),%eax
 a05:	89 c2                	mov    %eax,%edx
 a07:	2b 55 f4             	sub    -0xc(%ebp),%edx
 a0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a0d:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 a10:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a13:	8b 40 04             	mov    0x4(%eax),%eax
 a16:	c1 e0 03             	shl    $0x3,%eax
 a19:	01 45 ec             	add    %eax,-0x14(%ebp)
        p->s.size = nunits;
 a1c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a1f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 a22:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 a25:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a28:	a3 5c 0e 00 00       	mov    %eax,0xe5c
      return (void*)(p + 1);
 a2d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a30:	83 c0 08             	add    $0x8,%eax
 a33:	eb 38                	jmp    a6d <malloc+0xde>
    }
    if(p == freep)
 a35:	a1 5c 0e 00 00       	mov    0xe5c,%eax
 a3a:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 a3d:	75 1b                	jne    a5a <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 a3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 a42:	89 04 24             	mov    %eax,(%esp)
 a45:	e8 ed fe ff ff       	call   937 <morecore>
 a4a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 a4d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a51:	75 07                	jne    a5a <malloc+0xcb>
        return 0;
 a53:	b8 00 00 00 00       	mov    $0x0,%eax
 a58:	eb 13                	jmp    a6d <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a5a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a5d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 a60:	8b 45 ec             	mov    -0x14(%ebp),%eax
 a63:	8b 00                	mov    (%eax),%eax
 a65:	89 45 ec             	mov    %eax,-0x14(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
 a68:	e9 70 ff ff ff       	jmp    9dd <malloc+0x4e>
}
 a6d:	c9                   	leave  
 a6e:	c3                   	ret    
 a6f:	90                   	nop

00000a70 <xchg>:
  asm volatile("sti");
}

static inline uint
xchg(volatile uint *addr, uint newval)
{
 a70:	55                   	push   %ebp
 a71:	89 e5                	mov    %esp,%ebp
 a73:	83 ec 10             	sub    $0x10,%esp
  uint result;
  
  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 a76:	8b 55 08             	mov    0x8(%ebp),%edx
 a79:	8b 45 0c             	mov    0xc(%ebp),%eax
 a7c:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a7f:	f0 87 02             	lock xchg %eax,(%edx)
 a82:	89 45 fc             	mov    %eax,-0x4(%ebp)
               "+m" (*addr), "=a" (result) :
               "1" (newval) :
               "cc");
  return result;
 a85:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 a88:	c9                   	leave  
 a89:	c3                   	ret    

00000a8a <lock_init>:
#include "x86.h"
#include "proc.h"



void lock_init(lock_t *lock){
 a8a:	55                   	push   %ebp
 a8b:	89 e5                	mov    %esp,%ebp
    lock->locked = 0;
 a8d:	8b 45 08             	mov    0x8(%ebp),%eax
 a90:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 a96:	5d                   	pop    %ebp
 a97:	c3                   	ret    

00000a98 <lock_acquire>:
void lock_acquire(lock_t *lock){
 a98:	55                   	push   %ebp
 a99:	89 e5                	mov    %esp,%ebp
 a9b:	83 ec 08             	sub    $0x8,%esp
    while(xchg(&lock->locked,1) != 0);
 a9e:	8b 45 08             	mov    0x8(%ebp),%eax
 aa1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 aa8:	00 
 aa9:	89 04 24             	mov    %eax,(%esp)
 aac:	e8 bf ff ff ff       	call   a70 <xchg>
 ab1:	85 c0                	test   %eax,%eax
 ab3:	75 e9                	jne    a9e <lock_acquire+0x6>
}
 ab5:	c9                   	leave  
 ab6:	c3                   	ret    

00000ab7 <lock_release>:
void lock_release(lock_t *lock){
 ab7:	55                   	push   %ebp
 ab8:	89 e5                	mov    %esp,%ebp
 aba:	83 ec 08             	sub    $0x8,%esp
    xchg(&lock->locked,0);
 abd:	8b 45 08             	mov    0x8(%ebp),%eax
 ac0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 ac7:	00 
 ac8:	89 04 24             	mov    %eax,(%esp)
 acb:	e8 a0 ff ff ff       	call   a70 <xchg>
}
 ad0:	c9                   	leave  
 ad1:	c3                   	ret    

00000ad2 <thread_create>:

void *thread_create(void(*start_routine)(void*), void *arg){
 ad2:	55                   	push   %ebp
 ad3:	89 e5                	mov    %esp,%ebp
 ad5:	83 ec 28             	sub    $0x28,%esp
    int tid;
    void * stack = malloc(2 * 4096);
 ad8:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
 adf:	e8 ab fe ff ff       	call   98f <malloc>
 ae4:	89 45 f0             	mov    %eax,-0x10(%ebp)
    void *garbage_stack = stack; 
 ae7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 aea:	89 45 f4             	mov    %eax,-0xc(%ebp)
   // printf(1,"start routine addr : %d\n",(uint)start_routine);


    if((uint)stack % 4096){
 aed:	8b 45 f0             	mov    -0x10(%ebp),%eax
 af0:	25 ff 0f 00 00       	and    $0xfff,%eax
 af5:	85 c0                	test   %eax,%eax
 af7:	74 15                	je     b0e <thread_create+0x3c>
        stack = stack + (4096 - (uint)stack % 4096);
 af9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 afc:	89 c2                	mov    %eax,%edx
 afe:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 b04:	b8 00 10 00 00       	mov    $0x1000,%eax
 b09:	29 d0                	sub    %edx,%eax
 b0b:	01 45 f0             	add    %eax,-0x10(%ebp)
    }
    if (stack == 0){
 b0e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 b12:	75 1b                	jne    b2f <thread_create+0x5d>

        printf(1,"malloc fail \n");
 b14:	c7 44 24 04 f7 0d 00 	movl   $0xdf7,0x4(%esp)
 b1b:	00 
 b1c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b23:	e8 81 fb ff ff       	call   6a9 <printf>
        return 0;
 b28:	b8 00 00 00 00       	mov    $0x0,%eax
 b2d:	eb 6f                	jmp    b9e <thread_create+0xcc>
    }

    tid = clone((uint)stack,PSIZE,(uint)start_routine,(int)arg);
 b2f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 b32:	8b 55 08             	mov    0x8(%ebp),%edx
 b35:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b38:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 b3c:	89 54 24 08          	mov    %edx,0x8(%esp)
 b40:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
 b47:	00 
 b48:	89 04 24             	mov    %eax,(%esp)
 b4b:	e8 58 fa ff ff       	call   5a8 <clone>
 b50:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(tid < 0){
 b53:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b57:	79 1b                	jns    b74 <thread_create+0xa2>
        printf(1,"clone fails\n");
 b59:	c7 44 24 04 05 0e 00 	movl   $0xe05,0x4(%esp)
 b60:	00 
 b61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b68:	e8 3c fb ff ff       	call   6a9 <printf>
        return 0;
 b6d:	b8 00 00 00 00       	mov    $0x0,%eax
 b72:	eb 2a                	jmp    b9e <thread_create+0xcc>
    }
    if(tid > 0){
 b74:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b78:	7e 05                	jle    b7f <thread_create+0xad>
        //store threads on thread table
        return garbage_stack;
 b7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 b7d:	eb 1f                	jmp    b9e <thread_create+0xcc>
    }
    if(tid == 0){
 b7f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 b83:	75 14                	jne    b99 <thread_create+0xc7>
        printf(1,"tid = 0 return \n");
 b85:	c7 44 24 04 12 0e 00 	movl   $0xe12,0x4(%esp)
 b8c:	00 
 b8d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 b94:	e8 10 fb ff ff       	call   6a9 <printf>
    }
//    wait();
//    free(garbage_stack);

    return 0;
 b99:	b8 00 00 00 00       	mov    $0x0,%eax
}
 b9e:	c9                   	leave  
 b9f:	c3                   	ret    

00000ba0 <init_q>:
#include "queue.h"
#include "types.h"
#include "user.h"

void init_q(struct queue *q){
 ba0:	55                   	push   %ebp
 ba1:	89 e5                	mov    %esp,%ebp
    q->size = 0;
 ba3:	8b 45 08             	mov    0x8(%ebp),%eax
 ba6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    q->head = 0;
 bac:	8b 45 08             	mov    0x8(%ebp),%eax
 baf:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    q->tail = 0;
 bb6:	8b 45 08             	mov    0x8(%ebp),%eax
 bb9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
 bc0:	5d                   	pop    %ebp
 bc1:	c3                   	ret    

00000bc2 <add_q>:

void add_q(struct queue *q, int v){
 bc2:	55                   	push   %ebp
 bc3:	89 e5                	mov    %esp,%ebp
 bc5:	83 ec 28             	sub    $0x28,%esp
    //printf(1, "here \n");
		struct node * n = malloc(sizeof(struct node));
 bc8:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 bcf:	e8 bb fd ff ff       	call   98f <malloc>
 bd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    n->next = 0;
 bd7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bda:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    n->value = v;
 be1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 be4:	8b 55 0c             	mov    0xc(%ebp),%edx
 be7:	89 10                	mov    %edx,(%eax)
    if(q->head == 0){
 be9:	8b 45 08             	mov    0x8(%ebp),%eax
 bec:	8b 40 04             	mov    0x4(%eax),%eax
 bef:	85 c0                	test   %eax,%eax
 bf1:	75 0b                	jne    bfe <add_q+0x3c>
        q->head = n;
 bf3:	8b 45 08             	mov    0x8(%ebp),%eax
 bf6:	8b 55 f4             	mov    -0xc(%ebp),%edx
 bf9:	89 50 04             	mov    %edx,0x4(%eax)
 bfc:	eb 0c                	jmp    c0a <add_q+0x48>
    }else{
        q->tail->next = n;
 bfe:	8b 45 08             	mov    0x8(%ebp),%eax
 c01:	8b 40 08             	mov    0x8(%eax),%eax
 c04:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c07:	89 50 04             	mov    %edx,0x4(%eax)
    }
    q->tail = n;
 c0a:	8b 45 08             	mov    0x8(%ebp),%eax
 c0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 c10:	89 50 08             	mov    %edx,0x8(%eax)
    q->size++;
 c13:	8b 45 08             	mov    0x8(%ebp),%eax
 c16:	8b 00                	mov    (%eax),%eax
 c18:	8d 50 01             	lea    0x1(%eax),%edx
 c1b:	8b 45 08             	mov    0x8(%ebp),%eax
 c1e:	89 10                	mov    %edx,(%eax)
}
 c20:	c9                   	leave  
 c21:	c3                   	ret    

00000c22 <empty_q>:

int empty_q(struct queue *q){
 c22:	55                   	push   %ebp
 c23:	89 e5                	mov    %esp,%ebp
    if(q->size == 0)
 c25:	8b 45 08             	mov    0x8(%ebp),%eax
 c28:	8b 00                	mov    (%eax),%eax
 c2a:	85 c0                	test   %eax,%eax
 c2c:	75 07                	jne    c35 <empty_q+0x13>
        return 1;
 c2e:	b8 01 00 00 00       	mov    $0x1,%eax
 c33:	eb 05                	jmp    c3a <empty_q+0x18>
    else
        return 0;
 c35:	b8 00 00 00 00       	mov    $0x0,%eax
} 
 c3a:	5d                   	pop    %ebp
 c3b:	c3                   	ret    

00000c3c <pop_q>:
int pop_q(struct queue *q){
 c3c:	55                   	push   %ebp
 c3d:	89 e5                	mov    %esp,%ebp
 c3f:	83 ec 28             	sub    $0x28,%esp
    int val;
    struct node *destroy;
    if(!empty_q(q)){
 c42:	8b 45 08             	mov    0x8(%ebp),%eax
 c45:	89 04 24             	mov    %eax,(%esp)
 c48:	e8 d5 ff ff ff       	call   c22 <empty_q>
 c4d:	85 c0                	test   %eax,%eax
 c4f:	75 5d                	jne    cae <pop_q+0x72>
       val = q->head->value; 
 c51:	8b 45 08             	mov    0x8(%ebp),%eax
 c54:	8b 40 04             	mov    0x4(%eax),%eax
 c57:	8b 00                	mov    (%eax),%eax
 c59:	89 45 f0             	mov    %eax,-0x10(%ebp)
       destroy = q->head;
 c5c:	8b 45 08             	mov    0x8(%ebp),%eax
 c5f:	8b 40 04             	mov    0x4(%eax),%eax
 c62:	89 45 f4             	mov    %eax,-0xc(%ebp)
       q->head = q->head->next;
 c65:	8b 45 08             	mov    0x8(%ebp),%eax
 c68:	8b 40 04             	mov    0x4(%eax),%eax
 c6b:	8b 50 04             	mov    0x4(%eax),%edx
 c6e:	8b 45 08             	mov    0x8(%ebp),%eax
 c71:	89 50 04             	mov    %edx,0x4(%eax)
       free(destroy);
 c74:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c77:	89 04 24             	mov    %eax,(%esp)
 c7a:	e8 e1 fb ff ff       	call   860 <free>
       q->size--;
 c7f:	8b 45 08             	mov    0x8(%ebp),%eax
 c82:	8b 00                	mov    (%eax),%eax
 c84:	8d 50 ff             	lea    -0x1(%eax),%edx
 c87:	8b 45 08             	mov    0x8(%ebp),%eax
 c8a:	89 10                	mov    %edx,(%eax)
       if(q->size == 0){
 c8c:	8b 45 08             	mov    0x8(%ebp),%eax
 c8f:	8b 00                	mov    (%eax),%eax
 c91:	85 c0                	test   %eax,%eax
 c93:	75 14                	jne    ca9 <pop_q+0x6d>
            q->head = 0;
 c95:	8b 45 08             	mov    0x8(%ebp),%eax
 c98:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
            q->tail = 0;
 c9f:	8b 45 08             	mov    0x8(%ebp),%eax
 ca2:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
       }
       return val;
 ca9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 cac:	eb 05                	jmp    cb3 <pop_q+0x77>
    }
    return -1;
 cae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 cb3:	c9                   	leave  
 cb4:	c3                   	ret    
 cb5:	90                   	nop
 cb6:	90                   	nop
 cb7:	90                   	nop

00000cb8 <init_semaphore>:
#include "semaphore.h"
#include "user.h"

//lab 2
//Semaphore
void init_semaphore(struct Semaphore *s, int count_num) {
 cb8:	55                   	push   %ebp
 cb9:	89 e5                	mov    %esp,%ebp
 cbb:	83 ec 18             	sub    $0x18,%esp
	s->count = count_num;
 cbe:	8b 45 08             	mov    0x8(%ebp),%eax
 cc1:	8b 55 0c             	mov    0xc(%ebp),%edx
 cc4:	89 10                	mov    %edx,(%eax)
	init_q(&s->threads);
 cc6:	8b 45 08             	mov    0x8(%ebp),%eax
 cc9:	83 c0 04             	add    $0x4,%eax
 ccc:	89 04 24             	mov    %eax,(%esp)
 ccf:	e8 cc fe ff ff       	call   ba0 <init_q>
	lock_init(&s->lock);
 cd4:	8b 45 08             	mov    0x8(%ebp),%eax
 cd7:	83 c0 10             	add    $0x10,%eax
 cda:	89 04 24             	mov    %eax,(%esp)
 cdd:	e8 a8 fd ff ff       	call   a8a <lock_init>
}
 ce2:	c9                   	leave  
 ce3:	c3                   	ret    

00000ce4 <sem_acquire>:

void sem_acquire(struct Semaphore *s) {
 ce4:	55                   	push   %ebp
 ce5:	89 e5                	mov    %esp,%ebp
 ce7:	83 ec 18             	sub    $0x18,%esp
	while(1) {
		if (s->count > 0) {												//if there are available resources
 cea:	8b 45 08             	mov    0x8(%ebp),%eax
 ced:	8b 00                	mov    (%eax),%eax
 cef:	85 c0                	test   %eax,%eax
 cf1:	7e 2c                	jle    d1f <sem_acquire+0x3b>
			//printf(1, "COUNT IS = %d\n", s->count);
			//printf(1, "acquiring lock\n");
			lock_acquire(&s->lock);									//acquire count lock
 cf3:	8b 45 08             	mov    0x8(%ebp),%eax
 cf6:	83 c0 10             	add    $0x10,%eax
 cf9:	89 04 24             	mov    %eax,(%esp)
 cfc:	e8 97 fd ff ff       	call   a98 <lock_acquire>
			//printf(1, "acquired lock\n");
			s->count = s->count - 1;																//decrement resource by one
 d01:	8b 45 08             	mov    0x8(%ebp),%eax
 d04:	8b 00                	mov    (%eax),%eax
 d06:	8d 50 ff             	lea    -0x1(%eax),%edx
 d09:	8b 45 08             	mov    0x8(%ebp),%eax
 d0c:	89 10                	mov    %edx,(%eax)
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
 d0e:	8b 45 08             	mov    0x8(%ebp),%eax
 d11:	83 c0 10             	add    $0x10,%eax
 d14:	89 04 24             	mov    %eax,(%esp)
 d17:	e8 9b fd ff ff       	call   ab7 <lock_release>
			break;
 d1c:	90                   	nop
			add_q(&s->threads, getpid());						//add thread to sleep queueu
			//printf(1, "asleep \n");
			tsleep();
		}
	}
}
 d1d:	c9                   	leave  
 d1e:	c3                   	ret    
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
			break;
		}
		else {																		//if there are no available resources
			printf(1, "Waiting for semaphore\n");
 d1f:	c7 44 24 04 23 0e 00 	movl   $0xe23,0x4(%esp)
 d26:	00 
 d27:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 d2e:	e8 76 f9 ff ff       	call   6a9 <printf>
			//printf(1, "%d", getpid());
			add_q(&s->threads, getpid());						//add thread to sleep queueu
 d33:	e8 50 f8 ff ff       	call   588 <getpid>
 d38:	8b 55 08             	mov    0x8(%ebp),%edx
 d3b:	83 c2 04             	add    $0x4,%edx
 d3e:	89 44 24 04          	mov    %eax,0x4(%esp)
 d42:	89 14 24             	mov    %edx,(%esp)
 d45:	e8 78 fe ff ff       	call   bc2 <add_q>
			//printf(1, "asleep \n");
			tsleep();
 d4a:	e8 69 f8 ff ff       	call   5b8 <tsleep>
		}
	}
 d4f:	eb 99                	jmp    cea <sem_acquire+0x6>

00000d51 <sem_signal>:
}

void sem_signal(struct Semaphore *s) {
 d51:	55                   	push   %ebp
 d52:	89 e5                	mov    %esp,%ebp
 d54:	83 ec 18             	sub    $0x18,%esp
	lock_acquire(&s->lock);
 d57:	8b 45 08             	mov    0x8(%ebp),%eax
 d5a:	83 c0 10             	add    $0x10,%eax
 d5d:	89 04 24             	mov    %eax,(%esp)
 d60:	e8 33 fd ff ff       	call   a98 <lock_acquire>
	s->count++;
 d65:	8b 45 08             	mov    0x8(%ebp),%eax
 d68:	8b 00                	mov    (%eax),%eax
 d6a:	8d 50 01             	lea    0x1(%eax),%edx
 d6d:	8b 45 08             	mov    0x8(%ebp),%eax
 d70:	89 10                	mov    %edx,(%eax)
	lock_release(&s->lock);
 d72:	8b 45 08             	mov    0x8(%ebp),%eax
 d75:	83 c0 10             	add    $0x10,%eax
 d78:	89 04 24             	mov    %eax,(%esp)
 d7b:	e8 37 fd ff ff       	call   ab7 <lock_release>
	if (!empty_q(&s->threads)) {
 d80:	8b 45 08             	mov    0x8(%ebp),%eax
 d83:	83 c0 04             	add    $0x4,%eax
 d86:	89 04 24             	mov    %eax,(%esp)
 d89:	e8 94 fe ff ff       	call   c22 <empty_q>
 d8e:	85 c0                	test   %eax,%eax
 d90:	75 16                	jne    da8 <sem_signal+0x57>
		twakeup(pop_q(&s->threads));							//remove thread from queue and wake up
 d92:	8b 45 08             	mov    0x8(%ebp),%eax
 d95:	83 c0 04             	add    $0x4,%eax
 d98:	89 04 24             	mov    %eax,(%esp)
 d9b:	e8 9c fe ff ff       	call   c3c <pop_q>
 da0:	89 04 24             	mov    %eax,(%esp)
 da3:	e8 18 f8 ff ff       	call   5c0 <twakeup>
	}
}
 da8:	c9                   	leave  
 da9:	c3                   	ret    
