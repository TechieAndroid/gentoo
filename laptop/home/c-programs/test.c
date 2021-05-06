#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>

  //0 <= y0 < LINES;
  //0 <= x0 < COLUMNS;

initscr(stdsrc){

  WINDOW * win = newwin(50, 50, 50, 50);

}


int main(void) {
  int age;

  puts("Hello, world!");
  printf("Hello, world!\nHow old are you?\n");
  scanf("%d", &age);
  printf("My age is : %d\n", age );

  return EXIT_SUCCESS;
}

endwin()
