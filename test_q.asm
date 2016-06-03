
_test_q:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"
#include "queue.h"

int main(){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
//        add_q(q,i);
//    }
//    for(;!empty_q(q);){
//        printf(1,"pop %d\n",pop_q(q));
//    }
    exit();
   6:	e8 65 02 00 00       	call   270 <exit>
   b:	90                   	nop

0000000c <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
   c:	55                   	push   %ebp
   d:	89 e5                	mov    %esp,%ebp
   f:	57                   	push   %edi
  10:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
  11:	8b 4d 08             	mov    0x8(%ebp),%ecx
  14:	8b 55 10             	mov    0x10(%ebp),%edx
  17:	8b 45 0c             	mov    0xc(%ebp),%eax
  1a:	89 cb                	mov    %ecx,%ebx
  1c:	89 df                	mov    %ebx,%edi
  1e:	89 d1                	mov    %edx,%ecx
  20:	fc                   	cld    
  21:	f3 aa                	rep stos %al,%es:(%edi)
  23:	89 ca                	mov    %ecx,%edx
  25:	89 fb                	mov    %edi,%ebx
  27:	89 5d 08             	mov    %ebx,0x8(%ebp)
  2a:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
  2d:	5b                   	pop    %ebx
  2e:	5f                   	pop    %edi
  2f:	5d                   	pop    %ebp
  30:	c3                   	ret    

00000031 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
  31:	55                   	push   %ebp
  32:	89 e5                	mov    %esp,%ebp
  34:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
  37:	8b 45 08             	mov    0x8(%ebp),%eax
  3a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
  3d:	8b 45 0c             	mov    0xc(%ebp),%eax
  40:	0f b6 10             	movzbl (%eax),%edx
  43:	8b 45 08             	mov    0x8(%ebp),%eax
  46:	88 10                	mov    %dl,(%eax)
  48:	8b 45 08             	mov    0x8(%ebp),%eax
  4b:	0f b6 00             	movzbl (%eax),%eax
  4e:	84 c0                	test   %al,%al
  50:	0f 95 c0             	setne  %al
  53:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  57:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  5b:	84 c0                	test   %al,%al
  5d:	75 de                	jne    3d <strcpy+0xc>
    ;
  return os;
  5f:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  62:	c9                   	leave  
  63:	c3                   	ret    

00000064 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  64:	55                   	push   %ebp
  65:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
  67:	eb 08                	jmp    71 <strcmp+0xd>
    p++, q++;
  69:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  6d:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  71:	8b 45 08             	mov    0x8(%ebp),%eax
  74:	0f b6 00             	movzbl (%eax),%eax
  77:	84 c0                	test   %al,%al
  79:	74 10                	je     8b <strcmp+0x27>
  7b:	8b 45 08             	mov    0x8(%ebp),%eax
  7e:	0f b6 10             	movzbl (%eax),%edx
  81:	8b 45 0c             	mov    0xc(%ebp),%eax
  84:	0f b6 00             	movzbl (%eax),%eax
  87:	38 c2                	cmp    %al,%dl
  89:	74 de                	je     69 <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
  8b:	8b 45 08             	mov    0x8(%ebp),%eax
  8e:	0f b6 00             	movzbl (%eax),%eax
  91:	0f b6 d0             	movzbl %al,%edx
  94:	8b 45 0c             	mov    0xc(%ebp),%eax
  97:	0f b6 00             	movzbl (%eax),%eax
  9a:	0f b6 c0             	movzbl %al,%eax
  9d:	89 d1                	mov    %edx,%ecx
  9f:	29 c1                	sub    %eax,%ecx
  a1:	89 c8                	mov    %ecx,%eax
}
  a3:	5d                   	pop    %ebp
  a4:	c3                   	ret    

000000a5 <strlen>:

uint
strlen(char *s)
{
  a5:	55                   	push   %ebp
  a6:	89 e5                	mov    %esp,%ebp
  a8:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
  ab:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  b2:	eb 04                	jmp    b8 <strlen+0x13>
  b4:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  bb:	03 45 08             	add    0x8(%ebp),%eax
  be:	0f b6 00             	movzbl (%eax),%eax
  c1:	84 c0                	test   %al,%al
  c3:	75 ef                	jne    b4 <strlen+0xf>
    ;
  return n;
  c5:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  c8:	c9                   	leave  
  c9:	c3                   	ret    

000000ca <memset>:

void*
memset(void *dst, int c, uint n)
{
  ca:	55                   	push   %ebp
  cb:	89 e5                	mov    %esp,%ebp
  cd:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
  d0:	8b 45 10             	mov    0x10(%ebp),%eax
  d3:	89 44 24 08          	mov    %eax,0x8(%esp)
  d7:	8b 45 0c             	mov    0xc(%ebp),%eax
  da:	89 44 24 04          	mov    %eax,0x4(%esp)
  de:	8b 45 08             	mov    0x8(%ebp),%eax
  e1:	89 04 24             	mov    %eax,(%esp)
  e4:	e8 23 ff ff ff       	call   c <stosb>
  return dst;
  e9:	8b 45 08             	mov    0x8(%ebp),%eax
}
  ec:	c9                   	leave  
  ed:	c3                   	ret    

000000ee <strchr>:

char*
strchr(const char *s, char c)
{
  ee:	55                   	push   %ebp
  ef:	89 e5                	mov    %esp,%ebp
  f1:	83 ec 04             	sub    $0x4,%esp
  f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  f7:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
  fa:	eb 14                	jmp    110 <strchr+0x22>
    if(*s == c)
  fc:	8b 45 08             	mov    0x8(%ebp),%eax
  ff:	0f b6 00             	movzbl (%eax),%eax
 102:	3a 45 fc             	cmp    -0x4(%ebp),%al
 105:	75 05                	jne    10c <strchr+0x1e>
      return (char*)s;
 107:	8b 45 08             	mov    0x8(%ebp),%eax
 10a:	eb 13                	jmp    11f <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 10c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 110:	8b 45 08             	mov    0x8(%ebp),%eax
 113:	0f b6 00             	movzbl (%eax),%eax
 116:	84 c0                	test   %al,%al
 118:	75 e2                	jne    fc <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
 11a:	b8 00 00 00 00       	mov    $0x0,%eax
}
 11f:	c9                   	leave  
 120:	c3                   	ret    

00000121 <gets>:

char*
gets(char *buf, int max)
{
 121:	55                   	push   %ebp
 122:	89 e5                	mov    %esp,%ebp
 124:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 127:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 12e:	eb 44                	jmp    174 <gets+0x53>
    cc = read(0, &c, 1);
 130:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 137:	00 
 138:	8d 45 ef             	lea    -0x11(%ebp),%eax
 13b:	89 44 24 04          	mov    %eax,0x4(%esp)
 13f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 146:	e8 3d 01 00 00       	call   288 <read>
 14b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(cc < 1)
 14e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 152:	7e 2d                	jle    181 <gets+0x60>
      break;
    buf[i++] = c;
 154:	8b 45 f0             	mov    -0x10(%ebp),%eax
 157:	03 45 08             	add    0x8(%ebp),%eax
 15a:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
 15e:	88 10                	mov    %dl,(%eax)
 160:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    if(c == '\n' || c == '\r')
 164:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 168:	3c 0a                	cmp    $0xa,%al
 16a:	74 16                	je     182 <gets+0x61>
 16c:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 170:	3c 0d                	cmp    $0xd,%al
 172:	74 0e                	je     182 <gets+0x61>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 174:	8b 45 f0             	mov    -0x10(%ebp),%eax
 177:	83 c0 01             	add    $0x1,%eax
 17a:	3b 45 0c             	cmp    0xc(%ebp),%eax
 17d:	7c b1                	jl     130 <gets+0xf>
 17f:	eb 01                	jmp    182 <gets+0x61>
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
 181:	90                   	nop
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 182:	8b 45 f0             	mov    -0x10(%ebp),%eax
 185:	03 45 08             	add    0x8(%ebp),%eax
 188:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 18b:	8b 45 08             	mov    0x8(%ebp),%eax
}
 18e:	c9                   	leave  
 18f:	c3                   	ret    

00000190 <stat>:

int
stat(char *n, struct stat *st)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 196:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 19d:	00 
 19e:	8b 45 08             	mov    0x8(%ebp),%eax
 1a1:	89 04 24             	mov    %eax,(%esp)
 1a4:	e8 07 01 00 00       	call   2b0 <open>
 1a9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(fd < 0)
 1ac:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 1b0:	79 07                	jns    1b9 <stat+0x29>
    return -1;
 1b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 1b7:	eb 23                	jmp    1dc <stat+0x4c>
  r = fstat(fd, st);
 1b9:	8b 45 0c             	mov    0xc(%ebp),%eax
 1bc:	89 44 24 04          	mov    %eax,0x4(%esp)
 1c0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1c3:	89 04 24             	mov    %eax,(%esp)
 1c6:	e8 fd 00 00 00       	call   2c8 <fstat>
 1cb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  close(fd);
 1ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1d1:	89 04 24             	mov    %eax,(%esp)
 1d4:	e8 bf 00 00 00       	call   298 <close>
  return r;
 1d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
 1dc:	c9                   	leave  
 1dd:	c3                   	ret    

000001de <atoi>:

int
atoi(const char *s)
{
 1de:	55                   	push   %ebp
 1df:	89 e5                	mov    %esp,%ebp
 1e1:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 1e4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 1eb:	eb 24                	jmp    211 <atoi+0x33>
    n = n*10 + *s++ - '0';
 1ed:	8b 55 fc             	mov    -0x4(%ebp),%edx
 1f0:	89 d0                	mov    %edx,%eax
 1f2:	c1 e0 02             	shl    $0x2,%eax
 1f5:	01 d0                	add    %edx,%eax
 1f7:	01 c0                	add    %eax,%eax
 1f9:	89 c2                	mov    %eax,%edx
 1fb:	8b 45 08             	mov    0x8(%ebp),%eax
 1fe:	0f b6 00             	movzbl (%eax),%eax
 201:	0f be c0             	movsbl %al,%eax
 204:	8d 04 02             	lea    (%edx,%eax,1),%eax
 207:	83 e8 30             	sub    $0x30,%eax
 20a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 20d:	83 45 08 01          	addl   $0x1,0x8(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 211:	8b 45 08             	mov    0x8(%ebp),%eax
 214:	0f b6 00             	movzbl (%eax),%eax
 217:	3c 2f                	cmp    $0x2f,%al
 219:	7e 0a                	jle    225 <atoi+0x47>
 21b:	8b 45 08             	mov    0x8(%ebp),%eax
 21e:	0f b6 00             	movzbl (%eax),%eax
 221:	3c 39                	cmp    $0x39,%al
 223:	7e c8                	jle    1ed <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
 225:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 228:	c9                   	leave  
 229:	c3                   	ret    

0000022a <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 22a:	55                   	push   %ebp
 22b:	89 e5                	mov    %esp,%ebp
 22d:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
 230:	8b 45 08             	mov    0x8(%ebp),%eax
 233:	89 45 f8             	mov    %eax,-0x8(%ebp)
  src = vsrc;
 236:	8b 45 0c             	mov    0xc(%ebp),%eax
 239:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while(n-- > 0)
 23c:	eb 13                	jmp    251 <memmove+0x27>
    *dst++ = *src++;
 23e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 241:	0f b6 10             	movzbl (%eax),%edx
 244:	8b 45 f8             	mov    -0x8(%ebp),%eax
 247:	88 10                	mov    %dl,(%eax)
 249:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 24d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 251:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 255:	0f 9f c0             	setg   %al
 258:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 25c:	84 c0                	test   %al,%al
 25e:	75 de                	jne    23e <memmove+0x14>
    *dst++ = *src++;
  return vdst;
 260:	8b 45 08             	mov    0x8(%ebp),%eax
}
 263:	c9                   	leave  
 264:	c3                   	ret    
 265:	90                   	nop
 266:	90                   	nop
 267:	90                   	nop

00000268 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 268:	b8 01 00 00 00       	mov    $0x1,%eax
 26d:	cd 40                	int    $0x40
 26f:	c3                   	ret    

00000270 <exit>:
SYSCALL(exit)
 270:	b8 02 00 00 00       	mov    $0x2,%eax
 275:	cd 40                	int    $0x40
 277:	c3                   	ret    

00000278 <wait>:
SYSCALL(wait)
 278:	b8 03 00 00 00       	mov    $0x3,%eax
 27d:	cd 40                	int    $0x40
 27f:	c3                   	ret    

00000280 <pipe>:
SYSCALL(pipe)
 280:	b8 04 00 00 00       	mov    $0x4,%eax
 285:	cd 40                	int    $0x40
 287:	c3                   	ret    

00000288 <read>:
SYSCALL(read)
 288:	b8 05 00 00 00       	mov    $0x5,%eax
 28d:	cd 40                	int    $0x40
 28f:	c3                   	ret    

00000290 <write>:
SYSCALL(write)
 290:	b8 10 00 00 00       	mov    $0x10,%eax
 295:	cd 40                	int    $0x40
 297:	c3                   	ret    

00000298 <close>:
SYSCALL(close)
 298:	b8 15 00 00 00       	mov    $0x15,%eax
 29d:	cd 40                	int    $0x40
 29f:	c3                   	ret    

000002a0 <kill>:
SYSCALL(kill)
 2a0:	b8 06 00 00 00       	mov    $0x6,%eax
 2a5:	cd 40                	int    $0x40
 2a7:	c3                   	ret    

000002a8 <exec>:
SYSCALL(exec)
 2a8:	b8 07 00 00 00       	mov    $0x7,%eax
 2ad:	cd 40                	int    $0x40
 2af:	c3                   	ret    

000002b0 <open>:
SYSCALL(open)
 2b0:	b8 0f 00 00 00       	mov    $0xf,%eax
 2b5:	cd 40                	int    $0x40
 2b7:	c3                   	ret    

000002b8 <mknod>:
SYSCALL(mknod)
 2b8:	b8 11 00 00 00       	mov    $0x11,%eax
 2bd:	cd 40                	int    $0x40
 2bf:	c3                   	ret    

000002c0 <unlink>:
SYSCALL(unlink)
 2c0:	b8 12 00 00 00       	mov    $0x12,%eax
 2c5:	cd 40                	int    $0x40
 2c7:	c3                   	ret    

000002c8 <fstat>:
SYSCALL(fstat)
 2c8:	b8 08 00 00 00       	mov    $0x8,%eax
 2cd:	cd 40                	int    $0x40
 2cf:	c3                   	ret    

000002d0 <link>:
SYSCALL(link)
 2d0:	b8 13 00 00 00       	mov    $0x13,%eax
 2d5:	cd 40                	int    $0x40
 2d7:	c3                   	ret    

000002d8 <mkdir>:
SYSCALL(mkdir)
 2d8:	b8 14 00 00 00       	mov    $0x14,%eax
 2dd:	cd 40                	int    $0x40
 2df:	c3                   	ret    

000002e0 <chdir>:
SYSCALL(chdir)
 2e0:	b8 09 00 00 00       	mov    $0x9,%eax
 2e5:	cd 40                	int    $0x40
 2e7:	c3                   	ret    

000002e8 <dup>:
SYSCALL(dup)
 2e8:	b8 0a 00 00 00       	mov    $0xa,%eax
 2ed:	cd 40                	int    $0x40
 2ef:	c3                   	ret    

000002f0 <getpid>:
SYSCALL(getpid)
 2f0:	b8 0b 00 00 00       	mov    $0xb,%eax
 2f5:	cd 40                	int    $0x40
 2f7:	c3                   	ret    

000002f8 <sbrk>:
SYSCALL(sbrk)
 2f8:	b8 0c 00 00 00       	mov    $0xc,%eax
 2fd:	cd 40                	int    $0x40
 2ff:	c3                   	ret    

00000300 <sleep>:
SYSCALL(sleep)
 300:	b8 0d 00 00 00       	mov    $0xd,%eax
 305:	cd 40                	int    $0x40
 307:	c3                   	ret    

00000308 <uptime>:
SYSCALL(uptime)
 308:	b8 0e 00 00 00       	mov    $0xe,%eax
 30d:	cd 40                	int    $0x40
 30f:	c3                   	ret    

00000310 <clone>:
SYSCALL(clone)
 310:	b8 16 00 00 00       	mov    $0x16,%eax
 315:	cd 40                	int    $0x40
 317:	c3                   	ret    

00000318 <texit>:
SYSCALL(texit)
 318:	b8 17 00 00 00       	mov    $0x17,%eax
 31d:	cd 40                	int    $0x40
 31f:	c3                   	ret    

00000320 <tsleep>:
SYSCALL(tsleep)
 320:	b8 18 00 00 00       	mov    $0x18,%eax
 325:	cd 40                	int    $0x40
 327:	c3                   	ret    

00000328 <twakeup>:
SYSCALL(twakeup)
 328:	b8 19 00 00 00       	mov    $0x19,%eax
 32d:	cd 40                	int    $0x40
 32f:	c3                   	ret    

00000330 <thread_yield>:
SYSCALL(thread_yield)
 330:	b8 1a 00 00 00       	mov    $0x1a,%eax
 335:	cd 40                	int    $0x40
 337:	c3                   	ret    

00000338 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 338:	55                   	push   %ebp
 339:	89 e5                	mov    %esp,%ebp
 33b:	83 ec 28             	sub    $0x28,%esp
 33e:	8b 45 0c             	mov    0xc(%ebp),%eax
 341:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 344:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 34b:	00 
 34c:	8d 45 f4             	lea    -0xc(%ebp),%eax
 34f:	89 44 24 04          	mov    %eax,0x4(%esp)
 353:	8b 45 08             	mov    0x8(%ebp),%eax
 356:	89 04 24             	mov    %eax,(%esp)
 359:	e8 32 ff ff ff       	call   290 <write>
}
 35e:	c9                   	leave  
 35f:	c3                   	ret    

00000360 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	83 ec 44             	sub    $0x44,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 367:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 36e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 372:	74 17                	je     38b <printint+0x2b>
 374:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 378:	79 11                	jns    38b <printint+0x2b>
    neg = 1;
 37a:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 381:	8b 45 0c             	mov    0xc(%ebp),%eax
 384:	f7 d8                	neg    %eax
 386:	89 45 f4             	mov    %eax,-0xc(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 389:	eb 06                	jmp    391 <printint+0x31>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 38b:	8b 45 0c             	mov    0xc(%ebp),%eax
 38e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }

  i = 0;
 391:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  do{
    buf[i++] = digits[x % base];
 398:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 39b:	8b 5d 10             	mov    0x10(%ebp),%ebx
 39e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 3a1:	ba 00 00 00 00       	mov    $0x0,%edx
 3a6:	f7 f3                	div    %ebx
 3a8:	89 d0                	mov    %edx,%eax
 3aa:	0f b6 80 5c 0b 00 00 	movzbl 0xb5c(%eax),%eax
 3b1:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
 3b5:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  }while((x /= base) != 0);
 3b9:	8b 45 10             	mov    0x10(%ebp),%eax
 3bc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 3bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 3c2:	ba 00 00 00 00       	mov    $0x0,%edx
 3c7:	f7 75 d4             	divl   -0x2c(%ebp)
 3ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
 3cd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 3d1:	75 c5                	jne    398 <printint+0x38>
  if(neg)
 3d3:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 3d7:	74 28                	je     401 <printint+0xa1>
    buf[i++] = '-';
 3d9:	8b 45 ec             	mov    -0x14(%ebp),%eax
 3dc:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
 3e1:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)

  while(--i >= 0)
 3e5:	eb 1a                	jmp    401 <printint+0xa1>
    putc(fd, buf[i]);
 3e7:	8b 45 ec             	mov    -0x14(%ebp),%eax
 3ea:	0f b6 44 05 dc       	movzbl -0x24(%ebp,%eax,1),%eax
 3ef:	0f be c0             	movsbl %al,%eax
 3f2:	89 44 24 04          	mov    %eax,0x4(%esp)
 3f6:	8b 45 08             	mov    0x8(%ebp),%eax
 3f9:	89 04 24             	mov    %eax,(%esp)
 3fc:	e8 37 ff ff ff       	call   338 <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 401:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
 405:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 409:	79 dc                	jns    3e7 <printint+0x87>
    putc(fd, buf[i]);
}
 40b:	83 c4 44             	add    $0x44,%esp
 40e:	5b                   	pop    %ebx
 40f:	5d                   	pop    %ebp
 410:	c3                   	ret    

00000411 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 411:	55                   	push   %ebp
 412:	89 e5                	mov    %esp,%ebp
 414:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 417:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 41e:	8d 45 0c             	lea    0xc(%ebp),%eax
 421:	83 c0 04             	add    $0x4,%eax
 424:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for(i = 0; fmt[i]; i++){
 427:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 42e:	e9 7e 01 00 00       	jmp    5b1 <printf+0x1a0>
    c = fmt[i] & 0xff;
 433:	8b 55 0c             	mov    0xc(%ebp),%edx
 436:	8b 45 ec             	mov    -0x14(%ebp),%eax
 439:	8d 04 02             	lea    (%edx,%eax,1),%eax
 43c:	0f b6 00             	movzbl (%eax),%eax
 43f:	0f be c0             	movsbl %al,%eax
 442:	25 ff 00 00 00       	and    $0xff,%eax
 447:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(state == 0){
 44a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 44e:	75 2c                	jne    47c <printf+0x6b>
      if(c == '%'){
 450:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 454:	75 0c                	jne    462 <printf+0x51>
        state = '%';
 456:	c7 45 f0 25 00 00 00 	movl   $0x25,-0x10(%ebp)
 45d:	e9 4b 01 00 00       	jmp    5ad <printf+0x19c>
      } else {
        putc(fd, c);
 462:	8b 45 e8             	mov    -0x18(%ebp),%eax
 465:	0f be c0             	movsbl %al,%eax
 468:	89 44 24 04          	mov    %eax,0x4(%esp)
 46c:	8b 45 08             	mov    0x8(%ebp),%eax
 46f:	89 04 24             	mov    %eax,(%esp)
 472:	e8 c1 fe ff ff       	call   338 <putc>
 477:	e9 31 01 00 00       	jmp    5ad <printf+0x19c>
      }
    } else if(state == '%'){
 47c:	83 7d f0 25          	cmpl   $0x25,-0x10(%ebp)
 480:	0f 85 27 01 00 00    	jne    5ad <printf+0x19c>
      if(c == 'd'){
 486:	83 7d e8 64          	cmpl   $0x64,-0x18(%ebp)
 48a:	75 2d                	jne    4b9 <printf+0xa8>
        printint(fd, *ap, 10, 1);
 48c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 48f:	8b 00                	mov    (%eax),%eax
 491:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 498:	00 
 499:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 4a0:	00 
 4a1:	89 44 24 04          	mov    %eax,0x4(%esp)
 4a5:	8b 45 08             	mov    0x8(%ebp),%eax
 4a8:	89 04 24             	mov    %eax,(%esp)
 4ab:	e8 b0 fe ff ff       	call   360 <printint>
        ap++;
 4b0:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 4b4:	e9 ed 00 00 00       	jmp    5a6 <printf+0x195>
      } else if(c == 'x' || c == 'p'){
 4b9:	83 7d e8 78          	cmpl   $0x78,-0x18(%ebp)
 4bd:	74 06                	je     4c5 <printf+0xb4>
 4bf:	83 7d e8 70          	cmpl   $0x70,-0x18(%ebp)
 4c3:	75 2d                	jne    4f2 <printf+0xe1>
        printint(fd, *ap, 16, 0);
 4c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4c8:	8b 00                	mov    (%eax),%eax
 4ca:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 4d1:	00 
 4d2:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 4d9:	00 
 4da:	89 44 24 04          	mov    %eax,0x4(%esp)
 4de:	8b 45 08             	mov    0x8(%ebp),%eax
 4e1:	89 04 24             	mov    %eax,(%esp)
 4e4:	e8 77 fe ff ff       	call   360 <printint>
        ap++;
 4e9:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 4ed:	e9 b4 00 00 00       	jmp    5a6 <printf+0x195>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 4f2:	83 7d e8 73          	cmpl   $0x73,-0x18(%ebp)
 4f6:	75 46                	jne    53e <printf+0x12d>
        s = (char*)*ap;
 4f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4fb:	8b 00                	mov    (%eax),%eax
 4fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        ap++;
 500:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
        if(s == 0)
 504:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 508:	75 27                	jne    531 <printf+0x120>
          s = "(null)";
 50a:	c7 45 e4 12 0b 00 00 	movl   $0xb12,-0x1c(%ebp)
        while(*s != 0){
 511:	eb 1f                	jmp    532 <printf+0x121>
          putc(fd, *s);
 513:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 516:	0f b6 00             	movzbl (%eax),%eax
 519:	0f be c0             	movsbl %al,%eax
 51c:	89 44 24 04          	mov    %eax,0x4(%esp)
 520:	8b 45 08             	mov    0x8(%ebp),%eax
 523:	89 04 24             	mov    %eax,(%esp)
 526:	e8 0d fe ff ff       	call   338 <putc>
          s++;
 52b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 52f:	eb 01                	jmp    532 <printf+0x121>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 531:	90                   	nop
 532:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 535:	0f b6 00             	movzbl (%eax),%eax
 538:	84 c0                	test   %al,%al
 53a:	75 d7                	jne    513 <printf+0x102>
 53c:	eb 68                	jmp    5a6 <printf+0x195>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 53e:	83 7d e8 63          	cmpl   $0x63,-0x18(%ebp)
 542:	75 1d                	jne    561 <printf+0x150>
        putc(fd, *ap);
 544:	8b 45 f4             	mov    -0xc(%ebp),%eax
 547:	8b 00                	mov    (%eax),%eax
 549:	0f be c0             	movsbl %al,%eax
 54c:	89 44 24 04          	mov    %eax,0x4(%esp)
 550:	8b 45 08             	mov    0x8(%ebp),%eax
 553:	89 04 24             	mov    %eax,(%esp)
 556:	e8 dd fd ff ff       	call   338 <putc>
        ap++;
 55b:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
 55f:	eb 45                	jmp    5a6 <printf+0x195>
      } else if(c == '%'){
 561:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
 565:	75 17                	jne    57e <printf+0x16d>
        putc(fd, c);
 567:	8b 45 e8             	mov    -0x18(%ebp),%eax
 56a:	0f be c0             	movsbl %al,%eax
 56d:	89 44 24 04          	mov    %eax,0x4(%esp)
 571:	8b 45 08             	mov    0x8(%ebp),%eax
 574:	89 04 24             	mov    %eax,(%esp)
 577:	e8 bc fd ff ff       	call   338 <putc>
 57c:	eb 28                	jmp    5a6 <printf+0x195>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 57e:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 585:	00 
 586:	8b 45 08             	mov    0x8(%ebp),%eax
 589:	89 04 24             	mov    %eax,(%esp)
 58c:	e8 a7 fd ff ff       	call   338 <putc>
        putc(fd, c);
 591:	8b 45 e8             	mov    -0x18(%ebp),%eax
 594:	0f be c0             	movsbl %al,%eax
 597:	89 44 24 04          	mov    %eax,0x4(%esp)
 59b:	8b 45 08             	mov    0x8(%ebp),%eax
 59e:	89 04 24             	mov    %eax,(%esp)
 5a1:	e8 92 fd ff ff       	call   338 <putc>
      }
      state = 0;
 5a6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5ad:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 5b1:	8b 55 0c             	mov    0xc(%ebp),%edx
 5b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 5b7:	8d 04 02             	lea    (%edx,%eax,1),%eax
 5ba:	0f b6 00             	movzbl (%eax),%eax
 5bd:	84 c0                	test   %al,%al
 5bf:	0f 85 6e fe ff ff    	jne    433 <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5c5:	c9                   	leave  
 5c6:	c3                   	ret    
 5c7:	90                   	nop

000005c8 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 5c8:	55                   	push   %ebp
 5c9:	89 e5                	mov    %esp,%ebp
 5cb:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 5ce:	8b 45 08             	mov    0x8(%ebp),%eax
 5d1:	83 e8 08             	sub    $0x8,%eax
 5d4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5d7:	a1 78 0b 00 00       	mov    0xb78,%eax
 5dc:	89 45 fc             	mov    %eax,-0x4(%ebp)
 5df:	eb 24                	jmp    605 <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 5e4:	8b 00                	mov    (%eax),%eax
 5e6:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 5e9:	77 12                	ja     5fd <free+0x35>
 5eb:	8b 45 f8             	mov    -0x8(%ebp),%eax
 5ee:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 5f1:	77 24                	ja     617 <free+0x4f>
 5f3:	8b 45 fc             	mov    -0x4(%ebp),%eax
 5f6:	8b 00                	mov    (%eax),%eax
 5f8:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 5fb:	77 1a                	ja     617 <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5fd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 600:	8b 00                	mov    (%eax),%eax
 602:	89 45 fc             	mov    %eax,-0x4(%ebp)
 605:	8b 45 f8             	mov    -0x8(%ebp),%eax
 608:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 60b:	76 d4                	jbe    5e1 <free+0x19>
 60d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 610:	8b 00                	mov    (%eax),%eax
 612:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 615:	76 ca                	jbe    5e1 <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
 617:	8b 45 f8             	mov    -0x8(%ebp),%eax
 61a:	8b 40 04             	mov    0x4(%eax),%eax
 61d:	c1 e0 03             	shl    $0x3,%eax
 620:	89 c2                	mov    %eax,%edx
 622:	03 55 f8             	add    -0x8(%ebp),%edx
 625:	8b 45 fc             	mov    -0x4(%ebp),%eax
 628:	8b 00                	mov    (%eax),%eax
 62a:	39 c2                	cmp    %eax,%edx
 62c:	75 24                	jne    652 <free+0x8a>
    bp->s.size += p->s.ptr->s.size;
 62e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 631:	8b 50 04             	mov    0x4(%eax),%edx
 634:	8b 45 fc             	mov    -0x4(%ebp),%eax
 637:	8b 00                	mov    (%eax),%eax
 639:	8b 40 04             	mov    0x4(%eax),%eax
 63c:	01 c2                	add    %eax,%edx
 63e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 641:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 644:	8b 45 fc             	mov    -0x4(%ebp),%eax
 647:	8b 00                	mov    (%eax),%eax
 649:	8b 10                	mov    (%eax),%edx
 64b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 64e:	89 10                	mov    %edx,(%eax)
 650:	eb 0a                	jmp    65c <free+0x94>
  } else
    bp->s.ptr = p->s.ptr;
 652:	8b 45 fc             	mov    -0x4(%ebp),%eax
 655:	8b 10                	mov    (%eax),%edx
 657:	8b 45 f8             	mov    -0x8(%ebp),%eax
 65a:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 65c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 65f:	8b 40 04             	mov    0x4(%eax),%eax
 662:	c1 e0 03             	shl    $0x3,%eax
 665:	03 45 fc             	add    -0x4(%ebp),%eax
 668:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 66b:	75 20                	jne    68d <free+0xc5>
    p->s.size += bp->s.size;
 66d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 670:	8b 50 04             	mov    0x4(%eax),%edx
 673:	8b 45 f8             	mov    -0x8(%ebp),%eax
 676:	8b 40 04             	mov    0x4(%eax),%eax
 679:	01 c2                	add    %eax,%edx
 67b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 67e:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 681:	8b 45 f8             	mov    -0x8(%ebp),%eax
 684:	8b 10                	mov    (%eax),%edx
 686:	8b 45 fc             	mov    -0x4(%ebp),%eax
 689:	89 10                	mov    %edx,(%eax)
 68b:	eb 08                	jmp    695 <free+0xcd>
  } else
    p->s.ptr = bp;
 68d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 690:	8b 55 f8             	mov    -0x8(%ebp),%edx
 693:	89 10                	mov    %edx,(%eax)
  freep = p;
 695:	8b 45 fc             	mov    -0x4(%ebp),%eax
 698:	a3 78 0b 00 00       	mov    %eax,0xb78
}
 69d:	c9                   	leave  
 69e:	c3                   	ret    

0000069f <morecore>:

static Header*
morecore(uint nu)
{
 69f:	55                   	push   %ebp
 6a0:	89 e5                	mov    %esp,%ebp
 6a2:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 6a5:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 6ac:	77 07                	ja     6b5 <morecore+0x16>
    nu = 4096;
 6ae:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 6b5:	8b 45 08             	mov    0x8(%ebp),%eax
 6b8:	c1 e0 03             	shl    $0x3,%eax
 6bb:	89 04 24             	mov    %eax,(%esp)
 6be:	e8 35 fc ff ff       	call   2f8 <sbrk>
 6c3:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(p == (char*)-1)
 6c6:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 6ca:	75 07                	jne    6d3 <morecore+0x34>
    return 0;
 6cc:	b8 00 00 00 00       	mov    $0x0,%eax
 6d1:	eb 22                	jmp    6f5 <morecore+0x56>
  hp = (Header*)p;
 6d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 6d6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  hp->s.size = nu;
 6d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 6dc:	8b 55 08             	mov    0x8(%ebp),%edx
 6df:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 6e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 6e5:	83 c0 08             	add    $0x8,%eax
 6e8:	89 04 24             	mov    %eax,(%esp)
 6eb:	e8 d8 fe ff ff       	call   5c8 <free>
  return freep;
 6f0:	a1 78 0b 00 00       	mov    0xb78,%eax
}
 6f5:	c9                   	leave  
 6f6:	c3                   	ret    

000006f7 <malloc>:

void*
malloc(uint nbytes)
{
 6f7:	55                   	push   %ebp
 6f8:	89 e5                	mov    %esp,%ebp
 6fa:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6fd:	8b 45 08             	mov    0x8(%ebp),%eax
 700:	83 c0 07             	add    $0x7,%eax
 703:	c1 e8 03             	shr    $0x3,%eax
 706:	83 c0 01             	add    $0x1,%eax
 709:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if((prevp = freep) == 0){
 70c:	a1 78 0b 00 00       	mov    0xb78,%eax
 711:	89 45 f0             	mov    %eax,-0x10(%ebp)
 714:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 718:	75 23                	jne    73d <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 71a:	c7 45 f0 70 0b 00 00 	movl   $0xb70,-0x10(%ebp)
 721:	8b 45 f0             	mov    -0x10(%ebp),%eax
 724:	a3 78 0b 00 00       	mov    %eax,0xb78
 729:	a1 78 0b 00 00       	mov    0xb78,%eax
 72e:	a3 70 0b 00 00       	mov    %eax,0xb70
    base.s.size = 0;
 733:	c7 05 74 0b 00 00 00 	movl   $0x0,0xb74
 73a:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 73d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 740:	8b 00                	mov    (%eax),%eax
 742:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(p->s.size >= nunits){
 745:	8b 45 ec             	mov    -0x14(%ebp),%eax
 748:	8b 40 04             	mov    0x4(%eax),%eax
 74b:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 74e:	72 4d                	jb     79d <malloc+0xa6>
      if(p->s.size == nunits)
 750:	8b 45 ec             	mov    -0x14(%ebp),%eax
 753:	8b 40 04             	mov    0x4(%eax),%eax
 756:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 759:	75 0c                	jne    767 <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 75b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 75e:	8b 10                	mov    (%eax),%edx
 760:	8b 45 f0             	mov    -0x10(%ebp),%eax
 763:	89 10                	mov    %edx,(%eax)
 765:	eb 26                	jmp    78d <malloc+0x96>
      else {
        p->s.size -= nunits;
 767:	8b 45 ec             	mov    -0x14(%ebp),%eax
 76a:	8b 40 04             	mov    0x4(%eax),%eax
 76d:	89 c2                	mov    %eax,%edx
 76f:	2b 55 f4             	sub    -0xc(%ebp),%edx
 772:	8b 45 ec             	mov    -0x14(%ebp),%eax
 775:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 778:	8b 45 ec             	mov    -0x14(%ebp),%eax
 77b:	8b 40 04             	mov    0x4(%eax),%eax
 77e:	c1 e0 03             	shl    $0x3,%eax
 781:	01 45 ec             	add    %eax,-0x14(%ebp)
        p->s.size = nunits;
 784:	8b 45 ec             	mov    -0x14(%ebp),%eax
 787:	8b 55 f4             	mov    -0xc(%ebp),%edx
 78a:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 78d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 790:	a3 78 0b 00 00       	mov    %eax,0xb78
      return (void*)(p + 1);
 795:	8b 45 ec             	mov    -0x14(%ebp),%eax
 798:	83 c0 08             	add    $0x8,%eax
 79b:	eb 38                	jmp    7d5 <malloc+0xde>
    }
    if(p == freep)
 79d:	a1 78 0b 00 00       	mov    0xb78,%eax
 7a2:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 7a5:	75 1b                	jne    7c2 <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 7a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7aa:	89 04 24             	mov    %eax,(%esp)
 7ad:	e8 ed fe ff ff       	call   69f <morecore>
 7b2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 7b5:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 7b9:	75 07                	jne    7c2 <malloc+0xcb>
        return 0;
 7bb:	b8 00 00 00 00       	mov    $0x0,%eax
 7c0:	eb 13                	jmp    7d5 <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 7c5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 7c8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 7cb:	8b 00                	mov    (%eax),%eax
 7cd:	89 45 ec             	mov    %eax,-0x14(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
 7d0:	e9 70 ff ff ff       	jmp    745 <malloc+0x4e>
}
 7d5:	c9                   	leave  
 7d6:	c3                   	ret    
 7d7:	90                   	nop

000007d8 <xchg>:
  asm volatile("sti");
}

static inline uint
xchg(volatile uint *addr, uint newval)
{
 7d8:	55                   	push   %ebp
 7d9:	89 e5                	mov    %esp,%ebp
 7db:	83 ec 10             	sub    $0x10,%esp
  uint result;
  
  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 7de:	8b 55 08             	mov    0x8(%ebp),%edx
 7e1:	8b 45 0c             	mov    0xc(%ebp),%eax
 7e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 7e7:	f0 87 02             	lock xchg %eax,(%edx)
 7ea:	89 45 fc             	mov    %eax,-0x4(%ebp)
               "+m" (*addr), "=a" (result) :
               "1" (newval) :
               "cc");
  return result;
 7ed:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 7f0:	c9                   	leave  
 7f1:	c3                   	ret    

000007f2 <lock_init>:
#include "x86.h"
#include "proc.h"



void lock_init(lock_t *lock){
 7f2:	55                   	push   %ebp
 7f3:	89 e5                	mov    %esp,%ebp
    lock->locked = 0;
 7f5:	8b 45 08             	mov    0x8(%ebp),%eax
 7f8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 7fe:	5d                   	pop    %ebp
 7ff:	c3                   	ret    

00000800 <lock_acquire>:
void lock_acquire(lock_t *lock){
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	83 ec 08             	sub    $0x8,%esp
    while(xchg(&lock->locked,1) != 0);
 806:	8b 45 08             	mov    0x8(%ebp),%eax
 809:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 810:	00 
 811:	89 04 24             	mov    %eax,(%esp)
 814:	e8 bf ff ff ff       	call   7d8 <xchg>
 819:	85 c0                	test   %eax,%eax
 81b:	75 e9                	jne    806 <lock_acquire+0x6>
}
 81d:	c9                   	leave  
 81e:	c3                   	ret    

0000081f <lock_release>:
void lock_release(lock_t *lock){
 81f:	55                   	push   %ebp
 820:	89 e5                	mov    %esp,%ebp
 822:	83 ec 08             	sub    $0x8,%esp
    xchg(&lock->locked,0);
 825:	8b 45 08             	mov    0x8(%ebp),%eax
 828:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 82f:	00 
 830:	89 04 24             	mov    %eax,(%esp)
 833:	e8 a0 ff ff ff       	call   7d8 <xchg>
}
 838:	c9                   	leave  
 839:	c3                   	ret    

0000083a <thread_create>:

void *thread_create(void(*start_routine)(void*), void *arg){
 83a:	55                   	push   %ebp
 83b:	89 e5                	mov    %esp,%ebp
 83d:	83 ec 28             	sub    $0x28,%esp
    int tid;
    void * stack = malloc(2 * 4096);
 840:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
 847:	e8 ab fe ff ff       	call   6f7 <malloc>
 84c:	89 45 f0             	mov    %eax,-0x10(%ebp)
    void *garbage_stack = stack; 
 84f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 852:	89 45 f4             	mov    %eax,-0xc(%ebp)
   // printf(1,"start routine addr : %d\n",(uint)start_routine);


    if((uint)stack % 4096){
 855:	8b 45 f0             	mov    -0x10(%ebp),%eax
 858:	25 ff 0f 00 00       	and    $0xfff,%eax
 85d:	85 c0                	test   %eax,%eax
 85f:	74 15                	je     876 <thread_create+0x3c>
        stack = stack + (4096 - (uint)stack % 4096);
 861:	8b 45 f0             	mov    -0x10(%ebp),%eax
 864:	89 c2                	mov    %eax,%edx
 866:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 86c:	b8 00 10 00 00       	mov    $0x1000,%eax
 871:	29 d0                	sub    %edx,%eax
 873:	01 45 f0             	add    %eax,-0x10(%ebp)
    }
    if (stack == 0){
 876:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 87a:	75 1b                	jne    897 <thread_create+0x5d>

        printf(1,"malloc fail \n");
 87c:	c7 44 24 04 19 0b 00 	movl   $0xb19,0x4(%esp)
 883:	00 
 884:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 88b:	e8 81 fb ff ff       	call   411 <printf>
        return 0;
 890:	b8 00 00 00 00       	mov    $0x0,%eax
 895:	eb 6f                	jmp    906 <thread_create+0xcc>
    }

    tid = clone((uint)stack,PSIZE,(uint)start_routine,(int)arg);
 897:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 89a:	8b 55 08             	mov    0x8(%ebp),%edx
 89d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8a0:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8a4:	89 54 24 08          	mov    %edx,0x8(%esp)
 8a8:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
 8af:	00 
 8b0:	89 04 24             	mov    %eax,(%esp)
 8b3:	e8 58 fa ff ff       	call   310 <clone>
 8b8:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(tid < 0){
 8bb:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8bf:	79 1b                	jns    8dc <thread_create+0xa2>
        printf(1,"clone fails\n");
 8c1:	c7 44 24 04 27 0b 00 	movl   $0xb27,0x4(%esp)
 8c8:	00 
 8c9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8d0:	e8 3c fb ff ff       	call   411 <printf>
        return 0;
 8d5:	b8 00 00 00 00       	mov    $0x0,%eax
 8da:	eb 2a                	jmp    906 <thread_create+0xcc>
    }
    if(tid > 0){
 8dc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8e0:	7e 05                	jle    8e7 <thread_create+0xad>
        //store threads on thread table
        return garbage_stack;
 8e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8e5:	eb 1f                	jmp    906 <thread_create+0xcc>
    }
    if(tid == 0){
 8e7:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8eb:	75 14                	jne    901 <thread_create+0xc7>
        printf(1,"tid = 0 return \n");
 8ed:	c7 44 24 04 34 0b 00 	movl   $0xb34,0x4(%esp)
 8f4:	00 
 8f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8fc:	e8 10 fb ff ff       	call   411 <printf>
    }
//    wait();
//    free(garbage_stack);

    return 0;
 901:	b8 00 00 00 00       	mov    $0x0,%eax
}
 906:	c9                   	leave  
 907:	c3                   	ret    

00000908 <init_q>:
#include "queue.h"
#include "types.h"
#include "user.h"

void init_q(struct queue *q){
 908:	55                   	push   %ebp
 909:	89 e5                	mov    %esp,%ebp
    q->size = 0;
 90b:	8b 45 08             	mov    0x8(%ebp),%eax
 90e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    q->head = 0;
 914:	8b 45 08             	mov    0x8(%ebp),%eax
 917:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    q->tail = 0;
 91e:	8b 45 08             	mov    0x8(%ebp),%eax
 921:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
 928:	5d                   	pop    %ebp
 929:	c3                   	ret    

0000092a <add_q>:

void add_q(struct queue *q, int v){
 92a:	55                   	push   %ebp
 92b:	89 e5                	mov    %esp,%ebp
 92d:	83 ec 28             	sub    $0x28,%esp
    //printf(1, "here \n");
		struct node * n = malloc(sizeof(struct node));
 930:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 937:	e8 bb fd ff ff       	call   6f7 <malloc>
 93c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    n->next = 0;
 93f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 942:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    n->value = v;
 949:	8b 45 f4             	mov    -0xc(%ebp),%eax
 94c:	8b 55 0c             	mov    0xc(%ebp),%edx
 94f:	89 10                	mov    %edx,(%eax)
    if(q->head == 0){
 951:	8b 45 08             	mov    0x8(%ebp),%eax
 954:	8b 40 04             	mov    0x4(%eax),%eax
 957:	85 c0                	test   %eax,%eax
 959:	75 0b                	jne    966 <add_q+0x3c>
        q->head = n;
 95b:	8b 45 08             	mov    0x8(%ebp),%eax
 95e:	8b 55 f4             	mov    -0xc(%ebp),%edx
 961:	89 50 04             	mov    %edx,0x4(%eax)
 964:	eb 0c                	jmp    972 <add_q+0x48>
    }else{
        q->tail->next = n;
 966:	8b 45 08             	mov    0x8(%ebp),%eax
 969:	8b 40 08             	mov    0x8(%eax),%eax
 96c:	8b 55 f4             	mov    -0xc(%ebp),%edx
 96f:	89 50 04             	mov    %edx,0x4(%eax)
    }
    q->tail = n;
 972:	8b 45 08             	mov    0x8(%ebp),%eax
 975:	8b 55 f4             	mov    -0xc(%ebp),%edx
 978:	89 50 08             	mov    %edx,0x8(%eax)
    q->size++;
 97b:	8b 45 08             	mov    0x8(%ebp),%eax
 97e:	8b 00                	mov    (%eax),%eax
 980:	8d 50 01             	lea    0x1(%eax),%edx
 983:	8b 45 08             	mov    0x8(%ebp),%eax
 986:	89 10                	mov    %edx,(%eax)
}
 988:	c9                   	leave  
 989:	c3                   	ret    

0000098a <empty_q>:

int empty_q(struct queue *q){
 98a:	55                   	push   %ebp
 98b:	89 e5                	mov    %esp,%ebp
    if(q->size == 0)
 98d:	8b 45 08             	mov    0x8(%ebp),%eax
 990:	8b 00                	mov    (%eax),%eax
 992:	85 c0                	test   %eax,%eax
 994:	75 07                	jne    99d <empty_q+0x13>
        return 1;
 996:	b8 01 00 00 00       	mov    $0x1,%eax
 99b:	eb 05                	jmp    9a2 <empty_q+0x18>
    else
        return 0;
 99d:	b8 00 00 00 00       	mov    $0x0,%eax
} 
 9a2:	5d                   	pop    %ebp
 9a3:	c3                   	ret    

000009a4 <pop_q>:
int pop_q(struct queue *q){
 9a4:	55                   	push   %ebp
 9a5:	89 e5                	mov    %esp,%ebp
 9a7:	83 ec 28             	sub    $0x28,%esp
    int val;
    struct node *destroy;
    if(!empty_q(q)){
 9aa:	8b 45 08             	mov    0x8(%ebp),%eax
 9ad:	89 04 24             	mov    %eax,(%esp)
 9b0:	e8 d5 ff ff ff       	call   98a <empty_q>
 9b5:	85 c0                	test   %eax,%eax
 9b7:	75 5d                	jne    a16 <pop_q+0x72>
       val = q->head->value; 
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
 9bc:	8b 40 04             	mov    0x4(%eax),%eax
 9bf:	8b 00                	mov    (%eax),%eax
 9c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
       destroy = q->head;
 9c4:	8b 45 08             	mov    0x8(%ebp),%eax
 9c7:	8b 40 04             	mov    0x4(%eax),%eax
 9ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
       q->head = q->head->next;
 9cd:	8b 45 08             	mov    0x8(%ebp),%eax
 9d0:	8b 40 04             	mov    0x4(%eax),%eax
 9d3:	8b 50 04             	mov    0x4(%eax),%edx
 9d6:	8b 45 08             	mov    0x8(%ebp),%eax
 9d9:	89 50 04             	mov    %edx,0x4(%eax)
       free(destroy);
 9dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 9df:	89 04 24             	mov    %eax,(%esp)
 9e2:	e8 e1 fb ff ff       	call   5c8 <free>
       q->size--;
 9e7:	8b 45 08             	mov    0x8(%ebp),%eax
 9ea:	8b 00                	mov    (%eax),%eax
 9ec:	8d 50 ff             	lea    -0x1(%eax),%edx
 9ef:	8b 45 08             	mov    0x8(%ebp),%eax
 9f2:	89 10                	mov    %edx,(%eax)
       if(q->size == 0){
 9f4:	8b 45 08             	mov    0x8(%ebp),%eax
 9f7:	8b 00                	mov    (%eax),%eax
 9f9:	85 c0                	test   %eax,%eax
 9fb:	75 14                	jne    a11 <pop_q+0x6d>
            q->head = 0;
 9fd:	8b 45 08             	mov    0x8(%ebp),%eax
 a00:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
            q->tail = 0;
 a07:	8b 45 08             	mov    0x8(%ebp),%eax
 a0a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
       }
       return val;
 a11:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a14:	eb 05                	jmp    a1b <pop_q+0x77>
    }
    return -1;
 a16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 a1b:	c9                   	leave  
 a1c:	c3                   	ret    
 a1d:	90                   	nop
 a1e:	90                   	nop
 a1f:	90                   	nop

00000a20 <init_semaphore>:
#include "semaphore.h"
#include "user.h"

//lab 2
//Semaphore
void init_semaphore(struct Semaphore *s, int count_num) {
 a20:	55                   	push   %ebp
 a21:	89 e5                	mov    %esp,%ebp
 a23:	83 ec 18             	sub    $0x18,%esp
	s->count = count_num;
 a26:	8b 45 08             	mov    0x8(%ebp),%eax
 a29:	8b 55 0c             	mov    0xc(%ebp),%edx
 a2c:	89 10                	mov    %edx,(%eax)
	init_q(&s->threads);
 a2e:	8b 45 08             	mov    0x8(%ebp),%eax
 a31:	83 c0 04             	add    $0x4,%eax
 a34:	89 04 24             	mov    %eax,(%esp)
 a37:	e8 cc fe ff ff       	call   908 <init_q>
	lock_init(&s->lock);
 a3c:	8b 45 08             	mov    0x8(%ebp),%eax
 a3f:	83 c0 10             	add    $0x10,%eax
 a42:	89 04 24             	mov    %eax,(%esp)
 a45:	e8 a8 fd ff ff       	call   7f2 <lock_init>
}
 a4a:	c9                   	leave  
 a4b:	c3                   	ret    

00000a4c <sem_acquire>:

void sem_acquire(struct Semaphore *s) {
 a4c:	55                   	push   %ebp
 a4d:	89 e5                	mov    %esp,%ebp
 a4f:	83 ec 18             	sub    $0x18,%esp
	while(1) {
		if (s->count > 0) {												//if there are available resources
 a52:	8b 45 08             	mov    0x8(%ebp),%eax
 a55:	8b 00                	mov    (%eax),%eax
 a57:	85 c0                	test   %eax,%eax
 a59:	7e 2c                	jle    a87 <sem_acquire+0x3b>
			//printf(1, "COUNT IS = %d\n", s->count);
			//printf(1, "acquiring lock\n");
			lock_acquire(&s->lock);									//acquire count lock
 a5b:	8b 45 08             	mov    0x8(%ebp),%eax
 a5e:	83 c0 10             	add    $0x10,%eax
 a61:	89 04 24             	mov    %eax,(%esp)
 a64:	e8 97 fd ff ff       	call   800 <lock_acquire>
			//printf(1, "acquired lock\n");
			s->count = s->count - 1;																//decrement resource by one
 a69:	8b 45 08             	mov    0x8(%ebp),%eax
 a6c:	8b 00                	mov    (%eax),%eax
 a6e:	8d 50 ff             	lea    -0x1(%eax),%edx
 a71:	8b 45 08             	mov    0x8(%ebp),%eax
 a74:	89 10                	mov    %edx,(%eax)
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
 a76:	8b 45 08             	mov    0x8(%ebp),%eax
 a79:	83 c0 10             	add    $0x10,%eax
 a7c:	89 04 24             	mov    %eax,(%esp)
 a7f:	e8 9b fd ff ff       	call   81f <lock_release>
			break;
 a84:	90                   	nop
			add_q(&s->threads, getpid());						//add thread to sleep queueu
			//printf(1, "asleep \n");
			tsleep();
		}
	}
}
 a85:	c9                   	leave  
 a86:	c3                   	ret    
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
			break;
		}
		else {																		//if there are no available resources
			printf(1, "Waiting for semaphore\n");
 a87:	c7 44 24 04 45 0b 00 	movl   $0xb45,0x4(%esp)
 a8e:	00 
 a8f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a96:	e8 76 f9 ff ff       	call   411 <printf>
			//printf(1, "%d", getpid());
			add_q(&s->threads, getpid());						//add thread to sleep queueu
 a9b:	e8 50 f8 ff ff       	call   2f0 <getpid>
 aa0:	8b 55 08             	mov    0x8(%ebp),%edx
 aa3:	83 c2 04             	add    $0x4,%edx
 aa6:	89 44 24 04          	mov    %eax,0x4(%esp)
 aaa:	89 14 24             	mov    %edx,(%esp)
 aad:	e8 78 fe ff ff       	call   92a <add_q>
			//printf(1, "asleep \n");
			tsleep();
 ab2:	e8 69 f8 ff ff       	call   320 <tsleep>
		}
	}
 ab7:	eb 99                	jmp    a52 <sem_acquire+0x6>

00000ab9 <sem_signal>:
}

void sem_signal(struct Semaphore *s) {
 ab9:	55                   	push   %ebp
 aba:	89 e5                	mov    %esp,%ebp
 abc:	83 ec 18             	sub    $0x18,%esp
	lock_acquire(&s->lock);
 abf:	8b 45 08             	mov    0x8(%ebp),%eax
 ac2:	83 c0 10             	add    $0x10,%eax
 ac5:	89 04 24             	mov    %eax,(%esp)
 ac8:	e8 33 fd ff ff       	call   800 <lock_acquire>
	s->count++;
 acd:	8b 45 08             	mov    0x8(%ebp),%eax
 ad0:	8b 00                	mov    (%eax),%eax
 ad2:	8d 50 01             	lea    0x1(%eax),%edx
 ad5:	8b 45 08             	mov    0x8(%ebp),%eax
 ad8:	89 10                	mov    %edx,(%eax)
	lock_release(&s->lock);
 ada:	8b 45 08             	mov    0x8(%ebp),%eax
 add:	83 c0 10             	add    $0x10,%eax
 ae0:	89 04 24             	mov    %eax,(%esp)
 ae3:	e8 37 fd ff ff       	call   81f <lock_release>
	if (!empty_q(&s->threads)) {
 ae8:	8b 45 08             	mov    0x8(%ebp),%eax
 aeb:	83 c0 04             	add    $0x4,%eax
 aee:	89 04 24             	mov    %eax,(%esp)
 af1:	e8 94 fe ff ff       	call   98a <empty_q>
 af6:	85 c0                	test   %eax,%eax
 af8:	75 16                	jne    b10 <sem_signal+0x57>
		twakeup(pop_q(&s->threads));							//remove thread from queue and wake up
 afa:	8b 45 08             	mov    0x8(%ebp),%eax
 afd:	83 c0 04             	add    $0x4,%eax
 b00:	89 04 24             	mov    %eax,(%esp)
 b03:	e8 9c fe ff ff       	call   9a4 <pop_q>
 b08:	89 04 24             	mov    %eax,(%esp)
 b0b:	e8 18 f8 ff ff       	call   328 <twakeup>
	}
}
 b10:	c9                   	leave  
 b11:	c3                   	ret    
