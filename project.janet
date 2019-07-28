(declare-project
  :name "littleserver"
  :description "Example server to show how to use jpm to build
  a project with native, third-party dependencies into an executable."
  :dependencies ["https://github.com/janet-lang/circlet.git"])

(declare-executable
  :name "lserve"
  :entry "main.janet")
