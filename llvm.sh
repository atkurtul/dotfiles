   24 #!/usr/bin/env bash
   23 
   22 #     --slave /usr/bin/$1 $1 /usr/bin/$1-\${version} \\
   21 
   20 function register_clang_version {
   19     local version=$1
   18     local priority=$2
   17 
   16     update-alternatives \
   15         --install /usr/bin/llvm-config       llvm-config      /usr/bin/llvm-config-${version} ${priority} \
   14         --slave   /usr/bin/llvm-ar           llvm-ar          /usr/bin/llvm-ar-${version} \
   13         --slave   /usr/bin/llvm-as           llvm-as          /usr/bin/llvm-as-${version} \
   12         --slave   /usr/bin/llvm-bcanalyzer   llvm-bcanalyzer  /usr/bin/llvm-bcanalyzer-${version} \
   11         --slave   /usr/bin/llvm-cov          llvm-cov         /usr/bin/llvm-cov-${version} \
   10         --slave   /usr/bin/llvm-diff         llvm-diff        /usr/bin/llvm-diff-${version} \
    9         --slave   /usr/bin/llvm-dis          llvm-dis         /usr/bin/llvm-dis-${version} \
    8         --slave   /usr/bin/llvm-dwarfdump    llvm-dwarfdump   /usr/bin/llvm-dwarfdump-${version} \
    7         --slave   /usr/bin/llvm-extract      llvm-extract     /usr/bin/llvm-extract-${version} \
    6         --slave   /usr/bin/llvm-link         llvm-link        /usr/bin/llvm-link-${version} \
    5         --slave   /usr/bin/llvm-mc           llvm-mc          /usr/bin/llvm-mc-${version} \
    4         --slave   /usr/bin/llvm-mcmarkup     llvm-mcmarkup    /usr/bin/llvm-mcmarkup-${version} \
    3         --slave   /usr/bin/llvm-nm           llvm-nm          /usr/bin/llvm-nm-${version} \
    2         --slave   /usr/bin/llvm-objdump      llvm-objdump     /usr/bin/llvm-objdump-${version} \
    1         --slave   /usr/bin/llvm-ranlib       llvm-ranlib      /usr/bin/llvm-ranlib-${version} \
    0         --slave   /usr/bin/llvm-readobj      llvm-readobj     /usr/bin/llvm-readobj-${version} \
    1         --slave   /usr/bin/llvm-rtdyld       llvm-rtdyld      /usr/bin/llvm-rtdyld-${version} \
    2         --slave   /usr/bin/llvm-size         llvm-size        /usr/bin/llvm-size-${version} \
    3         --slave   /usr/bin/llvm-stress       llvm-stress      /usr/bin/llvm-stress-${version} \
    4         --slave   /usr/bin/llvm-symbolizer   llvm-symbolizer  /usr/bin/llvm-symbolizer-${version} \
    5         --slave   /usr/bin/llvm-tblgen       llvm-tblgen      /usr/bin/llvm-tblgen-${version}
    6 
    7     update-alternatives \
    8         --install /usr/bin/clang                 clang                 /usr/bin/clang-${version} ${priority} \
    9         --slave   /usr/bin/clang++               clang++               /usr/bin/clang++-${version}  \
   10         --slave   /usr/bin/asan_symbolize        asan_symbolize        /usr/bin/asan_symbolize-${version} \
   11         --slave   /usr/bin/c-index-test          c-index-test          /usr/bin/c-index-test-${version} \
   12         --slave   /usr/bin/clang-check           clang-check           /usr/bin/clang-check-${version} \
   13         --slave   /usr/bin/clang-cl              clang-cl              /usr/bin/clang-cl-${version} \
   14         --slave   /usr/bin/clang-cpp             clang-cpp             /usr/bin/clang-cpp-${version} \
   15         --slave   /usr/bin/clang-format          clang-format          /usr/bin/clang-format-${version} \
   16         --slave   /usr/bin/clang-format-diff     clang-format-diff     /usr/bin/clang-format-diff-${version} \
   17         --slave   /usr/bin/clang-import-test     clang-import-test     /usr/bin/clang-import-test-${version} \
   18         --slave   /usr/bin/clang-include-fixer   clang-include-fixer   /usr/bin/clang-include-fixer-${version} \
   19         --slave   /usr/bin/clang-offload-bundler clang-offload-bundler /usr/bin/clang-offload-bundler-${version} \
   20         --slave   /usr/bin/clang-query           clang-query           /usr/bin/clang-query-${version} \
   21         --slave   /usr/bin/clang-rename          clang-rename          /usr/bin/clang-rename-${version} \
   22         --slave   /usr/bin/clang-reorder-fields  clang-reorder-fields  /usr/bin/clang-reorder-fields-${version} \
   23         --slave   /usr/bin/clang-tidy            clang-tidy            /usr/bin/clang-tidy-${version} \
   24         --slave   /usr/bin/lldb                  lldb                  /usr/bin/lldb-${version} \
   25         --slave   /usr/bin/lldb-server           lldb-server           /usr/bin/lldb-server-${version}
   26 }
   27 
