package tree_sitter_test_highlights_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_test_highlights "github.com/tree-sitter/tree-sitter-test_highlights/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_test_highlights.Language())
	if language == nil {
		t.Errorf("Error loading TestHighlights grammar")
	}
}
