
_test_monkey:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
int alpha = 0;

void monkey(void *arg_ptr);
void dominant(void *arg_ptr);

int main(int argc, char *argv[]){
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 20             	sub    $0x20,%esp
	init_semaphore(&tree, 3);
       9:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
      10:	00 
      11:	c7 04 24 e4 11 00 00 	movl   $0x11e4,(%esp)
      18:	e8 97 0f 00 00       	call   fb4 <init_semaphore>

	int pid = fork();
      1d:	e8 da 07 00 00       	call   7fc <fork>
      22:	89 44 24 10          	mov    %eax,0x10(%esp)
	if (pid == 0)
      26:	83 7c 24 10 00       	cmpl   $0x0,0x10(%esp)
      2b:	0f 85 58 04 00 00    	jne    489 <main+0x489>
	{
					int pid2 = fork();
      31:	e8 c6 07 00 00       	call   7fc <fork>
      36:	89 44 24 14          	mov    %eax,0x14(%esp)
					if(pid2 == 0)
      3a:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
      3f:	0f 85 48 02 00 00    	jne    28d <main+0x28d>
					{
									//monkey problem 1
									printf(1, "---Monkey Problem 1---\n");
      45:	c7 44 24 04 a8 10 00 	movl   $0x10a8,0x4(%esp)
      4c:	00 
      4d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      54:	e8 4c 09 00 00       	call   9a5 <printf>
									void *tid = thread_create(monkey,(void *)0);
      59:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      60:	00 
      61:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
      68:	e8 61 0d 00 00       	call   dce <thread_create>
      6d:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
      71:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
      76:	75 19                	jne    91 <main+0x91>
										printf(1,"thread_create fails\n");
      78:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
      7f:	00 
      80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      87:	e8 19 09 00 00       	call   9a5 <printf>
										exit();
      8c:	e8 73 07 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
      91:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      98:	00 
      99:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
      a0:	e8 29 0d 00 00       	call   dce <thread_create>
      a5:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
      a9:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
      ae:	75 19                	jne    c9 <main+0xc9>
										printf(1,"thread_create fails\n");
      b0:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
      b7:	00 
      b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      bf:	e8 e1 08 00 00       	call   9a5 <printf>
										exit();
      c4:	e8 3b 07 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
      c9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      d0:	00 
      d1:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
      d8:	e8 f1 0c 00 00       	call   dce <thread_create>
      dd:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
      e1:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
      e6:	75 19                	jne    101 <main+0x101>
										printf(1,"thread_create fails\n");
      e8:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
      ef:	00 
      f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      f7:	e8 a9 08 00 00       	call   9a5 <printf>
										exit();
      fc:	e8 03 07 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     101:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     108:	00 
     109:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     110:	e8 b9 0c 00 00       	call   dce <thread_create>
     115:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     119:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     11e:	75 19                	jne    139 <main+0x139>
										printf(1,"thread_create fails\n");
     120:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     127:	00 
     128:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     12f:	e8 71 08 00 00       	call   9a5 <printf>
										exit();
     134:	e8 cb 06 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     139:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     140:	00 
     141:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     148:	e8 81 0c 00 00       	call   dce <thread_create>
     14d:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     151:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     156:	75 19                	jne    171 <main+0x171>
										printf(1,"thread_create fails\n");
     158:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     15f:	00 
     160:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     167:	e8 39 08 00 00       	call   9a5 <printf>
										exit();
     16c:	e8 93 06 00 00       	call   804 <exit>
									}

									tid = thread_create(monkey,(void *)0);
     171:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     178:	00 
     179:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     180:	e8 49 0c 00 00       	call   dce <thread_create>
     185:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     189:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     18e:	75 19                	jne    1a9 <main+0x1a9>
										printf(1,"thread_create fails\n");
     190:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     197:	00 
     198:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     19f:	e8 01 08 00 00       	call   9a5 <printf>
										exit();
     1a4:	e8 5b 06 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     1a9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     1b0:	00 
     1b1:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     1b8:	e8 11 0c 00 00       	call   dce <thread_create>
     1bd:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     1c1:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     1c6:	75 19                	jne    1e1 <main+0x1e1>
										printf(1,"thread_create fails\n");
     1c8:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     1cf:	00 
     1d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1d7:	e8 c9 07 00 00       	call   9a5 <printf>
										exit();
     1dc:	e8 23 06 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     1e1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     1e8:	00 
     1e9:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     1f0:	e8 d9 0b 00 00       	call   dce <thread_create>
     1f5:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     1f9:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     1fe:	75 19                	jne    219 <main+0x219>
										printf(1,"thread_create fails\n");
     200:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     207:	00 
     208:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     20f:	e8 91 07 00 00       	call   9a5 <printf>
										exit();
     214:	e8 eb 05 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     219:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     220:	00 
     221:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     228:	e8 a1 0b 00 00       	call   dce <thread_create>
     22d:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     231:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     236:	75 19                	jne    251 <main+0x251>
										printf(1,"thread_create fails\n");
     238:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     23f:	00 
     240:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     247:	e8 59 07 00 00       	call   9a5 <printf>
										exit();
     24c:	e8 b3 05 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     251:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     258:	00 
     259:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     260:	e8 69 0b 00 00       	call   dce <thread_create>
     265:	89 44 24 18          	mov    %eax,0x18(%esp)
									if(tid == 0){
     269:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
     26e:	0f 85 f6 01 00 00    	jne    46a <main+0x46a>
										printf(1,"thread_create fails\n");
     274:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     27b:	00 
     27c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     283:	e8 1d 07 00 00       	call   9a5 <printf>
										exit();
     288:	e8 77 05 00 00       	call   804 <exit>
									}
					}
					else
					{				
									while(wait() >= 0);
     28d:	e8 7a 05 00 00       	call   80c <wait>
     292:	85 c0                	test   %eax,%eax
     294:	79 f7                	jns    28d <main+0x28d>
									//monkey problem 2
									printf(1, "---Monkey Problem 2---\n");
     296:	c7 44 24 04 d5 10 00 	movl   $0x10d5,0x4(%esp)
     29d:	00 
     29e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     2a5:	e8 fb 06 00 00       	call   9a5 <printf>
									void *tid = thread_create(monkey,(void *)0);
     2aa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     2b1:	00 
     2b2:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     2b9:	e8 10 0b 00 00       	call   dce <thread_create>
     2be:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     2c2:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     2c7:	75 19                	jne    2e2 <main+0x2e2>
										printf(1,"thread_create fails\n");
     2c9:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     2d0:	00 
     2d1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     2d8:	e8 c8 06 00 00       	call   9a5 <printf>
										exit();
     2dd:	e8 22 05 00 00       	call   804 <exit>
									}
									
									tid = thread_create(monkey,(void *)0);
     2e2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     2e9:	00 
     2ea:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     2f1:	e8 d8 0a 00 00       	call   dce <thread_create>
     2f6:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     2fa:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     2ff:	75 19                	jne    31a <main+0x31a>
										printf(1,"thread_create fails\n");
     301:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     308:	00 
     309:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     310:	e8 90 06 00 00       	call   9a5 <printf>
										exit();
     315:	e8 ea 04 00 00       	call   804 <exit>
									}

									tid = thread_create(monkey,(void *)0);
     31a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     321:	00 
     322:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     329:	e8 a0 0a 00 00       	call   dce <thread_create>
     32e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     332:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     337:	75 19                	jne    352 <main+0x352>
										printf(1,"thread_create fails\n");
     339:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     340:	00 
     341:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     348:	e8 58 06 00 00       	call   9a5 <printf>
										exit();
     34d:	e8 b2 04 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     352:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     359:	00 
     35a:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     361:	e8 68 0a 00 00       	call   dce <thread_create>
     366:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     36a:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     36f:	75 19                	jne    38a <main+0x38a>
										printf(1,"thread_create fails\n");
     371:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     378:	00 
     379:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     380:	e8 20 06 00 00       	call   9a5 <printf>
										exit();
     385:	e8 7a 04 00 00       	call   804 <exit>
									}
								
									//king kong	
									tid = thread_create(dominant,(void *)0);
     38a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     391:	00 
     392:	c7 04 24 36 05 00 00 	movl   $0x536,(%esp)
     399:	e8 30 0a 00 00       	call   dce <thread_create>
     39e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     3a2:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     3a7:	75 19                	jne    3c2 <main+0x3c2>
										printf(1,"thread_create fails\n");
     3a9:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     3b0:	00 
     3b1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3b8:	e8 e8 05 00 00       	call   9a5 <printf>
										exit();
     3bd:	e8 42 04 00 00       	call   804 <exit>
									}
		
									tid = thread_create(monkey,(void *)0);
     3c2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     3c9:	00 
     3ca:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     3d1:	e8 f8 09 00 00       	call   dce <thread_create>
     3d6:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     3da:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     3df:	75 19                	jne    3fa <main+0x3fa>
										printf(1,"thread_create fails\n");
     3e1:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     3e8:	00 
     3e9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3f0:	e8 b0 05 00 00       	call   9a5 <printf>
										exit();
     3f5:	e8 0a 04 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     3fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     401:	00 
     402:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     409:	e8 c0 09 00 00       	call   dce <thread_create>
     40e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     412:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     417:	75 19                	jne    432 <main+0x432>
										printf(1,"thread_create fails\n");
     419:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     420:	00 
     421:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     428:	e8 78 05 00 00       	call   9a5 <printf>
										exit();
     42d:	e8 d2 03 00 00       	call   804 <exit>
									}
									tid = thread_create(monkey,(void *)0);
     432:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     439:	00 
     43a:	c7 04 24 ab 04 00 00 	movl   $0x4ab,(%esp)
     441:	e8 88 09 00 00       	call   dce <thread_create>
     446:	89 44 24 1c          	mov    %eax,0x1c(%esp)
									if(tid == 0){
     44a:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
     44f:	75 19                	jne    46a <main+0x46a>
										printf(1,"thread_create fails\n");
     451:	c7 44 24 04 c0 10 00 	movl   $0x10c0,0x4(%esp)
     458:	00 
     459:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     460:	e8 40 05 00 00       	call   9a5 <printf>
										exit();
     465:	e8 9a 03 00 00       	call   804 <exit>
									}
					}
					while(wait() >= 0);
     46a:	e8 9d 03 00 00       	call   80c <wait>
     46f:	85 c0                	test   %eax,%eax
     471:	79 f7                	jns    46a <main+0x46a>
					printf(1, "child done \n");			
     473:	c7 44 24 04 ed 10 00 	movl   $0x10ed,0x4(%esp)
     47a:	00 
     47b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     482:	e8 1e 05 00 00       	call   9a5 <printf>
     487:	eb 1d                	jmp    4a6 <main+0x4a6>
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
		*/
		while(wait() >= 0);
     489:	e8 7e 03 00 00       	call   80c <wait>
     48e:	85 c0                	test   %eax,%eax
     490:	79 f7                	jns    489 <main+0x489>
		printf(1, "parent done \n");			
     492:	c7 44 24 04 fa 10 00 	movl   $0x10fa,0x4(%esp)
     499:	00 
     49a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     4a1:	e8 ff 04 00 00       	call   9a5 <printf>
	}
	exit();
     4a6:	e8 59 03 00 00       	call   804 <exit>

000004ab <monkey>:
}

void monkey(void *arg_ptr){
     4ab:	55                   	push   %ebp
     4ac:	89 e5                	mov    %esp,%ebp
     4ae:	83 ec 18             	sub    $0x18,%esp
  printf(1,"%d Monkey UP!\n", getpid());
     4b1:	e8 ce 03 00 00       	call   884 <getpid>
     4b6:	89 44 24 08          	mov    %eax,0x8(%esp)
     4ba:	c7 44 24 04 08 11 00 	movl   $0x1108,0x4(%esp)
     4c1:	00 
     4c2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     4c9:	e8 d7 04 00 00       	call   9a5 <printf>
	while(alpha == 1)
     4ce:	eb 05                	jmp    4d5 <monkey+0x2a>
	{
		thread_yield();
     4d0:	e8 ef 03 00 00       	call   8c4 <thread_yield>
	exit();
}

void monkey(void *arg_ptr){
  printf(1,"%d Monkey UP!\n", getpid());
	while(alpha == 1)
     4d5:	a1 d4 11 00 00       	mov    0x11d4,%eax
     4da:	83 f8 01             	cmp    $0x1,%eax
     4dd:	74 f1                	je     4d0 <monkey+0x25>
	{
		thread_yield();
	}
	sem_acquire(&tree);
     4df:	c7 04 24 e4 11 00 00 	movl   $0x11e4,(%esp)
     4e6:	e8 f5 0a 00 00       	call   fe0 <sem_acquire>
	
	printf(1, "%d Acquired coconut\n", getpid());
     4eb:	e8 94 03 00 00       	call   884 <getpid>
     4f0:	89 44 24 08          	mov    %eax,0x8(%esp)
     4f4:	c7 44 24 04 17 11 00 	movl   $0x1117,0x4(%esp)
     4fb:	00 
     4fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     503:	e8 9d 04 00 00       	call   9a5 <printf>
	}
	if(getpid() == 10)
	{
		tsleep();
	}*/
	sem_signal(&tree);  
     508:	c7 04 24 e4 11 00 00 	movl   $0x11e4,(%esp)
     50f:	e8 39 0b 00 00       	call   104d <sem_signal>
	printf(1, "%d Monkey DOWN!\n", getpid());	
     514:	e8 6b 03 00 00       	call   884 <getpid>
     519:	89 44 24 08          	mov    %eax,0x8(%esp)
     51d:	c7 44 24 04 2c 11 00 	movl   $0x112c,0x4(%esp)
     524:	00 
     525:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     52c:	e8 74 04 00 00       	call   9a5 <printf>
	texit();
     531:	e8 76 03 00 00       	call   8ac <texit>

00000536 <dominant>:
}

void dominant(void *arg_ptr){
     536:	55                   	push   %ebp
     537:	89 e5                	mov    %esp,%ebp
     539:	83 ec 18             	sub    $0x18,%esp
	printf(1,"Dominant Monkey!\n");
     53c:	c7 44 24 04 3d 11 00 	movl   $0x113d,0x4(%esp)
     543:	00 
     544:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     54b:	e8 55 04 00 00       	call   9a5 <printf>
	alpha = 1;	//stop all monkeys 
     550:	c7 05 d4 11 00 00 01 	movl   $0x1,0x11d4
     557:	00 00 00 
	sem_acquire(&tree);
     55a:	c7 04 24 e4 11 00 00 	movl   $0x11e4,(%esp)
     561:	e8 7a 0a 00 00       	call   fe0 <sem_acquire>
	printf(1, "%d Dominant Monkey acquires coconut\n", getpid());
     566:	e8 19 03 00 00       	call   884 <getpid>
     56b:	89 44 24 08          	mov    %eax,0x8(%esp)
     56f:	c7 44 24 04 50 11 00 	movl   $0x1150,0x4(%esp)
     576:	00 
     577:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     57e:	e8 22 04 00 00       	call   9a5 <printf>
	sem_signal(&tree);
     583:	c7 04 24 e4 11 00 00 	movl   $0x11e4,(%esp)
     58a:	e8 be 0a 00 00       	call   104d <sem_signal>
	alpha = 0;
     58f:	c7 05 d4 11 00 00 00 	movl   $0x0,0x11d4
     596:	00 00 00 
	texit();
     599:	e8 0e 03 00 00       	call   8ac <texit>
     59e:	90                   	nop
     59f:	90                   	nop

000005a0 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
     5a0:	55                   	push   %ebp
     5a1:	89 e5                	mov    %esp,%ebp
     5a3:	57                   	push   %edi
     5a4:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
     5a5:	8b 4d 08             	mov    0x8(%ebp),%ecx
     5a8:	8b 55 10             	mov    0x10(%ebp),%edx
     5ab:	8b 45 0c             	mov    0xc(%ebp),%eax
     5ae:	89 cb                	mov    %ecx,%ebx
     5b0:	89 df                	mov    %ebx,%edi
     5b2:	89 d1                	mov    %edx,%ecx
     5b4:	fc                   	cld    
     5b5:	f3 aa                	rep stos %al,%es:(%edi)
     5b7:	89 ca                	mov    %ecx,%edx
     5b9:	89 fb                	mov    %edi,%ebx
     5bb:	89 5d 08             	mov    %ebx,0x8(%ebp)
     5be:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
     5c1:	5b                   	pop    %ebx
     5c2:	5f                   	pop    %edi
     5c3:	5d                   	pop    %ebp
     5c4:	c3                   	ret    

000005c5 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     5c5:	55                   	push   %ebp
     5c6:	89 e5                	mov    %esp,%ebp
     5c8:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
     5cb:	8b 45 08             	mov    0x8(%ebp),%eax
     5ce:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
     5d1:	8b 45 0c             	mov    0xc(%ebp),%eax
     5d4:	0f b6 10             	movzbl (%eax),%edx
     5d7:	8b 45 08             	mov    0x8(%ebp),%eax
     5da:	88 10                	mov    %dl,(%eax)
     5dc:	8b 45 08             	mov    0x8(%ebp),%eax
     5df:	0f b6 00             	movzbl (%eax),%eax
     5e2:	84 c0                	test   %al,%al
     5e4:	0f 95 c0             	setne  %al
     5e7:	83 45 08 01          	addl   $0x1,0x8(%ebp)
     5eb:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
     5ef:	84 c0                	test   %al,%al
     5f1:	75 de                	jne    5d1 <strcpy+0xc>
    ;
  return os;
     5f3:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
     5f6:	c9                   	leave  
     5f7:	c3                   	ret    

000005f8 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     5f8:	55                   	push   %ebp
     5f9:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
     5fb:	eb 08                	jmp    605 <strcmp+0xd>
    p++, q++;
     5fd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
     601:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     605:	8b 45 08             	mov    0x8(%ebp),%eax
     608:	0f b6 00             	movzbl (%eax),%eax
     60b:	84 c0                	test   %al,%al
     60d:	74 10                	je     61f <strcmp+0x27>
     60f:	8b 45 08             	mov    0x8(%ebp),%eax
     612:	0f b6 10             	movzbl (%eax),%edx
     615:	8b 45 0c             	mov    0xc(%ebp),%eax
     618:	0f b6 00             	movzbl (%eax),%eax
     61b:	38 c2                	cmp    %al,%dl
     61d:	74 de                	je     5fd <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
     61f:	8b 45 08             	mov    0x8(%ebp),%eax
     622:	0f b6 00             	movzbl (%eax),%eax
     625:	0f b6 d0             	movzbl %al,%edx
     628:	8b 45 0c             	mov    0xc(%ebp),%eax
     62b:	0f b6 00             	movzbl (%eax),%eax
     62e:	0f b6 c0             	movzbl %al,%eax
     631:	89 d1                	mov    %edx,%ecx
     633:	29 c1                	sub    %eax,%ecx
     635:	89 c8                	mov    %ecx,%eax
}
     637:	5d                   	pop    %ebp
     638:	c3                   	ret    

00000639 <strlen>:

uint
strlen(char *s)
{
     639:	55                   	push   %ebp
     63a:	89 e5                	mov    %esp,%ebp
     63c:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
     63f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
     646:	eb 04                	jmp    64c <strlen+0x13>
     648:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
     64c:	8b 45 fc             	mov    -0x4(%ebp),%eax
     64f:	03 45 08             	add    0x8(%ebp),%eax
     652:	0f b6 00             	movzbl (%eax),%eax
     655:	84 c0                	test   %al,%al
     657:	75 ef                	jne    648 <strlen+0xf>
    ;
  return n;
     659:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
     65c:	c9                   	leave  
     65d:	c3                   	ret    

0000065e <memset>:

void*
memset(void *dst, int c, uint n)
{
     65e:	55                   	push   %ebp
     65f:	89 e5                	mov    %esp,%ebp
     661:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
     664:	8b 45 10             	mov    0x10(%ebp),%eax
     667:	89 44 24 08          	mov    %eax,0x8(%esp)
     66b:	8b 45 0c             	mov    0xc(%ebp),%eax
     66e:	89 44 24 04          	mov    %eax,0x4(%esp)
     672:	8b 45 08             	mov    0x8(%ebp),%eax
     675:	89 04 24             	mov    %eax,(%esp)
     678:	e8 23 ff ff ff       	call   5a0 <stosb>
  return dst;
     67d:	8b 45 08             	mov    0x8(%ebp),%eax
}
     680:	c9                   	leave  
     681:	c3                   	ret    

00000682 <strchr>:

char*
strchr(const char *s, char c)
{
     682:	55                   	push   %ebp
     683:	89 e5                	mov    %esp,%ebp
     685:	83 ec 04             	sub    $0x4,%esp
     688:	8b 45 0c             	mov    0xc(%ebp),%eax
     68b:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
     68e:	eb 14                	jmp    6a4 <strchr+0x22>
    if(*s == c)
     690:	8b 45 08             	mov    0x8(%ebp),%eax
     693:	0f b6 00             	movzbl (%eax),%eax
     696:	3a 45 fc             	cmp    -0x4(%ebp),%al
     699:	75 05                	jne    6a0 <strchr+0x1e>
      return (char*)s;
     69b:	8b 45 08             	mov    0x8(%ebp),%eax
     69e:	eb 13                	jmp    6b3 <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     6a0:	83 45 08 01          	addl   $0x1,0x8(%ebp)
     6a4:	8b 45 08             	mov    0x8(%ebp),%eax
     6a7:	0f b6 00             	movzbl (%eax),%eax
     6aa:	84 c0                	test   %al,%al
     6ac:	75 e2                	jne    690 <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
     6ae:	b8 00 00 00 00       	mov    $0x0,%eax
}
     6b3:	c9                   	leave  
     6b4:	c3                   	ret    

000006b5 <gets>:

char*
gets(char *buf, int max)
{
     6b5:	55                   	push   %ebp
     6b6:	89 e5                	mov    %esp,%ebp
     6b8:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     6bb:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
     6c2:	eb 44                	jmp    708 <gets+0x53>
    cc = read(0, &c, 1);
     6c4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     6cb:	00 
     6cc:	8d 45 ef             	lea    -0x11(%ebp),%eax
     6cf:	89 44 24 04          	mov    %eax,0x4(%esp)
     6d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6da:	e8 3d 01 00 00       	call   81c <read>
     6df:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(cc < 1)
     6e2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
     6e6:	7e 2d                	jle    715 <gets+0x60>
      break;
    buf[i++] = c;
     6e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
     6eb:	03 45 08             	add    0x8(%ebp),%eax
     6ee:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
     6f2:	88 10                	mov    %dl,(%eax)
     6f4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    if(c == '\n' || c == '\r')
     6f8:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
     6fc:	3c 0a                	cmp    $0xa,%al
     6fe:	74 16                	je     716 <gets+0x61>
     700:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
     704:	3c 0d                	cmp    $0xd,%al
     706:	74 0e                	je     716 <gets+0x61>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     708:	8b 45 f0             	mov    -0x10(%ebp),%eax
     70b:	83 c0 01             	add    $0x1,%eax
     70e:	3b 45 0c             	cmp    0xc(%ebp),%eax
     711:	7c b1                	jl     6c4 <gets+0xf>
     713:	eb 01                	jmp    716 <gets+0x61>
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
     715:	90                   	nop
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     716:	8b 45 f0             	mov    -0x10(%ebp),%eax
     719:	03 45 08             	add    0x8(%ebp),%eax
     71c:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
     71f:	8b 45 08             	mov    0x8(%ebp),%eax
}
     722:	c9                   	leave  
     723:	c3                   	ret    

00000724 <stat>:

int
stat(char *n, struct stat *st)
{
     724:	55                   	push   %ebp
     725:	89 e5                	mov    %esp,%ebp
     727:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     72a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     731:	00 
     732:	8b 45 08             	mov    0x8(%ebp),%eax
     735:	89 04 24             	mov    %eax,(%esp)
     738:	e8 07 01 00 00       	call   844 <open>
     73d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(fd < 0)
     740:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     744:	79 07                	jns    74d <stat+0x29>
    return -1;
     746:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     74b:	eb 23                	jmp    770 <stat+0x4c>
  r = fstat(fd, st);
     74d:	8b 45 0c             	mov    0xc(%ebp),%eax
     750:	89 44 24 04          	mov    %eax,0x4(%esp)
     754:	8b 45 f0             	mov    -0x10(%ebp),%eax
     757:	89 04 24             	mov    %eax,(%esp)
     75a:	e8 fd 00 00 00       	call   85c <fstat>
     75f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  close(fd);
     762:	8b 45 f0             	mov    -0x10(%ebp),%eax
     765:	89 04 24             	mov    %eax,(%esp)
     768:	e8 bf 00 00 00       	call   82c <close>
  return r;
     76d:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
     770:	c9                   	leave  
     771:	c3                   	ret    

00000772 <atoi>:

int
atoi(const char *s)
{
     772:	55                   	push   %ebp
     773:	89 e5                	mov    %esp,%ebp
     775:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
     778:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
     77f:	eb 24                	jmp    7a5 <atoi+0x33>
    n = n*10 + *s++ - '0';
     781:	8b 55 fc             	mov    -0x4(%ebp),%edx
     784:	89 d0                	mov    %edx,%eax
     786:	c1 e0 02             	shl    $0x2,%eax
     789:	01 d0                	add    %edx,%eax
     78b:	01 c0                	add    %eax,%eax
     78d:	89 c2                	mov    %eax,%edx
     78f:	8b 45 08             	mov    0x8(%ebp),%eax
     792:	0f b6 00             	movzbl (%eax),%eax
     795:	0f be c0             	movsbl %al,%eax
     798:	8d 04 02             	lea    (%edx,%eax,1),%eax
     79b:	83 e8 30             	sub    $0x30,%eax
     79e:	89 45 fc             	mov    %eax,-0x4(%ebp)
     7a1:	83 45 08 01          	addl   $0x1,0x8(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     7a5:	8b 45 08             	mov    0x8(%ebp),%eax
     7a8:	0f b6 00             	movzbl (%eax),%eax
     7ab:	3c 2f                	cmp    $0x2f,%al
     7ad:	7e 0a                	jle    7b9 <atoi+0x47>
     7af:	8b 45 08             	mov    0x8(%ebp),%eax
     7b2:	0f b6 00             	movzbl (%eax),%eax
     7b5:	3c 39                	cmp    $0x39,%al
     7b7:	7e c8                	jle    781 <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
     7b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
     7bc:	c9                   	leave  
     7bd:	c3                   	ret    

000007be <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     7be:	55                   	push   %ebp
     7bf:	89 e5                	mov    %esp,%ebp
     7c1:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
     7c4:	8b 45 08             	mov    0x8(%ebp),%eax
     7c7:	89 45 f8             	mov    %eax,-0x8(%ebp)
  src = vsrc;
     7ca:	8b 45 0c             	mov    0xc(%ebp),%eax
     7cd:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while(n-- > 0)
     7d0:	eb 13                	jmp    7e5 <memmove+0x27>
    *dst++ = *src++;
     7d2:	8b 45 fc             	mov    -0x4(%ebp),%eax
     7d5:	0f b6 10             	movzbl (%eax),%edx
     7d8:	8b 45 f8             	mov    -0x8(%ebp),%eax
     7db:	88 10                	mov    %dl,(%eax)
     7dd:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
     7e1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     7e5:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
     7e9:	0f 9f c0             	setg   %al
     7ec:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
     7f0:	84 c0                	test   %al,%al
     7f2:	75 de                	jne    7d2 <memmove+0x14>
    *dst++ = *src++;
  return vdst;
     7f4:	8b 45 08             	mov    0x8(%ebp),%eax
}
     7f7:	c9                   	leave  
     7f8:	c3                   	ret    
     7f9:	90                   	nop
     7fa:	90                   	nop
     7fb:	90                   	nop

000007fc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     7fc:	b8 01 00 00 00       	mov    $0x1,%eax
     801:	cd 40                	int    $0x40
     803:	c3                   	ret    

00000804 <exit>:
SYSCALL(exit)
     804:	b8 02 00 00 00       	mov    $0x2,%eax
     809:	cd 40                	int    $0x40
     80b:	c3                   	ret    

0000080c <wait>:
SYSCALL(wait)
     80c:	b8 03 00 00 00       	mov    $0x3,%eax
     811:	cd 40                	int    $0x40
     813:	c3                   	ret    

00000814 <pipe>:
SYSCALL(pipe)
     814:	b8 04 00 00 00       	mov    $0x4,%eax
     819:	cd 40                	int    $0x40
     81b:	c3                   	ret    

0000081c <read>:
SYSCALL(read)
     81c:	b8 05 00 00 00       	mov    $0x5,%eax
     821:	cd 40                	int    $0x40
     823:	c3                   	ret    

00000824 <write>:
SYSCALL(write)
     824:	b8 10 00 00 00       	mov    $0x10,%eax
     829:	cd 40                	int    $0x40
     82b:	c3                   	ret    

0000082c <close>:
SYSCALL(close)
     82c:	b8 15 00 00 00       	mov    $0x15,%eax
     831:	cd 40                	int    $0x40
     833:	c3                   	ret    

00000834 <kill>:
SYSCALL(kill)
     834:	b8 06 00 00 00       	mov    $0x6,%eax
     839:	cd 40                	int    $0x40
     83b:	c3                   	ret    

0000083c <exec>:
SYSCALL(exec)
     83c:	b8 07 00 00 00       	mov    $0x7,%eax
     841:	cd 40                	int    $0x40
     843:	c3                   	ret    

00000844 <open>:
SYSCALL(open)
     844:	b8 0f 00 00 00       	mov    $0xf,%eax
     849:	cd 40                	int    $0x40
     84b:	c3                   	ret    

0000084c <mknod>:
SYSCALL(mknod)
     84c:	b8 11 00 00 00       	mov    $0x11,%eax
     851:	cd 40                	int    $0x40
     853:	c3                   	ret    

00000854 <unlink>:
SYSCALL(unlink)
     854:	b8 12 00 00 00       	mov    $0x12,%eax
     859:	cd 40                	int    $0x40
     85b:	c3                   	ret    

0000085c <fstat>:
SYSCALL(fstat)
     85c:	b8 08 00 00 00       	mov    $0x8,%eax
     861:	cd 40                	int    $0x40
     863:	c3                   	ret    

00000864 <link>:
SYSCALL(link)
     864:	b8 13 00 00 00       	mov    $0x13,%eax
     869:	cd 40                	int    $0x40
     86b:	c3                   	ret    

0000086c <mkdir>:
SYSCALL(mkdir)
     86c:	b8 14 00 00 00       	mov    $0x14,%eax
     871:	cd 40                	int    $0x40
     873:	c3                   	ret    

00000874 <chdir>:
SYSCALL(chdir)
     874:	b8 09 00 00 00       	mov    $0x9,%eax
     879:	cd 40                	int    $0x40
     87b:	c3                   	ret    

0000087c <dup>:
SYSCALL(dup)
     87c:	b8 0a 00 00 00       	mov    $0xa,%eax
     881:	cd 40                	int    $0x40
     883:	c3                   	ret    

00000884 <getpid>:
SYSCALL(getpid)
     884:	b8 0b 00 00 00       	mov    $0xb,%eax
     889:	cd 40                	int    $0x40
     88b:	c3                   	ret    

0000088c <sbrk>:
SYSCALL(sbrk)
     88c:	b8 0c 00 00 00       	mov    $0xc,%eax
     891:	cd 40                	int    $0x40
     893:	c3                   	ret    

00000894 <sleep>:
SYSCALL(sleep)
     894:	b8 0d 00 00 00       	mov    $0xd,%eax
     899:	cd 40                	int    $0x40
     89b:	c3                   	ret    

0000089c <uptime>:
SYSCALL(uptime)
     89c:	b8 0e 00 00 00       	mov    $0xe,%eax
     8a1:	cd 40                	int    $0x40
     8a3:	c3                   	ret    

000008a4 <clone>:
SYSCALL(clone)
     8a4:	b8 16 00 00 00       	mov    $0x16,%eax
     8a9:	cd 40                	int    $0x40
     8ab:	c3                   	ret    

000008ac <texit>:
SYSCALL(texit)
     8ac:	b8 17 00 00 00       	mov    $0x17,%eax
     8b1:	cd 40                	int    $0x40
     8b3:	c3                   	ret    

000008b4 <tsleep>:
SYSCALL(tsleep)
     8b4:	b8 18 00 00 00       	mov    $0x18,%eax
     8b9:	cd 40                	int    $0x40
     8bb:	c3                   	ret    

000008bc <twakeup>:
SYSCALL(twakeup)
     8bc:	b8 19 00 00 00       	mov    $0x19,%eax
     8c1:	cd 40                	int    $0x40
     8c3:	c3                   	ret    

000008c4 <thread_yield>:
SYSCALL(thread_yield)
     8c4:	b8 1a 00 00 00       	mov    $0x1a,%eax
     8c9:	cd 40                	int    $0x40
     8cb:	c3                   	ret    

000008cc <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
     8cc:	55                   	push   %ebp
     8cd:	89 e5                	mov    %esp,%ebp
     8cf:	83 ec 28             	sub    $0x28,%esp
     8d2:	8b 45 0c             	mov    0xc(%ebp),%eax
     8d5:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
     8d8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     8df:	00 
     8e0:	8d 45 f4             	lea    -0xc(%ebp),%eax
     8e3:	89 44 24 04          	mov    %eax,0x4(%esp)
     8e7:	8b 45 08             	mov    0x8(%ebp),%eax
     8ea:	89 04 24             	mov    %eax,(%esp)
     8ed:	e8 32 ff ff ff       	call   824 <write>
}
     8f2:	c9                   	leave  
     8f3:	c3                   	ret    

000008f4 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
     8f4:	55                   	push   %ebp
     8f5:	89 e5                	mov    %esp,%ebp
     8f7:	53                   	push   %ebx
     8f8:	83 ec 44             	sub    $0x44,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     8fb:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
     902:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
     906:	74 17                	je     91f <printint+0x2b>
     908:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
     90c:	79 11                	jns    91f <printint+0x2b>
    neg = 1;
     90e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
     915:	8b 45 0c             	mov    0xc(%ebp),%eax
     918:	f7 d8                	neg    %eax
     91a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     91d:	eb 06                	jmp    925 <printint+0x31>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     91f:	8b 45 0c             	mov    0xc(%ebp),%eax
     922:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }

  i = 0;
     925:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  do{
    buf[i++] = digits[x % base];
     92c:	8b 4d ec             	mov    -0x14(%ebp),%ecx
     92f:	8b 5d 10             	mov    0x10(%ebp),%ebx
     932:	8b 45 f4             	mov    -0xc(%ebp),%eax
     935:	ba 00 00 00 00       	mov    $0x0,%edx
     93a:	f7 f3                	div    %ebx
     93c:	89 d0                	mov    %edx,%eax
     93e:	0f b6 80 c0 11 00 00 	movzbl 0x11c0(%eax),%eax
     945:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
     949:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  }while((x /= base) != 0);
     94d:	8b 45 10             	mov    0x10(%ebp),%eax
     950:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     953:	8b 45 f4             	mov    -0xc(%ebp),%eax
     956:	ba 00 00 00 00       	mov    $0x0,%edx
     95b:	f7 75 d4             	divl   -0x2c(%ebp)
     95e:	89 45 f4             	mov    %eax,-0xc(%ebp)
     961:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
     965:	75 c5                	jne    92c <printint+0x38>
  if(neg)
     967:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     96b:	74 28                	je     995 <printint+0xa1>
    buf[i++] = '-';
     96d:	8b 45 ec             	mov    -0x14(%ebp),%eax
     970:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
     975:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)

  while(--i >= 0)
     979:	eb 1a                	jmp    995 <printint+0xa1>
    putc(fd, buf[i]);
     97b:	8b 45 ec             	mov    -0x14(%ebp),%eax
     97e:	0f b6 44 05 dc       	movzbl -0x24(%ebp,%eax,1),%eax
     983:	0f be c0             	movsbl %al,%eax
     986:	89 44 24 04          	mov    %eax,0x4(%esp)
     98a:	8b 45 08             	mov    0x8(%ebp),%eax
     98d:	89 04 24             	mov    %eax,(%esp)
     990:	e8 37 ff ff ff       	call   8cc <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     995:	83 6d ec 01          	subl   $0x1,-0x14(%ebp)
     999:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     99d:	79 dc                	jns    97b <printint+0x87>
    putc(fd, buf[i]);
}
     99f:	83 c4 44             	add    $0x44,%esp
     9a2:	5b                   	pop    %ebx
     9a3:	5d                   	pop    %ebp
     9a4:	c3                   	ret    

000009a5 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     9a5:	55                   	push   %ebp
     9a6:	89 e5                	mov    %esp,%ebp
     9a8:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
     9ab:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  ap = (uint*)(void*)&fmt + 1;
     9b2:	8d 45 0c             	lea    0xc(%ebp),%eax
     9b5:	83 c0 04             	add    $0x4,%eax
     9b8:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for(i = 0; fmt[i]; i++){
     9bb:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
     9c2:	e9 7e 01 00 00       	jmp    b45 <printf+0x1a0>
    c = fmt[i] & 0xff;
     9c7:	8b 55 0c             	mov    0xc(%ebp),%edx
     9ca:	8b 45 ec             	mov    -0x14(%ebp),%eax
     9cd:	8d 04 02             	lea    (%edx,%eax,1),%eax
     9d0:	0f b6 00             	movzbl (%eax),%eax
     9d3:	0f be c0             	movsbl %al,%eax
     9d6:	25 ff 00 00 00       	and    $0xff,%eax
     9db:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(state == 0){
     9de:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     9e2:	75 2c                	jne    a10 <printf+0x6b>
      if(c == '%'){
     9e4:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
     9e8:	75 0c                	jne    9f6 <printf+0x51>
        state = '%';
     9ea:	c7 45 f0 25 00 00 00 	movl   $0x25,-0x10(%ebp)
     9f1:	e9 4b 01 00 00       	jmp    b41 <printf+0x19c>
      } else {
        putc(fd, c);
     9f6:	8b 45 e8             	mov    -0x18(%ebp),%eax
     9f9:	0f be c0             	movsbl %al,%eax
     9fc:	89 44 24 04          	mov    %eax,0x4(%esp)
     a00:	8b 45 08             	mov    0x8(%ebp),%eax
     a03:	89 04 24             	mov    %eax,(%esp)
     a06:	e8 c1 fe ff ff       	call   8cc <putc>
     a0b:	e9 31 01 00 00       	jmp    b41 <printf+0x19c>
      }
    } else if(state == '%'){
     a10:	83 7d f0 25          	cmpl   $0x25,-0x10(%ebp)
     a14:	0f 85 27 01 00 00    	jne    b41 <printf+0x19c>
      if(c == 'd'){
     a1a:	83 7d e8 64          	cmpl   $0x64,-0x18(%ebp)
     a1e:	75 2d                	jne    a4d <printf+0xa8>
        printint(fd, *ap, 10, 1);
     a20:	8b 45 f4             	mov    -0xc(%ebp),%eax
     a23:	8b 00                	mov    (%eax),%eax
     a25:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     a2c:	00 
     a2d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     a34:	00 
     a35:	89 44 24 04          	mov    %eax,0x4(%esp)
     a39:	8b 45 08             	mov    0x8(%ebp),%eax
     a3c:	89 04 24             	mov    %eax,(%esp)
     a3f:	e8 b0 fe ff ff       	call   8f4 <printint>
        ap++;
     a44:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
     a48:	e9 ed 00 00 00       	jmp    b3a <printf+0x195>
      } else if(c == 'x' || c == 'p'){
     a4d:	83 7d e8 78          	cmpl   $0x78,-0x18(%ebp)
     a51:	74 06                	je     a59 <printf+0xb4>
     a53:	83 7d e8 70          	cmpl   $0x70,-0x18(%ebp)
     a57:	75 2d                	jne    a86 <printf+0xe1>
        printint(fd, *ap, 16, 0);
     a59:	8b 45 f4             	mov    -0xc(%ebp),%eax
     a5c:	8b 00                	mov    (%eax),%eax
     a5e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     a65:	00 
     a66:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
     a6d:	00 
     a6e:	89 44 24 04          	mov    %eax,0x4(%esp)
     a72:	8b 45 08             	mov    0x8(%ebp),%eax
     a75:	89 04 24             	mov    %eax,(%esp)
     a78:	e8 77 fe ff ff       	call   8f4 <printint>
        ap++;
     a7d:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     a81:	e9 b4 00 00 00       	jmp    b3a <printf+0x195>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     a86:	83 7d e8 73          	cmpl   $0x73,-0x18(%ebp)
     a8a:	75 46                	jne    ad2 <printf+0x12d>
        s = (char*)*ap;
     a8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
     a8f:	8b 00                	mov    (%eax),%eax
     a91:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        ap++;
     a94:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
        if(s == 0)
     a98:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
     a9c:	75 27                	jne    ac5 <printf+0x120>
          s = "(null)";
     a9e:	c7 45 e4 75 11 00 00 	movl   $0x1175,-0x1c(%ebp)
        while(*s != 0){
     aa5:	eb 1f                	jmp    ac6 <printf+0x121>
          putc(fd, *s);
     aa7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     aaa:	0f b6 00             	movzbl (%eax),%eax
     aad:	0f be c0             	movsbl %al,%eax
     ab0:	89 44 24 04          	mov    %eax,0x4(%esp)
     ab4:	8b 45 08             	mov    0x8(%ebp),%eax
     ab7:	89 04 24             	mov    %eax,(%esp)
     aba:	e8 0d fe ff ff       	call   8cc <putc>
          s++;
     abf:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
     ac3:	eb 01                	jmp    ac6 <printf+0x121>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
     ac5:	90                   	nop
     ac6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ac9:	0f b6 00             	movzbl (%eax),%eax
     acc:	84 c0                	test   %al,%al
     ace:	75 d7                	jne    aa7 <printf+0x102>
     ad0:	eb 68                	jmp    b3a <printf+0x195>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     ad2:	83 7d e8 63          	cmpl   $0x63,-0x18(%ebp)
     ad6:	75 1d                	jne    af5 <printf+0x150>
        putc(fd, *ap);
     ad8:	8b 45 f4             	mov    -0xc(%ebp),%eax
     adb:	8b 00                	mov    (%eax),%eax
     add:	0f be c0             	movsbl %al,%eax
     ae0:	89 44 24 04          	mov    %eax,0x4(%esp)
     ae4:	8b 45 08             	mov    0x8(%ebp),%eax
     ae7:	89 04 24             	mov    %eax,(%esp)
     aea:	e8 dd fd ff ff       	call   8cc <putc>
        ap++;
     aef:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
     af3:	eb 45                	jmp    b3a <printf+0x195>
      } else if(c == '%'){
     af5:	83 7d e8 25          	cmpl   $0x25,-0x18(%ebp)
     af9:	75 17                	jne    b12 <printf+0x16d>
        putc(fd, c);
     afb:	8b 45 e8             	mov    -0x18(%ebp),%eax
     afe:	0f be c0             	movsbl %al,%eax
     b01:	89 44 24 04          	mov    %eax,0x4(%esp)
     b05:	8b 45 08             	mov    0x8(%ebp),%eax
     b08:	89 04 24             	mov    %eax,(%esp)
     b0b:	e8 bc fd ff ff       	call   8cc <putc>
     b10:	eb 28                	jmp    b3a <printf+0x195>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
     b12:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
     b19:	00 
     b1a:	8b 45 08             	mov    0x8(%ebp),%eax
     b1d:	89 04 24             	mov    %eax,(%esp)
     b20:	e8 a7 fd ff ff       	call   8cc <putc>
        putc(fd, c);
     b25:	8b 45 e8             	mov    -0x18(%ebp),%eax
     b28:	0f be c0             	movsbl %al,%eax
     b2b:	89 44 24 04          	mov    %eax,0x4(%esp)
     b2f:	8b 45 08             	mov    0x8(%ebp),%eax
     b32:	89 04 24             	mov    %eax,(%esp)
     b35:	e8 92 fd ff ff       	call   8cc <putc>
      }
      state = 0;
     b3a:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     b41:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
     b45:	8b 55 0c             	mov    0xc(%ebp),%edx
     b48:	8b 45 ec             	mov    -0x14(%ebp),%eax
     b4b:	8d 04 02             	lea    (%edx,%eax,1),%eax
     b4e:	0f b6 00             	movzbl (%eax),%eax
     b51:	84 c0                	test   %al,%al
     b53:	0f 85 6e fe ff ff    	jne    9c7 <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
     b59:	c9                   	leave  
     b5a:	c3                   	ret    
     b5b:	90                   	nop

00000b5c <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
     b5c:	55                   	push   %ebp
     b5d:	89 e5                	mov    %esp,%ebp
     b5f:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
     b62:	8b 45 08             	mov    0x8(%ebp),%eax
     b65:	83 e8 08             	sub    $0x8,%eax
     b68:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     b6b:	a1 e0 11 00 00       	mov    0x11e0,%eax
     b70:	89 45 fc             	mov    %eax,-0x4(%ebp)
     b73:	eb 24                	jmp    b99 <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     b75:	8b 45 fc             	mov    -0x4(%ebp),%eax
     b78:	8b 00                	mov    (%eax),%eax
     b7a:	3b 45 fc             	cmp    -0x4(%ebp),%eax
     b7d:	77 12                	ja     b91 <free+0x35>
     b7f:	8b 45 f8             	mov    -0x8(%ebp),%eax
     b82:	3b 45 fc             	cmp    -0x4(%ebp),%eax
     b85:	77 24                	ja     bab <free+0x4f>
     b87:	8b 45 fc             	mov    -0x4(%ebp),%eax
     b8a:	8b 00                	mov    (%eax),%eax
     b8c:	3b 45 f8             	cmp    -0x8(%ebp),%eax
     b8f:	77 1a                	ja     bab <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     b91:	8b 45 fc             	mov    -0x4(%ebp),%eax
     b94:	8b 00                	mov    (%eax),%eax
     b96:	89 45 fc             	mov    %eax,-0x4(%ebp)
     b99:	8b 45 f8             	mov    -0x8(%ebp),%eax
     b9c:	3b 45 fc             	cmp    -0x4(%ebp),%eax
     b9f:	76 d4                	jbe    b75 <free+0x19>
     ba1:	8b 45 fc             	mov    -0x4(%ebp),%eax
     ba4:	8b 00                	mov    (%eax),%eax
     ba6:	3b 45 f8             	cmp    -0x8(%ebp),%eax
     ba9:	76 ca                	jbe    b75 <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
     bab:	8b 45 f8             	mov    -0x8(%ebp),%eax
     bae:	8b 40 04             	mov    0x4(%eax),%eax
     bb1:	c1 e0 03             	shl    $0x3,%eax
     bb4:	89 c2                	mov    %eax,%edx
     bb6:	03 55 f8             	add    -0x8(%ebp),%edx
     bb9:	8b 45 fc             	mov    -0x4(%ebp),%eax
     bbc:	8b 00                	mov    (%eax),%eax
     bbe:	39 c2                	cmp    %eax,%edx
     bc0:	75 24                	jne    be6 <free+0x8a>
    bp->s.size += p->s.ptr->s.size;
     bc2:	8b 45 f8             	mov    -0x8(%ebp),%eax
     bc5:	8b 50 04             	mov    0x4(%eax),%edx
     bc8:	8b 45 fc             	mov    -0x4(%ebp),%eax
     bcb:	8b 00                	mov    (%eax),%eax
     bcd:	8b 40 04             	mov    0x4(%eax),%eax
     bd0:	01 c2                	add    %eax,%edx
     bd2:	8b 45 f8             	mov    -0x8(%ebp),%eax
     bd5:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
     bd8:	8b 45 fc             	mov    -0x4(%ebp),%eax
     bdb:	8b 00                	mov    (%eax),%eax
     bdd:	8b 10                	mov    (%eax),%edx
     bdf:	8b 45 f8             	mov    -0x8(%ebp),%eax
     be2:	89 10                	mov    %edx,(%eax)
     be4:	eb 0a                	jmp    bf0 <free+0x94>
  } else
    bp->s.ptr = p->s.ptr;
     be6:	8b 45 fc             	mov    -0x4(%ebp),%eax
     be9:	8b 10                	mov    (%eax),%edx
     beb:	8b 45 f8             	mov    -0x8(%ebp),%eax
     bee:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
     bf0:	8b 45 fc             	mov    -0x4(%ebp),%eax
     bf3:	8b 40 04             	mov    0x4(%eax),%eax
     bf6:	c1 e0 03             	shl    $0x3,%eax
     bf9:	03 45 fc             	add    -0x4(%ebp),%eax
     bfc:	3b 45 f8             	cmp    -0x8(%ebp),%eax
     bff:	75 20                	jne    c21 <free+0xc5>
    p->s.size += bp->s.size;
     c01:	8b 45 fc             	mov    -0x4(%ebp),%eax
     c04:	8b 50 04             	mov    0x4(%eax),%edx
     c07:	8b 45 f8             	mov    -0x8(%ebp),%eax
     c0a:	8b 40 04             	mov    0x4(%eax),%eax
     c0d:	01 c2                	add    %eax,%edx
     c0f:	8b 45 fc             	mov    -0x4(%ebp),%eax
     c12:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
     c15:	8b 45 f8             	mov    -0x8(%ebp),%eax
     c18:	8b 10                	mov    (%eax),%edx
     c1a:	8b 45 fc             	mov    -0x4(%ebp),%eax
     c1d:	89 10                	mov    %edx,(%eax)
     c1f:	eb 08                	jmp    c29 <free+0xcd>
  } else
    p->s.ptr = bp;
     c21:	8b 45 fc             	mov    -0x4(%ebp),%eax
     c24:	8b 55 f8             	mov    -0x8(%ebp),%edx
     c27:	89 10                	mov    %edx,(%eax)
  freep = p;
     c29:	8b 45 fc             	mov    -0x4(%ebp),%eax
     c2c:	a3 e0 11 00 00       	mov    %eax,0x11e0
}
     c31:	c9                   	leave  
     c32:	c3                   	ret    

00000c33 <morecore>:

static Header*
morecore(uint nu)
{
     c33:	55                   	push   %ebp
     c34:	89 e5                	mov    %esp,%ebp
     c36:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
     c39:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
     c40:	77 07                	ja     c49 <morecore+0x16>
    nu = 4096;
     c42:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
     c49:	8b 45 08             	mov    0x8(%ebp),%eax
     c4c:	c1 e0 03             	shl    $0x3,%eax
     c4f:	89 04 24             	mov    %eax,(%esp)
     c52:	e8 35 fc ff ff       	call   88c <sbrk>
     c57:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(p == (char*)-1)
     c5a:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
     c5e:	75 07                	jne    c67 <morecore+0x34>
    return 0;
     c60:	b8 00 00 00 00       	mov    $0x0,%eax
     c65:	eb 22                	jmp    c89 <morecore+0x56>
  hp = (Header*)p;
     c67:	8b 45 f0             	mov    -0x10(%ebp),%eax
     c6a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  hp->s.size = nu;
     c6d:	8b 45 f4             	mov    -0xc(%ebp),%eax
     c70:	8b 55 08             	mov    0x8(%ebp),%edx
     c73:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
     c76:	8b 45 f4             	mov    -0xc(%ebp),%eax
     c79:	83 c0 08             	add    $0x8,%eax
     c7c:	89 04 24             	mov    %eax,(%esp)
     c7f:	e8 d8 fe ff ff       	call   b5c <free>
  return freep;
     c84:	a1 e0 11 00 00       	mov    0x11e0,%eax
}
     c89:	c9                   	leave  
     c8a:	c3                   	ret    

00000c8b <malloc>:

void*
malloc(uint nbytes)
{
     c8b:	55                   	push   %ebp
     c8c:	89 e5                	mov    %esp,%ebp
     c8e:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
     c91:	8b 45 08             	mov    0x8(%ebp),%eax
     c94:	83 c0 07             	add    $0x7,%eax
     c97:	c1 e8 03             	shr    $0x3,%eax
     c9a:	83 c0 01             	add    $0x1,%eax
     c9d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if((prevp = freep) == 0){
     ca0:	a1 e0 11 00 00       	mov    0x11e0,%eax
     ca5:	89 45 f0             	mov    %eax,-0x10(%ebp)
     ca8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     cac:	75 23                	jne    cd1 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
     cae:	c7 45 f0 d8 11 00 00 	movl   $0x11d8,-0x10(%ebp)
     cb5:	8b 45 f0             	mov    -0x10(%ebp),%eax
     cb8:	a3 e0 11 00 00       	mov    %eax,0x11e0
     cbd:	a1 e0 11 00 00       	mov    0x11e0,%eax
     cc2:	a3 d8 11 00 00       	mov    %eax,0x11d8
    base.s.size = 0;
     cc7:	c7 05 dc 11 00 00 00 	movl   $0x0,0x11dc
     cce:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
     cd1:	8b 45 f0             	mov    -0x10(%ebp),%eax
     cd4:	8b 00                	mov    (%eax),%eax
     cd6:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(p->s.size >= nunits){
     cd9:	8b 45 ec             	mov    -0x14(%ebp),%eax
     cdc:	8b 40 04             	mov    0x4(%eax),%eax
     cdf:	3b 45 f4             	cmp    -0xc(%ebp),%eax
     ce2:	72 4d                	jb     d31 <malloc+0xa6>
      if(p->s.size == nunits)
     ce4:	8b 45 ec             	mov    -0x14(%ebp),%eax
     ce7:	8b 40 04             	mov    0x4(%eax),%eax
     cea:	3b 45 f4             	cmp    -0xc(%ebp),%eax
     ced:	75 0c                	jne    cfb <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
     cef:	8b 45 ec             	mov    -0x14(%ebp),%eax
     cf2:	8b 10                	mov    (%eax),%edx
     cf4:	8b 45 f0             	mov    -0x10(%ebp),%eax
     cf7:	89 10                	mov    %edx,(%eax)
     cf9:	eb 26                	jmp    d21 <malloc+0x96>
      else {
        p->s.size -= nunits;
     cfb:	8b 45 ec             	mov    -0x14(%ebp),%eax
     cfe:	8b 40 04             	mov    0x4(%eax),%eax
     d01:	89 c2                	mov    %eax,%edx
     d03:	2b 55 f4             	sub    -0xc(%ebp),%edx
     d06:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d09:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
     d0c:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d0f:	8b 40 04             	mov    0x4(%eax),%eax
     d12:	c1 e0 03             	shl    $0x3,%eax
     d15:	01 45 ec             	add    %eax,-0x14(%ebp)
        p->s.size = nunits;
     d18:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d1b:	8b 55 f4             	mov    -0xc(%ebp),%edx
     d1e:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
     d21:	8b 45 f0             	mov    -0x10(%ebp),%eax
     d24:	a3 e0 11 00 00       	mov    %eax,0x11e0
      return (void*)(p + 1);
     d29:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d2c:	83 c0 08             	add    $0x8,%eax
     d2f:	eb 38                	jmp    d69 <malloc+0xde>
    }
    if(p == freep)
     d31:	a1 e0 11 00 00       	mov    0x11e0,%eax
     d36:	39 45 ec             	cmp    %eax,-0x14(%ebp)
     d39:	75 1b                	jne    d56 <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
     d3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
     d3e:	89 04 24             	mov    %eax,(%esp)
     d41:	e8 ed fe ff ff       	call   c33 <morecore>
     d46:	89 45 ec             	mov    %eax,-0x14(%ebp)
     d49:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     d4d:	75 07                	jne    d56 <malloc+0xcb>
        return 0;
     d4f:	b8 00 00 00 00       	mov    $0x0,%eax
     d54:	eb 13                	jmp    d69 <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
     d56:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d59:	89 45 f0             	mov    %eax,-0x10(%ebp)
     d5c:	8b 45 ec             	mov    -0x14(%ebp),%eax
     d5f:	8b 00                	mov    (%eax),%eax
     d61:	89 45 ec             	mov    %eax,-0x14(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
     d64:	e9 70 ff ff ff       	jmp    cd9 <malloc+0x4e>
}
     d69:	c9                   	leave  
     d6a:	c3                   	ret    
     d6b:	90                   	nop

00000d6c <xchg>:
  asm volatile("sti");
}

static inline uint
xchg(volatile uint *addr, uint newval)
{
     d6c:	55                   	push   %ebp
     d6d:	89 e5                	mov    %esp,%ebp
     d6f:	83 ec 10             	sub    $0x10,%esp
  uint result;
  
  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
     d72:	8b 55 08             	mov    0x8(%ebp),%edx
     d75:	8b 45 0c             	mov    0xc(%ebp),%eax
     d78:	8b 4d 08             	mov    0x8(%ebp),%ecx
     d7b:	f0 87 02             	lock xchg %eax,(%edx)
     d7e:	89 45 fc             	mov    %eax,-0x4(%ebp)
               "+m" (*addr), "=a" (result) :
               "1" (newval) :
               "cc");
  return result;
     d81:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
     d84:	c9                   	leave  
     d85:	c3                   	ret    

00000d86 <lock_init>:
#include "x86.h"
#include "proc.h"



void lock_init(lock_t *lock){
     d86:	55                   	push   %ebp
     d87:	89 e5                	mov    %esp,%ebp
    lock->locked = 0;
     d89:	8b 45 08             	mov    0x8(%ebp),%eax
     d8c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
     d92:	5d                   	pop    %ebp
     d93:	c3                   	ret    

00000d94 <lock_acquire>:
void lock_acquire(lock_t *lock){
     d94:	55                   	push   %ebp
     d95:	89 e5                	mov    %esp,%ebp
     d97:	83 ec 08             	sub    $0x8,%esp
    while(xchg(&lock->locked,1) != 0);
     d9a:	8b 45 08             	mov    0x8(%ebp),%eax
     d9d:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
     da4:	00 
     da5:	89 04 24             	mov    %eax,(%esp)
     da8:	e8 bf ff ff ff       	call   d6c <xchg>
     dad:	85 c0                	test   %eax,%eax
     daf:	75 e9                	jne    d9a <lock_acquire+0x6>
}
     db1:	c9                   	leave  
     db2:	c3                   	ret    

00000db3 <lock_release>:
void lock_release(lock_t *lock){
     db3:	55                   	push   %ebp
     db4:	89 e5                	mov    %esp,%ebp
     db6:	83 ec 08             	sub    $0x8,%esp
    xchg(&lock->locked,0);
     db9:	8b 45 08             	mov    0x8(%ebp),%eax
     dbc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     dc3:	00 
     dc4:	89 04 24             	mov    %eax,(%esp)
     dc7:	e8 a0 ff ff ff       	call   d6c <xchg>
}
     dcc:	c9                   	leave  
     dcd:	c3                   	ret    

00000dce <thread_create>:

void *thread_create(void(*start_routine)(void*), void *arg){
     dce:	55                   	push   %ebp
     dcf:	89 e5                	mov    %esp,%ebp
     dd1:	83 ec 28             	sub    $0x28,%esp
    int tid;
    void * stack = malloc(2 * 4096);
     dd4:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
     ddb:	e8 ab fe ff ff       	call   c8b <malloc>
     de0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    void *garbage_stack = stack; 
     de3:	8b 45 f0             	mov    -0x10(%ebp),%eax
     de6:	89 45 f4             	mov    %eax,-0xc(%ebp)
   // printf(1,"start routine addr : %d\n",(uint)start_routine);


    if((uint)stack % 4096){
     de9:	8b 45 f0             	mov    -0x10(%ebp),%eax
     dec:	25 ff 0f 00 00       	and    $0xfff,%eax
     df1:	85 c0                	test   %eax,%eax
     df3:	74 15                	je     e0a <thread_create+0x3c>
        stack = stack + (4096 - (uint)stack % 4096);
     df5:	8b 45 f0             	mov    -0x10(%ebp),%eax
     df8:	89 c2                	mov    %eax,%edx
     dfa:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
     e00:	b8 00 10 00 00       	mov    $0x1000,%eax
     e05:	29 d0                	sub    %edx,%eax
     e07:	01 45 f0             	add    %eax,-0x10(%ebp)
    }
    if (stack == 0){
     e0a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
     e0e:	75 1b                	jne    e2b <thread_create+0x5d>

        printf(1,"malloc fail \n");
     e10:	c7 44 24 04 7c 11 00 	movl   $0x117c,0x4(%esp)
     e17:	00 
     e18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e1f:	e8 81 fb ff ff       	call   9a5 <printf>
        return 0;
     e24:	b8 00 00 00 00       	mov    $0x0,%eax
     e29:	eb 6f                	jmp    e9a <thread_create+0xcc>
    }

    tid = clone((uint)stack,PSIZE,(uint)start_routine,(int)arg);
     e2b:	8b 4d 0c             	mov    0xc(%ebp),%ecx
     e2e:	8b 55 08             	mov    0x8(%ebp),%edx
     e31:	8b 45 f0             	mov    -0x10(%ebp),%eax
     e34:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
     e38:	89 54 24 08          	mov    %edx,0x8(%esp)
     e3c:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
     e43:	00 
     e44:	89 04 24             	mov    %eax,(%esp)
     e47:	e8 58 fa ff ff       	call   8a4 <clone>
     e4c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(tid < 0){
     e4f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     e53:	79 1b                	jns    e70 <thread_create+0xa2>
        printf(1,"clone fails\n");
     e55:	c7 44 24 04 8a 11 00 	movl   $0x118a,0x4(%esp)
     e5c:	00 
     e5d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e64:	e8 3c fb ff ff       	call   9a5 <printf>
        return 0;
     e69:	b8 00 00 00 00       	mov    $0x0,%eax
     e6e:	eb 2a                	jmp    e9a <thread_create+0xcc>
    }
    if(tid > 0){
     e70:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     e74:	7e 05                	jle    e7b <thread_create+0xad>
        //store threads on thread table
        return garbage_stack;
     e76:	8b 45 f4             	mov    -0xc(%ebp),%eax
     e79:	eb 1f                	jmp    e9a <thread_create+0xcc>
    }
    if(tid == 0){
     e7b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
     e7f:	75 14                	jne    e95 <thread_create+0xc7>
        printf(1,"tid = 0 return \n");
     e81:	c7 44 24 04 97 11 00 	movl   $0x1197,0x4(%esp)
     e88:	00 
     e89:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e90:	e8 10 fb ff ff       	call   9a5 <printf>
    }
//    wait();
//    free(garbage_stack);

    return 0;
     e95:	b8 00 00 00 00       	mov    $0x0,%eax
}
     e9a:	c9                   	leave  
     e9b:	c3                   	ret    

00000e9c <init_q>:
#include "queue.h"
#include "types.h"
#include "user.h"

void init_q(struct queue *q){
     e9c:	55                   	push   %ebp
     e9d:	89 e5                	mov    %esp,%ebp
    q->size = 0;
     e9f:	8b 45 08             	mov    0x8(%ebp),%eax
     ea2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    q->head = 0;
     ea8:	8b 45 08             	mov    0x8(%ebp),%eax
     eab:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    q->tail = 0;
     eb2:	8b 45 08             	mov    0x8(%ebp),%eax
     eb5:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
     ebc:	5d                   	pop    %ebp
     ebd:	c3                   	ret    

00000ebe <add_q>:

void add_q(struct queue *q, int v){
     ebe:	55                   	push   %ebp
     ebf:	89 e5                	mov    %esp,%ebp
     ec1:	83 ec 28             	sub    $0x28,%esp
    //printf(1, "here \n");
		struct node * n = malloc(sizeof(struct node));
     ec4:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     ecb:	e8 bb fd ff ff       	call   c8b <malloc>
     ed0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    n->next = 0;
     ed3:	8b 45 f4             	mov    -0xc(%ebp),%eax
     ed6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    n->value = v;
     edd:	8b 45 f4             	mov    -0xc(%ebp),%eax
     ee0:	8b 55 0c             	mov    0xc(%ebp),%edx
     ee3:	89 10                	mov    %edx,(%eax)
    if(q->head == 0){
     ee5:	8b 45 08             	mov    0x8(%ebp),%eax
     ee8:	8b 40 04             	mov    0x4(%eax),%eax
     eeb:	85 c0                	test   %eax,%eax
     eed:	75 0b                	jne    efa <add_q+0x3c>
        q->head = n;
     eef:	8b 45 08             	mov    0x8(%ebp),%eax
     ef2:	8b 55 f4             	mov    -0xc(%ebp),%edx
     ef5:	89 50 04             	mov    %edx,0x4(%eax)
     ef8:	eb 0c                	jmp    f06 <add_q+0x48>
    }else{
        q->tail->next = n;
     efa:	8b 45 08             	mov    0x8(%ebp),%eax
     efd:	8b 40 08             	mov    0x8(%eax),%eax
     f00:	8b 55 f4             	mov    -0xc(%ebp),%edx
     f03:	89 50 04             	mov    %edx,0x4(%eax)
    }
    q->tail = n;
     f06:	8b 45 08             	mov    0x8(%ebp),%eax
     f09:	8b 55 f4             	mov    -0xc(%ebp),%edx
     f0c:	89 50 08             	mov    %edx,0x8(%eax)
    q->size++;
     f0f:	8b 45 08             	mov    0x8(%ebp),%eax
     f12:	8b 00                	mov    (%eax),%eax
     f14:	8d 50 01             	lea    0x1(%eax),%edx
     f17:	8b 45 08             	mov    0x8(%ebp),%eax
     f1a:	89 10                	mov    %edx,(%eax)
}
     f1c:	c9                   	leave  
     f1d:	c3                   	ret    

00000f1e <empty_q>:

int empty_q(struct queue *q){
     f1e:	55                   	push   %ebp
     f1f:	89 e5                	mov    %esp,%ebp
    if(q->size == 0)
     f21:	8b 45 08             	mov    0x8(%ebp),%eax
     f24:	8b 00                	mov    (%eax),%eax
     f26:	85 c0                	test   %eax,%eax
     f28:	75 07                	jne    f31 <empty_q+0x13>
        return 1;
     f2a:	b8 01 00 00 00       	mov    $0x1,%eax
     f2f:	eb 05                	jmp    f36 <empty_q+0x18>
    else
        return 0;
     f31:	b8 00 00 00 00       	mov    $0x0,%eax
} 
     f36:	5d                   	pop    %ebp
     f37:	c3                   	ret    

00000f38 <pop_q>:
int pop_q(struct queue *q){
     f38:	55                   	push   %ebp
     f39:	89 e5                	mov    %esp,%ebp
     f3b:	83 ec 28             	sub    $0x28,%esp
    int val;
    struct node *destroy;
    if(!empty_q(q)){
     f3e:	8b 45 08             	mov    0x8(%ebp),%eax
     f41:	89 04 24             	mov    %eax,(%esp)
     f44:	e8 d5 ff ff ff       	call   f1e <empty_q>
     f49:	85 c0                	test   %eax,%eax
     f4b:	75 5d                	jne    faa <pop_q+0x72>
       val = q->head->value; 
     f4d:	8b 45 08             	mov    0x8(%ebp),%eax
     f50:	8b 40 04             	mov    0x4(%eax),%eax
     f53:	8b 00                	mov    (%eax),%eax
     f55:	89 45 f0             	mov    %eax,-0x10(%ebp)
       destroy = q->head;
     f58:	8b 45 08             	mov    0x8(%ebp),%eax
     f5b:	8b 40 04             	mov    0x4(%eax),%eax
     f5e:	89 45 f4             	mov    %eax,-0xc(%ebp)
       q->head = q->head->next;
     f61:	8b 45 08             	mov    0x8(%ebp),%eax
     f64:	8b 40 04             	mov    0x4(%eax),%eax
     f67:	8b 50 04             	mov    0x4(%eax),%edx
     f6a:	8b 45 08             	mov    0x8(%ebp),%eax
     f6d:	89 50 04             	mov    %edx,0x4(%eax)
       free(destroy);
     f70:	8b 45 f4             	mov    -0xc(%ebp),%eax
     f73:	89 04 24             	mov    %eax,(%esp)
     f76:	e8 e1 fb ff ff       	call   b5c <free>
       q->size--;
     f7b:	8b 45 08             	mov    0x8(%ebp),%eax
     f7e:	8b 00                	mov    (%eax),%eax
     f80:	8d 50 ff             	lea    -0x1(%eax),%edx
     f83:	8b 45 08             	mov    0x8(%ebp),%eax
     f86:	89 10                	mov    %edx,(%eax)
       if(q->size == 0){
     f88:	8b 45 08             	mov    0x8(%ebp),%eax
     f8b:	8b 00                	mov    (%eax),%eax
     f8d:	85 c0                	test   %eax,%eax
     f8f:	75 14                	jne    fa5 <pop_q+0x6d>
            q->head = 0;
     f91:	8b 45 08             	mov    0x8(%ebp),%eax
     f94:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
            q->tail = 0;
     f9b:	8b 45 08             	mov    0x8(%ebp),%eax
     f9e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
       }
       return val;
     fa5:	8b 45 f0             	mov    -0x10(%ebp),%eax
     fa8:	eb 05                	jmp    faf <pop_q+0x77>
    }
    return -1;
     faa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     faf:	c9                   	leave  
     fb0:	c3                   	ret    
     fb1:	90                   	nop
     fb2:	90                   	nop
     fb3:	90                   	nop

00000fb4 <init_semaphore>:
#include "semaphore.h"
#include "user.h"

//lab 2
//Semaphore
void init_semaphore(struct Semaphore *s, int count_num) {
     fb4:	55                   	push   %ebp
     fb5:	89 e5                	mov    %esp,%ebp
     fb7:	83 ec 18             	sub    $0x18,%esp
	s->count = count_num;
     fba:	8b 45 08             	mov    0x8(%ebp),%eax
     fbd:	8b 55 0c             	mov    0xc(%ebp),%edx
     fc0:	89 10                	mov    %edx,(%eax)
	init_q(&s->threads);
     fc2:	8b 45 08             	mov    0x8(%ebp),%eax
     fc5:	83 c0 04             	add    $0x4,%eax
     fc8:	89 04 24             	mov    %eax,(%esp)
     fcb:	e8 cc fe ff ff       	call   e9c <init_q>
	lock_init(&s->lock);
     fd0:	8b 45 08             	mov    0x8(%ebp),%eax
     fd3:	83 c0 10             	add    $0x10,%eax
     fd6:	89 04 24             	mov    %eax,(%esp)
     fd9:	e8 a8 fd ff ff       	call   d86 <lock_init>
}
     fde:	c9                   	leave  
     fdf:	c3                   	ret    

00000fe0 <sem_acquire>:

void sem_acquire(struct Semaphore *s) {
     fe0:	55                   	push   %ebp
     fe1:	89 e5                	mov    %esp,%ebp
     fe3:	83 ec 18             	sub    $0x18,%esp
	while(1) {
		if (s->count > 0) {												//if there are available resources
     fe6:	8b 45 08             	mov    0x8(%ebp),%eax
     fe9:	8b 00                	mov    (%eax),%eax
     feb:	85 c0                	test   %eax,%eax
     fed:	7e 2c                	jle    101b <sem_acquire+0x3b>
			//printf(1, "COUNT IS = %d\n", s->count);
			//printf(1, "acquiring lock\n");
			lock_acquire(&s->lock);									//acquire count lock
     fef:	8b 45 08             	mov    0x8(%ebp),%eax
     ff2:	83 c0 10             	add    $0x10,%eax
     ff5:	89 04 24             	mov    %eax,(%esp)
     ff8:	e8 97 fd ff ff       	call   d94 <lock_acquire>
			//printf(1, "acquired lock\n");
			s->count = s->count - 1;																//decrement resource by one
     ffd:	8b 45 08             	mov    0x8(%ebp),%eax
    1000:	8b 00                	mov    (%eax),%eax
    1002:	8d 50 ff             	lea    -0x1(%eax),%edx
    1005:	8b 45 08             	mov    0x8(%ebp),%eax
    1008:	89 10                	mov    %edx,(%eax)
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
    100a:	8b 45 08             	mov    0x8(%ebp),%eax
    100d:	83 c0 10             	add    $0x10,%eax
    1010:	89 04 24             	mov    %eax,(%esp)
    1013:	e8 9b fd ff ff       	call   db3 <lock_release>
			break;
    1018:	90                   	nop
			add_q(&s->threads, getpid());						//add thread to sleep queueu
			//printf(1, "asleep \n");
			tsleep();
		}
	}
}
    1019:	c9                   	leave  
    101a:	c3                   	ret    
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
			break;
		}
		else {																		//if there are no available resources
			printf(1, "Waiting for semaphore\n");
    101b:	c7 44 24 04 a8 11 00 	movl   $0x11a8,0x4(%esp)
    1022:	00 
    1023:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    102a:	e8 76 f9 ff ff       	call   9a5 <printf>
			//printf(1, "%d", getpid());
			add_q(&s->threads, getpid());						//add thread to sleep queueu
    102f:	e8 50 f8 ff ff       	call   884 <getpid>
    1034:	8b 55 08             	mov    0x8(%ebp),%edx
    1037:	83 c2 04             	add    $0x4,%edx
    103a:	89 44 24 04          	mov    %eax,0x4(%esp)
    103e:	89 14 24             	mov    %edx,(%esp)
    1041:	e8 78 fe ff ff       	call   ebe <add_q>
			//printf(1, "asleep \n");
			tsleep();
    1046:	e8 69 f8 ff ff       	call   8b4 <tsleep>
		}
	}
    104b:	eb 99                	jmp    fe6 <sem_acquire+0x6>

0000104d <sem_signal>:
}

void sem_signal(struct Semaphore *s) {
    104d:	55                   	push   %ebp
    104e:	89 e5                	mov    %esp,%ebp
    1050:	83 ec 18             	sub    $0x18,%esp
	lock_acquire(&s->lock);
    1053:	8b 45 08             	mov    0x8(%ebp),%eax
    1056:	83 c0 10             	add    $0x10,%eax
    1059:	89 04 24             	mov    %eax,(%esp)
    105c:	e8 33 fd ff ff       	call   d94 <lock_acquire>
	s->count++;
    1061:	8b 45 08             	mov    0x8(%ebp),%eax
    1064:	8b 00                	mov    (%eax),%eax
    1066:	8d 50 01             	lea    0x1(%eax),%edx
    1069:	8b 45 08             	mov    0x8(%ebp),%eax
    106c:	89 10                	mov    %edx,(%eax)
	lock_release(&s->lock);
    106e:	8b 45 08             	mov    0x8(%ebp),%eax
    1071:	83 c0 10             	add    $0x10,%eax
    1074:	89 04 24             	mov    %eax,(%esp)
    1077:	e8 37 fd ff ff       	call   db3 <lock_release>
	if (!empty_q(&s->threads)) {
    107c:	8b 45 08             	mov    0x8(%ebp),%eax
    107f:	83 c0 04             	add    $0x4,%eax
    1082:	89 04 24             	mov    %eax,(%esp)
    1085:	e8 94 fe ff ff       	call   f1e <empty_q>
    108a:	85 c0                	test   %eax,%eax
    108c:	75 16                	jne    10a4 <sem_signal+0x57>
		twakeup(pop_q(&s->threads));							//remove thread from queue and wake up
    108e:	8b 45 08             	mov    0x8(%ebp),%eax
    1091:	83 c0 04             	add    $0x4,%eax
    1094:	89 04 24             	mov    %eax,(%esp)
    1097:	e8 9c fe ff ff       	call   f38 <pop_q>
    109c:	89 04 24             	mov    %eax,(%esp)
    109f:	e8 18 f8 ff ff       	call   8bc <twakeup>
	}
}
    10a4:	c9                   	leave  
    10a5:	c3                   	ret    
