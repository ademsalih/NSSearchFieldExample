import Cocoa

class SuggestionsWindow: NSWindow {
    var parentElement: Any?

    // Convience initializer that removes the syleMask and backing parameters since they are static values for this class.
    convenience init(contentRect: NSRect, defer flag: Bool) {
        self.init(contentRect: contentRect, styleMask: .borderless, backing: .buffered, defer: true)
    }

    // We still need to override the NSWindow designated initializer to properly setup our custom window.
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: .borderless, backing: .buffered, defer: flag)

        hasShadow = true
        backgroundColor = NSColor.clear
        isOpaque = false
    }

}
