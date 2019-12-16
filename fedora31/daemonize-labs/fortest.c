#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.n


void printid() {
    pid_t pid = getpid();
    pid_t ppid = getppid();
    pid_t sid = getsid(pid);
    pid_t pgid = getpgid(pid);
    printf("pid=%d, ppid=%d, sid=%d, pgid=%d\n", pid, ppid, sid, pgid);
}

int main(){
    printf("parent process: ");
    printid();

    if ((fork()) != 0)
        exit(0);
    printf("child1: ");
    printid();

    setsid();
    printf("after setsid: ");
    printid();

    if ((fork()) != 0)
        exit(0);
    printf("child2: ");
    printid();
    return 0;
}
