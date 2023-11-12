#include <stdio.h>
#include <string.h>

#include <stl.h>

int main(int argc, char* argv[], char* envp[]) {
    s_stl stl1 ;
    s_stl stl2 ;
    s_stl stl_to;

    if ( argc == 4 ) {
        read_stl(argv[1],&stl1) ;

        read_stl(argv[2],&stl2) ;

        stl_add(&stl1, &stl2, &stl_to);

        export_to_stl_binary(&stl_to, argv[3]);
        
        free_stl(&stl1);
        free_stl(&stl2);
        free_stl(&stl_to);
    } else {
        printf("Usage : %s firest_stl_file.stl second_stl_file.stl result_stl_file.stl\n",argv[0]);
    }
    return 0;
}

