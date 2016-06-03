#include "semaphore.h"

int missionaries = 0;
int cannibals = 0;

struct Semaphore seats;

void MissionaryArrives(void *arg_ptr);

void CannibalArrives(void *arg_ptr);


void RowBoat() {
	printf(1, "rowing and rowing\n");
	sem_signal(&seats);
	sem_signal(&seats);
	sem_signal(&seats);
	missionaries = 0;
	cannibals = 0;
}


int main(int argc, char *argv[]){
	init_semaphore(&seats, 3);

	int pid = fork();
	if (pid == 0)
	{
					printf(1, "---TEST 1---\n");
					void *tid = thread_create(MissionaryArrives,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(MissionaryArrives,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
					tid = thread_create(MissionaryArrives,(void *)0);
					if(tid == 0){
						printf(1,"thread_create fails\n");
						exit();
					}
		
					while(wait() >= 0);
					printf(1, "done \n");			
	}
	else
	{
		while(wait() >= 0);
		printf(1, "done \n");			
	}
	exit();
}

void MissionaryArrives(void *arg_ptr){
	printf(1, "%d Missionary arrived!\n", getpid());
	while(1) {
					sem_acquire(&seats);
					if (cannibals != 1 && missionaries != 1) {
						missionaries = missionaries + 1;
						break;
					}
					else {
						sem_signal(&seats);
					}
	}
	if (missionaries + cannibals == 3) {
		printf(1, "setting sail\n");
		RowBoat();
	}
	printf(1, "missionaries = %d\n", missionaries);
	printf(1, "exiting\n");
	texit();
}

void CannibalArrives(void *arg_ptr){
	while(1) {
					sem_acquire(&seats);
					if (cannibals != 1 && missionaries != 1) {
						cannibals++;
						break;
					}
					else {
						sem_signal(&seats);
					}
	}
	if (missionaries + cannibals == 3) {
		RowBoat();
	}
	texit();
}
