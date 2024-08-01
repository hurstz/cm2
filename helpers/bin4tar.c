#include <stdio.h>
#include <stdlib.h>
#include <libgen.h>
#include <unistd.h>

#define VERSION "0.0.0-alpha"
#define USERNAME "hurstz"
#define REPOSITORY "cm2"
#define SCRIPT_PATH "/exe/main.sh"

int main(int argc, char *argv[]) {
    char wget_cmd[256];
    char tar_cmd[256];
    char tar_url[1024];
    char script_cmd[256];
    char *binary_path;
    char *dir_path;
//  char *proj_root;
    char cwd[1024];

    printf("Hello, World! (bin4tar.c)\n");

    binary_path = realpath(argv[0], NULL);
    if (binary_path == NULL) {
        perror("FAILED: realpath of binary file");
        return 1;
    }

    dir_path = dirname(binary_path);

/*
    proj_root = dirname(dir_path);

    if (chdir(proj_root) != 0) {
        perror("FAILED: chdir to proj_root");
        free(binary_path);
        return 1;
    }
*/
/*
    snprintf(tar_url, sizeof(tar_url), "https://github.com/%s/%s/archive/refs/tags/v%s.tar.gz\n", USERNAME, REPOSITORY, VERSION);
    snprintf(wget_cmd, sizeof(wget_cmd), "wget %s\n", tar_url);

    printf("%s", wget_cmd);

    if (system(wget_cmd) != 0) {
        perror("FAILED: wget (bin4tar.c)");
        free(binary_path);
        return 1;
    }
  
    snprintf(tar_cmd, sizeof(tar_cmd), "tar -xzf v%s.tar.gz", VERSION);
    
    if (system(tar_cmd) != 0) {
        perror("FAILED: tar -xzf (bin4tar.c)");
        free(binary_path);
        return 1;
    }
*/
    // ./cm2-0.0.0-alpha/exe/main.sh
    snprintf(script_cmd, sizeof(script_cmd), "./%s-%s%s", REPOSITORY, VERSION, SCRIPT_PATH);
    printf("%s", script_cmd);
/*
    if (system(script_cmd) != 0) {
        perror("FAILED: exe/main.sh");
        free(binary_path);
        return 1;
    }
*/
    free(binary_path);
//  free(dir_path);
//  free(proj_root);

    return 0;
}
