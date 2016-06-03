#include "semaphore.h"

int water_molecules = 0;

struct Semaphore h, o;
struct Semaphore l;

void hydrogen(void *arg_ptr);

void oxygen(void *arg_ptr);

int main(int argc, char *argv[]){
	init_semaphore(&h, 0);
	init_semaphore(&o, 0);
	init_semaphore(&l, 1);

	int pid = fork();
	if (pid == 0)
	{
					//water molecule 1
					void *tid = thread_create(hydrogen,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(hydrogen,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(oxygen,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					
					//water molecule 2	
					tid = thread_create(oxygen,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(hydrogen,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(hydrogen,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					while(wait() >= 0);
					//printf(1, "done \n");			
					printf(1, "child water = %d \n", water_molecules);
	}
	else
	{
		while(wait() >= 0);
		printf(1, "done \n");			
		printf(1, "parent water = %d \n", water_molecules);
	}
	exit();
}

void hydrogen(void *arg_ptr){
  printf(1,"hydrogen!\n");
	sem_signal(&h);
	printf(1, "acquired h \n");
	sem_acquire(&o);  
	printf(1, "acquired o \n");	
	texit();
}

void oxygen(void *arg_ptr){
	printf(1,"oxygen!\n");
	sem_acquire(&h);
	sem_acquire(&h);
	sem_signal(&o);
	sem_signal(&o);
	sem_acquire(&l);
	//printf(1, "ALMOST DONE\n");
	water_molecules++;
	//printf(1, "WATER = %d\n", water_molecules);
	sem_signal(&l);
	texit();
}
