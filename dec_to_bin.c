#inlcude <stdio.h>
#inlcude <stdlib.h>

long int dec_to_bin(int n)
{
  long int binary = 0;
  int remainder, i;
  
  for(i = 1; n != 0; i = i * 10)
  {
    remainder = n % 2;
    n /= 2;
    binary += remainder * i;
  }
  return binary;
}

int main()
{
  int n;
  
  printf("Enter a decimal value: \n");
  scanf("%d", &n);
  printf("Your decimal value in binary is: %ld\n", dec_to_bin(n);
  
  exit(EXIT_SUCCESS);
}
