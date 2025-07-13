/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */
int initalized_global =2;
int unitialisez_global[4];
static int unitalized_global_static;
static int initalized_global_static=3;

void foo(){
    int local_variable=4;
    static int static_unitalized_local_variable;
    static int static_initalized_local_variable=5;
    return;
}
