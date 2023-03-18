import Lake
open Lake DSL

package Printiest {
  precompileModules := true
}

@[default_target]
lean_lib Printiest

require std from git
  "https://github.com/leanprover/std4" @ "2462f990c4cc6e834c20a1bd60332a327fbcbcc7"

require LSpec from git
  "https://github.com/yatima-inc/LSpec" @ "89798a6cb76b2b29469ff752af2fd8543b3a5515"

@[default_target]
lean_exe wasm {
  supportInterpreter := true
  root := "Printiest"
}
