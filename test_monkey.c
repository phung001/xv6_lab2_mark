#include "semaphore.h"

struct Semaphore tree;
int alpha = 0;

void monkey(void *arg_ptr);
void dominant(void *arg_ptr);

int main(int argc, char *argv[]){
	init_semaphore(&tree, 3);

	int pid = fork();
	if (pid == 0)
	{
					int pid2 = fork();
					if(pid2 == 0)
					{
									//monkey problem 1
									printf(1, "---Monkey Problem 1---\n");
									void *tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}

									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
					}
					else
					{				
									while(wait() >= 0);
									//monkey problem 2
									printf(1, "---Monkey Problem 2---\n");
									void *tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}

									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
								
									//king kong	
									tid = thread_create(dominant,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
		
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
									tid = thread_create(monkey,(void *)0);
									if(tid == 0){
										printf(1,"thread_create fails\n");
										exit();
									}
					}
					while(wait() >= 0);
					printf(1, "child done \n");			
	}
	else
	{	
					/*void *tid = thread_create(monkey,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(monkey,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(monkey,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(monkey,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(monkey,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
		*/
		while(wait() >= 0);
		printf(1, "parent done \n");			
	}
	exit();
}

void monkey(void *arg_ptr){
  printf(1,"%d Monkey UP!\n", getpid());
	while(alpha == 1)
	{
		thread_yield();
	}
	sem_acquire(&tree);
	
	printf(1, "%d Acquired coconut\n", getpid());
	/*if(getpid() == 7)
	{
		tsleep();
	}
	if(getpid() == 12)
	{
		tsleep();
	}
	if(getpid() == 10)
	{
		tsleep();
	}*/
	sem_signal(&tree);  
	printf(1, "%d Monkey DOWN!\n", getpid());	
	texit();
}

void dominant(void *arg_ptr){
	printf(1,"Dominant Monkey!\n");
	alpha = 1;	//stop all monkeys 
	sem_acquire(&tree);
	printf(1, "%d Dominant Monkey acquires coconut\n", getpid());
	sem_signal(&tree);
	alpha = 0;
	texit();
}
