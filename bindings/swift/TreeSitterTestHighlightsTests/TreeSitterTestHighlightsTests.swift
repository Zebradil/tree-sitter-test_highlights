import XCTest
import SwiftTreeSitter
import TreeSitterTestHighlights

final class TreeSitterTestHighlightsTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_test_highlights())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading TestHighlights grammar")
    }
}
