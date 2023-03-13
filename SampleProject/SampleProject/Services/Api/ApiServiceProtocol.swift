import Foundation

protocol ApiServiceProtocol {
    func user(by id: UUID, _ callback: @escaping (UserApiModel) -> Void)
}
