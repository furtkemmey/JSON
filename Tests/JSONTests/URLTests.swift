import XCTest
import JSON

final class URLTests: XCTestCase {
	func testValidURL() {
		let dictionary = [
			"url": "http://example.com"
		]

		XCTAssertEqual(URL(string: "http://example.com")!, try! decode(dictionary, key: "url"))
	}

	func testInvalidURL() {
		let dictionary = [
			"url": "~~🍕~~"
		]

		XCTAssertThrowsError(try decode(dictionary, key: "url") as URL)
	}
}
