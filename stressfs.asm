
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	81 ec 30 02 00 00    	sub    $0x230,%esp
  int fd, i;
  char path[] = "stressfs0";
   c:	c7 84 24 1e 02 00 00 	movl   $0x65727473,0x21e(%esp)
  13:	73 74 72 65 
  17:	c7 84 24 22 02 00 00 	movl   $0x73667373,0x222(%esp)
  1e:	73 73 66 73 
  22:	66 c7 84 24 26 02 00 	movw   $0x30,0x226(%esp)
  29:	00 30 00 
  char data[512];

  printf(1, "stressfs starting\n");
  2c:	c7 44 24 04 be 0c 00 	movl   $0xcbe,0x4(%esp)
  33:	00 
  34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  3b:	e8 7d 05 00 00       	call   5bd <printf>
  memset(data, 'a', sizeof(data));
  40:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
  47:	00 
  48:	c7 44 24 04 61 00 00 	movl   $0x61,0x4(%esp)
  4f:	00 
  50:	8d 44 24 1e          	lea    0x1e(%esp),%eax
  54:	89 04 24             	mov    %eax,(%esp)
  57:	e8 1a 02 00 00       	call   276 <memset>

  for(i = 0; i < 4; i++)
  5c:	c7 84 24 2c 02 00 00 	movl   $0x0,0x22c(%esp)
  63:	00 00 00 00 
  67:	eb 11                	jmp    7a <main+0x7a>
    if(fork() > 0)
  69:	e8 a6 03 00 00       	call   414 <fork>
  6e:	85 c0                	test   %eax,%eax
  70:	7f 14                	jg     86 <main+0x86>
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));

  for(i = 0; i < 4; i++)
  72:	83 84 24 2c 02 00 00 	addl   $0x1,0x22c(%esp)
  79:	01 
  7a:	83 bc 24 2c 02 00 00 	cmpl   $0x3,0x22c(%esp)
  81:	03 
  82:	7e e5                	jle    69 <main+0x69>
  84:	eb 01                	jmp    87 <main+0x87>
    if(fork() > 0)
      break;
  86:	90                   	nop

  printf(1, "write %d\n", i);
  87:	8b 84 24 2c 02 00 00 	mov    0x22c(%esp),%eax
  8e:	89 44 24 08          	mov    %eax,0x8(%esp)
  92:	c7 44 24 04 d1 0c 00 	movl   $0xcd1,0x4(%esp)
  99:	00 
  9a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  a1:	e8 17 05 00 00       	call   5bd <printf>

  path[8] += i;
  a6:	0f b6 84 24 26 02 00 	movzbl 0x226(%esp),%eax
  ad:	00 
  ae:	89 c2                	mov    %eax,%edx
  b0:	8b 84 24 2c 02 00 00 	mov    0x22c(%esp),%eax
  b7:	8d 04 02             	lea    (%edx,%eax,1),%eax
  ba:	88 84 24 26 02 00 00 	mov    %al,0x226(%esp)
  fd = open(path, O_CREATE | O_RDWR);
  c1:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
  c8:	00 
  c9:	8d 84 24 1e 02 00 00 	lea    0x21e(%esp),%eax
  d0:	89 04 24             	mov    %eax,(%esp)
  d3:	e8 84 03 00 00       	call   45c <open>
  d8:	89 84 24 28 02 00 00 	mov    %eax,0x228(%esp)
  for(i = 0; i < 20; i++)
  df:	c7 84 24 2c 02 00 00 	movl   $0x0,0x22c(%esp)
  e6:	00 00 00 00 
  ea:	eb 27                	jmp    113 <main+0x113>
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  ec:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
  f3:	00 
  f4:	8d 44 24 1e          	lea    0x1e(%esp),%eax
  f8:	89 44 24 04          	mov    %eax,0x4(%esp)
  fc:	8b 84 24 28 02 00 00 	mov    0x228(%esp),%eax
 103:	89 04 24             	mov    %eax,(%esp)
 106:	e8 31 03 00 00       	call   43c <write>

  printf(1, "write %d\n", i);

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  for(i = 0; i < 20; i++)
 10b:	83 84 24 2c 02 00 00 	addl   $0x1,0x22c(%esp)
 112:	01 
 113:	83 bc 24 2c 02 00 00 	cmpl   $0x13,0x22c(%esp)
 11a:	13 
 11b:	7e cf                	jle    ec <main+0xec>
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  close(fd);
 11d:	8b 84 24 28 02 00 00 	mov    0x228(%esp),%eax
 124:	89 04 24             	mov    %eax,(%esp)
 127:	e8 18 03 00 00       	call   444 <close>

  printf(1, "read\n");
 12c:	c7 44 24 04 db 0c 00 	movl   $0xcdb,0x4(%esp)
 133:	00 
 134:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 13b:	e8 7d 04 00 00       	call   5bd <printf>

  fd = open(path, O_RDONLY);
 140:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 147:	00 
 148:	8d 84 24 1e 02 00 00 	lea    0x21e(%esp),%eax
 14f:	89 04 24             	mov    %eax,(%esp)
 152:	e8 05 03 00 00       	call   45c <open>
 157:	89 84 24 28 02 00 00 	mov    %eax,0x228(%esp)
  for (i = 0; i < 20; i++)
 15e:	c7 84 24 2c 02 00 00 	movl   $0x0,0x22c(%esp)
 165:	00 00 00 00 
 169:	eb 27                	jmp    192 <main+0x192>
    read(fd, data, sizeof(data));
 16b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
 172:	00 
 173:	8d 44 24 1e          	lea    0x1e(%esp),%eax
 177:	89 44 24 04          	mov    %eax,0x4(%esp)
 17b:	8b 84 24 28 02 00 00 	mov    0x228(%esp),%eax
 182:	89 04 24             	mov    %eax,(%esp)
 185:	e8 aa 02 00 00       	call   434 <read>
  close(fd);

  printf(1, "read\n");

  fd = open(path, O_RDONLY);
  for (i = 0; i < 20; i++)
 18a:	83 84 24 2c 02 00 00 	addl   $0x1,0x22c(%esp)
 191:	01 
 192:	83 bc 24 2c 02 00 00 	cmpl   $0x13,0x22c(%esp)
 199:	13 
 19a:	7e cf                	jle    16b <main+0x16b>
    read(fd, data, sizeof(data));
  close(fd);
 19c:	8b 84 24 28 02 00 00 	mov    0x228(%esp),%eax
 1a3:	89 04 24             	mov    %eax,(%esp)
 1a6:	e8 99 02 00 00       	call   444 <close>

  wait();
 1ab:	e8 74 02 00 00       	call   424 <wait>
  
  exit();
 1b0:	e8 67 02 00 00       	call   41c <exit>
 1b5:	90                   	nop
 1b6:	90                   	nop
 1b7:	90                   	nop

000001b8 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 1b8:	55                   	push   %ebp
 1b9:	89 e5                	mov    %esp,%ebp
 1bb:	57                   	push   %edi
 1bc:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 1bd:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c0:	8b 55 10             	mov    0x10(%ebp),%edx
 1c3:	8b 45 0c             	mov    0xc(%ebp),%eax
 1c6:	89 cb                	mov    %ecx,%ebx
 1c8:	89 df                	mov    %ebx,%edi
 1ca:	89 d1                	mov    %edx,%ecx
 1cc:	fc                   	cld    
 1cd:	f3 aa                	rep stos %al,%es:(%edi)
 1cf:	89 ca                	mov    %ecx,%edx
 1d1:	89 fb                	mov    %edi,%ebx
 1d3:	89 5d 08             	mov    %ebx,0x8(%ebp)
 1d6:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 1d9:	5b                   	pop    %ebx
 1da:	5f                   	pop    %edi
 1db:	5d                   	pop    %ebp
 1dc:	c3                   	ret    

000001dd <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 1dd:	55                   	push   %ebp
 1de:	89 e5                	mov    %esp,%ebp
 1e0:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 1e3:	8b 45 08             	mov    0x8(%ebp),%eax
 1e6:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 1e9:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ec:	0f b6 10             	movzbl (%eax),%edx
 1ef:	8b 45 08             	mov    0x8(%ebp),%eax
 1f2:	88 10                	mov    %dl,(%eax)
 1f4:	8b 45 08             	mov    0x8(%ebp),%eax
 1f7:	0f b6 00             	movzbl (%eax),%eax
 1fa:	84 c0                	test   %al,%al
 1fc:	0f 95 c0             	setne  %al
 1ff:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 203:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 207:	84 c0                	test   %al,%al
 209:	75 de                	jne    1e9 <strcpy+0xc>
    ;
  return os;
 20b:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 20e:	c9                   	leave  
 20f:	c3                   	ret    

00000210 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 213:	eb 08                	jmp    21d <strcmp+0xd>
    p++, q++;
 215:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 219:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 21d:	8b 45 08             	mov    0x8(%ebp),%eax
 220:	0f b6 00             	movzbl (%eax),%eax
 223:	84 c0                	test   %al,%al
 225:	74 10                	je     237 <strcmp+0x27>
 227:	8b 45 08             	mov    0x8(%ebp),%eax
 22a:	0f b6 10             	movzbl (%eax),%edx
 22d:	8b 45 0c             	mov    0xc(%ebp),%eax
 230:	0f b6 00             	movzbl (%eax),%eax
 233:	38 c2                	cmp    %al,%dl
 235:	74 de                	je     215 <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 237:	8b 45 08             	mov    0x8(%ebp),%eax
 23a:	0f b6 00             	movzbl (%eax),%eax
 23d:	0f b6 d0             	movzbl %al,%edx
 240:	8b 45 0c             	mov    0xc(%ebp),%eax
 243:	0f b6 00             	movzbl (%eax),%eax
 246:	0f b6 c0             	movzbl %al,%eax
 249:	89 d1                	mov    %edx,%ecx
 24b:	29 c1                	sub    %eax,%ecx
 24d:	89 c8                	mov    %ecx,%eax
}
 24f:	5d                   	pop    %ebp
 250:	c3                   	ret    

00000251 <strlen>:

uint
strlen(char *s)
{
 251:	55                   	push   %ebp
 252:	89 e5                	mov    %esp,%ebp
 254:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 257:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 25e:	eb 04                	jmp    264 <strlen+0x13>
 260:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 264:	8b 45 fc             	mov    -0x4(%ebp),%eax
 267:	03 45 08             	add    0x8(%ebp),%eax
 26a:	0f b6 00             	movzbl (%eax),%eax
 26d:	84 c0                	test   %al,%al
 26f:	75 ef                	jne    260 <strlen+0xf>
    ;
  return n;
 271:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 274:	c9                   	leave  
 275:	c3                   	ret    

00000276 <memset>:

void*
memset(void *dst, int c, uint n)
{
 276:	55                   	push   %ebp
 277:	89 e5                	mov    %esp,%ebp
 279:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 27c:	8b 45 10             	mov    0x10(%ebp),%eax
 27f:	89 44 24 08          	mov    %eax,0x8(%esp)
 283:	8b 45 0c             	mov    0xc(%ebp),%eax
 286:	89 44 24 04          	mov    %eax,0x4(%esp)
 28a:	8b 45 08             	mov    0x8(%ebp),%eax
 28d:	89 04 24             	mov    %eax,(%esp)
 290:	e8 23 ff ff ff       	call   1b8 <stosb>
  return dst;
 295:	8b 45 08             	mov    0x8(%ebp),%eax
}
 298:	c9                   	leave  
 299:	c3                   	ret    

0000029a <strchr>:

char*
strchr(const char *s, char c)
{
 29a:	55                   	push   %ebp
 29b:	89 e5                	mov    %esp,%ebp
 29d:	83 ec 04             	sub    $0x4,%esp
 2a0:	8b 45 0c             	mov    0xc(%ebp),%eax
 2a3:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 2a6:	eb 14                	jmp    2bc <strchr+0x22>
    if(*s == c)
 2a8:	8b 45 08             	mov    0x8(%ebp),%eax
 2ab:	0f b6 00             	movzbl (%eax),%eax
 2ae:	3a 45 fc             	cmp    -0x4(%ebp),%al
 2b1:	75 05                	jne    2b8 <strchr+0x1e>
      return (char*)s;
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	eb 13                	jmp    2cb <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 2b8:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 2bc:	8b 45 08             	mov    0x8(%ebp),%eax
 2bf:	0f b6 00             	movzbl (%eax),%eax
 2c2:	84 c0                	test   %al,%al
 2c4:	75 e2                	jne    2a8 <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
 2c6:	b8 00 00 00 00       	mov    $0x0,%eax
}
 2cb:	c9                   	leave  
 2cc:	c3                   	ret    

000002cd <gets>:

char*
gets(char *buf, int max)
{
 2cd:	55                   	push   %ebp
 2ce:	89 e5                	mov    %esp,%ebp
 2d0:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2d3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 2da:	eb 44                	jmp    320 <gets+0x53>
    cc = read(0, &c, 1);
 2dc:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 2e3:	00 
 2e4:	8d 45 ef             	lea    -0x11(%ebp),%eax
 2e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 2eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2f2:	e8 3d 01 00 00       	call   434 <read>
 2f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(cc < 1)
 2fa:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 2fe:	7e 2d                	jle    32d <gets+0x60>
      break;
    buf[i++] = c;
 300:	8b 45 f0             	mov    -0x10(%ebp),%eax
 303:	03 45 08             	add    0x8(%ebp),%eax
 306:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
 30a:	88 10                	mov    %dl,(%eax)
 30c:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    if(c == '\n' || c == '\r')
 310:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 314:	3c 0a                	cmp    $0xa,%al
 316:	74 16                	je     32e <gets+0x61>
 318:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 31c:	3c 0d                	cmp    $0xd,%al
 31e:	74 0e                	je     32e <gets+0x61>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 320:	8b 45 f0             	mov    -0x10(%ebp),%eax
 323:	83 c0 01             	add    $0x1,%eax
 326:	3b 45 0c             	cmp    0xc(%ebp),%eax
 329:	7c b1                	jl     2dc <gets+0xf>
 32b:	eb 01                	jmp    32e <gets+0x61>
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
 32d:	90                   	nop
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 32e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 331:	03 45 08             	add    0x8(%ebp),%eax
 334:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 337:	8b 45 08             	mov    0x8(%ebp),%eax
}
 33a:	c9                   	leave  
 33b:	c3                   	ret    

0000033c <stat>:

int
stat(char *n, struct stat *st)
{
 33c:	55                   	push   %ebp
 33d:	89 e5                	mov    %esp,%ebp
 33f:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 342:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 349:	00 
 34a:	8b 45 08             	mov    0x8(%ebp),%eax
 34d:	89 04 24             	mov    %eax,(%esp)
 350:	e8 07 01 00 00       	call   45c <open>
 355:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(fd < 0)
 358:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 35c:	79 07                	jns    365 <stat+0x29>
    return -1;
 35e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 363:	eb 23                	jmp    388 <stat+0x4c>
  r = fstat(fd, st);
 365:	8b 45 0c             	mov    0xc(%ebp),%eax
 368:	89 44 24 04          	mov    %eax,0x4(%esp)
 36c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 36f:	89 04 24             	mov    %eax,(%esp)
 372:	e8 fd 00 00 00       	call   474 <fstat>
 377:	89 45 f4             	mov    %eax,-0xc(%ebp)
  close(fd);
 37a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 37d:	89 04 24             	mov    %eax,(%esp)
 380:	e8 bf 00 00 00       	call   444 <close>
  return r;
 385:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
 388:	c9                   	leave  
 389:	c3                   	ret    

0000038a <atoi>:

int
atoi(const char *s)
{
 38a:	55                   	push   %ebp
 38b:	89 e5                	mov    %esp,%ebp
 38d:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 390:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 397:	eb 24                	jmp    3bd <atoi+0x33>
    n = n*10 + *s++ - '0';
 399:	8b 55 fc             	mov    -0x4(%ebp),%edx
 39c:	89 d0                	mov    %edx,%eax
 39e:	c1 e0 02             	shl    $0x2,%eax
 3a1:	01 d0                	add    %edx,%eax
 3a3:	01 c0                	add    %eax,%eax
 3a5:	89 c2                	mov    %eax,%edx
 3a7:	8b 45 08             	mov    0x8(%ebp),%eax
 3aa:	0f b6 00             	movzbl (%eax),%eax
 3ad:	0f be c0             	movsbl %al,%eax
 3b0:	8d 04 02             	lea    (%edx,%eax,1),%eax
 3b3:	83 e8 30             	sub    $0x30,%eax
 3b6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 3b9:	83 45 08 01          	addl   $0x1,0x8(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3bd:	8b 45 08             	mov    0x8(%ebp),%eax
 3c0:	0f b6 00             	movzbl (%eax),%eax
 3c3:	3c 2f                	cmp    $0x2f,%al
 3c5:	7e 0a                	jle    3d1 <atoi+0x47>
 3c7:	8b 45 08             	mov    0x8(%ebp),%eax
 3ca:	0f b6 00             	movzbl (%eax),%eax
 3cd:	3c 39                	cmp    $0x39,%al
 3cf:	7e c8                	jle    399 <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
 3d1:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 3d4:	c9                   	leave  
 3d5:	c3                   	ret    

000003d6 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 3d6:	55                   	push   %ebp
 3d7:	89 e5                	mov    %esp,%ebp
 3d9:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
 3dc:	8b 45 08             	mov    0x8(%ebp),%eax
 3df:	89 45 f8             	mov    %eax,-0x8(%ebp)
  src = vsrc;
 3e2:	8b 45 0c             	mov    0xc(%ebp),%eax
 3e5:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while(n-- > 0)
 3e8:	eb 13                	jmp    3fd <memmove+0x27>
    *dst++ = *src++;
 3ea:	8b 45 fc             	mov    -0x4(%ebp),%eax
 3ed:	0f b6 10             	movzbl (%eax),%edx
 3f0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 3f3:	88 10                	mov    %dl,(%eax)
 3f5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 3f9:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3fd:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 401:	0f 9f c0             	setg   %al
 404:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 408:	84 c0                	test   %al,%al
 40a:	75 de                	jne    3ea <memmove+0x14>
    *dst++ = *src++;
  return vdst;
 40c:	8b 45 08             	mov    0x8(%ebp),%eax
}
 40f:	c9                   	leave  
 410:	c3                   	ret    
 411:	90                   	nop
 412:	90                   	nop
 413:	90                   	nop

00000414 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 414:	b8 01 00 00 00       	mov    $0x1,%eax
 419:	cd 40                	int    $0x40
 41b:	c3                   	ret    

0000041c <exit>:
SYSCALL(exit)
 41c:	b8 02 00 00 00       	mov    $0x2,%eax
 421:	cd 40                	int    $0x40
 423:	c3                   	ret    

00000424 <wait>:
SYSCALL(wait)
 424:	b8 03 00 00 00       	mov    $0x3,%eax
 429:	cd 40                	int    $0x40
 42b:	c3                   	ret    

0000042c <pipe>:
SYSCALL(pipe)
 42c:	b8 04 00 00 00       	mov    $0x4,%eax
 431:	cd 40                	int    $0x40
 433:	c3                   	ret    

00000434 <read>:
SYSCALL(read)
 434:	b8 05 00 00 00       	mov    $0x5,%eax
 439:	cd 40                	int    $0x40
 43b:	c3                   	ret    

0000043c <write>:
SYSCALL(write)
 43c:	b8 10 00 00 00       	mov    $0x10,%eax
 441:	cd 40                	int    $0x40
 443:	c3                   	ret    

00000444 <close>:
SYSCALL(close)
 444:	b8 15 00 00 00       	mov    $0x15,%eax
 449:	cd 40                	int    $0x40
 44b:	c3                   	ret    

0000044c <kill>:
SYSCALL(kill)
 44c:	b8 06 00 00 00       	mov    $0x6,%eax
 451:	cd 40                	int    $0x40
 453:	c3                   	ret    

00000454 <exec>:
SYSCALL(exec)
 454:	b8 07 00 00 00       	mov    $0x7,%eax
 459:	cd 40                	int    $0x40
 45b:	c3                   	ret    

0000045c <open>:
SYSCALL(open)
 45c:	b8 0f 00 00 00       	mov    $0xf,%eax
 461:	cd 40                	int    $0x40
 463:	c3                   	ret    

00000464 <mknod>:
SYSCALL(mknod)
 464:	b8 11 00 00 00       	mov    $0x11,%eax
 469:	cd 40                	int    $0x40
 46b:	c3                   	ret    

0000046c <unlink>:
SYSCALL(unlink)
 46c:	b8 12 00 00 00       	mov    $0x12,%eax
 471:	cd 40                	int    $0x40
 473:	c3                   	ret    

00000474 <fstat>:
SYSCALL(fstat)
 474:	b8 08 00 00 00       	mov    $0x8,%eax
 479:	cd 40                	int    $0x40
 47b:	c3                   	ret    

0000047c <link>:
SYSCALL(link)
 47c:	b8 13 00 00 00       	mov    $0x13,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <mkdir>:
SYSCALL(mkdir)
 484:	b8 14 00 00 00       	mov    $0x14,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <chdir>:
SYSCALL(chdir)
 48c:	b8 09 00 00 00       	mov    $0x9,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    

00000494 <dup>:
SYSCALL(dup)
 494:	b8 0a 00 00 00       	mov    $0xa,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    

0000049c <getpid>:
SYSCALL(getpid)
 49c:	b8 0b 00 00 00       	mov    $0xb,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <sbrk>:
SYSCALL(sbrk)
 4a4:	b8 0c 00 00 00       	mov    $0xc,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <sleep>:
SYSCALL(sleep)
 4ac:	b8 0d 00 00 00       	mov    $0xd,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <uptime>:
SYSCALL(uptime)
 4b4:	b8 0e 00 00 00       	mov    $0xe,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <clone>:
SYSCALL(clone)
 4bc:	b8 16 00 00 00       	mov    $0x16,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <texit>:
SYSCALL(texit)
 4c4:	b8 17 00 00 00       	mov    $0x17,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <tsleep>:
SYSCALL(tsleep)
 4cc:	b8 18 00 00 00       	mov    $0x18,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <twakeup>:
SYSCALL(twakeup)
 4d4:	b8 19 00 00 00       	mov    $0x19,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <thread_yield>:
SYSCALL(thread_yield)
 4dc:	b8 1a 00 00 00       	mov    $0x1a,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 4e4:	55                   	push   %ebp
 4e5:	89 e5                	mov    %esp,%ebp
 4e7:	83 ec 28             	sub    $0x28,%esp
 4ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ed:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 4f0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4f7:	00 
 4f8:	8d 45 f4             	lea    -0xc(%ebp),%eax
 4fb:	89 44 24 04          	mov    %eax,0x4(%esp)
 4ff:	8b 45 08             	mov    0x8(%ebp),%eax
 502:	89 04 24             	mov    %eax,(%esp)
 505:	e8 32 ff ff ff       	call   43c <write>
}
 50a:	c9                   	leave  
 50b:	c3                   	ret    

0000050c <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 50c:	55                   	push   %ebp
 50d:	89 e5                	mov    %esp,%ebp
 50f:	53                   	push   %ebx
 510:	83 ec 44             	sub    $0x44,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 513:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 51a:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 51e:	74 17                	je     537 <printint+0x2b>
 520:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 524:	79 11                	jns    537 <printint+0x2b>
    neg = 1;
 526:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 52d:	8b 45 0c             	mov    0xc(%ebp),%eax
 530:	f7 d8                	neg    %eax
 532:	89 45 f4             	mov    %eax,-0xc(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 535:	eb 06                	jmp    53d <printint+0x31>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 537:	8b 45 0c             	mov    0xc(%ebp),%eax
 53a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }

  i = 0;
 53d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  do{
    buf[i++] = digits[x % base];
 544:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 547:	8b 5d 10             	mov    0x10(%ebp),%ebx
 54a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 54d:	ba 00 00 00 00       	mov    $0x0,%edx
 552:	f7 f3                	div    %ebx
 554:	89 d0                	mov    %edx,%eax
 556:	0f b6 80 2c 0d 00 00 	movzbl 0xd2c(%eax),%eax
 55d:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
 561:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  }while((x /= base) != 0);
 565:	8b 45 10             	mov    0x10(%ebp),%eax
 568:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 56b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 56e:	ba 00 00 00 00       	mov    $0x0,%edx
 573:	f7 75 d4             	divl   -0x2c(%ebp)
 576:	89 45 f4             	mov    %eax,-0xc(%ebp)
 579:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 57d:	75 c5                	jne    544 <printint+0x38>
  if(neg)
 57f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 583:	74 28                	je     5ad <printint+0xa1>
    buf[i++] = '-';
 585:	8b 45 ec             	mov    -0x14(%ebp),%eax
 588:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
 58d:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)

  while(--i >= 0)
 591:	eb 1a                	jmp    5ad <printint+0xa1>
    putc(fd, buf[i]);
 593:	8b 45 ec             	mov    -0x14(%ebp),%eax
 596:	0f b6 44 05 dc       	movzbl -0x24(%ebp,%eax,1),%eax
 59b:	0f be c0             	movsbl %al,%eax
 59e:	89 44 24 04          	mov    %eax,0x4(%esp)
 5a2:	8b 45 08             	mov    0x8(%ebp),%eax
 5a5:	89 04 24             	mov    %eax,(%esp)
 5a8:	e8 37 ff ff ff       	call   4e4 <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 5ad:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 5b1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 5b5:	79 dc                	jns    593 <printint+0x87>
    putc(fd, buf[i]);
}
 5b7:	83 c4 44             	add    $0x44,%esp
 5ba:	5b                   	pop    %ebx
 5bb:	5d                   	pop    %ebp
 5bc:	c3                   	ret    

000005bd <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 5bd:	55                   	push   %ebp
 5be:	89 e5                	mov    %esp,%ebp
 5c0:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 5c3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 5ca:	8d 45 0c             	lea    0xc(%ebp),%eax
 5cd:	83 c0 04             	add    $0x4,%eax
 5d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for(i = 0; fmt[i]; i++){
 5d3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 5da:	e9 7e 01 00 00       	jmp    75d <printf+0x1a0>
    c = fmt[i] & 0xff;
 5df:	8b 55 0c             	mov    0xc(%ebp),%edx
 5e2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 5e5:	8d 04 02             	lea    (%edx,%eax,1),%eax
 5e8:	0f b6 00             	movzbl (%eax),%eax
 5eb:	0f be c0             	movsbl %al,%eax
 5ee:	25 ff 00 00 00       	and    $0xff,%eax
 5f3:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(state == 0){
 5f6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 5fa:	75 2c                	jne    628 <printf+0x6b>
      if(c == '%'){
 5fc:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 600:	75 0c                	jne    60e <printf+0x51>
        state = '%';
 602:	c7 45 f0 25 00 00 00 	movl   $0x25,-0x10(%ebp)
 609:	e9 4b 01 00 00       	jmp    759 <printf+0x19c>
      } else {
        putc(fd, c);
 60e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 611:	0f be c0             	movsbl %al,%eax
 614:	89 44 24 04          	mov    %eax,0x4(%esp)
 618:	8b 45 08             	mov    0x8(%ebp),%eax
 61b:	89 04 24             	mov    %eax,(%esp)
 61e:	e8 c1 fe ff ff       	call   4e4 <putc>
 623:	e9 31 01 00 00       	jmp    759 <printf+0x19c>
      }
    } else if(state == '%'){
 628:	83 7d f0 25          	cmpl   $0x25,-0x10(%ebp)
 62c:	0f 85 27 01 00 00    	jne    759 <printf+0x19c>
      if(c == 'd'){
 632:	83 7d e8 64          	cmpl   $0x64,-0x18(%ebp)
 636:	75 2d                	jne    665 <printf+0xa8>
        printint(fd, *ap, 10, 1);
 638:	8b 45 f4             	mov    -0xc(%ebp),%eax
 63b:	8b 00                	mov    (%eax),%eax
 63d:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 644:	00 
 645:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 64c:	00 
 64d:	89 44 24 04          	mov    %eax,0x4(%esp)
 651:	8b 45 08             	mov    0x8(%ebp),%eax
 654:	89 04 24             	mov    %eax,(%esp)
 657:	e8 b0 fe ff ff       	call   50c <printint>
        ap++;
 65c:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 660:	e9 ed 00 00 00       	jmp    752 <printf+0x195>
      } else if(c == 'x' || c == 'p'){
 665:	83 7d e8 78          	cmpl   $0x78,-0x18(%ebp)
 669:	74 06                	je     671 <printf+0xb4>
 66b:	83 7d e8 70          	cmpl   $0x70,-0x18(%ebp)
 66f:	75 2d                	jne    69e <printf+0xe1>
        printint(fd, *ap, 16, 0);
 671:	8b 45 f4             	mov    -0xc(%ebp),%eax
 674:	8b 00                	mov    (%eax),%eax
 676:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 67d:	00 
 67e:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 685:	00 
 686:	89 44 24 04          	mov    %eax,0x4(%esp)
 68a:	8b 45 08             	mov    0x8(%ebp),%eax
 68d:	89 04 24             	mov    %eax,(%esp)
 690:	e8 77 fe ff ff       	call   50c <printint>
        ap++;
 695:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 699:	e9 b4 00 00 00       	jmp    752 <printf+0x195>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 69e:	83 7d e8 73          	cmpl   $0x73,-0x18(%ebp)
 6a2:	75 46                	jne    6ea <printf+0x12d>
        s = (char*)*ap;
 6a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 6a7:	8b 00                	mov    (%eax),%eax
 6a9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        ap++;
 6ac:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
        if(s == 0)
 6b0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 6b4:	75 27                	jne    6dd <printf+0x120>
          s = "(null)";
 6b6:	c7 45 e4 e1 0c 00 00 	movl   $0xce1,-0x1c(%ebp)
        while(*s != 0){
 6bd:	eb 1f                	jmp    6de <printf+0x121>
          putc(fd, *s);
 6bf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6c2:	0f b6 00             	movzbl (%eax),%eax
 6c5:	0f be c0             	movsbl %al,%eax
 6c8:	89 44 24 04          	mov    %eax,0x4(%esp)
 6cc:	8b 45 08             	mov    0x8(%ebp),%eax
 6cf:	89 04 24             	mov    %eax,(%esp)
 6d2:	e8 0d fe ff ff       	call   4e4 <putc>
          s++;
 6d7:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 6db:	eb 01                	jmp    6de <printf+0x121>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 6dd:	90                   	nop
 6de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6e1:	0f b6 00             	movzbl (%eax),%eax
 6e4:	84 c0                	test   %al,%al
 6e6:	75 d7                	jne    6bf <printf+0x102>
 6e8:	eb 68                	jmp    752 <printf+0x195>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6ea:	83 7d e8 63          	cmpl   $0x63,-0x18(%ebp)
 6ee:	75 1d                	jne    70d <printf+0x150>
        putc(fd, *ap);
 6f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 6f3:	8b 00                	mov    (%eax),%eax
 6f5:	0f be c0             	movsbl %al,%eax
 6f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 6fc:	8b 45 08             	mov    0x8(%ebp),%eax
 6ff:	89 04 24             	mov    %eax,(%esp)
 702:	e8 dd fd ff ff       	call   4e4 <putc>
        ap++;
 707:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 70b:	eb 45                	jmp    752 <printf+0x195>
      } else if(c == '%'){
 70d:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 711:	75 17                	jne    72a <printf+0x16d>
        putc(fd, c);
 713:	8b 45 e8             	mov    -0x18(%ebp),%eax
 716:	0f be c0             	movsbl %al,%eax
 719:	89 44 24 04          	mov    %eax,0x4(%esp)
 71d:	8b 45 08             	mov    0x8(%ebp),%eax
 720:	89 04 24             	mov    %eax,(%esp)
 723:	e8 bc fd ff ff       	call   4e4 <putc>
 728:	eb 28                	jmp    752 <printf+0x195>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 72a:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 731:	00 
 732:	8b 45 08             	mov    0x8(%ebp),%eax
 735:	89 04 24             	mov    %eax,(%esp)
 738:	e8 a7 fd ff ff       	call   4e4 <putc>
        putc(fd, c);
 73d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 740:	0f be c0             	movsbl %al,%eax
 743:	89 44 24 04          	mov    %eax,0x4(%esp)
 747:	8b 45 08             	mov    0x8(%ebp),%eax
 74a:	89 04 24             	mov    %eax,(%esp)
 74d:	e8 92 fd ff ff       	call   4e4 <putc>
      }
      state = 0;
 752:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 759:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 75d:	8b 55 0c             	mov    0xc(%ebp),%edx
 760:	8b 45 ec             	mov    -0x14(%ebp),%eax
 763:	8d 04 02             	lea    (%edx,%eax,1),%eax
 766:	0f b6 00             	movzbl (%eax),%eax
 769:	84 c0                	test   %al,%al
 76b:	0f 85 6e fe ff ff    	jne    5df <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 771:	c9                   	leave  
 772:	c3                   	ret    
 773:	90                   	nop

00000774 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 774:	55                   	push   %ebp
 775:	89 e5                	mov    %esp,%ebp
 777:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 77a:	8b 45 08             	mov    0x8(%ebp),%eax
 77d:	83 e8 08             	sub    $0x8,%eax
 780:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 783:	a1 48 0d 00 00       	mov    0xd48,%eax
 788:	89 45 fc             	mov    %eax,-0x4(%ebp)
 78b:	eb 24                	jmp    7b1 <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 78d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 790:	8b 00                	mov    (%eax),%eax
 792:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 795:	77 12                	ja     7a9 <free+0x35>
 797:	8b 45 f8             	mov    -0x8(%ebp),%eax
 79a:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 79d:	77 24                	ja     7c3 <free+0x4f>
 79f:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7a2:	8b 00                	mov    (%eax),%eax
 7a4:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 7a7:	77 1a                	ja     7c3 <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7ac:	8b 00                	mov    (%eax),%eax
 7ae:	89 45 fc             	mov    %eax,-0x4(%ebp)
 7b1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 7b4:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 7b7:	76 d4                	jbe    78d <free+0x19>
 7b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7bc:	8b 00                	mov    (%eax),%eax
 7be:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 7c1:	76 ca                	jbe    78d <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
 7c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 7c6:	8b 40 04             	mov    0x4(%eax),%eax
 7c9:	c1 e0 03             	shl    $0x3,%eax
 7cc:	89 c2                	mov    %eax,%edx
 7ce:	03 55 f8             	add    -0x8(%ebp),%edx
 7d1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7d4:	8b 00                	mov    (%eax),%eax
 7d6:	39 c2                	cmp    %eax,%edx
 7d8:	75 24                	jne    7fe <free+0x8a>
    bp->s.size += p->s.ptr->s.size;
 7da:	8b 45 f8             	mov    -0x8(%ebp),%eax
 7dd:	8b 50 04             	mov    0x4(%eax),%edx
 7e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7e3:	8b 00                	mov    (%eax),%eax
 7e5:	8b 40 04             	mov    0x4(%eax),%eax
 7e8:	01 c2                	add    %eax,%edx
 7ea:	8b 45 f8             	mov    -0x8(%ebp),%eax
 7ed:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 7f0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7f3:	8b 00                	mov    (%eax),%eax
 7f5:	8b 10                	mov    (%eax),%edx
 7f7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 7fa:	89 10                	mov    %edx,(%eax)
 7fc:	eb 0a                	jmp    808 <free+0x94>
  } else
    bp->s.ptr = p->s.ptr;
 7fe:	8b 45 fc             	mov    -0x4(%ebp),%eax
 801:	8b 10                	mov    (%eax),%edx
 803:	8b 45 f8             	mov    -0x8(%ebp),%eax
 806:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 808:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80b:	8b 40 04             	mov    0x4(%eax),%eax
 80e:	c1 e0 03             	shl    $0x3,%eax
 811:	03 45 fc             	add    -0x4(%ebp),%eax
 814:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 817:	75 20                	jne    839 <free+0xc5>
    p->s.size += bp->s.size;
 819:	8b 45 fc             	mov    -0x4(%ebp),%eax
 81c:	8b 50 04             	mov    0x4(%eax),%edx
 81f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 822:	8b 40 04             	mov    0x4(%eax),%eax
 825:	01 c2                	add    %eax,%edx
 827:	8b 45 fc             	mov    -0x4(%ebp),%eax
 82a:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 82d:	8b 45 f8             	mov    -0x8(%ebp),%eax
 830:	8b 10                	mov    (%eax),%edx
 832:	8b 45 fc             	mov    -0x4(%ebp),%eax
 835:	89 10                	mov    %edx,(%eax)
 837:	eb 08                	jmp    841 <free+0xcd>
  } else
    p->s.ptr = bp;
 839:	8b 45 fc             	mov    -0x4(%ebp),%eax
 83c:	8b 55 f8             	mov    -0x8(%ebp),%edx
 83f:	89 10                	mov    %edx,(%eax)
  freep = p;
 841:	8b 45 fc             	mov    -0x4(%ebp),%eax
 844:	a3 48 0d 00 00       	mov    %eax,0xd48
}
 849:	c9                   	leave  
 84a:	c3                   	ret    

0000084b <morecore>:

static Header*
morecore(uint nu)
{
 84b:	55                   	push   %ebp
 84c:	89 e5                	mov    %esp,%ebp
 84e:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 851:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 858:	77 07                	ja     861 <morecore+0x16>
    nu = 4096;
 85a:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 861:	8b 45 08             	mov    0x8(%ebp),%eax
 864:	c1 e0 03             	shl    $0x3,%eax
 867:	89 04 24             	mov    %eax,(%esp)
 86a:	e8 35 fc ff ff       	call   4a4 <sbrk>
 86f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(p == (char*)-1)
 872:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 876:	75 07                	jne    87f <morecore+0x34>
    return 0;
 878:	b8 00 00 00 00       	mov    $0x0,%eax
 87d:	eb 22                	jmp    8a1 <morecore+0x56>
  hp = (Header*)p;
 87f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 882:	89 45 f4             	mov    %eax,-0xc(%ebp)
  hp->s.size = nu;
 885:	8b 45 f4             	mov    -0xc(%ebp),%eax
 888:	8b 55 08             	mov    0x8(%ebp),%edx
 88b:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 88e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 891:	83 c0 08             	add    $0x8,%eax
 894:	89 04 24             	mov    %eax,(%esp)
 897:	e8 d8 fe ff ff       	call   774 <free>
  return freep;
 89c:	a1 48 0d 00 00       	mov    0xd48,%eax
}
 8a1:	c9                   	leave  
 8a2:	c3                   	ret    

000008a3 <malloc>:

void*
malloc(uint nbytes)
{
 8a3:	55                   	push   %ebp
 8a4:	89 e5                	mov    %esp,%ebp
 8a6:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a9:	8b 45 08             	mov    0x8(%ebp),%eax
 8ac:	83 c0 07             	add    $0x7,%eax
 8af:	c1 e8 03             	shr    $0x3,%eax
 8b2:	83 c0 01             	add    $0x1,%eax
 8b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if((prevp = freep) == 0){
 8b8:	a1 48 0d 00 00       	mov    0xd48,%eax
 8bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8c0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8c4:	75 23                	jne    8e9 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 8c6:	c7 45 f0 40 0d 00 00 	movl   $0xd40,-0x10(%ebp)
 8cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8d0:	a3 48 0d 00 00       	mov    %eax,0xd48
 8d5:	a1 48 0d 00 00       	mov    0xd48,%eax
 8da:	a3 40 0d 00 00       	mov    %eax,0xd40
    base.s.size = 0;
 8df:	c7 05 44 0d 00 00 00 	movl   $0x0,0xd44
 8e6:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8ec:	8b 00                	mov    (%eax),%eax
 8ee:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(p->s.size >= nunits){
 8f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8f4:	8b 40 04             	mov    0x4(%eax),%eax
 8f7:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8fa:	72 4d                	jb     949 <malloc+0xa6>
      if(p->s.size == nunits)
 8fc:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8ff:	8b 40 04             	mov    0x4(%eax),%eax
 902:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 905:	75 0c                	jne    913 <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 907:	8b 45 ec             	mov    -0x14(%ebp),%eax
 90a:	8b 10                	mov    (%eax),%edx
 90c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 90f:	89 10                	mov    %edx,(%eax)
 911:	eb 26                	jmp    939 <malloc+0x96>
      else {
        p->s.size -= nunits;
 913:	8b 45 ec             	mov    -0x14(%ebp),%eax
 916:	8b 40 04             	mov    0x4(%eax),%eax
 919:	89 c2                	mov    %eax,%edx
 91b:	2b 55 f4             	sub    -0xc(%ebp),%edx
 91e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 921:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 924:	8b 45 ec             	mov    -0x14(%ebp),%eax
 927:	8b 40 04             	mov    0x4(%eax),%eax
 92a:	c1 e0 03             	shl    $0x3,%eax
 92d:	01 45 ec             	add    %eax,-0x14(%ebp)
        p->s.size = nunits;
 930:	8b 45 ec             	mov    -0x14(%ebp),%eax
 933:	8b 55 f4             	mov    -0xc(%ebp),%edx
 936:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 939:	8b 45 f0             	mov    -0x10(%ebp),%eax
 93c:	a3 48 0d 00 00       	mov    %eax,0xd48
      return (void*)(p + 1);
 941:	8b 45 ec             	mov    -0x14(%ebp),%eax
 944:	83 c0 08             	add    $0x8,%eax
 947:	eb 38                	jmp    981 <malloc+0xde>
    }
    if(p == freep)
 949:	a1 48 0d 00 00       	mov    0xd48,%eax
 94e:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 951:	75 1b                	jne    96e <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 953:	8b 45 f4             	mov    -0xc(%ebp),%eax
 956:	89 04 24             	mov    %eax,(%esp)
 959:	e8 ed fe ff ff       	call   84b <morecore>
 95e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 961:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 965:	75 07                	jne    96e <malloc+0xcb>
        return 0;
 967:	b8 00 00 00 00       	mov    $0x0,%eax
 96c:	eb 13                	jmp    981 <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 96e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 971:	89 45 f0             	mov    %eax,-0x10(%ebp)
 974:	8b 45 ec             	mov    -0x14(%ebp),%eax
 977:	8b 00                	mov    (%eax),%eax
 979:	89 45 ec             	mov    %eax,-0x14(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
 97c:	e9 70 ff ff ff       	jmp    8f1 <malloc+0x4e>
}
 981:	c9                   	leave  
 982:	c3                   	ret    
 983:	90                   	nop

00000984 <xchg>:
  asm volatile("sti");
}

static inline uint
xchg(volatile uint *addr, uint newval)
{
 984:	55                   	push   %ebp
 985:	89 e5                	mov    %esp,%ebp
 987:	83 ec 10             	sub    $0x10,%esp
  uint result;
  
  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 98a:	8b 55 08             	mov    0x8(%ebp),%edx
 98d:	8b 45 0c             	mov    0xc(%ebp),%eax
 990:	8b 4d 08             	mov    0x8(%ebp),%ecx
 993:	f0 87 02             	lock xchg %eax,(%edx)
 996:	89 45 fc             	mov    %eax,-0x4(%ebp)
               "+m" (*addr), "=a" (result) :
               "1" (newval) :
               "cc");
  return result;
 999:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 99c:	c9                   	leave  
 99d:	c3                   	ret    

0000099e <lock_init>:
#include "x86.h"
#include "proc.h"



void lock_init(lock_t *lock){
 99e:	55                   	push   %ebp
 99f:	89 e5                	mov    %esp,%ebp
    lock->locked = 0;
 9a1:	8b 45 08             	mov    0x8(%ebp),%eax
 9a4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 9aa:	5d                   	pop    %ebp
 9ab:	c3                   	ret    

000009ac <lock_acquire>:
void lock_acquire(lock_t *lock){
 9ac:	55                   	push   %ebp
 9ad:	89 e5                	mov    %esp,%ebp
 9af:	83 ec 08             	sub    $0x8,%esp
    while(xchg(&lock->locked,1) != 0);
 9b2:	8b 45 08             	mov    0x8(%ebp),%eax
 9b5:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 9bc:	00 
 9bd:	89 04 24             	mov    %eax,(%esp)
 9c0:	e8 bf ff ff ff       	call   984 <xchg>
 9c5:	85 c0                	test   %eax,%eax
 9c7:	75 e9                	jne    9b2 <lock_acquire+0x6>
}
 9c9:	c9                   	leave  
 9ca:	c3                   	ret    

000009cb <lock_release>:
void lock_release(lock_t *lock){
 9cb:	55                   	push   %ebp
 9cc:	89 e5                	mov    %esp,%ebp
 9ce:	83 ec 08             	sub    $0x8,%esp
    xchg(&lock->locked,0);
 9d1:	8b 45 08             	mov    0x8(%ebp),%eax
 9d4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 9db:	00 
 9dc:	89 04 24             	mov    %eax,(%esp)
 9df:	e8 a0 ff ff ff       	call   984 <xchg>
}
 9e4:	c9                   	leave  
 9e5:	c3                   	ret    

000009e6 <thread_create>:

void *thread_create(void(*start_routine)(void*), void *arg){
 9e6:	55                   	push   %ebp
 9e7:	89 e5                	mov    %esp,%ebp
 9e9:	83 ec 28             	sub    $0x28,%esp
    int tid;
    void * stack = malloc(2 * 4096);
 9ec:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
 9f3:	e8 ab fe ff ff       	call   8a3 <malloc>
 9f8:	89 45 f0             	mov    %eax,-0x10(%ebp)
    void *garbage_stack = stack; 
 9fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 9fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
   // printf(1,"start routine addr : %d\n",(uint)start_routine);


    if((uint)stack % 4096){
 a01:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a04:	25 ff 0f 00 00       	and    $0xfff,%eax
 a09:	85 c0                	test   %eax,%eax
 a0b:	74 15                	je     a22 <thread_create+0x3c>
        stack = stack + (4096 - (uint)stack % 4096);
 a0d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a10:	89 c2                	mov    %eax,%edx
 a12:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 a18:	b8 00 10 00 00       	mov    $0x1000,%eax
 a1d:	29 d0                	sub    %edx,%eax
 a1f:	01 45 f0             	add    %eax,-0x10(%ebp)
    }
    if (stack == 0){
 a22:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 a26:	75 1b                	jne    a43 <thread_create+0x5d>

        printf(1,"malloc fail \n");
 a28:	c7 44 24 04 e8 0c 00 	movl   $0xce8,0x4(%esp)
 a2f:	00 
 a30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a37:	e8 81 fb ff ff       	call   5bd <printf>
        return 0;
 a3c:	b8 00 00 00 00       	mov    $0x0,%eax
 a41:	eb 6f                	jmp    ab2 <thread_create+0xcc>
    }

    tid = clone((uint)stack,PSIZE,(uint)start_routine,(int)arg);
 a43:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 a46:	8b 55 08             	mov    0x8(%ebp),%edx
 a49:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a4c:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 a50:	89 54 24 08          	mov    %edx,0x8(%esp)
 a54:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
 a5b:	00 
 a5c:	89 04 24             	mov    %eax,(%esp)
 a5f:	e8 58 fa ff ff       	call   4bc <clone>
 a64:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(tid < 0){
 a67:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a6b:	79 1b                	jns    a88 <thread_create+0xa2>
        printf(1,"clone fails\n");
 a6d:	c7 44 24 04 f6 0c 00 	movl   $0xcf6,0x4(%esp)
 a74:	00 
 a75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a7c:	e8 3c fb ff ff       	call   5bd <printf>
        return 0;
 a81:	b8 00 00 00 00       	mov    $0x0,%eax
 a86:	eb 2a                	jmp    ab2 <thread_create+0xcc>
    }
    if(tid > 0){
 a88:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a8c:	7e 05                	jle    a93 <thread_create+0xad>
        //store threads on thread table
        return garbage_stack;
 a8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 a91:	eb 1f                	jmp    ab2 <thread_create+0xcc>
    }
    if(tid == 0){
 a93:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a97:	75 14                	jne    aad <thread_create+0xc7>
        printf(1,"tid = 0 return \n");
 a99:	c7 44 24 04 03 0d 00 	movl   $0xd03,0x4(%esp)
 aa0:	00 
 aa1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 aa8:	e8 10 fb ff ff       	call   5bd <printf>
    }
//    wait();
//    free(garbage_stack);

    return 0;
 aad:	b8 00 00 00 00       	mov    $0x0,%eax
}
 ab2:	c9                   	leave  
 ab3:	c3                   	ret    

00000ab4 <init_q>:
#include "queue.h"
#include "types.h"
#include "user.h"

void init_q(struct queue *q){
 ab4:	55                   	push   %ebp
 ab5:	89 e5                	mov    %esp,%ebp
    q->size = 0;
 ab7:	8b 45 08             	mov    0x8(%ebp),%eax
 aba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    q->head = 0;
 ac0:	8b 45 08             	mov    0x8(%ebp),%eax
 ac3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    q->tail = 0;
 aca:	8b 45 08             	mov    0x8(%ebp),%eax
 acd:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
 ad4:	5d                   	pop    %ebp
 ad5:	c3                   	ret    

00000ad6 <add_q>:

void add_q(struct queue *q, int v){
 ad6:	55                   	push   %ebp
 ad7:	89 e5                	mov    %esp,%ebp
 ad9:	83 ec 28             	sub    $0x28,%esp
    //printf(1, "here \n");
		struct node * n = malloc(sizeof(struct node));
 adc:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 ae3:	e8 bb fd ff ff       	call   8a3 <malloc>
 ae8:	89 45 f4             	mov    %eax,-0xc(%ebp)
    n->next = 0;
 aeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 aee:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    n->value = v;
 af5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 af8:	8b 55 0c             	mov    0xc(%ebp),%edx
 afb:	89 10                	mov    %edx,(%eax)
    if(q->head == 0){
 afd:	8b 45 08             	mov    0x8(%ebp),%eax
 b00:	8b 40 04             	mov    0x4(%eax),%eax
 b03:	85 c0                	test   %eax,%eax
 b05:	75 0b                	jne    b12 <add_q+0x3c>
        q->head = n;
 b07:	8b 45 08             	mov    0x8(%ebp),%eax
 b0a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 b0d:	89 50 04             	mov    %edx,0x4(%eax)
 b10:	eb 0c                	jmp    b1e <add_q+0x48>
    }else{
        q->tail->next = n;
 b12:	8b 45 08             	mov    0x8(%ebp),%eax
 b15:	8b 40 08             	mov    0x8(%eax),%eax
 b18:	8b 55 f4             	mov    -0xc(%ebp),%edx
 b1b:	89 50 04             	mov    %edx,0x4(%eax)
    }
    q->tail = n;
 b1e:	8b 45 08             	mov    0x8(%ebp),%eax
 b21:	8b 55 f4             	mov    -0xc(%ebp),%edx
 b24:	89 50 08             	mov    %edx,0x8(%eax)
    q->size++;
 b27:	8b 45 08             	mov    0x8(%ebp),%eax
 b2a:	8b 00                	mov    (%eax),%eax
 b2c:	8d 50 01             	lea    0x1(%eax),%edx
 b2f:	8b 45 08             	mov    0x8(%ebp),%eax
 b32:	89 10                	mov    %edx,(%eax)
}
 b34:	c9                   	leave  
 b35:	c3                   	ret    

00000b36 <empty_q>:

int empty_q(struct queue *q){
 b36:	55                   	push   %ebp
 b37:	89 e5                	mov    %esp,%ebp
    if(q->size == 0)
 b39:	8b 45 08             	mov    0x8(%ebp),%eax
 b3c:	8b 00                	mov    (%eax),%eax
 b3e:	85 c0                	test   %eax,%eax
 b40:	75 07                	jne    b49 <empty_q+0x13>
        return 1;
 b42:	b8 01 00 00 00       	mov    $0x1,%eax
 b47:	eb 05                	jmp    b4e <empty_q+0x18>
    else
        return 0;
 b49:	b8 00 00 00 00       	mov    $0x0,%eax
} 
 b4e:	5d                   	pop    %ebp
 b4f:	c3                   	ret    

00000b50 <pop_q>:
int pop_q(struct queue *q){
 b50:	55                   	push   %ebp
 b51:	89 e5                	mov    %esp,%ebp
 b53:	83 ec 28             	sub    $0x28,%esp
    int val;
    struct node *destroy;
    if(!empty_q(q)){
 b56:	8b 45 08             	mov    0x8(%ebp),%eax
 b59:	89 04 24             	mov    %eax,(%esp)
 b5c:	e8 d5 ff ff ff       	call   b36 <empty_q>
 b61:	85 c0                	test   %eax,%eax
 b63:	75 5d                	jne    bc2 <pop_q+0x72>
       val = q->head->value; 
 b65:	8b 45 08             	mov    0x8(%ebp),%eax
 b68:	8b 40 04             	mov    0x4(%eax),%eax
 b6b:	8b 00                	mov    (%eax),%eax
 b6d:	89 45 f0             	mov    %eax,-0x10(%ebp)
       destroy = q->head;
 b70:	8b 45 08             	mov    0x8(%ebp),%eax
 b73:	8b 40 04             	mov    0x4(%eax),%eax
 b76:	89 45 f4             	mov    %eax,-0xc(%ebp)
       q->head = q->head->next;
 b79:	8b 45 08             	mov    0x8(%ebp),%eax
 b7c:	8b 40 04             	mov    0x4(%eax),%eax
 b7f:	8b 50 04             	mov    0x4(%eax),%edx
 b82:	8b 45 08             	mov    0x8(%ebp),%eax
 b85:	89 50 04             	mov    %edx,0x4(%eax)
       free(destroy);
 b88:	8b 45 f4             	mov    -0xc(%ebp),%eax
 b8b:	89 04 24             	mov    %eax,(%esp)
 b8e:	e8 e1 fb ff ff       	call   774 <free>
       q->size--;
 b93:	8b 45 08             	mov    0x8(%ebp),%eax
 b96:	8b 00                	mov    (%eax),%eax
 b98:	8d 50 ff             	lea    -0x1(%eax),%edx
 b9b:	8b 45 08             	mov    0x8(%ebp),%eax
 b9e:	89 10                	mov    %edx,(%eax)
       if(q->size == 0){
 ba0:	8b 45 08             	mov    0x8(%ebp),%eax
 ba3:	8b 00                	mov    (%eax),%eax
 ba5:	85 c0                	test   %eax,%eax
 ba7:	75 14                	jne    bbd <pop_q+0x6d>
            q->head = 0;
 ba9:	8b 45 08             	mov    0x8(%ebp),%eax
 bac:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
            q->tail = 0;
 bb3:	8b 45 08             	mov    0x8(%ebp),%eax
 bb6:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
       }
       return val;
 bbd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 bc0:	eb 05                	jmp    bc7 <pop_q+0x77>
    }
    return -1;
 bc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 bc7:	c9                   	leave  
 bc8:	c3                   	ret    
 bc9:	90                   	nop
 bca:	90                   	nop
 bcb:	90                   	nop

00000bcc <init_semaphore>:
#include "semaphore.h"
#include "user.h"

//lab 2
//Semaphore
void init_semaphore(struct Semaphore *s, int count_num) {
 bcc:	55                   	push   %ebp
 bcd:	89 e5                	mov    %esp,%ebp
 bcf:	83 ec 18             	sub    $0x18,%esp
	s->count = count_num;
 bd2:	8b 45 08             	mov    0x8(%ebp),%eax
 bd5:	8b 55 0c             	mov    0xc(%ebp),%edx
 bd8:	89 10                	mov    %edx,(%eax)
	init_q(&s->threads);
 bda:	8b 45 08             	mov    0x8(%ebp),%eax
 bdd:	83 c0 04             	add    $0x4,%eax
 be0:	89 04 24             	mov    %eax,(%esp)
 be3:	e8 cc fe ff ff       	call   ab4 <init_q>
	lock_init(&s->lock);
 be8:	8b 45 08             	mov    0x8(%ebp),%eax
 beb:	83 c0 10             	add    $0x10,%eax
 bee:	89 04 24             	mov    %eax,(%esp)
 bf1:	e8 a8 fd ff ff       	call   99e <lock_init>
}
 bf6:	c9                   	leave  
 bf7:	c3                   	ret    

00000bf8 <sem_acquire>:

void sem_acquire(struct Semaphore *s) {
 bf8:	55                   	push   %ebp
 bf9:	89 e5                	mov    %esp,%ebp
 bfb:	83 ec 18             	sub    $0x18,%esp
	while(1) {
		if (s->count > 0) {												//if there are available resources
 bfe:	8b 45 08             	mov    0x8(%ebp),%eax
 c01:	8b 00                	mov    (%eax),%eax
 c03:	85 c0                	test   %eax,%eax
 c05:	7e 2c                	jle    c33 <sem_acquire+0x3b>
			//printf(1, "COUNT IS = %d\n", s->count);
			//printf(1, "acquiring lock\n");
			lock_acquire(&s->lock);									//acquire count lock
 c07:	8b 45 08             	mov    0x8(%ebp),%eax
 c0a:	83 c0 10             	add    $0x10,%eax
 c0d:	89 04 24             	mov    %eax,(%esp)
 c10:	e8 97 fd ff ff       	call   9ac <lock_acquire>
			//printf(1, "acquired lock\n");
			s->count = s->count - 1;																//decrement resource by one
 c15:	8b 45 08             	mov    0x8(%ebp),%eax
 c18:	8b 00                	mov    (%eax),%eax
 c1a:	8d 50 ff             	lea    -0x1(%eax),%edx
 c1d:	8b 45 08             	mov    0x8(%ebp),%eax
 c20:	89 10                	mov    %edx,(%eax)
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
 c22:	8b 45 08             	mov    0x8(%ebp),%eax
 c25:	83 c0 10             	add    $0x10,%eax
 c28:	89 04 24             	mov    %eax,(%esp)
 c2b:	e8 9b fd ff ff       	call   9cb <lock_release>
			break;
 c30:	90                   	nop
			add_q(&s->threads, getpid());						//add thread to sleep queueu
			//printf(1, "asleep \n");
			tsleep();
		}
	}
}
 c31:	c9                   	leave  
 c32:	c3                   	ret    
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
			break;
		}
		else {																		//if there are no available resources
			printf(1, "Waiting for semaphore\n");
 c33:	c7 44 24 04 14 0d 00 	movl   $0xd14,0x4(%esp)
 c3a:	00 
 c3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 c42:	e8 76 f9 ff ff       	call   5bd <printf>
			//printf(1, "%d", getpid());
			add_q(&s->threads, getpid());						//add thread to sleep queueu
 c47:	e8 50 f8 ff ff       	call   49c <getpid>
 c4c:	8b 55 08             	mov    0x8(%ebp),%edx
 c4f:	83 c2 04             	add    $0x4,%edx
 c52:	89 44 24 04          	mov    %eax,0x4(%esp)
 c56:	89 14 24             	mov    %edx,(%esp)
 c59:	e8 78 fe ff ff       	call   ad6 <add_q>
			//printf(1, "asleep \n");
			tsleep();
 c5e:	e8 69 f8 ff ff       	call   4cc <tsleep>
		}
	}
 c63:	eb 99                	jmp    bfe <sem_acquire+0x6>

00000c65 <sem_signal>:
}

void sem_signal(struct Semaphore *s) {
 c65:	55                   	push   %ebp
 c66:	89 e5                	mov    %esp,%ebp
 c68:	83 ec 18             	sub    $0x18,%esp
	lock_acquire(&s->lock);
 c6b:	8b 45 08             	mov    0x8(%ebp),%eax
 c6e:	83 c0 10             	add    $0x10,%eax
 c71:	89 04 24             	mov    %eax,(%esp)
 c74:	e8 33 fd ff ff       	call   9ac <lock_acquire>
	s->count++;
 c79:	8b 45 08             	mov    0x8(%ebp),%eax
 c7c:	8b 00                	mov    (%eax),%eax
 c7e:	8d 50 01             	lea    0x1(%eax),%edx
 c81:	8b 45 08             	mov    0x8(%ebp),%eax
 c84:	89 10                	mov    %edx,(%eax)
	lock_release(&s->lock);
 c86:	8b 45 08             	mov    0x8(%ebp),%eax
 c89:	83 c0 10             	add    $0x10,%eax
 c8c:	89 04 24             	mov    %eax,(%esp)
 c8f:	e8 37 fd ff ff       	call   9cb <lock_release>
	if (!empty_q(&s->threads)) {
 c94:	8b 45 08             	mov    0x8(%ebp),%eax
 c97:	83 c0 04             	add    $0x4,%eax
 c9a:	89 04 24             	mov    %eax,(%esp)
 c9d:	e8 94 fe ff ff       	call   b36 <empty_q>
 ca2:	85 c0                	test   %eax,%eax
 ca4:	75 16                	jne    cbc <sem_signal+0x57>
		twakeup(pop_q(&s->threads));							//remove thread from queue and wake up
 ca6:	8b 45 08             	mov    0x8(%ebp),%eax
 ca9:	83 c0 04             	add    $0x4,%eax
 cac:	89 04 24             	mov    %eax,(%esp)
 caf:	e8 9c fe ff ff       	call   b50 <pop_q>
 cb4:	89 04 24             	mov    %eax,(%esp)
 cb7:	e8 18 f8 ff ff       	call   4d4 <twakeup>
	}
}
 cbc:	c9                   	leave  
 cbd:	c3                   	ret    
