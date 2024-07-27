#include <stdio.h>
#include <stdlib.h>

#define VERSION "0.0.2-alpha"

int main() {
    char wget_cmd[256];
    char tar_cmd[256];
    char script_cmd[256];

    printf("Hello, World!(from helper-tar.c)\n");

    // Construct wget command
    snprintf(wget_cmd, sizeof(wget_cmd), "wget https://github.com/hurstz/caveman/archive/refs/tags/v%s.tar.gz", VERSION);
    
    // wget the tarchive
    if (system(wget_cmd) != 0) {
        perror("FAILED: wget");
        return 1;
    }

    // Construct tar command
    snprintf(tar_cmd, sizeof(tar_cmd), "tar -xzf v%s.tar.gz", VERSION);
    
    // xtract zee files
    if (system(tar_cmd) != 0) {
        perror("FAILED: tar -xzf");
        return 1;
    }

    // Construct script command
    snprintf(script_cmd, sizeof(script_cmd), "./caveman-%s/scripts/main.sh", VERSION);
    
    // change directory to caveman
    if (system(script_cmd) != 0) {
        perror("FAILED: scripts/main.sh");
        return 1;
    }

    return 0;
}
