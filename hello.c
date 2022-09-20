int main();
void print(char *, int);
void exit(int);

int _start()
{
  exit(main());
}

int main()
{
  char * text = "hello, world\n";

  print(text, 37);

  return 0;
}
