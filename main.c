/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */
extern int a;
extern int bar(void);
int foo (){
    int b=a+bar();
    return b;
}