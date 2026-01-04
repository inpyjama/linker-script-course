/*
 * Copyright © 2024 inpyjama.com. All Rights Reserved.
 * Author: Piyush Itankar <piyush@inpyjama.com>
 */

MEMORY {
    ROM : ORIGIN = 0xA000 , LENGTH = 0x1000
    RAM : ORIGIN = 0xC000 , LENGTH = 0x1000
}

SECTIONS {
    .text : {
        *(.text)
    } > ROM AT > ROM

    .rodata : {
        *(.rodata)
        _src_start_data_ = .;
    } > ROM AT > ROM

    .data : {
        _dst_start_data_ = .;
        *(.data)
        _dst_end_data_ = .;
    } > RAM AT > ROM

    .bss : {
        *(.bss)
    } > RAM AT > RAM

    /DISCARD/ : {
        *(*)
    }


}