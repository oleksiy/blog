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
4. Run `bundle update rails` to get on the latest rails version
5. Run `rm -rf tmp/cache`
6. Run `bundle install`
7. Run DB migration `rails db:migrate`
8. Run `rails s`

# Other Notes During Install
```text
PSA: I18n will be dropping support for Ruby < 3.2 in the next major release (April 2025), due to Ruby's end of life for 3.1 and below (https://endoflife.date/ruby). Please upgrade to Ruby 3.2 or newer by April 2025 to continue using future versions of this gem.
Post-install message from rubyzip:
RubyZip 3.0 is coming!
**********************

The public API of some Rubyzip classes has been modernized to use named
parameters for optional arguments. Please check your usage of the
following classes:
  * `Zip::File`
  * `Zip::Entry`
  * `Zip::InputStream`
  * `Zip::OutputStream`

Please ensure that your Gemfiles and .gemspecs are suitably restrictive
to avoid an unexpected breakage when 3.0 is released (e.g. ~> 2.3.0).
See https://github.com/rubyzip/rubyzip for details. The Changelog also
lists other enhancements and bugfixes that have been implemented since
version 2.3.0.
```
