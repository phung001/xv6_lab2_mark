#include "types.h"
#include "user.h"
#include "queue.h"

struct Semaphore{
	int count;
	struct queue threads;	
	lock_t lock;
} ;

void init_semaphore(struct Semaphore *s, int count_num);
void sem_acquire(struct Semaphore *s);
void sem_signal(struct Semaphore *s);
