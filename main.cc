#include<time.h>
#include<unistd.h>
#include<iostream>

using namespace std;
int main() {
  timespec nowtime;
  while(1){
    clock_gettime(CLOCK_REALTIME, &nowtime);
    std::cout<<nowtime.tv_sec<<std::endl;
    usleep(1000000);
  }
}