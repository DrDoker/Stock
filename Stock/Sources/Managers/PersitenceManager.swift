//
//  PersitenceManager.swift
//  Stock
//
//  Created by Serhii  on 09/01/2023.
//

import Foundation

final class PersitenceManager {
	static let shared = PersitenceManager()
	
	private let userDefaults: UserDefaults = .standard
	
	private struct Constants {
		
	}
	
	private init() {}
	
	//MARK: - Public
	
	public var watchlist: [String] {
		return []
	}
	
	public func addToWatchlist() {
		
	}
	
	public func removeFromWatchlist() {
		
	}
	
	//MARK: - Private
	
	private var hasOnboarded: Bool {
		return false
	}

}
