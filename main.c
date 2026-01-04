/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */


 int uninit_g;
 int init_g = 35;

extern char _src_start_data_;

extern char _dst_start_data_;
extern char _dst_end_data_;

 int foo(int local) {

   char *src = &_src_start_data_;
   char *dst = &_dst_start_data_;
   char *dst_end = &_dst_end_data_;


   while(dst < dst_end){
       *dst++ = *src++;
   }
   
   return local + uninit_g + init_g;
 }