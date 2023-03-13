import Foundation
import RxSwift

final class ApiService {
    private let dispatchQueue = DispatchQueue(label: "ApiServiceQueue")

    private var randomUserName: String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0 ..< 10).map { _ in letters.randomElement()! })
    }
}

extension ApiService: ApiServiceProtocol {
    func user(by id: UUID, _ callback: @escaping (UserApiModel) -> Void) {
        dispatchQueue.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self else {
                return
            }
            callback(UserApiModel(
                identificator: id,
                fullName: self.randomUserName
            ))
        }
    }
}
