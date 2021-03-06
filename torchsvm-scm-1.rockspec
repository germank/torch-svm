package = "torchsvm"
version = "scm-1"

source = {
   url = "git://github.com/germank/torch-svm.git"
}

description = {
   summary = "Torch SVM Implementation",
   detailed = [[
   ]],
   homepage = "https://github.com/germank/torch-svm",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
