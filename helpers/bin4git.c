#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("Hello, World! (helper-git.c)\n");

    if (system("./scripts/main.sh") != 0) {
        perror("FAILED: scripts/main.sh");
        return 1;
    }

    return 0;
}
