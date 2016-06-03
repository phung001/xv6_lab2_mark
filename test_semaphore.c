#include "semaphore.h"

struct Semaphore s;

void temp_func(void *arg_ptr) {
	printf(1, "IM IN A THREAD!");
	texit();
}

int main(){
	init_semaphore(&s, 1);
	void *tid = thread_create(temp_func,(void *)0);
	if(tid == 0) {
		printf(1, "failed making thread :( \n");
		exit();
	}
		
	exit();
}
