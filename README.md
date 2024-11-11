# Ruby On Rails Tutorial

## Prerequisites
1. `brew install mysql`
   * `brew services start mysql` starts the database
   * `mysql_secure_installation` to set the password for `root` user and block connections from anywhere but localhost
2. Install xcode-select `xcode-select --install`
3. Install ruby environment management tools like RVM or RBENV (here I'm using rbenv) *DO NOT INSTALL RUBY USING HOMEBREW*
   * `brew install rbenv` at this point the latest version is 1.3.0
   * `rbenv install 3.3.6`
   * If the above fails try this
     * `brew install openssl libyaml gmp llvm`
     * For **LLVM** you need to do this
       * `echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc` add it to your path, otherwise it won't symlink
       * For compilers to find llvm you may need to set:
         * `export LDFLAGS="-L/usr/local/opt/llvm/lib"` <br>
           `export CPPFLAGS="-I/usr/local/opt/llvm/include"`
     * _This may help, but very unlikely ^ the above is the best solution_ `export RUBY_CFLAGS="-DUSE_FFI_CLOSURE_ALLOC"` OR `export RUBY_CFLAGS="-Wno-error=implicit-function-declaration"`
   * `rbenv global 3.3.6` will set Ruby 3.3.6 as your global version of ruby
   * in bash file or `~/.zshrc` put this at the top `eval "$(rbenv init -)"`
4. 
