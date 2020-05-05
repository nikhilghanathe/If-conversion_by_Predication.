# ICE: If-conversion of Conditional Expressions
ICE is a python-based LLVM optimizer currently supporting *if-conversion* optimization. ICE issimple, modular and a decoupled optimization framework to run LLVM-IR optimization passes. We demonstrate the effectiveness of the tool through the if-conversion optimization. We observe an overall reduction in latency with a modest resource increase. The modular nature of the framework allows users to easily add support for additional optimization passes easily by incrementally supporting the subset of LLVM-IR needed for that particular optimization. 

**Installation**
The following softwares need to be installed
1. Python [[https://www.python.org/downloads/](https://www.python.org/downloads/)]
2. pip [[https://phoenixnap.com/kb/how-to-install-python-3-windows](https://phoenixnap.com/kb/how-to-install-python-3-windows)]
3. numpy [[https://docs.scipy.org/doc/numpy/user/install.html](https://docs.scipy.org/doc/numpy/user/install.html)]
4. LLVM-tool Chain _ CLANG [[https://releases.llvm.org/download.html](https://releases.llvm.org/download.html)]
5. PyGraphviz- [[https://pygraphviz.github.io/documentation/latest/install.html](https://pygraphviz.github.io/documentation/latest/install.html)]
6. Bambu HLS - [[https://panda.dei.polimi.it/?page_id=31](https://panda.dei.polimi.it/?page_id=31)]

**Directory Structure**
* `src/` - Contains the source code for ICE
	-  `predicate.py` - Contains the base class declaration and core logic for if-conversion
	- `CFG.py` - Base class definition of CDFG 
	- `IR.py` - Definition of ICE-IR
	- `Util,py` - Utility functions required for preprocessing data
	- `Writer.py` - Helper functions for Code generation
	- `output/` - The transformed code is output in this directory   
* `benchmarks/` - Contains the C-code for all the benchmarks tested by ICE
* `input_unoptimized/` - Contains the unoptimized version of LLVM-IR extracted from the benchmarks
* `output_optimized` - Contains the optimized version of LLVM-IR after if-conversion
  
**Usage**
`python predicate.py -h`
`usage: predicate.py [-h] [-fname]`

`optional arguments:
  -h, --help  show this help message and exit
  -fname      provide the name of the input file [only *.c files]
`

***Sample Usage***
From the root directory, 
`cd src/`
`python predicate.py -fname example.c` 
- The *fname* argument takes input file name and reads the from the `../benchmarks/` directory and performs if-conversion optimization
- The output is obtained in `src/output/` directory
- The output is suffixed with a string *'_named'*. For example, if the input file name is `example.c`, the tranformed output will be named as `example_transformed.ll`
- The transformed LLVM-IR file is fed through Bambu HLS tool with the following command
	- `cd src/output/`
	- `bambu --compiler=I386_CLANG6 example_tranformed.ll --simulate`
- The generated Verilog design can be obtained in the same directory 

