```
The code provided as part of this repository is ONLY for learning purposes!
```

# Course Information

This course is focused on learning (hands-on) the linker script language/commands. We use the `gcc-arm-none-eabi` toolchain as the cross compiler to achieve our goals. [Get the Course Access](https://learn.inpyjama.com/web/checkout/662c9c501f561550baf45923)

# Instructions

Create a GitHub Codespace from this repository and once the environment is ready use the following to run the experiments :
1. Execute `make` to generate the `.o`, `.elf`, `.map` and `.txt` files.
    1. `.map` file has the placement related information.
    1. `.txt` saves the output of the `readelf` reading the generated `.elf`.
1. `make clean` deletes the files generated during compilation.

# Copyright

Copyright © 2024 inpyjama.com. All Rights Reserved.
