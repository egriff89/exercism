## Getting the LSP to acknowledge libraries

All of the exercises use `ounit2` for testing and `base` instead of the standard library. The LSP won't be able to find any installed packages unless you add extra stanzas to the `dune-project` and `dune` files for each exercise. You can create a local switch for each exercise, but I'd recommend just using the default global one to conserve disk space.

### Install these packages with opam:
- `ocaml-lsp-server`
- `base`
- `ounit2`

### Append the following to the end of `dune-project`:
```dune
(package
 (name exercise-name)
 (depends base ounit2))
```

### Modify top of the `dune` file to match this:
```dune
(library
 (name exercise_name)
 (modules exercise_name)
 (libraries base))

(executable
 (name test)
 (modules test)
 (libraries base ounit2 exercise_name))

; everything else
```

### Build and run tests to generate starting "config" for the LSP:
```bash
make && dune build
```

### Restart the LSP
- Zed: `Ctrl+Shift+P > editor:restart language server`
- VSCode: `Ctrl+Shift+P > OCaml:Restart Language Server`
- Neovim: `:LspRestart`
