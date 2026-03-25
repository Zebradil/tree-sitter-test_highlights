{
  description = "Tree-sitter grammar for test_highlights";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    {
      overlays.default = final: prev: {
        tree-sitter-test_highlights = final.tree-sitter.buildGrammar {
          language = "test_highlights";
          version = "0.1.0";
          src = self;
        };
        vimPlugins = prev.vimPlugins // {
          tree-sitter-test_highlights-nvim =
            final.vimPlugins.nvim-treesitter.grammarToPlugin
              final.tree-sitter-test_highlights;
        };
      };
    }
    //
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlays.default ];
        };
      in
      {
        packages = {
          default = pkgs.tree-sitter-test_highlights;
          grammar = pkgs.tree-sitter-test_highlights;
          nvim-plugin = pkgs.vimPlugins.tree-sitter-test_highlights-nvim;
        };

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            tree-sitter
            nodejs
          ];
        };
      }
    );
}
