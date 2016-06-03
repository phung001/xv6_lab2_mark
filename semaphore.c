#include "semaphore.h"
#include "user.h"

//lab 2
//Semaphore
void init_semaphore(struct Semaphore *s, int count_num) {
	s->count = count_num;
	init_q(&s->threads);
	lock_init(&s->lock);
}

void sem_acquire(struct Semaphore *s) {
	while(1) {
		if (s->count > 0) {												//if there are available resources
			//printf(1, "COUNT IS = %d\n", s->count);
			//printf(1, "acquiring lock\n");
			lock_acquire(&s->lock);									//acquire count lock
			//printf(1, "acquired lock\n");
			s->count = s->count - 1;																//decrement resource by one
			//printf(1, "DECREMENT! COUNT IS = %d\n", s->count);
			lock_release(&s->lock);									//release count lock
			break;
		}
		else {																		//if there are no available resources
			printf(1, "Waiting for semaphore\n");
			//printf(1, "%d", getpid());
			add_q(&s->threads, getpid());						//add thread to sleep queueu
			//printf(1, "asleep \n");
			tsleep();
		}
	}
}

void sem_signal(struct Semaphore *s) {
	lock_acquire(&s->lock);
	s->count++;
	lock_release(&s->lock);
	if (!empty_q(&s->threads)) {
		twakeup(pop_q(&s->threads));							//remove thread from queue and wake up
	}
}
