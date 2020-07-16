.DEFAULT_GOAL := build

build:
	dune build

doc:
	dune build @doc
	cp -rv --no-preserve=mode _build/default/_doc/_html/* docs/

expect:
	dune build @runtest --auto-promote

format:
	find -name "*.ml*" -not -path "./_build*" | xargs ocamlformat --inplace
