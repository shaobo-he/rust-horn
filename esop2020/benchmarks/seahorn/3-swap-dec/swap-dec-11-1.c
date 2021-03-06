#include "seahorn/seahorn.h"

extern int nd();

void may_swap(int **ppx, int **ppy) {
  if (nd()) {
    int *tmp = *ppx;
    *ppx = *ppy;
    *ppy = tmp;
  }
}
void swap_dec_bound_three(int n, int **ppa, int **ppb, int **ppc) {
  may_swap(ppa, ppb);
  may_swap(ppb, ppc);
  may_swap(ppa, ppb);
  if (n == 0) return;
  **ppa -= 1;
  **ppb -= 2;
  **ppc -= 3;
  swap_dec_bound_three(n - 1, ppa, ppb, ppc);
}
int main() {
  int n = nd(), x = nd(), y = nd(), z = nd();
  int old_x = x;
  int *pa = &x, *pb = &y, *pc = &z;
  swap_dec_bound_three(n, &pa, &pb, &pc);
  sassert(old_x >= x && old_x - x < 3 * n);
  return 0;
}
