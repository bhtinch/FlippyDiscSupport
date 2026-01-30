import Foundation

public enum MarkdownLoader {
    public static func load(named name: String) -> String? {
        guard
            let url = Bundle.module.url(forResource: name, withExtension: "md"),
            let contents = try? String(contentsOf: url) else
        {
            return nil
        }
        return contents
    }
}

public enum KnownMarkdownFile: String {
    case privacyPolicy = "PrivacyPolicy"
    case termsOfService = "TermsOfService"
}

public extension MarkdownLoader {
    static var privacyPolicy: String? {
        load(named: .init(KnownMarkdownFile.privacyPolicy.rawValue))
    }
    
    static var termsOfService: String? {
        load(named: .init(KnownMarkdownFile.termsOfService.rawValue))
    }
}
